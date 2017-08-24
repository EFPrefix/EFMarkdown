//
//  EFMarkdown+Table.swift
//  Pods
//
//  Created by EyreFree on 2017/8/24.
//
//

import Foundation

public extension EFMarkdown {

    private enum LineType: UInt8 {
        case normal = 0
        case delimiter = 1
        case headOrText = 2
    }

    private enum AlignType: String {
        case none = ""
        case left = " style=\"text-align:left\""
        case center = " style=\"text-align:center\""
        case right = " style=\"text-align:right\""
    }

    public func formatTable(markdown: String) -> String {
        if let pre = preTable(markdown: markdown) {
            return pre.0.joined(separator: "\n")
        }
        return markdown
    }

    private func preTable(markdown: String) -> ([String], [LineType])? {
        var lines = markdown.components(separatedBy: "\n")
        if lines.count < 2 {
            return nil
        }
        var marks = [LineType](repeating: .normal, count: lines.count)
        for (index, line) in lines.enumerated() {
            if isTableHeaderOrTextLine(inputLine: line) {
                marks[index] = .headOrText
                if isTableDelimiterLine(inputLine: line) {
                    if index > 0 {
                        if .headOrText == marks[index - 1] {
                            marks[index] = .delimiter
                        }
                    }
                }
            }
        }
        var noTable = true
        for mark in marks {
            if .delimiter == mark {
                noTable = false
                break
            }
        }
        if noTable {
            return nil
        }

        let length = marks.count
        var index = 0
        repeat {
            if .delimiter == marks[index] {
                if compareSuitable(lines[index - 1], lines[index]) {
                    let algins = formatTableDelimiterLine(inputLine: lines[index])
                    if .headOrText == marks[index - 1] {
                        lines[index - 1] = "<table><thead>" + formatTableHeaderOrTextLine(inputLine: lines[index - 1], aligns: algins, isHead: true)
                    }
                    let oldLine = lines[index]
                    lines[index] = "</thead><tbody>"

                    if index + 1 < length {
                        for offset in (index + 1) ..< length {
                            if .normal != marks[offset] && compareSuitable(lines[offset], oldLine) {
                                lines[offset] = formatTableHeaderOrTextLine(inputLine: lines[offset], aligns: algins)
                            } else {
                                lines[offset - 1] += "</tbody></table>"
                                index = offset
                                break
                            }
                            index = offset
                        }
                        continue
                    }
                }
            }
            index += 1
        } while(index < length)
        return (lines, marks)
    }

    private func compareSuitable(_ one: String, _ two: String) -> Bool {
        return one.replace("\\|", with: "").removePrefix(string: "|").removeSuffix(string: "|").occurrencesOf(subString: "|")
            == two.replace("\\|", with: "").removePrefix(string: "|").removeSuffix(string: "|").occurrencesOf(subString: "|")
    }

    private func isTableDelimiterLine(inputLine: String) -> Bool {
        var line = inputLine.replace("\\|", with: "")
        if line.contains("||") || !(line.contains("|") && line.contains("-")) {
            return false
        }
        line = line.trimmingCharacters(in: .whitespacesAndNewlines).replace("\t", with: " ").toOne()
        if !line.hasPrefix("|") {
            line = "|" + line
        }
        if !line.hasSuffix("|") {
            line = line + "|"
        }
        if line.conform(regex: "(\\| *:?-+:? *)+\\|") {
            return true
        }
        return false
    }

    private func isTableHeaderOrTextLine(inputLine: String) -> Bool {
        return inputLine.replace("\\|", with: "").contains("|")
    }

    private func formatTableDelimiterLine(inputLine: String) -> [AlignType] {
        var line = inputLine.trimmingCharacters(in: .whitespacesAndNewlines)
            .replace(" ", with: "").replace("\t", with: "").toOne()
        if !line.hasPrefix("|") {
            line = "|" + line
        }
        if !line.hasSuffix("|") {
            line = line + "|"
        }
        let lineArray = line.components(separatedBy: "|").dropFirst().dropLast()
        var alignArray = [AlignType]()
        for ele in lineArray {
            switch ele {
            case "-":
                alignArray.append(.none)
            case ":-":
                alignArray.append(.left)
            case "-:":
                alignArray.append(.right)
            case ":-:":
                alignArray.append(.center)
            default:
                alignArray.append(.none)
            }
        }
        return alignArray
    }

    private func formatTableHeaderOrTextLine(inputLine: String, aligns: [AlignType], isHead: Bool = false) -> String {
        let tempBlank = "/E+F!M@a#r$k%d^o&w-n*"
        var line = inputLine.replace("\\|", with: tempBlank).trimmingCharacters(in: .whitespacesAndNewlines)
        if !line.hasPrefix("|") {
            line = "|" + line
        }
        if !line.hasSuffix("|") {
            line = line + "|"
        }
        let lineArray = line.components(separatedBy: "|").dropFirst().dropLast()
        var lineHtml = "<tr>"
        let mark = isHead ? "th" : "td"
        for (index, ele) in lineArray.enumerated() {
            lineHtml += "<\(mark)\(aligns[index].rawValue)>\(ele)</\(mark)>"
        }
        return (lineHtml + "</tr>").replace(tempBlank, with: "\\|")
    }
}
