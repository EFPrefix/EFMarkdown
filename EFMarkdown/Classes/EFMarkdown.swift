import Foundation
import EFCMark

public enum MarkdownError: Error {
    case conversionFailed
}

public struct MarkdownOptions: OptionSet {
    public let rawValue: Int32

    public init(rawValue: Int32) {
        self.rawValue = rawValue
    }

    static public let sourcePosition = MarkdownOptions(rawValue: 1 << 1)
    static public let hardBreaks = MarkdownOptions(rawValue: 1 << 2)
    static public let safe = MarkdownOptions(rawValue: 1 << 3)
    static public let noBreaks = MarkdownOptions(rawValue: 1 << 4)
    static public let normalize = MarkdownOptions(rawValue: 1 << 8)
    static public let validateUTF8 = MarkdownOptions(rawValue: 1 << 9)
    static public let smartQuotes = MarkdownOptions(rawValue: 1 << 10)
}

@objc public class EFMarkdown: NSObject {

    public static func markdownToHTML(_ str: String, options: MarkdownOptions = [.safe]) throws -> String {
        var buffer: String?
        try str.withCString {
            guard let buf = cmark_markdown_to_html($0, Int(strlen($0)), options.rawValue) else {
                throw MarkdownError.conversionFailed
            }
            buffer = String(cString: buf)
            free(buf)
        }
        guard let output = buffer else {
            throw MarkdownError.conversionFailed
        }
        return output
    }
}
