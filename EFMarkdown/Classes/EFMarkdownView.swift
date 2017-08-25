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

    // Main content view
    private var webView: WKWebView?

    // ScrollEnabled
    public var isScrollEnabled: Bool = true {
        didSet {
            webView?.scrollView.isScrollEnabled = isScrollEnabled
        }
    }

    // Can link click jump, default allow all
    public var onTouchLink: ((URLRequest) -> Bool)?

    // New height callback, Default is nil
    public var onRendered: ((CGFloat) -> Void)?

    // Load finish callback temp handler
    fileprivate var onFinishLoad: ((WKWebView, WKNavigation?) -> Void)?

    public convenience init() {
        self.init(frame: CGRect.zero)
    }

    override init (frame: CGRect) {
        super.init(frame : frame)
        setupViews()
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupViews()
    }

    func setupViews() {
        setupWebView()
    }

    func setupWebView() {
        let wv = WKWebView(frame: self.bounds, configuration: WKWebViewConfiguration())
        wv.scrollView.isScrollEnabled = self.isScrollEnabled
        wv.translatesAutoresizingMaskIntoConstraints = false
        wv.navigationDelegate = self
        addSubview(wv)

        // Fit to parent view
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
    }

    public func load(
        markdown: String?,
        options: EFMarkdownOptions = [.safe],
        completionHandler: ((WKWebView, WKNavigation?) -> Void)? = nil) {
        guard let markdown = markdown else {
            return
        }
        do {
            let pageContent = try markdownToHTMLPage(markdown, options: options)
            onFinishLoad = completionHandler
            webView?.loadHTMLString(pageContent, baseURL: baseURL())
        } catch let error as NSError {
            printLog("Error: \(error.domain)")
        }
    }

    private func markdownToHTMLPage(_ markdown: String, options: EFMarkdownOptions = [.safe]) throws -> String {
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

    func baseURL() -> URL? {
        let bundle = Bundle(for: EFMarkdownView.self)
        if let templateURL = bundle.bundleIdentifier?.hasPrefix("org.cocoapods") == true
            ? bundle.url(forResource: "index", withExtension: "html", subdirectory: "EFMarkdown.bundle")
            : bundle.url(forResource: "index", withExtension: "html") {
            return templateURL
        }
        return nil
    }

    // Change font-size of text with scale
    public func setFontSize(percent: CGFloat, completionHandler: ((Any?, Error?) -> Void)? = nil) {
        let jsFontSize = "document.getElementsByTagName('body')[0].style.webkitTextSizeAdjust='\(percent)%'"
        self.webView?.evaluateJavaScript(jsFontSize, completionHandler: completionHandler)
    }
}

extension EFMarkdownView: WKNavigationDelegate {

    public func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        // Load finish
        onFinishLoad?(webView, navigation)
        onFinishLoad = nil

        // Refresh height
        if let onRendered = self.onRendered {
            let script = "document.body.offsetHeight;"
            webView.evaluateJavaScript(script) { [weak self] result, error in
                if let _ = self {
                    if let _ = error {
                        return
                    }
                    if let height = result as? CGFloat {
                        onRendered(height)
                    }
                }
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
