#!/usr/bin/env python3

import sys
import os
import unittest

sys.path.insert(0, os.path.dirname(os.path.realpath(__file__)) + "/../build")

from pywpsrpc.rpcetapi import etapi
from pywpsrpc import (rpcetapi, common)
from pywpsrpc.utils import RpcIter


class TestRpcEtApi(unittest.TestCase):

    def check_call(self, funcName, hr, value=None):
        self.assertEqual(hr, common.S_OK, funcName)

    def test(self, ):
        hr, rpc = rpcetapi.createEtRpcInstance()
        self.check_call("rpcetapi.createEtRpcInstance", hr, rpc)

        hr, app = rpc.getEtApplication()
        self.check_call("rpc.getEtApplication", hr, app)

        hr, pid = rpc.getProcessPid()
        self.check_call("rpc.getProcessPid", hr, pid)

        hr, workbooks = app.get_Workbooks()
        self.check_call("app.get_Workbooks", hr, workbooks)

        hr, workbook = workbooks.Add()
        self.check_call("workbooks.Add", hr, workbook)

        hr, sheet = workbook.get_ActiveSheet()
        self.check_call("workbook.get_ActiveSheet", hr, sheet)

        hr, rg = sheet.get_Range("A1")
        self.check_call("sheet.get_Range", hr, rg)

        hr = rg.put_Value(RHS="test")
        self.check_call("rg.put_Value", hr)

        rg = sheet.Range("A1")
        self.assertEqual(rg.Value, "test")

        hr, window = app.get_ActiveWindow()
        self.check_call("app.get_ActiveWindow", hr, window)

        hr, winType = window.get_Type()
        self.check_call("window.get_Type", hr, winType)

        props = workbook.CustomDocumentProperties
        for prop in RpcIter(props):
            self.assertIsNotNone(prop.Name)

        props = workbook.BuiltinDocumentProperties
        for prop in RpcIter(props):
            self.assertIsNotNone(prop.Name)

        hr = workbook.Close(False)
        self.check_call("workbook.Close", hr)

        app.Quit()


if __name__ == "__main__":
    unittest.main()
