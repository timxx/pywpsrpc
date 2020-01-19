#!/usr/bin/env python3

import sys
import os

from PyQt5.QtCore import *

sys.path.append(os.path.dirname(os.path.realpath(__file__)) + "/sip/wpsapi")
import wpssdk
from wpssdk import wpsapi


def check_call(funcName, hr, value=None):
    if hr != 0:
        print("call {} failed with code: {}".format(funcName, hr))
        sys.exit(-1)
    if value != None:
        print("{}: {}".format(funcName, value))
    else:
        print("{}: <ok>".format(funcName))



def test():
    qapp = QCoreApplication(sys.argv)

    hr, rpc = wpssdk.createWpsRpcInstance()
    check_call("createWpsRpcInstance", hr, rpc)

    hr = rpc.setProcessArgs([__file__])
    check_call("setProcessArgs", hr)

    wpsApp = wpssdk.getWpsApplication(rpc)

    hr, pid = rpc.getProcessPid()
    check_call("getProcessPid", hr, pid)

    hr, docs = wpsApp.get_Documents()
    check_call("get_Documents", hr, docs)

    hr, count = docs.get_Count()
    check_call("get_Count", hr, count)

    hr, doc = wpsApp.get_ActiveDocument()
    check_call("get_ActiveDocument", hr, doc)

    hr, name = doc.get_Name()
    check_call("get_Name", hr, name)

    hr = doc.SaveAs("test.docx", wpsapi.wdFormatDocument)
    check_call("SaveAs", hr)

    hr = doc.Close()
    check_call("Close", hr)

    hr, doc = docs.Open("test.docx", ReadOnly=True)
    check_call("Open", hr, doc)

    hr, readOnly = doc.get_ReadOnly()
    check_call("get_ReadOnly", hr, readOnly)

    doc.Close()
    check_call("Close", hr)

    hr, doc = docs.Add(Visible=False)
    check_call("Add", hr, doc)

    hr, name = doc.get_Name()
    check_call("get_Name", hr, name)

    hr, name = wpsApp.get_Name()
    check_call("get_Name", hr, name)

    hr, version = wpsApp.get_Version()
    check_call("get_Version", hr, version)

    hr, build = wpsApp.get_Build()
    check_call("get_Build", hr, build)

    hr, caption = wpsApp.get_Caption()
    check_call("get_Caption", hr, caption)

    hr = wpsApp.put_Caption("test标题")
    check_call("put_Caption", hr)

    hr, caption = wpsApp.get_Caption()
    check_call("get_Caption", hr, caption)

    hr = wpsApp.put_Visible(False)
    check_call("put_Visible", hr)

    hr, visible = wpsApp.get_Visible()
    check_call("get_Visible", hr, visible)

    hr = wpsApp.put_Visible(True)
    check_call("put_Visible", hr)

    hr, visible = wpsApp.get_Visible()
    check_call("get_Visible", hr, visible)

    hr = wpsApp.Quit(wpsapi.wdDoNotSaveChanges)
    check_call("Quit", hr)

    #qapp.exec()


if __name__ == "__main__":
    test()
