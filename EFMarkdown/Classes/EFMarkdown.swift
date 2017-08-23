
import Foundation
import EFCMark

// http://swifter.tips/log/
public func printLog<T>(
    _ message: T,
    file: String = #file,
    method: String = #function,
    line: Int = #line
    ) {
    #if DEBUG
        print("\((file as NSString).lastPathComponent)[\(line)], \(method): \(message)")
    #endif
}

public enum EFMarkdownError: Error {
    case conversionFailed
    case resourceFailed
}

public struct EFMarkdownOptions: OptionSet {
    public let rawValue: Int32

    public init(rawValue: Int32) {
        self.rawValue = rawValue
    }

    static public let `default` = EFMarkdownOptions(rawValue: 0)
    static public let sourcePos = EFMarkdownOptions(rawValue: 1 << 1)
    static public let hardBreaks = EFMarkdownOptions(rawValue: 1 << 2)
    static public let safe = EFMarkdownOptions(rawValue: 1 << 3)
    static public let noBreaks = EFMarkdownOptions(rawValue: 1 << 4)
    static public let validateUTF8 = EFMarkdownOptions(rawValue: 1 << 9)
    static public let smart = EFMarkdownOptions(rawValue: 1 << 10)
    static public let githubPreLang = EFMarkdownOptions(rawValue: 1 << 11)
    static public let liberalHtmlTag = EFMarkdownOptions(rawValue: 1 << 12)
}

@objc public class EFMarkdown: NSObject {
    public func markdownToHTML(_ markdown: String, options: EFMarkdownOptions = [.safe]) throws -> String {
        var buffer: String?
        try markdown.withCString {
            guard let buf = cmark_markdown_to_html($0, Int(strlen($0)), options.rawValue) else {
                throw EFMarkdownError.conversionFailed
            }
            buffer = String(cString: buf)
            free(buf)
        }
        if let buffer = buffer {
            return buffer
        }
        throw EFMarkdownError.conversionFailed
    }

    private func isTableMarkLine(inputLine: String) -> Bool {
        if !(inputLine.contains("|") && inputLine.contains("-")) {
            return false
        }
        let line = inputLine.remove(string: "\r").trimmingCharacters(in: .whitespacesAndNewlines).toOne()
        if !line.isConsistof(chars: "|:- \t") {
            return false
        }



        return true
    }
}
