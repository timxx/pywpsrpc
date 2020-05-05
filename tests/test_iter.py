#!/usr/bin/env python3

import sys
import os

sys.path.insert(0, os.path.dirname(os.path.realpath(__file__)) + "/../build")
from pywpsrpc import RpcProxy, RpcIter
from pywpsrpc.rpcwpsapi import createWpsRpcInstance
from pywpsrpc.rpcwppapi import createWppRpcInstance
from pywpsrpc.rpcetapi import createEtRpcInstance


def test_wps():
    hr, rpc = createWpsRpcInstance()
    app = RpcProxy(rpc.getWpsApplication())
    docs = app.Documents

    docs.Add()
    print(len(docs))

    docs.Add()
    print(len(docs))

    # index starts from 1, not 0
    for i in range(1, len(docs) + 1):
        print("index.docName: ", docs[i].Name)

    for doc in docs:
        print("iter.docName: ", doc.Name)

    # use raw object
    for doc in RpcIter(docs.rpc_object):
        print("iter2.docName: ", doc.Name)

    # access by name
    name = docs[2].Name
    doc = docs[name]
    print("doc", doc.Name)

    doc = docs.Open(os.path.dirname(os.path.realpath(__file__)) + "/../pyproject.toml", ReadOnly=True)
    for para in doc.Paragraphs:
        print(para.Range.Text)

    app.Quit()


def test_wpp():
    hr, rpc = createWppRpcInstance()
    app = RpcProxy(rpc.getWppApplication())

    preses = app.Presentations
    print(len(preses))

    preses.Add()
    print(len(preses))

    preses.Add()
    print(len(preses))

    for pres in preses:
        print(pres.Name)

    app.Quit()


def test_et():
    hr, rpc = createEtRpcInstance()
    app = RpcProxy(rpc.getEtApplication())

    wbs = app.Workbooks
    print(len(wbs))

    wbs.Add()
    print(len(wbs))

    wbs.Add()
    print(len(wbs))

    for wb in wbs:
        print(wb.Name)
        for sheet in wb.Sheets:
            print(sheet.Name)

    app.Quit()


def main():
    test_wps()
    test_wpp()
    test_et()


if __name__ == "__main__":
    main()
