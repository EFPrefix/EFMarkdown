# GitHub Wiki 页面的添加和设置

目前大家在 GitHub 上发布的项目，一般使用 Markdown 来编写项目文档和 README.md 等。Markdown 一般情况下能够满足我们的文档编写需求，如果使用得当的话，效果也非常棒。不过当项目文档比较长的时候，阅读体验可能就不是那么理想了，这种情况我想大家应该都曾经遇到过。

GitHub 每一个项目都有一个独立完整的 Wiki 页面，我们可以用它来实现项目信息管理，为项目提供更加完善的文档。我们可以把 Wiki
作为项目文档的一个重要组成部分，将冗长、具体的文档整理成 Wiki，将精简的、概述性的内容，放到项目中或是 README.md 里。

## 一. Wiki 简介

> Wiki 是一种在网络上开放且可供多人协同创作的超文本系统，由沃德·坎宁安于 1995 年首先开发，这种超文本系统支持面向社群的协作式写作，同时也包括一组支持这种写作。Wiki 站点可以有多人（甚至任何访问者）维护，每个人都可以发表自己的意见，或者对共同的主题进行扩展或者探讨。

上面这段描述引用自 [百度百科](http://baike.baidu.com/item/wiki/97755)，嗯，实际上百度百科本身也是一个 Wiki，最著名的 Wiki 大概是是 [维基百科](https://zh.wikipedia.org/wiki/%E7%BB%B4%E5%9F%BA%E7%99%BE%E7%A7%91) 了吧。

然后 Wiki 页面效果大概可以参考 [Kingfisher](https://github.com/onevcat/Kingfisher/wiki)，看起来还是非常棒的：

![Kingfisher 的 Wiki 页面](http://upload-images.jianshu.io/upload_images/1018190-51b1b1ab89fc7d4a.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

## 二. Wiki 的开启和关闭

GitHub 项目的 Wikis 功能默认是开启的，如果你没有找到 Wiki 选项卡，可能是因为该项目关闭了 Wikis 选项，在项目 Setting 中将其选中即可，如图所示：

![Wikis 开关](http://upload-images.jianshu.io/upload_images/1018190-55bf326e65831bdb.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

如果在之后某一天决定不再继续使用 Wikis 也可以通过取消该功能的勾选将其关闭，即使已经添加了 Wiki 页面也可以。并且会保存之前的 Wiki 页面内容，即关闭 Wiki 功能并不会清除内容，还可以随时再打开。

## 三. 创建和编辑页面

GitHub 的 Wiki 页面在如图所示选项卡下，默认应该是开启的，但是是空的，我们可以点击中间那个绿色的 `Create the first page` 按钮创建一个页面。

![创建 Wiki 页面](http://upload-images.jianshu.io/upload_images/1018190-fadd06a0b50a299b.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

如果你没有找到 Wiki 选项卡，可能是因为该项目关闭了 Wikis 选项，在项目 Setting 中将其选中即可，参考上文内容。

点击 `Create the first page` 按钮后会进入 Create new page 页面：

![Create new page](http://upload-images.jianshu.io/upload_images/1018190-b5082f398cf04cd2.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

从上往下进行介绍，顶部的输入框是页面标题；Edit mode 控制编辑页面的标记语言类型，这里默认的是 Markdown，支持的类型如下图所示：

![Edit mode 下拉列表](http://upload-images.jianshu.io/upload_images/1018190-8955fdc3169fe36c.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

中间的是页面内容，我们可以用 Edit mode 选择的语法在这里编写页面内容；底部编辑框用来输入本次编辑保存时的提交信息；编辑完成后点击 `Save Page` 按钮即可保存，唔，保存前可以先切换到 Preview 选项卡下进行预览，看一下效果是否是自己想要的。

然后保存我们新建的页面，大概会是如下效果：

![新建页面完成](http://upload-images.jianshu.io/upload_images/1018190-f3bbc7ae3f87d86a.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

点击右上角的 `Edit` 按钮可以对当前页面进行编辑，也可以点击 `New Page` 按钮继续添加新的页面。

唔，这里有一点需要注意的是，默认的主页标题必须为 Home，如果不存在标题为 Home 的页面，切换到项目的 Wiki 选项卡时，会显示一个所有页面组成的列表。所以我们的主页必须以 Home 为标题。

![image.png](http://upload-images.jianshu.io/upload_images/1018190-ac17b4a9220d4503.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

目前好像没什么内容，感觉比较空额，不过没关系，接下来我们会一步步完善。

## 四. 添加页脚

点击 Wiki 页面底部的 `Add a custom footer` 按钮，进入新建页脚页面，如图所示：

![Add a custom footer](http://upload-images.jianshu.io/upload_images/1018190-898c1c9b8ff154b1.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

新建页脚页面实际上就是一个普通的 Create new page 页面，不过标题需要设为 _Footer 并且不能修改（如果修改了就不会被当作页脚来处理了）。

我们可以参考 Kingfisher 的页脚代码，放置多个超链接在这里供读者在阅读完某一页后快速跳转到关键的章节或页面去，具体代码和效果如下：

```markdown
[Installation](https://github.com/onevcat/Kingfisher/wiki/Installation-Guide) - [Cheat Sheet](https://github.com/onevcat/Kingfisher/wiki/Cheat-Sheet) - [FAQ](https://github.com/onevcat/Kingfisher/wiki/FAQ) - [API Reference](http://onevcat.github.io/Kingfisher/)
```

![Kingfisher 页脚效果](http://upload-images.jianshu.io/upload_images/1018190-ff95cc5b1f8caeb7.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

当然也可以放一些奇怪的东西，比如，这样的：

![+1s](http://upload-images.jianshu.io/upload_images/1018190-58c20385b24679b8.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

如上图所示，点击页脚右侧的编辑按钮，就可以对页脚进行编辑啦，很方便。

## 五. 添加侧边栏

点击右侧的 `Add a custom sidebar` 按钮可以添加侧边栏，和页脚同理，页面名为特殊的 _Sidebar：

![Add a custom sidebar](http://upload-images.jianshu.io/upload_images/1018190-d71291cb72c041e0.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

我们可以参考 Kingfisher 的侧边栏实现，代码和效果如下：

```markdown
## Getting Started

* [Getting Started with Kingfisher](https://github.com/onevcat/Kingfisher/wiki/Getting-Started-with-Kingfisher)
* [Install Kingfisher](https://github.com/onevcat/Kingfisher/wiki/Installation-Guide)
* [Cheat Sheet](https://github.com/onevcat/Kingfisher/wiki/Cheat-Sheet)
* [API Reference](http://onevcat.github.io/Kingfisher/)

## Migration Guide

* [3.0 Migration Guide](https://github.com/onevcat/Kingfisher/wiki/Kingfisher-3.0-Migration-Guide)
* [2.0 Migration Guide](https://github.com/onevcat/Kingfisher/wiki/Kingfisher-2.0-Migration-Guide)

## Communication

* [FAQ](https://github.com/onevcat/Kingfisher/wiki/FAQ)
* [Ask a question](http://stackoverflow.com/search?q=kingfisher)
* [Submit an issue](https://github.com/onevcat/Kingfisher/issues/new)
* [Open a pull request](https://github.com/onevcat/Kingfisher/compare)

## Information

* [Change Log](https://github.com/onevcat/Kingfisher/blob/master/CHANGELOG.md)
```

![Kingfisher 的侧边栏](http://upload-images.jianshu.io/upload_images/1018190-eb156bb5531e33ab.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

这里的话可以自己适当摸索一下，调整标题层级等样式，以获得一个自己比较满意的展示效果。同样的，点击侧边栏右上角的编辑按钮可以对快速侧边栏进行在线编辑。

![侧边栏编辑按钮](http://upload-images.jianshu.io/upload_images/1018190-9935667a3e9db865.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

## 六. 查看编辑历史

进入某个页面的编辑页面，点击右上角的 `Page History` 按钮，可以查看该页面的编辑历史，如下图所示：

![Page History 按钮](http://upload-images.jianshu.io/upload_images/1018190-4b8793bbd61f8087.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![编辑历史页面](http://upload-images.jianshu.io/upload_images/1018190-f4738bce2c4201fa.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

## 七. 权限控制

那么问题来了，既然是 Wiki 的话，为啥以上这些内容完全是项目所有者一个人手撸呢，完全没有体现出「多人协作」的特性啊喂。

嗯，GitHub Wiki 是可以开放给所有人编辑权限的，不过默认是只有项目所有者和合作者才有权限编辑的，只要到 Setting 中将 Restrict editing to collaborators only 选项去除勾选即可。

![Restrict editing to collaborators only](http://upload-images.jianshu.io/upload_images/1018190-eeda3279fe26cc8f.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

这样的话，只要有 GitHub 账号的用户，都可以对该项目的 Wiki 进行编辑。如果怕被胡乱篡改，不想开放编辑权限的话，还是保持勾选好了。

## 八. 本地编辑

唔，上文内容一直在介绍 Wiki 的在线编辑，实际上 Wiki 是一个单独的 Git 仓库，可以 Clone 到本地进行操作

### 1. Wiki 仓库下载

细心的同学应该已经注意到了，Wiki 的右下角处有当前 Wiki 的 Git 仓库地址（我们也可以通过该方法下载他人所属的 Wiki 页面的源代码）：

![Wiki 仓库地址](http://upload-images.jianshu.io/upload_images/1018190-23f30e41d4d6981b.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

Kingfisher 的 Wiki 仓库结构如下：

![Kingfisher Wiki 结构](http://upload-images.jianshu.io/upload_images/1018190-6795f9e7aaa9440a.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

接下来就可以直接对 Wiki 页面源文件进行编辑了，实际上就是一堆 Markdown 文件的组合（或者其他比标记语言，看你选的是啥了）。

### 2. 本地预览

我们在本地手动编辑编辑完成后，只能通过 push 到 GitHub 的方式进行预览，非常不方便，这个时候，就需要借助一个叫 [gollum](https://github.com/gollum/gollum) 的工具了。

Gollum 是 GitHub 上用到的 Wiki 引擎，使用它可以在本地上搭建一个类似的GitHub Wiki 的网站，对本地的 Wiki 页面进行快速预览。执行以下命令即可安装：

```
sudo gem install gollum
```

安装完成后，将路径切换到 Wiki 的 Git 仓库下然后执行 `gollum` 命令，然后访问 http://127.0.0.1:4567/ 即可进行预览。

![Gollum 预览](http://upload-images.jianshu.io/upload_images/1018190-34b7d6d79ffd94cd.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

## 九. 其他

Wiki 不仅仅可以作为项目辅助工具来用，你也可以把它当作一个个人信息知识库来使用，不需要搭建，不需要部署，无需付费，方便快捷，更多功鞥大家可以自行开发。

如果你觉得上文的报道，哦不，描述可能有偏差，[GitHub Wiki 的帮助文档](https://help.github.com/categories/wiki/) 也许能给你带来一些帮助。

---

> 如有任何知识产权、版权问题或理论错误，还请指正。   
> [https://github.com/EyreFree/EFArticles/blob/master/EFArticles/GitHub/GitHub%20Wiki%20%页面的添加和设置.md](https://github.com/EyreFree/EFArticles/blob/master/EFArticles/GitHub/GitHub%20Wiki%20页面的添加和设置.md)   
> 转载请注明原作者及以上信息。
