#!/usr/bin/env python3

import sys
import os

sys.path.append(os.path.dirname(os.path.realpath(__file__)) + "/../build")

from pywpsrpc.rpcwpsapi import (createWpsRpcInstance, wpsapi)
from pywpsrpc.common import FAILED
from pywpsrpc import RpcProxy


def main():
    hr, rpc = createWpsRpcInstance()
    if FAILED(hr):
        print("createWpsRpcInstance failed with hr: ", hr)
        sys.exit(-1)

    app = RpcProxy(rpc.getWpsApplication())
    print(app.last_error)

    # get the raw object
    obj = app.rpc_object
    print(obj)

    print(app.Build)
    app.Visible = False
    app.Visible = True

    doc = app.Documents.Add()
    print(doc.Name)

    if not app.Selection.InsertAfter("Hello, world"):
        print("Can't insert text")

    font = app.Selection.Font
    font.Bold = True

    doc.Close(SaveChanges=wpsapi.wdDoNotSaveChanges)

    doc = app.ActiveDocument
    print(app.last_error)

    app.use_exception = True
    try:
        # should be failed since no Documents opened.
        doc = app.ActiveDocument
    except Exception as e:
        print(e)

    app.Quit(wpsapi.wdDoNotSaveChanges)


if __name__ == "__main__":
    main()
