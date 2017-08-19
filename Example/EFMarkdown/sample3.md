# GitHub 项目徽章的添加和设置

许多同学在 GitHub 上发布了自己的开源项目，有辛苦开发的实用工具、构思巧妙的开源库、别具一格的 App、精心整理的示例代码等等。

自己花了大把时间和精力构建的项目，当然是希望能够得到更多人的关注，被更多的人知晓或者使用。如何更好滴向他人展示自己的项目，介绍项目相关信息呢？用一些通用的小图标来描述项目相关信息不失为一种很棒的选择，几个好看的徽标能够为自己的项目说明增色不少！

# 一. 徽标简介

GitHub 项目的 README.md 中可以添加徽章（Badge）对项目进行标记和说明，这些好看的小图标不仅简洁美观，而且还包含了清晰易读的信息。

徽标主要由图片和对应的链接（当然，你可以不填）组成，徽标图片的话一般由左半部分的名称和右半部分的值组成。

![一枚普通的徽标](http://upload-images.jianshu.io/upload_images/1018190-3489b47031ed2017.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

GitHub 徽标的官方网站是 [http://shields.io/](http://shields.io/)，我萌可以在官网预览绝大部分的徽标样式，然后选择自己喜欢的（当然首先需要适用于自己的目标项目）徽标，添加到自己的项目文档中去。

![Shields.IO](http://upload-images.jianshu.io/upload_images/1018190-b2676f0571e5684c.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

下面贴出几个栗子以供参考：

- 正在学习的 ReSwift

[![Build Status](https://img.shields.io/travis/ReSwift/ReSwift/master.svg?style=flat-square)](https://travis-ci.org/ReSwift/ReSwift) [![Code coverage status](https://img.shields.io/codecov/c/github/ReSwift/ReSwift.svg?style=flat-square)](http://codecov.io/github/ReSwift/ReSwift) [![CocoaPods Compatible](https://img.shields.io/cocoapods/v/ReSwift.svg?style=flat-square)](https://cocoapods.org/pods/ReSwift) [![Platform support](https://img.shields.io/badge/platform-ios%20%7C%20osx%20%7C%20tvos%20%7C%20watchos-lightgrey.svg?style=flat-square)](https://github.com/ReSwift/ReSwift/blob/master/LICENSE.md) [![License MIT](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](https://github.com/ReSwift/ReSwift/blob/master/LICENSE.md)

- 大名鼎鼎的 Kingfisher

<p align="center">

<img src="https://raw.githubusercontent.com/onevcat/Kingfisher/master/images/logo.png" alt="Kingfisher" title="Kingfisher" width="557"/>

</p>

<p align="center">
<a href="https://travis-ci.org/onevcat/Kingfisher"><img src="https://img.shields.io/travis/onevcat/Kingfisher/master.svg"></a>
<a href="https://github.com/Carthage/Carthage/"><img src="https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat"></a>
<a href="https://swift.org/package-manager/"><img src="https://img.shields.io/badge/SPM-ready-orange.svg"></a>
<a href="http://onevcat.github.io/Kingfisher/"><img src="https://img.shields.io/cocoapods/v/Kingfisher.svg?style=flat"></a>
<a href="https://raw.githubusercontent.com/onevcat/Kingfisher/master/LICENSE"><img src="https://img.shields.io/cocoapods/l/Kingfisher.svg?style=flat"></a>
<a href="http://onevcat.github.io/Kingfisher/"><img src="https://img.shields.io/cocoapods/p/Kingfisher.svg?style=flat"></a>
<a href="https://codebeat.co/projects/github-com-onevcat-kingfisher"><img alt="codebeat badge" src="https://codebeat.co/assets/svg/badges/A-398b39-669406e9e1b136187b91af587d4092b0160370f271f66a651f444b990c2730e9.svg" /></a>
<img src="https://img.shields.io/badge/made%20with-%3C3-orange.svg">
</p>

- 家喻户晓的 Alamofire

![Alamofire: Elegant Networking in Swift](https://raw.githubusercontent.com/Alamofire/Alamofire/assets/alamofire.png)

[![Build Status](https://travis-ci.org/Alamofire/Alamofire.svg?branch=master)](https://travis-ci.org/Alamofire/Alamofire)
[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/Alamofire.svg)](https://img.shields.io/cocoapods/v/Alamofire.svg)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Platform](https://img.shields.io/cocoapods/p/Alamofire.svg?style=flat)](http://cocoadocs.org/docsets/Alamofire)
[![Twitter](https://img.shields.io/badge/twitter-@AlamofireSF-blue.svg?style=flat)](http://twitter.com/AlamofireSF)
[![Gitter](https://badges.gitter.im/Alamofire/Alamofire.svg)](https://gitter.im/Alamofire/Alamofire?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)

徽标并不是添加的越多越好，合理地选择适合项目的徽标做具有针对性地添加才是理性的做法，像 [EFQRCode](https://github.com/EyreFree/EFQRCode) 这样堆积徽标的无脑行为并不是十分可取，在这里提出这一点，希望大家不要盲目追求数量。

- 腊鸡 EFQRCode

![](https://raw.githubusercontent.com/EyreFree/EFQRCode/assets/EFQRCode.jpg)

<p align="center">
<a href="https://travis-ci.org/EyreFree/EFQRCode"><img src="http://img.shields.io/travis/EyreFree/EFQRCode.svg"></a>
<a href="https://codecov.io/gh/EyreFree/EFQRCode"><img src="https://codecov.io/gh/EyreFree/EFQRCode/branch/master/graph/badge.svg"></a>
<a href="https://github.com/Carthage/Carthage/"><img src="https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat"></a>
<a href="https://swift.org/package-manager/"><img src="https://img.shields.io/badge/SPM-ready-orange.svg"></a>
<a href="http://cocoapods.org/pods/EFQRCode"><img src="https://img.shields.io/cocoapods/v/EFQRCode.svg?style=flat"></a>
<a href="http://cocoapods.org/pods/EFQRCode"><img src="https://img.shields.io/cocoapods/p/EFQRCode.svg?style=flat"></a>
<a href="https://github.com/apple/swift"><img src="https://img.shields.io/badge/language-swift-orange.svg"></a>
<a href="https://codebeat.co/projects/github-com-eyrefree-efqrcode-master"><img src="https://codebeat.co/badges/01f53e9d-542c-4c22-adc7-d1dbff0d2a6f"></a>
<a href="https://raw.githubusercontent.com/EyreFree/EFQRCode/master/LICENSE"><img src="https://img.shields.io/cocoapods/l/EFQRCode.svg?style=flat"></a>
<a href="https://gitter.im/EFQRCode/Lobby"><img src="https://badges.gitter.im/EyreFree/EFQRCode.svg"></a>
<a href="https://twitter.com/EyreFree777"><img src="https://img.shields.io/badge/twitter-@EyreFree777-blue.svg?style=flat"></a>
<a href="http://weibo.com/eyrefree777"><img src="https://img.shields.io/badge/weibo-@EyreFree-red.svg?style=flat"></a>
</p>

当然如果个人比较喜欢的话，请随意添加。

![请随意](http://upload-images.jianshu.io/upload_images/1018190-bd12202658a6a391.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

# 二. 常用徽标添加

常用的徽标主要有持续集成状态、项目版本信息、代码测试覆盖率、项目支持平台、项目语言、代码分析等，下面我萌就来依次添加这些可爱的徽标！

## 1. 持续集成状态

持续集成的话推荐 [Travis CI](https://travis-ci.org/)，针对开源项目免费，所以你的私有项目无法享受到免费的持续构建服务，不过我们的目的貌似就是给开源项目添加徽标。

同类型的产品还有 [CircleCI](https://circleci.com)，不过目前跑 OS X 项目需要额外付费，免费版提供一个 Linux 项目队列，作为非付费用户在这里不多做评价，大佬们可以自己试下。其他还有诸如 [Jenkins](https://jenkins.io/)
和 [Codeship](https://codeship.com/) 等，大家可以在 [http://shields.io/](http://shields.io/) 的 `Build` 这一栏自行翻阅。

接下来就是 Travis CI 的集成工作了，首先打开 [https://travis-ci.org/](https://travis-ci.org/) 注册一个 Travis-CI 账号，可以通过 GitHub 账户直接登陆。

然后参考 [官方文档](https://docs.travis-ci.com/user/getting-started/)，根据你的项目语言或类型选择具体的配置方式，主要就是在项目中添加一个 `.travis.yml` 配置文件，告诉 Travis CI 怎样对你的项目进行编译或测试。这里有一个 Swift CocoaPods 库的集成示例，可以参考一下：[http://www.jianshu.com/p/beaa9ec9183d](http://www.jianshu.com/p/beaa9ec9183d)。

然后徽标图片地址是这个样子的：

```
http://img.shields.io/travis/{GitHub 用户名}/{项目名称}.svg
```

将上面 URL 中的 {GitHub 用户名} 和 {项目名称} 替换为你的即可，再加上该项目在 Travis CI 上的地址，以 Alamofire 为例，最后集成完成的 Markdown 代码和效果大概是这个样子：

```markdown
[![](https://travis-ci.org/Alamofire/Alamofire.svg?branch=master)](https://travis-ci.org/Alamofire/Alamofire)
```
[![](https://travis-ci.org/Alamofire/Alamofire.svg?branch=master)](https://travis-ci.org/Alamofire/Alamofire)

当然如果你的编译没跑过或者发生错误之类的，会出现其他的状态，比如酱紫的：

![](https://img.shields.io/codeship/d6c1ddd0-16a3-0132-5f85-2e35c05e22b1.svg)

![](https://img.shields.io/vso/build/larsbrinkhoff/953a34b9-5966-4923-a48a-c41874cfb5f5/1.svg)

![](https://img.shields.io/snap-ci/ThoughtWorksStudios/eb_deployer/master.svg)

这里需要指出的是，开源项目的 Travis CI 也是公开的，包括日志和历史记录在内，都是针对所有人可见的，所以小伙伴们一定不要把密码、私钥等重要信息暴露了。

## 2. 项目下载量

项目被下载的次数，这个的话各个平台的统计都是独立的，比如发布在 CocoaPods 的项目下载量徽标图片地址如下，以 AFNetworking 为例：

```
总下载量：https://img.shields.io/cocoapods/dt/AFNetworking.svg
月下载量：https://img.shields.io/cocoapods/dm/AFNetworking.svg
周下载量：https://img.shields.io/cocoapods/dw/AFNetworking.svg
```

效果如下：

![](https://img.shields.io/cocoapods/dt/AFNetworking.svg)
![](https://img.shields.io/cocoapods/dm/AFNetworking.svg)
![](https://img.shields.io/cocoapods/dw/AFNetworking.svg)

如果你的库已经发布到 CocoaPods 的话，我们只要把上面的 AFNetworking 改为自己的项目名称即可。更多其他发布方式如 apm、npm、Gem 等可查阅 [http://shields.io/](http://shields.io/) 的 `Downloads` 一栏。

## 3. 项目版本信息

这个的话，因为我的 iOS 库是发布在 CocoaPods 的，我用的是 CocoaPods 提供的，URL 如下：

```
https://img.shields.io/cocoapods/v/{项目名称}.svg?style=flat
```

以 Alamofire 为例，Markdown 代码和效果如下：

```markdown
![](https://img.shields.io/cocoapods/v/Alamofire.svg?style=flat)
```

![](https://img.shields.io/cocoapods/v/Alamofire.svg?style=flat)

如果你的库已经发布到 CocoaPods 的话，我们只要把上面的 Alamofire 改为自己的项目名称即可。更多其他发布方式如 apm、npm、Gem 等可查阅 [http://shields.io/](http://shields.io/) 的 `Version` 一栏。

如果你的发布工具不提供项目版本信息的徽标的话，可以用自定义徽标的方式实现，具体可参考下文自定义徽标一节，这里给出徽标代码：

```
https://img.shields.io/badge/{发布方式}-{版本号}-519dd9.svg
```

将 {发布方式} 和 {版本号} 替换为你的项目目前的发布方式和版本号即可，例如通过 360 应用商店发布，发布版本号为 v1.2.3：

```
![](https://img.shields.io/badge/360_store-v1.2.3-519dd9.svg)
```

![](https://img.shields.io/badge/360_store-v1.2.3-519dd9.svg)

## 4. 代码测试覆盖率

代码测试覆盖率的话推荐 [Codecov](https://codecov.io/)。同类产品有 [Coveralls](https://coveralls.io/)，不过网站风格略复古，文档也不详细，安装过程也复杂，需要配置一大堆奇怪的东西，遂不推荐。

同样的，Codecov 可以直接使用 GitHub 账号登陆，需要结合 Travis CI 使用，在 `.travis.yml` 文件中添加一个回调触发 Codecov 的刷新，同时需要打开工程中的测试覆盖信息收集，XCode 中的设置如下

![Paste_Image.png](http://upload-images.jianshu.io/upload_images/1018190-a1fceb0028ce645a.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

更多信息可参考 [官方文档](https://docs.codecov.io/docs) 和 [示例](https://github.com/codecov)。

然后，我们就可以在 Setting 中的 Badge 一栏找到添加图标的代码啦：

![Paste_Image.png](http://upload-images.jianshu.io/upload_images/1018190-95306d0d263235c2.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

最终效果如下：

[![codecov](https://codecov.io/gh/EyreFree/EFQRCode/branch/master/graph/badge.svg)](https://codecov.io/gh/EyreFree/EFQRCode)

## 5. 项目支持平台

这个的话，因为我的 iOS 库是发布在 CocoaPods 的，我用的是 CocoaPods 提供的，URL 如下：

```
https://img.shields.io/cocoapods/p/{项目名称}.svg?style=flat
```

以 Alamofire 为例，Markdown 代码和效果如下：

```markdown
![](https://img.shields.io/cocoapods/p/Alamofire.svg?style=flat)
```

![](https://img.shields.io/cocoapods/p/Alamofire.svg?style=flat)

如果你的库已经发布到 CocoaPods 的话，我们只要把上面的 Alamofire 改为自己的项目名称即可。如果你的发布工具不提供项目支持平台的徽标的话，可以用自定义徽标的方式实现，具体可参考下文自定义徽标一节，这里给出徽标代码：

```
https://img.shields.io/badge/platform-{项目支持平台}-lightgrey.svg
```

将 {项目支持平台} 替换为你的项目目前的版本号即可，例如 ios：

```
![](https://img.shields.io/badge/platform-ios-lightgrey.svg)
```

![](https://img.shields.io/badge/platform-ios-lightgrey.svg)

## 6. 项目语言

嗯，这个完全是用自定义徽标实现的，具体可参考下文自定义徽标一节，这里给出徽标代码：

```
https://img.shields.io/badge/language-{项目语言}-{背景色}.svg
```

将 {项目语言} 和 {背景色} 替换为你的项目目前的语言和你想要的背景色即可，这里以 Swift 为例，我们用上 Swift 官方橘色：

```
![](https://img.shields.io/badge/language-swift-orange.svg)
```

![](https://img.shields.io/badge/language-swift-orange.svg)

完美!

![Swift](http://upload-images.jianshu.io/upload_images/1018190-7aaab9c7de41a78c.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

## 7. 代码分析

> [Codebeat](https://codebeat.co/) 可以计算全局项目评分、GPA、和不同命名空间的等级来帮助您量化技术债务和发现重构机会，你唯一需要做的就是连接你的 Github 库，获得反馈就好了。

嗯，上面是官方自述，大概意思就是每次 push 或者 merge 之后会对代码进行分，给出评分，然后告诉你哪些地方复杂度过高需要进行重构之类的。用 GitHub 登陆后绑定项目即可，无需对原有项目进行修改（其实是 codebeat 在你的项目设置里加了一个 Webhook，通知它重新计算评分）。

![Webhooks](http://upload-images.jianshu.io/upload_images/1018190-271c429613a8d34e.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

照着引导巴拉巴拉一顿操作之后就可以获取图标啦，在项目的 Setting 中可以获取徽标代码，自己复制出来就可以。

![Setting](http://upload-images.jianshu.io/upload_images/1018190-080b0705f241d072.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

最终效果如下：

[![codebeat badge](https://codebeat.co/badges/01f53e9d-542c-4c22-adc7-d1dbff0d2a6f)](https://codebeat.co/projects/github-com-eyrefree-efqrcode-master)

## 8. 开源协议类型

这个的话，因为我的 iOS 库是发布在 CocoaPods 的，我用的是 CocoaPods 提供的，URL 如下：

```
https://img.shields.io/cocoapods/l/{项目名称}.svg?style=flat
```

以 Alamofire 为例，Markdown 代码和效果如下：

```markdown
![](https://img.shields.io/cocoapods/l/Alamofire.svg?style=flat)
```

![](https://img.shields.io/cocoapods/l/Alamofire.svg?style=flat)

如果你的库已经发布到 CocoaPods 的话，我们只要把上面的 Alamofire 改为自己的项目名称即可。如果你的发布工具不提供开源协议类型的徽标的话，可以用自定义徽标的方式实现，具体可参考下文自定义徽标一节，这里给出徽标代码：

```
https://img.shields.io/badge/license-{协议名称}-000000.svg
```

将 {协议名称} 替换为你的项目所使用的协议名称即可，例如 MIT：

```
![](https://img.shields.io/badge/license-MIT-000000.svg)
```

![](https://img.shields.io/badge/license-MIT-000000.svg)

# 三. 自定义徽标

## 1. 标题／内容／颜色／链接

如果以上这些徽标没有满足你的需求，我们还可以定制自己的个性化徽标，`shields.io` 提供了添加自定义徽标的功能，通过修改如下 URL 即可获取自定义徽标图片：

```
https://img.shields.io/badge/{徽标标题}-{徽标内容}-{徽标颜色}.svg
```

{徽标标题}：徽标左半部分的文本（短线：--，下划线：\_\_，空格： 或\_）；   
{徽标内容}：徽标右半部分的文本，同上；   
{徽标颜色}：徽标右半部分背景颜色，可以是 red、green、blue 等颜色英文单词，也可以直接写十六进制的颜色值，如 ff69b4，示例如下：

![](https://img.shields.io/badge/color-brightgreen-brightgreen.svg?maxAge=2592000)
![](https://img.shields.io/badge/color-green-green.svg?maxAge=2592000)
![](https://img.shields.io/badge/color-yellowgreen-yellowgreen.svg?maxAge=2592000)
![](https://img.shields.io/badge/color-yellow-yellow.svg?maxAge=2592000)
![](https://img.shields.io/badge/color-orange-orange.svg?maxAge=2592000)
![](https://img.shields.io/badge/color-red-red.svg?maxAge=2592000)
![](https://img.shields.io/badge/color-lightgrey-lightgrey.svg?maxAge=2592000)
![](https://img.shields.io/badge/color-blue-blue.svg?maxAge=2592000)
![](https://img.shields.io/badge/color-ff69b4-ff69b4.svg?maxAge=2592000)

将其中的 {徽标标题}、{徽标内容}、{徽标颜色} 分别替换为需要的内容即可，例如我的微博徽标图片地址如下：

```
https://img.shields.io/badge/weibo-@EyreFree-red.svg
```

再结合我的微博地址 [http://weibo.com/eyrefree777](http://weibo.com/eyrefree777) 后完整徽标代码和效果如下（如果这段代码用在 GitHub 的话，点击该徽标会打开对应的 URL 地址，即直接跳到我的微博）：

```markdown
[![](https://img.shields.io/badge/weibo-@EyreFree-red.svg)](http://weibo.com/eyrefree777)
```

[![](https://img.shields.io/badge/weibo-@EyreFree-red.svg)](http://weibo.com/eyrefree777)

同理我的推特徽标代码和效果如下：

```markdown
[![](https://img.shields.io/badge/twitter-@EyreFree777-blue.svg)](https://twitter.com/EyreFree777)
```

[![](https://img.shields.io/badge/twitter-@EyreFree777-blue.svg)](https://twitter.com/EyreFree777)

## 2. 附加参数

可以在徽标图片 URL 后面带上一些参数来控制徽标的样式，这一部分是可选的，不想折腾的话默认的样式就挺好了，可以不看这里的。

使用方法就是在徽标图片 URL 后面跟上 `?{参数名}={参数值}`

多个参数联用的话就是 `?{参数名1}={参数值1}&{参数名2}={参数值2}...`

### 1. style

style 控制徽标的主体样式，有四种，不设置的话默认是 `flat` 的，示例代码和效果如下：

#### plastic

塑料？大概是指立体效果

```markdown
![](https://img.shields.io/cocoapods/v/Alamofire.svg?style=plastic)
```

![](https://img.shields.io/cocoapods/v/Alamofire.svg?style=plastic)

#### flat

正常的样子，扁平化

```markdown
![](https://img.shields.io/cocoapods/v/Alamofire.svg?style=flat)
```

![](https://img.shields.io/cocoapods/v/Alamofire.svg?style=flat)

#### flat-square

扁平化 + 去除圆角

```markdown
![](https://img.shields.io/cocoapods/v/Alamofire.svg?style=flat-square)
```

![](https://img.shields.io/cocoapods/v/Alamofire.svg?style=flat-square)

#### social

社交样式

```markdown
![](https://img.shields.io/cocoapods/v/Alamofire.svg?style=social)
```

![](https://img.shields.io/cocoapods/v/Alamofire.svg?style=social)

### 2. label

该参数可以用来强制覆盖原有的徽标标题文字，效果如下，原有的 pod 字样已经被覆盖了：

```markdown
![](https://img.shields.io/cocoapods/v/Alamofire.svg?label=healthinesses)
```

![](https://img.shields.io/cocoapods/v/Alamofire.svg?label=healthinesses)


### 3. logo

该参数可以用来为徽标添加 logo，logo 图片会出现在左半部分的徽标标题左边，logo 图片高度必须 ≥ 14px，logo 图片需要先转为 base64 编码然后直接插入到 URL 中（可以用 [http://b64.io/](http://b64.io/) 将图片转为 base64 编码的字符串），格式如下。

```
?logo={base64 编码后的图片数据}
```

示例代码和效果如下：

```
![](https://img.shields.io/badge/gadget-Raspberry%20Pi-pink.svg?logo=data%3Aimage%2Fpng%3Bbase64%2CiVBORw0KGgoAAAANSUhEUgAAAAsAAAAOCAYAAAD5YeaVAAACJ0lEQVR4AW2Qy0tUfxjGv3Pm3O%2BXGec3jnMZZ9Rxxp%2BWkYpJ2QkVIzDpkkoGBSOpBZmWgRIkWSs30SJchC26B9aijKLaFET9Be1q46ayRVDU5uk9Q8seeOG8X573eT%2FnZbwQqo5l5Rube52PQdH3BcaY4SbEiy2%2B%2FWFLv7ueblJv0luJmRHBHzqfwuyDRkzfKqB8pRZeQnwzuZynvgHTtwsYvZRBs2%2BVGSU5nfsjX2bocexqDsMLKXgZCQfmkzi6lK0EDJxOfNJdoYORQl5O3OeXY5%2BH59PI5XXUMh3RuIQR6v2J2Ld8h3488FXMBWb2TJkNPw9GUzirF3HX2oZFrQUD0Rqc84rfVcaPs0D%2FcTK%2FQ6y6N6eVsJX3MCglcUzJYVytw6CYxKRSj1Elu0bWCBNCXCnPGz96pTieOTvxyN6OIm%2Fhid2Nx1SzWhGxsLwR4aQ9rFOMPl8lwwQlvXZ78NLZhRbBwZrTjReOjzuENKc1YUTOrLJ%2BKf7%2BsrEJhIL7dhfOaI34n7cxpRWwYnbghFqPMmENyelXzOLE0d1SNbrFGOKcgmDwnduH61Y7zJCAvVINDisZJMPqNEuHVeOQnPr11u3FESWLa2ZbBecp8VNaZXBBb15njHUxmxPC7YK3uGS0YkzNo1VwcZJWtwkeThHKMg33SfEVMqsskBeSjLqwMZYKa18ppXKRwESIv0u8NVPFyRb7hxK0ZYX%2BfIPO95D6KBXH%2FuoPnu%2FBfZ7Zxb0AAAAASUVORK5CYII)
```

![](https://img.shields.io/badge/gadget-Raspberry%20Pi-pink.svg?logo=data%3Aimage%2Fpng%3Bbase64%2CiVBORw0KGgoAAAANSUhEUgAAAAsAAAAOCAYAAAD5YeaVAAACJ0lEQVR4AW2Qy0tUfxjGv3Pm3O%2BXGec3jnMZZ9Rxxp%2BWkYpJ2QkVIzDpkkoGBSOpBZmWgRIkWSs30SJchC26B9aijKLaFET9Be1q46ayRVDU5uk9Q8seeOG8X573eT%2FnZbwQqo5l5Rube52PQdH3BcaY4SbEiy2%2B%2FWFLv7ueblJv0luJmRHBHzqfwuyDRkzfKqB8pRZeQnwzuZynvgHTtwsYvZRBs2%2BVGSU5nfsjX2bocexqDsMLKXgZCQfmkzi6lK0EDJxOfNJdoYORQl5O3OeXY5%2BH59PI5XXUMh3RuIQR6v2J2Ld8h3488FXMBWb2TJkNPw9GUzirF3HX2oZFrQUD0Rqc84rfVcaPs0D%2FcTK%2FQ6y6N6eVsJX3MCglcUzJYVytw6CYxKRSj1Elu0bWCBNCXCnPGz96pTieOTvxyN6OIm%2Fhid2Nx1SzWhGxsLwR4aQ9rFOMPl8lwwQlvXZ78NLZhRbBwZrTjReOjzuENKc1YUTOrLJ%2BKf7%2BsrEJhIL7dhfOaI34n7cxpRWwYnbghFqPMmENyelXzOLE0d1SNbrFGOKcgmDwnduH61Y7zJCAvVINDisZJMPqNEuHVeOQnPr11u3FESWLa2ZbBecp8VNaZXBBb15njHUxmxPC7YK3uGS0YkzNo1VwcZJWtwkeThHKMg33SfEVMqsskBeSjLqwMZYKa18ppXKRwESIv0u8NVPFyRb7hxK0ZYX%2BfIPO95D6KBXH%2FuoPnu%2FBfZ7Zxb0AAAAASUVORK5CYII)

### 4. logoWidth

该参数可以设置在上一个参数 logo 中添加的图标的宽度，设为 0 的话即为忽略该参数，示例代码和效果如下：

```
![](https://img.shields.io/badge/gadget-Raspberry%20Pi-pink.svg?logoWidth=100&logo=data%3Aimage%2Fpng%3Bbase64%2CiVBORw0KGgoAAAANSUhEUgAAAAsAAAAOCAYAAAD5YeaVAAACJ0lEQVR4AW2Qy0tUfxjGv3Pm3O%2BXGec3jnMZZ9Rxxp%2BWkYpJ2QkVIzDpkkoGBSOpBZmWgRIkWSs30SJchC26B9aijKLaFET9Be1q46ayRVDU5uk9Q8seeOG8X573eT%2FnZbwQqo5l5Rube52PQdH3BcaY4SbEiy2%2B%2FWFLv7ueblJv0luJmRHBHzqfwuyDRkzfKqB8pRZeQnwzuZynvgHTtwsYvZRBs2%2BVGSU5nfsjX2bocexqDsMLKXgZCQfmkzi6lK0EDJxOfNJdoYORQl5O3OeXY5%2BH59PI5XXUMh3RuIQR6v2J2Ld8h3488FXMBWb2TJkNPw9GUzirF3HX2oZFrQUD0Rqc84rfVcaPs0D%2FcTK%2FQ6y6N6eVsJX3MCglcUzJYVytw6CYxKRSj1Elu0bWCBNCXCnPGz96pTieOTvxyN6OIm%2Fhid2Nx1SzWhGxsLwR4aQ9rFOMPl8lwwQlvXZ78NLZhRbBwZrTjReOjzuENKc1YUTOrLJ%2BKf7%2BsrEJhIL7dhfOaI34n7cxpRWwYnbghFqPMmENyelXzOLE0d1SNbrFGOKcgmDwnduH61Y7zJCAvVINDisZJMPqNEuHVeOQnPr11u3FESWLa2ZbBecp8VNaZXBBb15njHUxmxPC7YK3uGS0YkzNo1VwcZJWtwkeThHKMg33SfEVMqsskBeSjLqwMZYKa18ppXKRwESIv0u8NVPFyRb7hxK0ZYX%2BfIPO95D6KBXH%2FuoPnu%2FBfZ7Zxb0AAAAASUVORK5CYII)
```

![](https://img.shields.io/badge/gadget-Raspberry%20Pi-pink.svg?logoWidth=100&logo=data%3Aimage%2Fpng%3Bbase64%2CiVBORw0KGgoAAAANSUhEUgAAAAsAAAAOCAYAAAD5YeaVAAACJ0lEQVR4AW2Qy0tUfxjGv3Pm3O%2BXGec3jnMZZ9Rxxp%2BWkYpJ2QkVIzDpkkoGBSOpBZmWgRIkWSs30SJchC26B9aijKLaFET9Be1q46ayRVDU5uk9Q8seeOG8X573eT%2FnZbwQqo5l5Rube52PQdH3BcaY4SbEiy2%2B%2FWFLv7ueblJv0luJmRHBHzqfwuyDRkzfKqB8pRZeQnwzuZynvgHTtwsYvZRBs2%2BVGSU5nfsjX2bocexqDsMLKXgZCQfmkzi6lK0EDJxOfNJdoYORQl5O3OeXY5%2BH59PI5XXUMh3RuIQR6v2J2Ld8h3488FXMBWb2TJkNPw9GUzirF3HX2oZFrQUD0Rqc84rfVcaPs0D%2FcTK%2FQ6y6N6eVsJX3MCglcUzJYVytw6CYxKRSj1Elu0bWCBNCXCnPGz96pTieOTvxyN6OIm%2Fhid2Nx1SzWhGxsLwR4aQ9rFOMPl8lwwQlvXZ78NLZhRbBwZrTjReOjzuENKc1YUTOrLJ%2BKf7%2BsrEJhIL7dhfOaI34n7cxpRWwYnbghFqPMmENyelXzOLE0d1SNbrFGOKcgmDwnduH61Y7zJCAvVINDisZJMPqNEuHVeOQnPr11u3FESWLa2ZbBecp8VNaZXBBb15njHUxmxPC7YK3uGS0YkzNo1VwcZJWtwkeThHKMg33SfEVMqsskBeSjLqwMZYKa18ppXKRwESIv0u8NVPFyRb7hxK0ZYX%2BfIPO95D6KBXH%2FuoPnu%2FBfZ7Zxb0AAAAASUVORK5CYII)

### 5. link

据说该参数是用来设置 style 为 social 类型点击后跳转的 URL 的（嗯，俗称超链接），并且应该能够设置左右两边为不同的 URL，官方描述如下：

- Specify what clicking on the left/right of a badge should do (esp. for social badge style)

如果把 URL 贴到浏览器中直接访问的确是这样的，比如直接在浏览器中打开下面这个链接，点击左半部分会跳到百度，右半部分则跳到 Google（感谢 [@yuzhouwww](https://github.com/yuzhouwww) 同学的提示）：

[https://img.shields.io/badge/weibo-@EyreFree-red.svg?style=social&link=https://www.baidu.com&link=https://www.google.com](https://img.shields.io/badge/weibo-@EyreFree-red.svg?style=social&link=https://www.baidu.com&link=https://www.google.com)

不过如果直接添加在 Markdown 中显示貌似没啥效果？如果有大佬知道的求指点，感谢！

```
![](https://img.shields.io/badge/weibo-@EyreFree-red.svg?style=social&link=https://www.baidu.com&link=https://www.google.com)
```

![](https://img.shields.io/badge/weibo-@EyreFree-red.svg?style=social&link=https://www.baidu.com&link=https://www.google.com)

### 6. colorA

该参数用来控制徽标左半部分的背景色，只能用十六进制的颜色作为参数哦，不能直接写 red、green、blue 之类的，这里将左半部分的背景色改为 0xabcdef，代码和效果如下：

```markdown
![](https://img.shields.io/badge/twitter-@EyreFree777-blue.svg?colorA=abcdef)
```

![](https://img.shields.io/badge/twitter-@EyreFree777-blue.svg?colorA=abcdef)

### 7. colorB

该参数用来控制徽标右半部分的背景色，同上，只能用十六进制的颜色作为参数哦，不能直接写 red、green、blue 之类的，这里将右半部分的背景色改为 0xabcdef，代码和效果如下：

```markdown
![](https://img.shields.io/badge/twitter-@EyreFree777-blue.svg?colorB=abcdef)
```

![](https://img.shields.io/badge/twitter-@EyreFree777-blue.svg?colorB=abcdef)

### 8. maxAge

该参数用来设置 HTTP 缓存时间，以秒为单位，直接在 svg 地址后跟 `?maxAge={缓存秒数}` 即可，好像没啥好预览的，不放效果图了。

### 备注

这里需要注意的是，如果你是引用的第三方 svg 然后添加自己的样式，如果该样式之前已经被第三方添加过，是不一定会覆盖第三方的设置的，也就是说自己设置的属性不一定会生效...例如下面的代码设置 colorB 就没生效：

```markdown
![](https://img.shields.io/cocoapods/v/Alamofire.svg?colorB=000000)
```

右半部分应该变成黑色，但是毫无效果的说：

![](https://img.shields.io/cocoapods/v/Alamofire.svg?colorB=000000)

# 四. 其他

默认的徽标是居左排列的，如果需要居中排列需要使用 HTML 的方式来插入徽标，可参考 [Kingfisher](https://github.com/onevcat/Kingfisher)，代码和效果如下：

```html
<p align="center">
<a href="https://travis-ci.org/onevcat/Kingfisher"><img src="https://img.shields.io/travis/onevcat/Kingfisher/master.svg"></a>
<a href="https://github.com/Carthage/Carthage/"><img src="https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat"></a>
<a href="https://swift.org/package-manager/"><img src="https://img.shields.io/badge/SPM-ready-orange.svg"></a>
<a href="http://onevcat.github.io/Kingfisher/"><img src="https://img.shields.io/cocoapods/v/Kingfisher.svg?style=flat"></a>
<a href="https://raw.githubusercontent.com/onevcat/Kingfisher/master/LICENSE"><img src="https://img.shields.io/cocoapods/l/Kingfisher.svg?style=flat"></a>
<a href="http://onevcat.github.io/Kingfisher/"><img src="https://img.shields.io/cocoapods/p/Kingfisher.svg?style=flat"></a>
<a href="https://codebeat.co/projects/github-com-onevcat-kingfisher"><img alt="codebeat badge" src="https://codebeat.co/assets/svg/badges/A-398b39-669406e9e1b136187b91af587d4092b0160370f271f66a651f444b990c2730e9.svg" /></a>
</p>
```

<p align="center">
<a href="https://travis-ci.org/onevcat/Kingfisher"><img src="https://img.shields.io/travis/onevcat/Kingfisher/master.svg"></a>
<a href="https://github.com/Carthage/Carthage/"><img src="https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat"></a>
<a href="https://swift.org/package-manager/"><img src="https://img.shields.io/badge/SPM-ready-orange.svg"></a>
<a href="http://onevcat.github.io/Kingfisher/"><img src="https://img.shields.io/cocoapods/v/Kingfisher.svg?style=flat"></a>
<a href="https://raw.githubusercontent.com/onevcat/Kingfisher/master/LICENSE"><img src="https://img.shields.io/cocoapods/l/Kingfisher.svg?style=flat"></a>
<a href="http://onevcat.github.io/Kingfisher/"><img src="https://img.shields.io/cocoapods/p/Kingfisher.svg?style=flat"></a>
<a href="https://codebeat.co/projects/github-com-onevcat-kingfisher"><img alt="codebeat badge" src="https://codebeat.co/assets/svg/badges/A-398b39-669406e9e1b136187b91af587d4092b0160370f271f66a651f444b990c2730e9.svg" /></a>
</p>

没了，🙄

---

> 如有任何知识产权、版权问题或理论错误，还请指正。   
> [https://github.com/EyreFree/EFArticles/blob/master/EFArticles/GitHub/GitHub%20项目徽章的添加和设置.md](https://github.com/EyreFree/EFArticles/blob/master/EFArticles/GitHub/GitHub%20项目徽章的添加和设置.md)   
> 转载请注明原作者及以上信息。
