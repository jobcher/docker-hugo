---
title: "linux基础知识"
date: 2021-12-29
draft: true
author: "jobcher"
tags: ["运维"]
categories: ["基础"]
series: ["基础知识系列"]
---
# linux 基础知识

## 1、简述Linux权限划分原则。
1. 给文件或目录分配权限时，先考虑所有者和所属组
2. 遵循最小化权限，用啥权限给啥权限
3. 修改目录和子文件归属权限，注意递归
4. 文件权限分配是最常用的安全防护手段

## 2、当用户user1，对/testdir目录有写和执行权限时，该目录下的只读文件file1是否可修改和删除？

## 3、如果一个系统没有任何的备份策略，请写出一个较为全面合理的备份方案！

## 4、网站服务器每天产生的日志数量较大，请问如何备份?
1. 使用logrotate滚动日志
2. split大文件切分处理
3. shell脚本处理日志
## 5、简述Raid 0、Raid 1、Raid 5的特点与原理。

## 6、简述Raid6、Raid 10的特点与原理。

## 7、软Raid与硬Raid的区别？

## 8、Linux中有许多系统资源需要监管，请问有哪些命令可以查看？

## 9、简述CentOS 6.x的启动过程？

## 10、简述CentOS 7.x的启动过程？

## 11、如何进行Linux系统优化？

## 12、大文件如何删除？
1. 查看磁盘使用情况，查看是否需要扩容
```sh
df -h
```
2. 查找大文件，使用du定位大文件位置
```sh
# 在根目录查找，展示第一层级的目录和文件，倒叙排列 ，展示前10名
du -h / --max-depth=1 | sort -hr | head -n 10
```
3. 删除文件
```sh
# 删除文件可以直接用rm -rf 删除
rm -rf <文件或目录>
# 按时间和名称删除 :找到目录下，超过10天的文件 删除名字后缀为.gz的文件
find /目录/* -mtime +10 -name "*.gz" -exec rm -rf {} \

```