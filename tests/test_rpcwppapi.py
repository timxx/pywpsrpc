#!/usr/bin/env python3

import sys
import os
import datetime
import unittest

sys.path.insert(0, os.path.dirname(os.path.realpath(__file__)) + "/../build")

from pywpsrpc.rpcwppapi import wppapi
from pywpsrpc import (rpcwppapi, common)
from pywpsrpc.utils import RpcIter

class TestRpcWppApi(unittest.TestCase):

    def check_call(self, funcName, hr, value=None):
        self.assertEqual(hr, common.S_OK, funcName)

    def test(self):
        hr, rpc = rpcwppapi.createWppRpcInstance()
        self.check_call("rpcwppapi.createWppRpcInstance", hr, rpc)

        hr, app = rpc.getWppApplication()
        self.check_call("rpc.getWppApplication", hr, app)

        hr, pid = rpc.getProcessPid()
        self.check_call("rpc.getProcessPid", hr, pid)

        hr, preses = app.get_Presentations()
        self.check_call("app.get_Presentations", hr, preses)

        hr, pres = preses.Add(wppapi.msoTrue)
        self.check_call("preses.Add", hr, pres)

        hr, pres = app.get_ActivePresentation()
        self.check_call("app.get_ActivePresentation", hr, pres)

        hr, name = pres.get_FullName()
        self.check_call("pres.get_FullName", hr, name)

        props = pres.CustomDocumentProperties
        for prop in RpcIter(props):
            self.assertIsNotNone(prop.Name)

        a_date = datetime.date(2020, 7, 20)
        hr, prop = props.Add("_a_date", False, Value=a_date)
        self.assertTrue(hr == common.S_OK)
        self.assertEqual(prop.Value.date(), a_date)

        a_datetime = datetime.datetime(2020, 7, 21, 14, 15, 30)
        hr, prop = props.Add("_a_datetime", False, Value=a_datetime)
        self.assertTrue(hr == common.S_OK)
        self.assertEqual(prop.Value, a_datetime)

        props = pres.BuiltInDocumentProperties
        for prop in RpcIter(props):
            self.assertIsNotNone(prop.Name)

        hr = pres.Close()
        self.check_call("pres.Close", hr)

        hr = app.Quit()
        self.check_call("ap.Quit", hr)


if __name__ == "__main__":
    unittest.main()
