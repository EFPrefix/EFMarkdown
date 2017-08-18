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
        // Do any additional setup after loading the view, typically from a nib.

        let markdown = "# Hello"
        var html = ""
        do {
            html = try EFMarkdown.markdownToHTML(markdown)
            print(html) // This will return "<h1>Hello</h1>\n"
        } catch let error as NSError {
            print ("Error: \(error.domain)")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

