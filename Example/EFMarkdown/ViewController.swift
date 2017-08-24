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

//        // 1. EFMarkdown
//        let markdown = "# Hello"
//        var html = ""
//        do {
//            html = try EFMarkdown().markdownToHTML(markdown, options: EFMarkdownOptions.safe)
//            print(html) // This will return "<h1>Hello</h1>\n"
//        } catch let error as NSError {
//            print ("Error: \(error.domain)")
//        }
//
        // 2. EFMarkdownView
        let screenSize = UIScreen.main.bounds
        let markView = EFMarkdownView()
        markView.frame = CGRect(x: 0, y: 20, width: screenSize.width, height: screenSize.height - 20)
        self.view.addSubview(markView)
        markView.load(markdown: testMarkdownFileContent(), options: [.default]) {
            [weak self] (_, _) in
            // Change font-size
            if let _ = self {
                markView.setFontSize(scale: 128)
                printLog("load finish!")
            }
        }
    }

    public func testMarkdownFileContent() -> String {
        if let templateURL = Bundle.main.url(forResource: "sample4", withExtension: "md") {
            do {
                return try String(contentsOf: templateURL, encoding: String.Encoding.utf8)
            } catch {
                return ""
            }
        }
        return ""
    }
}
