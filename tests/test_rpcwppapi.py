#!/usr/bin/env python3

import sys
import os
import datetime

sys.path.insert(0, os.path.dirname(os.path.realpath(__file__)) + "/../build")

from pywpsrpc.rpcwppapi import wppapi
from pywpsrpc import (rpcwppapi, common)
from pywpsrpc.utils import RpcIter


def check_call(funcName, hr, value=None):
    if not common.SUCCEEDED(hr):
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

    props = pres.CustomDocumentProperties
    print("Doc Props:")
    for prop in RpcIter(props):
        print("\t %s: %s" % (prop.Name, prop.Value))

    a_date = datetime.date(2020, 7, 20)
    hr, prop = props.Add("_a_date", False, Value=a_date)
    assert(hr == common.S_OK and prop.Value.date() == a_date)

    a_datetime = datetime.datetime(2020, 7, 21, 14, 15, 30)
    hr, prop = props.Add("_a_datetime", False, Value=a_datetime)
    assert(hr == common.S_OK and prop.Value == a_datetime)

    props = pres.BuiltInDocumentProperties
    print("Builtin Props:")
    for prop in RpcIter(props):
        print("\t %s: %s" % (prop.Name, prop.Value))

    hr = pres.Close()
    check_call("pres.Close", hr)

    hr = app.Quit()
    check_call("ap.Quit", hr)


if __name__ == "__main__":
    test()
