#!/usr/bin/python3

import sys
import os

sys.path.insert(0, os.path.dirname(os.path.realpath(__file__)) + "/../build")

from pywpsrpc.common import (FAILED, wpsapiex)
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
    doc.AddRef()
    print("_onDocumentOpen:", RpcProxy(doc).Name)


def _onNewDocument(doc):
    doc.AddRef()
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

    hr = rpc.registerEvent(app.rpc_object,
                           wpsapi.DIID_ApplicationEvents4,
                           "DocumentBeforeClose",
                           _onDocumentBeforeClose)
    print("registerEvent:", hex(hr & 0xFFFFFFFF))

    hr = rpc.registerEvent(app.rpc_object,
                           wpsapi.DIID_ApplicationEvents4,
                           "DocumentBeforeSave",
                           _onDocumentBeforeSave)

    print("registerEvent:", hex(hr & 0xFFFFFFFF))

    hr = rpc.registerEvent(app.rpc_object,
                           wpsapi.DIID_ApplicationEvents4,
                           "DocumentChange",
                           _onDocumentChange)

    hr = rpc.registerEvent(app.rpc_object,
                           wpsapi.DIID_ApplicationEvents4,
                           "DocumentOpen",
                           _onDocumentOpen)

    hr = rpc.registerEvent(app.rpc_object,
                           wpsapi.DIID_ApplicationEvents4,
                           "NewDocument",
                           _onNewDocument)

    hr = rpc.registerEvent(app.rpc_object,
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


def _onAfterNewPresentation(Pres):
    Pres.AddRef()
    print("_onAfterNewPresentation: ", RpcProxy(Pres).Name)


def _onAfterPresentationOpen(Pres):
    Pres.AddRef()
    print("_onAfterPresentationOpen: ", RpcProxy(Pres).Name)


def _onNewPresentation(Pres):
    Pres.AddRef()
    print("_onNewPresentation: ", RpcProxy(Pres).Name)


def _onDocumentAfterPrint(Pres, PageEx):
    print("_onDocumentAfterPrint")


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

    hr = rpc.registerEvent(app.rpc_object,
                           wppapi.IID_EApplication,
                           "PresentationSave",
                           _onPresentationSave)
    print("registerEvent:", hex(hr & 0xFFFFFFFF))

    hr = rpc.registerEvent(app.rpc_object,
                           wppapi.IID_EApplication,
                           "PresentationClose",
                           _onPresentationClose)

    print("registerEvent:", hex(hr & 0xFFFFFFFF))

    hr = rpc.registerEvent(app.rpc_object,
                           wppapi.IID_EApplication,
                           "AfterNewPresentation",
                           _onAfterNewPresentation)

    hr = rpc.registerEvent(app.rpc_object,
                           wppapi.IID_EApplication,
                           "AfterPresentationOpen",
                           _onAfterPresentationOpen)

    hr = rpc.registerEvent(app.rpc_object,
                           wppapi.IID_EApplication,
                           "NewPresentation",
                           _onNewPresentation)

    appEx = app.ApplicationEx
    hr = rpc.registerEvent(appEx.rpc_object,
                           wpsapiex.DIID_ApplicationEventsEx,
                           "DocumentAfterPrint",
                           _onDocumentAfterPrint)

    pres = app.Presentations.Add(wppapi.msoTrue)
    pres.SaveAs("test.ppt")
    pres.Close()

    pres = app.Presentations.Open(
        "test.ppt", wppapi.msoFalse,
        wppapi.msoFalse, wppapi.msoTrue)

    pres.PrintOut()

    app.Quit()


can_close_wb = False


def _onWorkbookBeforeClose(wb, cancel):
    print("_onWorkbookBeforeClose: ", wb, cancel)
    return not can_close_wb


def _onWorkbookBeforeSave(wb, saveAsUi, cancel):
    print("_onWorkbookBeforeSave: ", wb, saveAsUi, cancel)
    return saveAsUi, not can_close_wb


def _onWorkbookAfterSave(wb, success):
    wb.AddRef()
    print("_onWorkbookAfterSave: ", RpcProxy(wb).Name, success)


def _onNewWorkbook(wb):
    wb.AddRef()
    print("_onNewWorkbook: ", RpcProxy(wb).Name)


def _onWorkbookOpen(wb):
    wb.AddRef()
    print("_onWorkbookOpen: ", RpcProxy(wb).Name)


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

    hr = rpc.registerEvent(app.rpc_object,
                           etapi.DIID_AppEvents,
                           "WorkbookBeforeClose",
                           _onWorkbookBeforeClose)
    print("registerEvent:", hex(hr & 0xFFFFFFFF))

    hr = rpc.registerEvent(app.rpc_object,
                           etapi.DIID_AppEvents,
                           "WorkbookBeforeSave",
                           _onWorkbookBeforeSave)

    print("registerEvent:", hex(hr & 0xFFFFFFFF))

    hr = rpc.registerEvent(app.rpc_object,
                           etapi.DIID_AppEvents,
                           "WorkbookAfterSave",
                           _onWorkbookAfterSave)

    hr = rpc.registerEvent(app.rpc_object,
                           etapi.DIID_AppEvents,
                           "NewWorkbook",
                           _onNewWorkbook)

    hr = rpc.registerEvent(app.rpc_object,
                           etapi.DIID_AppEvents,
                           "WorkbookOpen",
                           _onWorkbookOpen)

    wb = app.Workbooks.Add()
    # the doc should not be saved
    wb.SaveAs("test.xls")
    # the doc should not be closed
    wb.Close()

    # now make it works
    global can_close_wb
    can_close_wb = True

    # save again
    wb.SaveAs("test2.xls")
    wb.Close()

    wb = app.Workbooks.Open("test2.xls")

    app.Quit()


if __name__ == "__main__":
    test_rpcwpsapi()
    test_rpcwppapi()
    test_rpcetapi()
