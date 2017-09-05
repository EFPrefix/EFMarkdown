//
//  EFMarkdown.swift
//  EyreFree
//
//  Created by EyreFree on 2017/4/9.
//
//  Copyright (c) 2017 EyreFree <eyrefree@eyrefree.org>
//
//  Everyone is permitted to copy and distribute verbatim or modified
//  copies of this license document, and changing it is allowed as long
//  as the name is changed.
//
//             DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
//    TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
//
//   0. You just DO WHAT THE FUCK YOU WANT TO.

import Foundation
import EFCMark

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
        try formatTable(markdown: markdown).withCString {
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
}
