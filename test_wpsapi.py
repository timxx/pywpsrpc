#!/usr/bin/env python3

import sys
import os

from PyQt5.QtCore import *

sys.path.append(os.path.dirname(os.path.realpath(__file__)) + "/sip/wpsapi")
import wpssdk
from wpssdk import wpsapi


def test():
    qapp = QCoreApplication(sys.argv)

    hr, rpc = wpssdk.createWpsRpcInstance()
    print(hr, rpc)

    hr = rpc.setProcessArgs([__file__])
    print(hr)

    wpsApp = wpssdk.getWpsApplication(rpc)

    hr, pid = rpc.getProcessPid()
    print(hr, pid)

    print(wpsApp.get_Name())
    print(wpsApp.get_Version())
    print(wpsApp.get_Build())

    print(wpsApp.get_Caption())
    wpsApp.put_Caption("test标题")
    print(wpsApp.get_Caption())

    wpsApp.put_Visible(False)
    print(wpsApp.get_Visible())

    wpsApp.put_Visible(True)
    print(wpsApp.get_Visible())

    wpsApp.Quit(wpsapi.wdDoNotSaveChanges, None, None)

    #qapp.exec()


if __name__ == "__main__":
    test()
