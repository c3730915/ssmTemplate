# 一个简单上手的ssm框架搭建项目

很多朋友可能都有学习SSM项目的时候，繁琐的xml文件配置，或者说很难在网上找到一个完整的项目模块。本项目仅仅提供了简单的项目框架搭建，以供大家进行学习
现在项目更新为查单词的网页。适配手机以及电脑
## 项目树
```
~~~~├─.idea
├─src
│  └─main
│      ├─java
│      │  └─org
│      │      └─jayden
│      │          ├─controller
│      │          ├─domain
│      │          ├─mapper
│      │          ├─service
│      │          └─Test
│      ├─resources
│      │  ├─org
│      │  │  └─jayden
│      │  │      └─mapper
│      │  └─shiro
│      └─webapp
│          ├─js
│          ├─pages
│          │  ├─login
│          │  │  ├─css
│          │  │  ├─img
│          │  │  └─js
│          │  └─tmp
│          │      ├─.idea
│          │      └─bootstrap-4.5.0-dist
│          │          ├─css
│          │          └─js
│          └─WEB-INF
└─target
    ├─classes
    │  ├─org
    │  │  └─jayden
    │  │      ├─controller
    │  │      ├─domain
    │  │      ├─mapper
    │  │      ├─service
    │  │      └─Test
    │  └─shiro
    ├─generated-sources
    │  └─annotations
    ├─maven-archiver
    ├─maven-status
    │  └─maven-compiler-plugin
    │      └─compile
    │          └─default-compile
    └─ssmTemplate
        ├─js
        ├─META-INF
        ├─pages
        │  ├─login
        │  │  ├─css
        │  │  ├─img
        │  │  └─js
        │  └─tmp
        │      ├─.idea
        │      └─bootstrap-4.5.0-dist
        │          ├─css
        │          └─js
        └─WEB-INF
            ├─classes
            │  ├─org
            │  │  └─jayden
            │  │      ├─controller
            │  │      ├─domain
            │  │      ├─mapper
            │  │      ├─service
            │  │      └─Test
            │  └─shiro
            └─lib~~~~
```


## 项目优势

- 简单，仅仅是一个项目框架，稍微有些基础知识便可以上手
- 注释简单明了，可以尝试在自己的电脑上进行操作
- 实现了最基本的改查操作，集成Bootstrap模板



## 项目资源解释（java类）

- controller 前端控制器，用于接受request请求
- domain 实体类，把Account封装成一个Java类
- mapper 接口类，声明了Account的操作：保存以及查询所有
- service 服务类 用于对实体进行真实操作，同时注入service 简化开发
- AccountMpapper 定义了Mybatis所有的sql操作
- applicationContex.xml 为spring的核心文件 配置了数据源的bean 并且和mybatis实现融合
- jdbc.properties 数据库的配置文件，本人数据库为mysql8。
- log4j.properties 日志数据文件，用于调试以及打印日志
- sping-mvc.xml mvc的核心配置文件
- sqlMapConfig.xml mybatis核心配置文件
- 测试类，可以在Test里面的WordTest里编写测试文件

## web资源类解释

- Webapp/js 存放js以及jQuery的脚本文件
- pages 用于存放前端页面的文件夹
- showTableWords.jsp 以列表方式展示单词(用于测试，后期应移除)
- pages/login 登录以及注册页面，目前尚未完全开发完成
- pages/tmp 存放查询单词界面的文件夹，目前还没有完成改名，后期会改名
- pages/tmp/main.jsp 现实单词的主页界面

## 注意事项
注意更改jdbc.properties里的密码，以适配自己的数据库！

