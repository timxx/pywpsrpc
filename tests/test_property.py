#!/usr/bin/env python3

import sys
import os

sys.path.insert(0, os.path.dirname(os.path.realpath(__file__)) + "/../build")


def test_wps():
    try:
        from pywpsrpc.rpcwpsapi import createWpsRpcInstance
    except ImportError:
        return

    hr, rpc = createWpsRpcInstance()
    hr, app = rpc.getWpsApplication()

    visible = app.Visible
    print(visible)
    app.Visible = False
    print(app.Visible)
    app.Visible = True

    assert(app.Documents.Count == 0)

    try:
        doc = app.ActiveDocument
        assert(False)
    except AttributeError as e:
        print(e)

    try:
        app.ActiveDocument = None
        assert(False)
    except AttributeError as e:
        print(e)

    hr, doc = app.Documents.Add()
    assert(app.Documents.Count == 1)

    print(doc.Name)
    doc.Close()

    app.Quit()


def test_et():
    try:
        from pywpsrpc.rpcetapi import createEtRpcInstance, etapi
    except ImportError:
        return

    hr, rpc = createEtRpcInstance()
    hr, app = rpc.getEtApplication()

    workbooks = app.Workbooks
    assert(workbooks.Count == 0)

    hr, workbook = workbooks.Add()
    assert(workbooks.Count == 1)

    sheet = workbook.ActiveSheet
    print(sheet.Name)

    hr, rg = sheet.get_Range("A1")
    rg.Value = "test"

    assert(sheet.get_Range("A1")[1].Value == "test")

    workbook.Close(SaveChanges=False)

    app.Quit()


if __name__ == "__main__":
    test_wps()
    test_et()
