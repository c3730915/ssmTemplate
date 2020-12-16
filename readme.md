# 一个简单上手的ssm框架搭建项目

很多朋友可能都有学习SSM项目的时候，繁琐的xml文件配置，或者说很难在网上找到一个完整的项目模块。本项目仅仅提供了简单的项目框架搭建，以供大家进行学习

## 项目树

> ├─.idea
> ├─src
> │  └─main
> │      ├─java
> │      │  └─org
> │      │      └─jayden
> │      │          ├─controller 
> │      │          ├─domain
> │      │          ├─mapper
> │      │          └─service
> │      ├─resources
> │      │  └─org
> │      │      └─jayden
> │      │          └─mapper
> │      └─webapp
> │          └─WEB-INF
> │              └─pages
> └─target



## 项目优势

- 简单，仅仅是一个项目框架，稍微有些基础知识便可以上手
- 注释简单明了，可以尝试在自己的电脑上进行操作
- 实现了最基本的改查操作，集成Bootstrap模板



## 项目解释

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

