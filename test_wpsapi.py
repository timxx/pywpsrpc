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

    wpsApp = wpsapi.getWpsApplication(rpc)
    print(wpsApp.get_Name())
    print(wpsApp.get_Version())

    wpsApp.put_Visible(0)
    print(wpsApp.get_Visible())

    wpsApp.put_Visible(-1)
    print(wpsApp.get_Visible())

    hr, pid = rpc.getProcessPid()
    print(hr, pid)

    #qapp.exec()


if __name__ == "__main__":
    test()
