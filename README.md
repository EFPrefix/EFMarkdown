# EFMarkdown

[![CI Status](http://img.shields.io/travis/EyreFree/EFMarkdown.svg?style=flat)](https://travis-ci.org/EyreFree/EFMarkdown)
[![Version](https://img.shields.io/cocoapods/v/EFMarkdown.svg?style=flat)](http://cocoapods.org/pods/EFMarkdown)
[![License](https://img.shields.io/cocoapods/l/EFMarkdown.svg?style=flat)](http://cocoapods.org/pods/EFMarkdown)
[![Platform](https://img.shields.io/cocoapods/p/EFMarkdown.svg?style=flat)](http://cocoapods.org/pods/EFMarkdown)

A CocoaPods wrapper of [cmark](https://github.com/commonmark/cmark) in Swift, based on [EFCMark](https://github.com/EyreFree/EFCMark), inspired by [vapor-community/markdown](https://github.com/vapor-community/markdown).

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

- XCode 8.0+
- Swift 3.0+

## Installation

EFMarkdown is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "EFMarkdown"
```

## Usage

### Markdown -> HTML

```swift
let markdown = "# Hello"
let html = try markdownToHTML(markdown)
print(html) // This will return "<h1>Hello</h1>\n"
```

### Options

You can pass different options to the underlying `cmark` library. By default `safe` is passed, but this can be explicitly done with:

```swift
let html = try markdownToHTML(markdown, options: [.safe])
```

The available options are:

* sourcePosition
* hardBreaks
* safe
* noBreaks
* normalize
* validateUTF8
* smartQuotes

For more information on the available options, see [`cmark`](https://github.com/github/cmark).

## Author

EyreFree, eyrefree@eyrefree.org

## License

![](https://www.gnu.org/graphics/gplv3-127x51.png)

EFMarkdown is available under the GPLv3 license. See the LICENSE file for more info.
