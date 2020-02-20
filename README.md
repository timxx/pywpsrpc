# pywpsrpc

[![Build Status](https://travis-ci.org/timxx/pywpsrpc.svg?branch=master)](https://travis-ci.org/timxx/pywpsrpc)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Python bindings for WPS Office RPC (for Linux version only).

What is WPS Office RPC?

To make it simple, it means you can use the rpc (api) get working with WPS Office,
open, edit and save documents,
extend the WPS Office functionals etc.

The C++ SDK headers was taken from [wps_cpp](https://dev.tencent.com/u/zouyingfeng/p/wps/git/tree/master/cpp) with *no changes*:
```
Copyright @ 2012-2019, Kingsoft office,All rights reserved.
```

For full API references, go to [https://open.wps.cn/docs/office](https://open.wps.cn/docs/office)
or [https://docs.microsoft.com/en-us/office/vba/api/overview/](https://docs.microsoft.com/en-us/office/vba/api/overview/).


## Requirements
  - Python 3.5+
  - Qt5 (the SDK required both for building & running)
  - WPS Office for Linux 11.1.0.9080+
  - sip 5.x or sip 4.x (for building)
  - python-sip (for running, sip 4.x only)
  - qmake (for building)
  - gcc (for building)

## How to build

Run `sip-build` (for sip 5.x) or `python configure.py` (for sip 4.x) under the project root directory

append *--verbose* for getting the progress of building


## Installation
The pywpsrpc can be installed from PyPi:

`pip install pywpsrpc`

You can also install from the source:

```
# the easy way, you may need the root privilege
sip-install

# or package first, and then install the whl by pip
sip-wheel
```

## Quick Start

```
# First import the module you want
# rpcwpsapi contains the interfaces for WPS
# rpcwppapi is for WPP
# and rpcetapi for ET
# the common module contains the shared interfaces, you can not use it alone.

# you always need the createXXXRpcInstance, so first import
# take wps for example here
from pywpsrpc.rpcwpsapi import (createWpsRpcInstance, wpsapi)

# now create the rpc instance
hr, rpc = createWpsRpcInstance()

# all the calls returns the error code as the first value
# you can check it for failes
# 0 means all fines, you can use the common module's S_OK,
# FAILED or SUCCEEDED to check

# get the application and you get everything...
hr, app = rpc.getWpsApplication()

# Add blank doc e.g.
_, docs = app.get_Documents()
_, doc = docs.Add()

# append text...
hr, selection = app.get_Selection()
selection.InsertAfter("Hello, world")

# bold the "Hello, world"
_, font = selection.get_Font()
font.put_Bold(True)
```
