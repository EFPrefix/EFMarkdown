//
//  String+.swift
//  Pods
//
//  Created by EyreFree on 2017/8/23.
//
//

import UIKit

extension String {

    subscript(index: Int) -> Character {
        return self[self.index(self.startIndex, offsetBy: index)]
    }

    func count() -> Int {
        return self.characters.count
    }

    //正则表达式
    func conform(regex: String) -> Bool {
        return NSPredicate(format: "SELF MATCHES %@", regex).evaluate(with: self)
    }

    //替换某个子字符串为另一字符串
    func replace(_ string: String, with: String, options: CompareOptions? = nil) -> String {
        if let options = options {
            return self.replacingOccurrences(of: string, with: with, options: options, range: nil)
        }
        return self.replacingOccurrences(of: string, with: with)
    }

    //替换前缀
    func replacePrefix(string: String, with: String) -> String {
        if self.hasPrefix(string) {
            return with + String(self.characters.dropFirst(string.count()))
        }
        return self
    }

    //替换尾缀
    func replaceSuffix(string: String, with: String) -> String {
        if self.hasSuffix(string) {
            return String(self.characters.dropLast(string.count())) + with
        }
        return self
    }

    //移除某个子串
    func remove(string: String) -> String {
        return self.replace(string, with: "")
    }

    //移除某个前缀
    func removePrefix(string: String) -> String {
        return self.replacePrefix(string: string, with: "")
    }

    //移除某个尾缀
    func removeSuffix(string: String) -> String {
        return self.replaceSuffix(string: string, with: "")
    }

    //去除左右空格和换行
    func clean() -> String {
        return self.trimmingCharacters(in: NSCharacterSet.whitespacesAndNewlines)
    }

    // 将多个连续重复字符变为一个
    func toOne() -> String {
        var outString = self
        let length = self.characters.count
        for index in (1 ..< length).reversed() {
            if outString[index] == outString[index - 1] {
                outString.remove(at: outString.index(outString.startIndex, offsetBy: index))
            }
        }
        return outString
    }

    // 是否由 chars 所包含的字符组成
    func isConsistof(chars: String) -> Bool {
        for index in 0 ..< self.count() {
            var mark = false
            for joke in 0 ..< chars.count() {
                if self[index] == chars[joke] {
                    mark = true
                    break
                }
            }
            if false == mark {
                return false
            }
        }
        return true
    }

    static func isEmpty(string: String?) -> Bool {
        if let tryString = string {
            return tryString == ""
        }
        return true
    }

    // 获取标签内容
    func elementContent(make: String, markOver: String? = nil) -> String {
        let beginMark = make
        let endMark = markOver ?? make.replace("<", with: "</")

        if let block1 = ("2333" + self).components(separatedBy: beginMark).dropFirst(1).first {
            if block1.hasPrefix(endMark) {
                return ""
            }
            return block1.components(separatedBy: endMark).first ?? ""
        }
        return ""
    }
}
