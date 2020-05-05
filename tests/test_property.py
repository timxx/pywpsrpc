#!/usr/bin/env python3

import sys
import os

sys.path.insert(0, os.path.dirname(os.path.realpath(__file__)) + "/../build")
from pywpsrpc.rpcwpsapi import createWpsRpcInstance


def test_wps():
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


if __name__ == "__main__":
    test_wps()
