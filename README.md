![](https://raw.githubusercontent.com/EyreFree/EFMarkdown/master/assets/EFMarkdown.png)

<p align="center">
<a href="https://travis-ci.org/EyreFree/EFMarkdown"><img src="http://img.shields.io/travis/EyreFree/EFMarkdown.svg"></a>
<a href="http://cocoapods.org/pods/EFMarkdown"><img src="https://img.shields.io/cocoapods/v/EFMarkdown.svg?style=flat"></a>
<a href="http://cocoapods.org/pods/EFMarkdown"><img src="https://img.shields.io/cocoapods/p/EFMarkdown.svg?style=flat"></a>
<a href="https://raw.githubusercontent.com/EyreFree/EFMarkdown/master/LICENSE"><img src="https://img.shields.io/cocoapods/l/EFMarkdown.svg?style=flat"></a>
<a href="https://twitter.com/EyreFree777"><img src="https://img.shields.io/badge/twitter-@EyreFree777-blue.svg?style=flat"></a>
<a href="http://weibo.com/eyrefree777"><img src="https://img.shields.io/badge/weibo-@EyreFree-red.svg?style=flat"></a>
<img src="https://img.shields.io/badge/made%20with-%3C3-orange.svg">
</p>

EFMarkdown is a lightweight Markdown library in Swift, based on [EFCMark](https://github.com/EyreFree/EFCMark), inspired by [markdown](https://github.com/vapor-community/markdown) and [Markoff](https://github.com/thoughtbot/Markoff).

> [中文介绍](https://github.com/EyreFree/EFMarkdown/blob/master/README_CN.md)

## Overview

sample1|sample2|sample3|sample4  
:---------------------:|:---------------------:|:---------------------:|:---------------------:
![](https://raw.githubusercontent.com/EyreFree/EFMarkdown/master/assets/sample1.png)|![](https://raw.githubusercontent.com/EyreFree/EFMarkdown/master/assets/sample2.jpg)|![](https://raw.githubusercontent.com/EyreFree/EFMarkdown/master/assets/sample3.png)|![](https://raw.githubusercontent.com/EyreFree/EFMarkdown/master/assets/sample4.jpg)  

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

| Version | Needs                                |
|:--------|:-------------------------------------|
| 0.x     | XCode 8.0+<br>Swift 3.0+<br>iOS 8.0+ |
| 4.x     | XCode 9.0+<br>Swift 4.0+<br>iOS 8.0+ |

## Installation

EFMarkdown is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "EFMarkdown"
```

## Usage

### 1. Markdown to HTML

You can use `EFMarkdown` to make Markdown string to HTML string easily:

```swift
let markdown = "# Hello"
var html = ""
do {
    html = try EFMarkdown().markdownToHTML(markdown, options: EFMarkdownOptions.safe)
    print(html) // This will return "<h1>Hello</h1>\n"
} catch let error as NSError {
    print ("Error: \(error.domain)")
}
```

### 2. View Markdown

You can use `EFMarkdownView` to make a preview of Markdown:

```swift
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
```

### 3. Options

You can pass different options to the underlying `cmark` library. By default `safe` is passed.

The available options are:

* default
* sourcePos
* hardBreaks
* safe
* noBreaks
* validateUTF8
* smart
* githubPreLang
* liberalHtmlTag

For more information on the available options, see [`cmark`](https://github.com/github/cmark).

## Author

EyreFree, eyrefree@eyrefree.org

## License

<img src='http://www.wtfpl.net/wp-content/uploads/2012/12/logo-220x160.png' width='110' height='80'/>

EFMarkdown is available under the WTFPL license. See the LICENSE file for more info.
