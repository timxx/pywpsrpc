#!/usr/bin/env python3

import sys
import os

sys.path.append(os.path.dirname(os.path.realpath(__file__)) + "/../build")

from pywpsrpc.rpcwppapi import wppapi
from pywpsrpc import rpcwppapi


def check_call(funcName, hr, value=None):
    if not rpcwppapi.SUCCEEDED(hr):
        print("call {} failed with code: {}".format(funcName, hr))
        sys.exit(-1)
    if value != None:
        print("{}: {}".format(funcName, value))
    else:
        print("{}: <ok>".format(funcName))


def test():
    hr, rpc = rpcwppapi.createWppRpcInstance()
    check_call("rpcwppapi.createWppRpcInstance", hr, rpc)

    hr, app = rpc.getWppApplication()
    check_call("rpc.getWppApplication", hr, app)

    hr, pid = rpc.getProcessPid()
    check_call("rpc.getProcessPid", hr, pid)

    hr, preses = app.get_Presentations()
    check_call("app.get_Presentations", hr, preses)

    hr, pres = preses.Add(wppapi.msoTrue)
    check_call("preses.Add", hr, pres)

    hr, pres = app.get_ActivePresentation()
    check_call("app.get_ActivePresentation", hr, pres)

    hr, name = pres.get_FullName()
    check_call("pres.get_FullName", hr, name)

    hr = pres.Close()
    check_call("pres.Close", hr)

    hr = app.Quit()
    check_call("ap.Quit", hr)


if __name__ == "__main__":
    test()
