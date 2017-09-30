//
//  EFMarkdownView.swift
//  EyreFree
//
//  Created by EyreFree on 2017/8/18.
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

import UIKit
import WebKit

@objcMembers open class EFMarkdownView: UIView {

    // Main content view
    public let webView: WKWebView = WKWebView(
        frame: CGRect.zero, configuration: WKWebViewConfiguration()
    )

    // ScrollEnabled
    public var isScrollEnabled: Bool = true {
        didSet {
            webView.scrollView.isScrollEnabled = isScrollEnabled
        }
    }

    // Can link click jump, default allow all
    public var onTouchLink: ((URLRequest) -> Bool)?

    // New height callback, Default is nil
    public var onRendered: ((CGFloat?) -> Void)?

    // Load finish callback temp handler
    fileprivate var onFinishLoad: ((WKWebView, WKNavigation?) -> Void)?

    // Last height
    private var lastHeight: CGFloat = 0

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

        print("setupViews")

        addObserver(self, forKeyPath: "webView.scrollView.contentSize", options: .new, context: nil)
    }

    deinit {
        removeObserver(self, forKeyPath: "webView.scrollView.contentSize")
    }

    override open func observeValue(
        forKeyPath keyPath: String?,
        of object: Any?,
        change: [NSKeyValueChangeKey : Any]?,
        context: UnsafeMutableRawPointer?
        ) {
        if let change = change, let onRendered = onRendered, keyPath == "webView.scrollView.contentSize" {
            if let nsSize = change[NSKeyValueChangeKey.newKey] as? NSValue {
                if nsSize.cgSizeValue.height != lastHeight {
                    lastHeight = nsSize.cgSizeValue.height
                    onRendered(nsSize.cgSizeValue.height)
                }
            }
        }
    }

    func setupWebView() {
        self.webView.scrollView.isScrollEnabled = self.isScrollEnabled
        self.webView.translatesAutoresizingMaskIntoConstraints = false
        self.webView.navigationDelegate = self
        self.webView.frame = self.bounds
        addSubview(self.webView)

        // Fit to parent view
        self.webView.translatesAutoresizingMaskIntoConstraints = false
        let leftLc = NSLayoutConstraint(
            item: self.webView,
            attribute: .left,
            relatedBy: .equal,
            toItem: self,
            attribute: .left,
            multiplier: 1,
            constant: 0
        )
        let rightLc = NSLayoutConstraint(
            item: self.webView,
            attribute: .right,
            relatedBy: .equal,
            toItem: self,
            attribute: .right,
            multiplier: 1,
            constant: 0
        )
        let topLc = NSLayoutConstraint(
            item: self.webView,
            attribute: .top,
            relatedBy: .equal,
            toItem: self,
            attribute: .top,
            multiplier: 1,
            constant: 0
        )
        let bottomLc = NSLayoutConstraint(
            item: self.webView,
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

        self.webView.backgroundColor = self.backgroundColor
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
            webView.loadHTMLString(pageContent, baseURL: baseURL())
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
        self.webView.evaluateJavaScript(jsFontSize, completionHandler: { (result, error) in
            // Finish
            completionHandler?(result, error)

            // Refresh height
            if let onRendered = self.onRendered {
                onRendered(self.webView.scrollView.contentSize.height)
            }
        })
    }
}

extension EFMarkdownView: WKNavigationDelegate {

    public func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        // Refresh height
        if let onRendered = self.onRendered {
            onRendered(self.webView.scrollView.contentSize.height)
        }

        // Load finish
        onFinishLoad?(webView, navigation)
        onFinishLoad = nil
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
