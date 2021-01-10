# pywpsrpc

[![Build Status](https://travis-ci.org/timxx/pywpsrpc.svg?branch=master)](https://travis-ci.org/timxx/pywpsrpc)
[![PyPI version](https://img.shields.io/pypi/v/pywpsrpc.svg)](https://pypi.org/project/pywpsrpc/)
[![Python version](https://img.shields.io/badge/python-3.6+-green.svg)](http://python.org/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Python bindings for WPS Office RPC (for Linux version only).

*Read this in other languages: [简体中文](README.md).*

What is WPS Office RPC?

To make it simple, it means you can use the rpc (api) get working with WPS Office,
open, edit and save documents,
extend the WPS Office functionals etc.

The C++ SDK headers was taken from [wps_cpp](https://zouyingfeng.coding.net/public/wps/wps/git/files/master/cpp) with *no changes*:
```
Copyright @ 2012-2019, Kingsoft office,All rights reserved.
```

For full API references, go to [https://open.wps.cn/docs/office](https://open.wps.cn/docs/office)
or [https://docs.microsoft.com/en-us/office/vba/api/overview/](https://docs.microsoft.com/en-us/office/vba/api/overview/).


For pywpsrpc document, go to the [wiki](https://github.com/timxx/pywpsrpc/wiki) page.


## Requirements
  - Python 3.6+
  - Qt5 (the SDK required both for building & running)
  - WPS Office for Linux 11.1.0.9080+
  - sip 6.0+ (for building)
  - qmake (for building)
  - g++ (for building)
  - Desktop Environment (WPS Office required)

  If you don't embed WPS into your program, you should switch WPS to All-in-One mode.

## How to build

Run `sip-build` under the project root directory

append *--verbose* for getting the progress of building


## Installation
The pywpsrpc can be installed from PyPi:

`pip install pywpsrpc`

You can also install from the source:

Run `sip-wheel` package first, and then install the whl by `pip install`

## Quick Start

``` python
# First import the module you want
# rpcwpsapi contains the interfaces for WPS
# rpcwppapi is for WPP
# and rpcetapi for ET
# the common module contains the shared interfaces, you can not use it alone.

# you always need the createXXXRpcInstance, so first import
# take wps for example here
from pywpsrpc.rpcwpsapi import (createWpsRpcInstance, wpsapi)
from pywpsrpc import RpcIter


# now create the rpc instance
hr, rpc = createWpsRpcInstance()

# most of the call returns the error code as the first value
# you can check it for fails (negative number means failed)
# 0 means all fines, you can use the common module's S_OK,
# FAILED or SUCCEEDED to check

# get the application and you get everything...
hr, app = rpc.getWpsApplication()

# Add blank doc e.g.
hr, doc = app.Documents.Add()

# append text...
selection = app.Selection
selection.InsertAfter("Hello, world")

# bold the "Hello, world"
selection.Font.Bold = True

# move cursor to end
selection.EndKey()

# add new paragraph
selection.InsertParagraph()

# move to next paragraph
selection.MoveDown()

# type some text
selection.TypeText("pywpsrpc~")

# iterate all paragraphs
paras = doc.Paragraphs
for para in RpcIter(paras):
    print(para.Range.Text)

# or use index based to loop
for i in range(0, paras.Count):
    # the first element starts with 1
    print(paras[i + 1].OutlineLevel)

def onDocumentBeforeSave(doc):
    # to discard the saving, return Cancel as True
    print("onDocumentBeforeSave called for doc: ", doc.Name)
    # SaveAsUI, Cancel
    return True, False

# get a notify about saving
rpc.registerEvent(app,
                  wpsapi.DIID_ApplicationEvents4,
                  "DocumentBeforeSave",
                  onDocumentBeforeSave)

# save the doc, onDocumentBeforeSave will be called
doc.SaveAs2("test.docx")

# Quit the application if you don't need anymore
# use wpsapi.wdDoNotSaveChanges to ignore the changes
app.Quit(wpsapi.wdDoNotSaveChanges)
```

## Examples

[Word document format convertor](examples/rpcwpsapi/convertto)

[Embed WPS into self process](examples/rpcwpsapi/embedded)

## Run on Server
[Click here](https://github.com/timxx/pywpsrpc/wiki/Run-on-Server)

