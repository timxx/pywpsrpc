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

    #qapp.exec()


if __name__ == "__main__":
    test()
