#!/usr/bin/env python3

import sys
import os
import unittest

sys.path.insert(0, os.path.dirname(os.path.realpath(__file__)) + "/../build")
from pywpsrpc.rpcwpsapi import createWpsRpcInstance
from pywpsrpc.rpcetapi import createEtRpcInstance

class TestWps(unittest.TestCase):

    def test_wps(self):
        hr, rpc = createWpsRpcInstance()
        hr, app = rpc.getWpsApplication()

        visible = app.Visible
        self.assertTrue(visible)

        app.Visible = False
        self.assertFalse(app.Visible)

        app.Visible = True

        self.assertEqual(app.Documents.Count, 0)

        try:
            doc = app.ActiveDocument
            self.assertTrue(False, "should not go here")
        except AttributeError as e:
            self.assertTrue(True)

        try:
            app.ActiveDocument = None
            self.assertTrue(False, "should not go here")
        except AttributeError as e:
            self.assertTrue(True)

        hr, doc = app.Documents.Add()
        self.assertEqual(app.Documents.Count, 1)

        self.assertIsNotNone(doc.Name)
        doc.Close()

        app.Quit()


class Testet(unittest.TestCase):

    def test_et(self):
        hr, rpc = createEtRpcInstance()
        hr, app = rpc.getEtApplication()

        workbooks = app.Workbooks
        self.assertEqual(workbooks.Count, 0)

        hr, workbook = workbooks.Add()
        self.assertEqual(workbooks.Count, 1)

        sheet = workbook.ActiveSheet
        self.assertIsNotNone(sheet.Name)

        hr, rg = sheet.get_Range("A1")
        rg.Value = "test"

        self.assertEqual(sheet.get_Range("A1")[1].Value, "test")

        workbook.Close(SaveChanges=False)

        app.Quit()


if __name__ == "__main__":
    unittest.main()
