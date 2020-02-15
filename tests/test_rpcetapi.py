#!/usr/bin/env python3

import sys
import os

sys.path.append(os.path.dirname(os.path.realpath(__file__)) + "/../build")

from pywpsrpc.rpcetapi import etapi
from pywpsrpc import rpcetapi


def check_call(funcName, hr, value=None):
    if rpcetapi.FAILED(hr):
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

    hr = workbook.Close()
    check_call("workbook.Close", hr)


    app.Quit()


if __name__ == "__main__":
    test()
