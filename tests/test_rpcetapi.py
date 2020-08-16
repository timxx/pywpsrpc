#!/usr/bin/env python3

import sys
import os

sys.path.insert(0, os.path.dirname(os.path.realpath(__file__)) + "/../build")

from pywpsrpc.rpcetapi import etapi
from pywpsrpc import (rpcetapi, common)
from pywpsrpc.utils import RpcIter


def check_call(funcName, hr, value=None):
    if common.FAILED(hr):
        print("call {} failed with code: {}".format(funcName, hr))
        sys.exit(-1)
    if value != None:
        print("{}: {}".format(funcName, value))
    else:
        print("{}: <ok>".format(funcName))


def test():
    hr, rpc = rpcetapi.createEtRpcInstance()
    check_call("rpcetapi.createEtRpcInstance", hr, rpc)

    hr, app = rpc.getEtApplication()
    check_call("rpc.getEtApplication", hr, app)

    hr, pid = rpc.getProcessPid()
    check_call("rpc.getProcessPid", hr, pid)

    hr, workbooks = app.get_Workbooks()
    check_call("app.get_Workbooks", hr ,workbooks)

    hr, workbook = workbooks.Add()
    check_call("workbooks.Add", hr, workbook)

    hr, sheet = workbook.get_ActiveSheet()
    check_call("workbook.get_ActiveSheet", hr, sheet)

    hr, rg = sheet.get_Range("A1")
    check_call("sheet.get_Range", hr, rg)

    hr = rg.put_Value(RHS="test")
    check_call("rg.put_Value", hr)

    hr, window = app.get_ActiveWindow()
    check_call("app.get_ActiveWindow", hr, window)

    hr, winType = window.get_Type()
    check_call("window.get_Type", hr, winType)

    props = workbook.CustomDocumentProperties
    print("Doc Props:")
    for prop in RpcIter(props):
        print("\t %s: %s" % (prop.Name, prop.Value))

    props = workbook.BuiltinDocumentProperties
    print("Builtin Props:")
    for prop in RpcIter(props):
        print("\t %s: %s" % (prop.Name, prop.Value))

    hr = workbook.Close()
    check_call("workbook.Close", hr)


    app.Quit()


if __name__ == "__main__":
    test()
