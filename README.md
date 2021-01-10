# pywpsrpc

[![Build Status](https://travis-ci.org/timxx/pywpsrpc.svg?branch=master)](https://travis-ci.org/timxx/pywpsrpc)
[![PyPI version](https://img.shields.io/pypi/v/pywpsrpc.svg)](https://pypi.org/project/pywpsrpc/)
[![Python version](https://img.shields.io/badge/python-3.6+-green.svg)](http://python.org/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

WPS Office for Linux二次开发C++接口Python绑定.

*Read this in other languages: [English](README_en.md)*

## WPS Office二次开发接口

WPS二次开发接口允许开发者通过给定的接口来调起WPS并执行指定的任务，
比如你可以打开、编辑然后保存文档，转换文档格式等文档自动化操作，又或者将WPS嵌入到自己的程序、进行功能扩展等。


C++ SDK头文件拷贝自[wps_cpp](https://zouyingfeng.coding.net/public/wps/wps/git/files/master/cpp)，且无任何修改：
```
Copyright @ 2012-2019, Kingsoft office,All rights reserved.
```

关于详细的接口文档，可参考WPS官方的开发网站[https://open.wps.cn/docs/office](https://open.wps.cn/docs/office)
或参考VBA官方文档[https://docs.microsoft.com/en-us/office/vba/api/overview/](https://docs.microsoft.com/en-us/office/vba/api/overview/)。


对于pywpsrpc本身的文档，可跳转到[wiki](https://github.com/timxx/pywpsrpc/wiki)查看。


## 依赖
  - Python 3.6+
  - Qt5 (C++ SDK依赖)
  - WPS Office for Linux 11.1.0.9080+
  - sip 6.0+ (仅编译)
  - qmake (仅编译)
  - g++ (仅编译)
  - 桌面环境（WPS运行需要）

  PS，目前WPS整合模式有BUG，非把WPS嵌入到自己进程的场景建议先切换到多组件模式


## 如何编译

在项目顶层目录下运行终端执行： `sip-build`

如果需要查看编译相关输出信息，可添加 *--verbose* 选项


## 安装

建议通过PyPi安装:

`pip install pywpsrpc`

如果默认的源太慢，建议自行搜索添加中国pip源

通过源码编译安装:

先打包执行： `sip-wheel`

打包完成后再通过`pip install pywpsrpc-*.whl`命令安装


## 快速上手

``` python
# 第一步先import所需模块（rpcxxxapi，xxx为对应项目的名字）
# rpcwpsapi模块为WPS文字项目的开发接口
# rpcwppapi则是WPS演示的
# rpcetapi毫无疑问就是WPS表格的了
# 另外还有common模块，为前三者的公共接口模块，通常不能单独使用

# 调起WPS必需通过createXXXRpcInstance接口，所以导入它是必需的
# 以WPS文字为例
from pywpsrpc.rpcwpsapi import (createWpsRpcInstance, wpsapi)
from pywpsrpc import RpcIter


# 这里仅创建RPC实例
hr, rpc = createWpsRpcInstance()

# 注意：
# WPS开发接口的返回值第一个总是HRESULT（无返回值的除外）
# 通常不为0的都认为是调用失败（0 == common.S_OK）
# 可以使用common模块里的FAILED或者SUCCEEDED去判断

# 通过rpc实例调起WPS进程
hr, app = rpc.getWpsApplication()

# 比如添加一个空白文档
hr, doc = app.Documents.Add()

# 加点文字
selection = app.Selection
selection.InsertAfter("Hello, world")

# 将前面插入的"Hello, world"加粗
selection.Font.Bold = True

# 光标移到末尾
selection.EndKey()

# 再插入空段
selection.InsertParagraph()

# 光标移到新段
selection.MoveDown()

# 再码些文字
selection.TypeText("pywpsrpc~")

# 使用RpcIter遍历所有段
paras = doc.Paragraphs
for para in RpcIter(paras):
    print(para.Range.Text)

# 或者通过索引方式
for i in range(0, paras.Count):
    # 注意：首个元素总是从1开始
    print(paras[i + 1].OutlineLevel)

def onDocumentBeforeSave(doc):
    # 如果想取消当前文档保存，第二个返回值设为True
    print("onDocumentBeforeSave called for doc: ", doc.Name)
    # SaveAsUI, Cancel
    return True, False

# 注册文档保存前通知
rpc.registerEvent(app,
                  wpsapi.DIID_ApplicationEvents4,
                  "DocumentBeforeSave",
                  onDocumentBeforeSave)

# 保存文档, onDocumentBeforeSave会被调用到
doc.SaveAs2("test.docx")

# 退出WPS进程
# 使用wpsapi.wdDoNotSaveChanges来忽略文档改动
app.Quit(wpsapi.wdDoNotSaveChanges)
```

## 例子

[文字文档互转](examples/rpcwpsapi/convertto)

[WPS嵌入第三方进程](examples/rpcwpsapi/embedded)

## 在服务器上运行
[点我查看](https://github.com/timxx/pywpsrpc/wiki/Run-on-Server)

