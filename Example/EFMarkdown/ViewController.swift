//
//  ViewController.swift
//  EFMarkdown
//
//  Created by EyreFree on 08/18/2017.
//  Copyright (c) 2017 EyreFree. All rights reserved.
//

import UIKit
import EFMarkdown

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 1. EFMarkdown
        let markdown = "# Hello"
        var html = ""
        do {
            html = try EFMarkdown().markdownToHTML(markdown, options: EFMarkdownOptions.safe)
            // This will return "<h1>Hello</h1>\n"
            print(html)
        } catch let error as NSError {
            print ("Error: \(error.domain)")
        }

        // 2. EFMarkdownView
        let screenSize = UIScreen.main.bounds
        let markView = EFMarkdownView()
        markView.frame = CGRect(x: 0, y: 20, width: screenSize.width, height: screenSize.height - 20)
        markView.onRendered = {
            [weak self] (height) in
            if let _ = self {
                // Optional: you can know the change of height in this block
                print("onRendered height: \(height ?? 0)")
            }
        }
        self.view.addSubview(markView)
        markView.load(markdown: testMarkdownFileContent(), options: [.default]) {
            [weak self] (_, _) in
            if let _ = self {
                // Optional: you can change font-size with a value of percent here
                markView.setFontSize(percent: 128)
                printLog("load finish!")
            }
        }
    }

    public func testMarkdownFileContent() -> String {
        if let templateURL = Bundle.main.url(forResource: "sample1", withExtension: "md") {
            do {
                return try String(contentsOf: templateURL, encoding: String.Encoding.utf8)
            } catch {
                return ""
            }
        }
        return ""
    }
}
