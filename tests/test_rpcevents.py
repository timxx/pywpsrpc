#!/usr/bin/python3

import sys
import os

sys.path.append(os.path.dirname(os.path.realpath(__file__)) + "/../build")

from pywpsrpc.common import FAILED
from pywpsrpc import RpcProxy


can_close_doc = False


def _onDocumentBeforeClose(doc, cancel):
    print("_onDocumentBeforeClose: ", doc, cancel)
    return not can_close_doc


def _onDocumentBeforeSave(doc, saveAsUi, cancel):
    print("__onDocumentBeforeSave: ", doc, saveAsUi, cancel)
    return saveAsUi, True


def _onDocumentChange():
    print("_onDocumentChange")


def _onDocumentOpen(doc):
    print("_onDocumentOpen:", RpcProxy(doc).Name)


def _onNewDocument(doc):
    print("_onNewDocument:", RpcProxy(doc).Name)


def _onQuit():
    print("_onQuit")


def test_rpcwpsapi():
    try:
        from pywpsrpc.rpcwpsapi import (createWpsRpcInstance, wpsapi)
    except ImportError:
        return
    hr, rpc = createWpsRpcInstance()
    if FAILED(hr):
        print("createWpsRpcInstance failed with hr: ", hr)
        sys.exit(-1)

    app = RpcProxy(rpc.getWpsApplication())

    hr = rpc.registerEvent(app._object,
                           wpsapi.DIID_ApplicationEvents4,
                           "DocumentBeforeClose",
                           _onDocumentBeforeClose)
    print("registerEvent:", hex(hr & 0xFFFFFFFF))

    hr = rpc.registerEvent(app._object,
                           wpsapi.DIID_ApplicationEvents4,
                           "DocumentBeforeSave",
                           _onDocumentBeforeSave)

    print("registerEvent:", hex(hr & 0xFFFFFFFF))

    hr = rpc.registerEvent(app._object,
                           wpsapi.DIID_ApplicationEvents4,
                           "DocumentChange",
                           _onDocumentChange)

    hr = rpc.registerEvent(app._object,
                           wpsapi.DIID_ApplicationEvents4,
                           "DocumentOpen",
                           _onDocumentOpen)

    hr = rpc.registerEvent(app._object,
                           wpsapi.DIID_ApplicationEvents4,
                           "NewDocument",
                           _onNewDocument)

    hr = rpc.registerEvent(app._object,
                           wpsapi.DIID_ApplicationEvents4,
                           "Quit",
                           _onQuit)

    doc = app.Documents.Add()
    # the doc should not be saved
    doc.SaveAs2("test.doc")

    # DocumentChange
    doc2 = app.Documents.Add()

    doc3 = app.Documents.Open(os.path.realpath(__file__))

    # the doc should not be closed
    doc.Close()

    # now make it works
    global can_close_doc
    can_close_doc = True

    app.Quit()


def _onPresentationSave(Pres):
    print("_onPresentationSave: ", Pres)


def _onPresentationClose(Pres):
    print("_onPresentationClose: ", Pres)


def test_rpcwppapi():
    try:
        from pywpsrpc.rpcwppapi import (createWppRpcInstance, wppapi)
    except ImportError:
        return

    hr, rpc = createWppRpcInstance()
    if FAILED(hr):
        print("createWppRpcInstance failed with hr: ", hr)
        sys.exit(-1)

    app = RpcProxy(rpc.getWppApplication())

    hr = rpc.registerEvent(app._object,
                           wppapi.IID_EApplication,
                           "PresentationSave",
                           _onPresentationSave)
    print("registerEvent:", hex(hr & 0xFFFFFFFF))

    hr = rpc.registerEvent(app._object,
                           wppapi.IID_EApplication,
                           "PresentationClose",
                           _onPresentationClose)

    print("registerEvent:", hex(hr & 0xFFFFFFFF))

    pres = app.Presentations.Add(wppapi.msoTrue)
    pres.SaveAs("test.ppt")
    pres.Close()

    app.Quit()


can_close_wb = False


def _onWorkbookBeforeClose(wb, cancel):
    print("_onWorkbookBeforeClose: ", wb, cancel)
    return not can_close_wb


def _onWorkbookBeforeSave(wb, saveAsUi, cancel):
    print("_onWorkbookBeforeSave: ", wb, saveAsUi, cancel)
    return saveAsUi, True


def test_rpcetapi():
    try:
        from pywpsrpc.rpcetapi import (createEtRpcInstance, etapi)
    except ImportError:
        return

    hr, rpc = createEtRpcInstance()
    if FAILED(hr):
        print("createEtRpcInstance failed with hr: ", hr)
        sys.exit(-1)

    app = RpcProxy(rpc.getEtApplication())

    hr = rpc.registerEvent(app._object,
                           etapi.DIID_AppEvents,
                           "WorkbookBeforeClose",
                           _onWorkbookBeforeClose)
    print("registerEvent:", hex(hr & 0xFFFFFFFF))

    hr = rpc.registerEvent(app._object,
                           etapi.DIID_AppEvents,
                           "WorkbookBeforeSave",
                           _onWorkbookBeforeSave)

    print("registerEvent:", hex(hr & 0xFFFFFFFF))

    wb = app.Workbooks.Add()
    # the doc should not be saved
    wb.SaveAs("test.xls")
    # the doc should not be closed
    wb.Close()

    # now make it works
    global can_close_wb
    can_close_wb = True

    app.Quit()


if __name__ == "__main__":
    test_rpcwpsapi()
    test_rpcwppapi()
    test_rpcetapi()
