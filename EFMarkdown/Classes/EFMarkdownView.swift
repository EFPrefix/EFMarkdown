//
//  EFMarkdownView.swift
//  Pods
//
//  Created by EyreFree on 2017/8/18.
//
//

import UIKit
import WebKit

open class EFMarkdownView: UIView {

    private var webView: WKWebView?

    public var isScrollEnabled: Bool = true {
        didSet {
            webView?.scrollView.isScrollEnabled = isScrollEnabled
        }
    }

    public var onTouchLink: ((URLRequest) -> Bool)?

    public var onRendered: ((CGFloat) -> Void)?

    public convenience init() {
        self.init(frame: CGRect.zero)
    }

    override init (frame: CGRect) {
        super.init(frame : frame)
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    public func load(markdown: String?, options: EFMarkdownOptions = [.safe]) {
        guard let markdown = markdown else {
            return
        }

        let wv = WKWebView(frame: self.bounds, configuration: WKWebViewConfiguration())
        wv.scrollView.isScrollEnabled = self.isScrollEnabled
        wv.translatesAutoresizingMaskIntoConstraints = false
        wv.navigationDelegate = self
        addSubview(wv)

        // 约束，紧贴父 View
        wv.translatesAutoresizingMaskIntoConstraints = false
        let leftLc = NSLayoutConstraint(
            item: wv,
            attribute: .left,
            relatedBy: .equal,
            toItem: self,
            attribute: .left,
            multiplier: 1,
            constant: 0
        )
        let rightLc = NSLayoutConstraint(
            item: wv,
            attribute: .right,
            relatedBy: .equal,
            toItem: self,
            attribute: .right,
            multiplier: 1,
            constant: 0
        )
        let topLc = NSLayoutConstraint(
            item: wv,
            attribute: .top,
            relatedBy: .equal,
            toItem: self,
            attribute: .top,
            multiplier: 1,
            constant: 0
        )
        let bottomLc = NSLayoutConstraint(
            item: wv,
            attribute: .bottom,
            relatedBy: .equal,
            toItem: self,
            attribute: .bottom,
            multiplier: 1,
            constant: 0
        )
        self.addConstraint(leftLc)
        self.addConstraint(rightLc)
        self.addConstraint(topLc)
        self.addConstraint(bottomLc)

        wv.backgroundColor = self.backgroundColor
        self.webView = wv

        do {
            let pageContent = try markdownToHTMLPage(markdown, options: options)
            print(pageContent)
            wv.loadHTMLString(pageContent, baseURL: baseURL())
        } catch let error as NSError {
            print ("Error: \(error.domain)")
        }
    }

    private func escape(markdown: String) -> String? {
        return markdown.addingPercentEncoding(withAllowedCharacters: CharacterSet.alphanumerics)
    }

    public func markdownToHTMLPage(_ markdown: String, options: EFMarkdownOptions = [.safe]) throws -> String {
        var htmlContent: String = ""
        do {
            try htmlContent = EFMarkdown().markdownToHTML(markdown, options: options)
        } catch {
            throw error
        }

        if let templateURL = baseURL() {
            let templateContent = try String(contentsOf: templateURL, encoding: String.Encoding.utf8)
            return templateContent.replacingOccurrences(of: "$PLACEHOLDER", with: htmlContent)
        }
        throw EFMarkdownError.conversionFailed
    }

    public func baseURL() -> URL? {
        let bundle = Bundle(for: EFMarkdownView.self)
        if let templateURL = bundle.bundleIdentifier?.hasPrefix("org.cocoapods") == true
            ? bundle.url(forResource: "index", withExtension: "html", subdirectory: "EFMarkdown.bundle")
            : bundle.url(forResource: "index", withExtension: "html") {
            return templateURL
        }
        return nil
    }
}

extension EFMarkdownView: WKNavigationDelegate {

    public func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        let script = "document.body.offsetHeight;"
        webView.evaluateJavaScript(script) { [weak self] result, error in
            if let _ = error { return }

            if let height = result as? CGFloat {
                self?.onRendered?(height)
            }
        }
    }

    public func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {

        switch navigationAction.navigationType {
        case .linkActivated:
            if let onTouchLink = onTouchLink {
                if onTouchLink(navigationAction.request) {
                    decisionHandler(.allow)
                } else {
                    decisionHandler(.cancel)
                }
            } else {
                decisionHandler(.allow)
            }
        default:
            decisionHandler(.allow)
        }
    }
}
