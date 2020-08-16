#!/usr/bin/python3

import sys
import os

sys.path.insert(0, os.path.dirname(os.path.realpath(__file__)) + "/../build")

from pywpsrpc.common import (FAILED, wpsapiex)
from pywpsrpc import RpcProxy


can_close_doc = False


def _onDocumentBeforeClose(doc):
    print("_onDocumentBeforeClose: ", doc.Name)
    return not can_close_doc


def _onDocumentBeforeSave(doc):
    print("__onDocumentBeforeSave: ", doc.Name)
    # SaveAsUI, Cancel
    return True, True


def _onDocumentChange():
    print("_onDocumentChange")


def _onDocumentOpen(doc):
    print("_onDocumentOpen:", doc.Name)


def _onNewDocument(doc):
    print("_onNewDocument:", doc.Name)


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

    def _onWindowActivate(doc, window):
        ss = {wpsapi.wdWindowStateNormal: "wdWindowStateNormal",
            wpsapi.wdWindowStateMaximize: "wdWindowStateMaximize",
            wpsapi.wdWindowStateMinimize: "wdWindowStateMinimize"}
        print("_onWindowActivate:", doc.Name, window.Caption, ss[window.WindowState])

    hr = rpc.registerEvent(app.rpc_object,
                           wpsapi.DIID_ApplicationEvents4,
                           "WindowActivate",
                           _onWindowActivate)

    def _onWindowDeactivate(doc, window):
        print("_onWindowDeactivate:", window.Caption)

    hr = rpc.registerEvent(app.rpc_object,
                           wpsapi.DIID_ApplicationEvents4,
                           "WindowDeactivate",
                           _onWindowDeactivate)

    def _onWindowSelectionChange(selection):
        print("_onWindowSelectionChange:", selection.Start,
              selection.End, selection.Text)

    hr = rpc.registerEvent(app.rpc_object,
                           wpsapi.DIID_ApplicationEvents4,
                           "WindowSelectionChange",
                           _onWindowSelectionChange)

    doc = app.Documents.Add()
    # the doc should not be saved
    doc.SaveAs2("test.doc")

    # DocumentChange
    doc2 = app.Documents.Add()

    doc3 = app.Documents.Open(os.path.realpath(__file__))

    selection = app.Selection
    # selection should changed
    selection.SetRange(0, 10)

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
    print("_onAfterNewPresentation: ", Pres.Name)


def _onAfterPresentationOpen(Pres):
    print("_onAfterPresentationOpen: ", Pres.Name)


def _onNewPresentation(Pres):
    print("_onNewPresentation: ", Pres.Name)


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

    def _onWindowActivate(doc, window):
        ss = {wppapi.ppWindowNormal: "ppWindowNormal",
              wppapi.ppWindowMinimized: "ppWindowMinimized",
              wppapi.ppWindowMaximized: "ppWindowMaximized"}
        print("_onWindowActivate:", window.Caption, ss[window.WindowState])

    hr = rpc.registerEvent(app.rpc_object,
                           wppapi.IID_EApplication,
                           "WindowActivate",
                           _onWindowActivate)

    def _onWindowDeactivate(doc, window):
        print("_onWindowDeactivate:", window.Caption)

    hr = rpc.registerEvent(app.rpc_object,
                           wppapi.IID_EApplication,
                           "WindowDeactivate",
                           _onWindowDeactivate)

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


def _onWorkbookBeforeClose(wb):
    print("_onWorkbookBeforeClose: ", wb.Name)
    return not can_close_wb


def _onWorkbookBeforeSave(wb):
    print("_onWorkbookBeforeSave: ", wb.Name)
    # SaveAsUI, Cancel
    return True, not can_close_wb


def _onWorkbookAfterSave(wb, success):
    print("_onWorkbookAfterSave: ", wb.Name, success)


def _onNewWorkbook(wb):
    print("_onNewWorkbook: ", wb.Name)


def _onWorkbookOpen(wb):
    print("_onWorkbookOpen: ", wb.Name)


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

    def _onWindowActivate(wb, window):
        ss = {etapi.xlMaximized: "xlMaximized",
              etapi.xlMinimized: "xlMinimized",
              etapi.xlNormal: "xlNormal"}
        print("_onWindowActivate:", window.Caption, ss[window.WindowState])

    hr = rpc.registerEvent(app.rpc_object,
                           etapi.DIID_AppEvents,
                           "WindowActivate",
                           _onWindowActivate)

    def _onWindowDeactivate(wb, window):
        print("_onWindowDeactivate:", wb.Name, window.Caption)

    hr = rpc.registerEvent(app.rpc_object,
                           etapi.DIID_AppEvents,
                           "WindowDeactivate",
                           _onWindowDeactivate)

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
