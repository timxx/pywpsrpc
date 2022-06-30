#!/usr/bin/env python3

import sys
import os
import unittest

sys.path.insert(0, os.path.dirname(os.path.realpath(__file__)) + "/../build")
from pywpsrpc import RpcProxy, RpcIter
from pywpsrpc.rpcwpsapi import createWpsRpcInstance
from pywpsrpc.rpcwppapi import createWppRpcInstance
from pywpsrpc.rpcetapi import createEtRpcInstance


class TestWps(unittest.TestCase):

    def test_wps(self):
        hr, rpc = createWpsRpcInstance()
        app = RpcProxy(rpc.getWpsApplication())
        docs = app.Documents

        docs.Add()
        self.assertEqual(len(docs), 1)

        docs.Add()
        self.assertEqual(len(docs), 2)

        # index starts from 1, not 0
        for i in range(1, len(docs) + 1):
            self.assertIsNotNone(docs[i].Name)

        for doc in docs:
            self.assertIsNotNone(doc.Name)

        # use raw object
        for doc in RpcIter(docs.rpc_object):
           self.assertIsNotNone(doc.Name)

        # access by name
        name = docs[2].Name
        doc = docs[name]
        self.assertEqual(name, doc.Name)

        doc = docs.Open(os.path.dirname(os.path.realpath(__file__)) + "/../pyproject.toml", ReadOnly=True)
        for para in doc.Paragraphs:
            self.assertIsNotNone(para.Range.Text)

        app.Quit()


class TestWpp(unittest.TestCase):

    def test_wpp(self):
        hr, rpc = createWppRpcInstance()
        app = RpcProxy(rpc.getWppApplication())

        preses = app.Presentations
        self.assertEqual(len(preses), 0)

        preses.Add()
        self.assertEqual(len(preses), 1)

        preses.Add()
        self.assertEqual(len(preses), 2)

        for pres in preses:
            self.assertIsNotNone(pres.Name)

        app.Quit()


class TestEt(unittest.TestCase):

    def test_et(self):
        hr, rpc = createEtRpcInstance()
        app = RpcProxy(rpc.getEtApplication())

        wbs = app.Workbooks
        self.assertEqual(len(wbs), 0)

        wbs.Add()
        self.assertEqual(len(wbs), 1)

        wbs.Add()
        self.assertEqual(len(wbs), 2)

        for wb in wbs:
            self.assertIsNotNone(wb.Name)
            for sheet in wb.Sheets:
                self.assertIsNotNone(sheet.Name)

        app.Quit()


if __name__ == "__main__":
    unittest.main()
