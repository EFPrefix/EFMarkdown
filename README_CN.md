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

EFMarkdown 是一个轻量级的 Markdown 库，可以用来将 Markdown 转为 HTML，也可以用来直接展示 Markdown 对其进行预览，基于 [EFCMark](https://github.com/EyreFree/EFCMark)，受 [markdown](https://github.com/vapor-community/markdown) 和 [Markoff](https://github.com/thoughtbot/Markoff) 启发。

> [English Introduction](https://github.com/EyreFree/EFMarkdown/blob/master/README.md)

## 预览

sample1|sample2|sample3|sample4  
:---------------------:|:---------------------:|:---------------------:|:---------------------:
![](https://raw.githubusercontent.com/EyreFree/EFMarkdown/master/assets/sample1.png)|![](https://raw.githubusercontent.com/EyreFree/EFMarkdown/master/assets/sample2.jpg)|![](https://raw.githubusercontent.com/EyreFree/EFMarkdown/master/assets/sample3.png)|![](https://raw.githubusercontent.com/EyreFree/EFMarkdown/master/assets/sample4.jpg)  

## 示例

1. 利用 `git clone` 命令下载本仓库；
2. 利用 cd 命令切换到 Example 目录下，执行 `pod install` 命令；
3. 随后打开 `EFMarkdown.xcworkspace` 编译即可。

或执行以下命令：

```bash
git clone git@github.com:EyreFree/EFMarkdown.git; cd EFMarkdown/Example; pod install; open EFMarkdown.xcworkspace
```

## 环境

| Version | Needs                                |
|:--------|:-------------------------------------|
| 0.x     | XCode 8.0+<br>Swift 3.0+<br>iOS 8.0+ |
| 4.x     | XCode 9.0+<br>Swift 4.0+<br>iOS 8.0+ |

## 安装

EFMarkdown 可以通过 [CocoaPods](http://cocoapods.org) 进行获取。只需要在你的 Podfile 中添加如下代码就能实现引入：

```
pod "EFMarkdown"
```

## 使用

### 1. 将 Markdown 转为 HTML

你可以利用 `EFMarkdown` 轻松实现 Markdown 字符串到 HTML 字符串地转换，示例代码如下：

```swift
let markdown = "# Hello"
var html = ""
do {
    html = try EFMarkdown().markdownToHTML(markdown, options: EFMarkdownOptions.safe)
    print(html) // 这里会输出 "<h1>Hello</h1>\n"
} catch let error as NSError {
    print ("Error: \(error.domain)")
}
```

### 2. 对 Markdown 进行预览

你可以利用 `EFMarkdownView` 实现对 Markdown 字符串的预览，示例代码如下：

```swift
let screenSize = UIScreen.main.bounds
let markView = EFMarkdownView()
markView.frame = CGRect(x: 0, y: 20, width: screenSize.width, height: screenSize.height - 20)
markView.onRendered = {
    [weak self] (height) in
    if let _ = self {
        // 可选：实现这个闭包可以感知高度变化
        print("onRendered height: \(height ?? 0)")
    }
}
self.view.addSubview(markView)
markView.load(markdown: testMarkdownFileContent(), options: [.default]) {
    [weak self] (_, _) in
    if let _ = self {
        // 可选：你可以通过在此处传入一个百分比来改变字体大小
        markView.setFontSize(percent: 128)
        printLog("load finish!")
    }
}
```

### 3. 选项

你可以通过传入不同的选项来控制底层 `cmark` 对 Markdown 字符串的处理，默认传入的值为 `safe`。

可选的值有以下这些：

* default
* sourcePos
* hardBreaks
* safe
* noBreaks
* validateUTF8
* smart
* githubPreLang
* liberalHtmlTag

更多关于这些选项的信息，可以参考 [`cmark`](https://github.com/github/cmark)。

## 作者

EyreFree, eyrefree@eyrefree.org

## 协议

<img src='http://www.wtfpl.net/wp-content/uploads/2012/12/logo-220x160.png' width='110' height='80'/>

EFMarkdown 基于 WTFPL 协议进行分发和使用，更多信息参见协议文件。
