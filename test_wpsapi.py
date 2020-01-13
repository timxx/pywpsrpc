#!/usr/bin/env python3

import sys
import os

from PyQt5.QtCore import *

sys.path.append(os.path.dirname(os.path.realpath(__file__)) + "/sip/wpsapi")
import wpsapi


def test():
    qapp = QCoreApplication(sys.argv)

    hr, rpc = wpsapi.createWpsRpcInstance()
    print(hr, rpc)

    #hr = rpc.setProcessArgs(["not a file", "中文sth"])
    #print(hr)

    hr, app = rpc.getWpsApplication()
    print(hr, app)

    hr, pid = rpc.getProcessPid()
    print(hr, pid)

    IID__Application = wpsapi.GUID("00020970-0000-0000-C000-000000000046")
    print(IID__Application)

    hr, interface = app.QueryInterface(IID__Application)
    print(hr, interface)

    wpsApp = wpsapi.IDispatch.fromVoidPtr(interface)
    print(wpsApp)

    hr, count = wpsApp.GetTypeInfoCount()
    print(hr, count)

    #qapp.exec()


if __name__ == "__main__":
    test()
