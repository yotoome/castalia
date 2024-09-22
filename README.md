# [Castalia](https://afterwork-design.github.io/castalia/)

不只是设计师的灵感源泉。精选国内外优质网站，让每个人都能找到自己需要的网站。

## 本地运行

首先需要安装 node.js，建议 14.18.0 版本。

1、克隆仓库
2、安装依赖：`npm install`
3、运行：`npm run dev`

## 添加资源

目前网站上的资源都采用 json 文件数据进行配置。


## 构建和运行 Docker 镜像
 1. 构建镜像：
    在终端中导航到包含 Dockerfile 的目录，然后运行以下命令来构建镜像：
    `docker build -t castalia-app`

 2. 运行容器：
    启动容器并映射端口：
    `docker run -d -p 3000:3000 castalia-app`

 3. 访问应用程序：
    打开浏览器并访问 `http://localhost:3000` 来查看应用程序。


### Pull Request 方式

**做任何修改前，请先 fork 一份代码到自己的账号下，然后对自己的仓库文件进行修改，修改后提交 pull request**。

打开 `src/server/resource.json` 文件，这个文件的内容结构如下：
```json
[
    {
        "name": "分类一名称",
        // 图片路径，图片都放在 public 文件夹下
        "icon": "./images/menu/icon.svg",
        "site": [
            {
                "name": "资源一名称",
                "description": "资源描述",
                // 资源url
                "url": "https://www.baidu.com",
                // 资源图片，图片放在 public 文件夹下
                "image": "./avatar.svg"
            }
            ...
        ]
    },
    ...
]
```

例如，添加 **Icon** 分类，**Icon** 分类下有 **IconFont** 和 **IconPark** 两个资源。在源文件 `src/server/resource.json` 的基础上，添加内容：

```json
[
    ...

    {
        "name": "Icon",
        "icon": "./images/menu/icon.svg",
        "site": [
            {
                "name": "IconFont",
                "description": "IconFont 的描述",
                "url": "https://www.iconfont.cn/",
                "image": "./iconfont.svg"
            },
            {
                "name": "IconPark",
                "description": "IconPark 的描述",
                "url": "https://iconpark.oceanengine.com/home",
                "image": "./iconpark.svg"
            }
        ]
    }
]
```

### 其他方式

提交 [issue](https://github.com/afterwork-design/castalia/issues)，详细说明需求，然后由负责人去处理 issue。
