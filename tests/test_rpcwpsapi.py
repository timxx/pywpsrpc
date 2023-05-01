#!/usr/bin/env python3

import sys
import os
import time
import unittest

sys.path.insert(0, os.path.dirname(os.path.realpath(__file__)) + "/../build")
from pywpsrpc import rpcwpsapi
from pywpsrpc import common
from pywpsrpc.rpcwpsapi import wpsapi
from pywpsrpc.utils import RpcIter

class TestRpcWpsApi(unittest.TestCase):

    def check_call(self, funcName, hr):
        self.assertEqual(hr, common.S_OK, funcName)

    def test(self):
        hr, rpc = rpcwpsapi.createWpsRpcInstance()
        self.check_call("createWpsRpcInstance", hr)

        hr = rpc.setProcessArgs(
            [os.path.dirname(os.path.realpath(__file__)) + "/../pyproject.toml"])
        self.check_call("setProcessArgs", hr)

        hr, wpsApp = rpc.getWpsApplication()
        self.check_call("rpc.getWpsApplication", hr)

        hr, pid = rpc.getProcessPid()
        self.check_call("getProcessPid", hr)
        self.assertNotEqual(pid, 0, "rpc.getProcessPid")

        hr, docs = wpsApp.get_Documents()
        self.check_call("get_Documents", hr)

        # FIXME: some env may fails get_Count (returns 0)
        time.sleep(0.5)

        hr, count = docs.get_Count()
        self.check_call("get_Count", hr)
        self.assertEqual(count, 1)

        hr, doc = wpsApp.get_ActiveDocument()
        self.check_call("get_ActiveDocument", hr)

        hr, name = doc.get_Name()
        self.check_call("get_Name", hr)
        self.assertEqual(name, "pyproject.toml", "doc.get_Name")

        hr, docRange = doc.get_Content()
        self.check_call("get_Content", hr)

        hr, start = docRange.get_Start()
        self.check_call("get_Start", hr)

        hr, oldEnd = docRange.get_End()
        self.check_call("get_End", hr)

        hr = docRange.InsertParagraphAfter()
        self.check_call("InsertParagraphAfter", hr)

        hr, end = docRange.get_End()
        self.assertEqual(end, oldEnd + 1, "InsertParagraphAfter")

        hr, text = docRange.get_Text()
        self.check_call("get_Text", hr)

        hr = docRange.InsertAfter("Hello, world")
        self.check_call("InsertAfter", hr)

        end -= 1
        hr = docRange.put_Start(end)
        self.check_call("put_Start", hr)

        hr = docRange.put_End(end + 12)
        self.check_call("put_End", hr)

        hr, text = docRange.get_Text()
        self.check_call("get_Text", hr)
        self.assertEqual(text, "Hello, world", "docRange.get_Text")

        hr, paras = doc.get_Paragraphs()
        self.check_call("get_Paragraphs", hr)

        hr, count = paras.get_Count()
        self.check_call("get_Count", hr)

        docRange.InsertParagraphAfter()

        hr, newCount = paras.get_Count()
        self.check_call("get_Count", hr)
        self.assertEqual(newCount, count + 1, "paras.get_Count")

        hr, app2 = paras.get_Application()
        self.check_call("paras.get_Application", hr)

        hr, build = app2.get_Build()
        self.check_call("app2.get_Build", hr)

        hr, para = paras.get_First()
        self.check_call("paras.get_First", hr)

        hr, dropCap = para.get_DropCap()
        self.check_call("para.get_DropCap", hr)

        hr = dropCap.put_Position(wpsapi.wdDropNormal)
        self.check_call("dropCap.put_Position", hr)

        hr, paraRange = para.get_Range()
        self.check_call("para.get_Range", hr)

        hr, text = paraRange.get_Text()
        self.check_call("paraRange.get_Text", hr)

        hr = para.put_Alignment(wpsapi.wdAlignParagraphCenter)
        self.check_call("para.put_Alignment", hr)

        hr, paraFormat = para.get_Format()
        self.check_call("para.get_Format", hr)

        hr, style = paraFormat.get_Style()
        self.check_call("paraFormat.get_Style", hr)

        hr, borders = paraFormat.get_Borders()
        self.check_call("paraFormat.get_Borders", hr)

        hr, count = borders.get_Count()
        self.check_call("borders.get_Count", hr)

        hr = borders.put_Shadow(True)
        self.check_call("borders.put_Shadow", hr)

        hr = paraFormat.put_Borders(borders)
        self.check_call("paraFormat.put_Borders", hr)

        hr, shading = para.get_Shading()
        self.check_call("para.get_Shading", hr)

        hr = shading.put_BackgroundPatternColor(wpsapi.wdColorGreen)
        self.check_call("shading.put_BackgroundPatternColor", hr)

        hr, tabStops = para.get_TabStops()
        self.check_call("para.get_TabStops", hr)

        hr, count = tabStops.get_Count()
        self.check_call("tabStops.get_Count", hr)

        # reset the range to find
        hr, docRange = doc.get_Content()

        hr, find = docRange.get_Find()
        self.check_call("docRange.get_Find", hr)

        hr, found = find.Execute("Hello, world", MatchWholeWord=True)
        self.check_call("find.Execute", hr)
        self.assertTrue(found, "find.Execute")

        hr, font = docRange.get_Font()
        self.check_call("docRange.get_Font", hr)

        hr, name = font.get_Name()
        self.check_call("font.get_Name", hr)

        hr = font.put_Bold(True)
        self.check_call("font.put_Bold", hr)

        hr, selection = wpsApp.get_Selection()
        self.check_call("get_Selection", hr)

        hr = selection.SetRange(0, 10)
        self.check_call("SetRange", hr)

        hr, start = selection.get_Start()
        self.check_call("get_Start", hr)

        hr, end = selection.get_End()
        self.check_call("get_End", hr)

        hr, text = selection.get_Text()
        self.check_call("get_Text", hr)

        hr, tables = doc.get_Tables()
        self.check_call("doc.get_Tables", hr)

        hr, pos = selection.EndKey(Unit=wpsapi.wdStory)
        self.check_call("selection.EndKey", hr)

        hr = selection.InsertParagraphAfter()
        hr, pos = selection.EndKey(Unit=wpsapi.wdStory)

        hr, selRange = selection.get_Range()
        self.check_call("selection.get_Range", hr)

        hr, table = tables.Add(selRange, 2, 2)
        self.check_call("tables.Add", hr)

        hr, cell = table.Cell(1, 2)
        self.check_call("table.Cell", hr)

        hr, cellRange = cell.get_Range()
        self.check_call("cell.get_Range", hr)

        hr = cellRange.put_Text("cell")
        self.check_call("cellRange.put_Text", hr)

        hr, shapes = doc.get_Shapes()
        self.check_call("doc.get_Shapes", hr)

        hr, shape = shapes.AddShape(wpsapi.msoShapeMoon, 0, 0, 100, 100)
        self.check_call("shapes.AddShape", hr)

        hr = shape.put_AlternativeText("this is a moon shape")
        self.check_call("shape.put_AlternativeText", hr)

        hr, fields = doc.get_Fields()
        self.check_call("doc.get_Fields", hr)

        hr, field = fields.Add(selRange, Type=wpsapi.wdFieldDate)
        self.check_call("fields.Add", hr)

        hr, bookmarks = doc.get_Bookmarks()
        self.check_call("doc.get_Bookmarks", hr)

        hr, bkmRange = doc.Range(0, 10)
        self.check_call("doc.Range", hr)

        hr, bookmark = bookmarks.Add("BookmarkName")
        self.check_call("bookmarks.Add", hr)

        hr, count = bookmarks.get_Count()
        self.check_call("bookmarks.get_Count", hr)

        hr, name = bookmark.get_Name()
        self.check_call("bookmark.get_Name", hr)

        hr, tocs = doc.get_TablesOfContents()
        self.check_call("doc.get_TablesOfContents", hr)

        hr, bkmRange = bookmark.get_Range()
        self.check_call("bookmark.get_Range", hr)

        hr, toc = tocs.Add(bkmRange)
        self.check_call("tocs.Add", hr)

        hr = doc.SaveAs("test.docx", wpsapi.wdFormatDocument)
        self.check_call("SaveAs", hr)

        hr = doc.Close()
        self.check_call("Close", hr)

        hr, doc = docs.Open("test.docx", ReadOnly=True)
        self.check_call("Open", hr)

        hr, readOnly = doc.get_ReadOnly()
        self.check_call("get_ReadOnly", hr)
        self.assertTrue(readOnly, "doc.get_ReadOnly")

        hr, window = doc.get_ActiveWindow()
        self.check_call("doc.get_ActiveWindow", hr)

        hr, caption = window.get_Caption()
        self.check_call("window.get_Caption", hr)

        doc.Close()
        self.check_call("Close", hr)

        hr, doc = docs.Add(Visible=False)
        self.check_call("Add", hr)

        hr, name = doc.get_Name()
        self.check_call("get_Name", hr)

        props = doc.CustomDocumentProperties
        for prop in RpcIter(props):
            self.assertIsNotNone(prop.Name)

        props = doc.BuiltInDocumentProperties
        for prop in RpcIter(props):
            self.assertIsNotNone(prop.Name)

        hr, name = wpsApp.get_Name()
        self.check_call("get_Name", hr)

        hr, version = wpsApp.get_Version()
        self.check_call("get_Version", hr)

        hr, build = wpsApp.get_Build()
        self.check_call("get_Build", hr)

        hr, caption = wpsApp.get_Caption()
        self.check_call("get_Caption", hr)

        hr = wpsApp.put_Caption("test标题")
        self.check_call("put_Caption", hr)

        hr, caption = wpsApp.get_Caption()
        self.check_call("get_Caption", hr)
        self.assertEqual(caption, "test标题")

        hr = wpsApp.put_Visible(False)
        self.check_call("put_Visible", hr)

        hr, visible = wpsApp.get_Visible()
        self.check_call("get_Visible", hr)

        hr = wpsApp.put_Visible(True)
        self.check_call("put_Visible", hr)

        hr, visible = wpsApp.get_Visible()
        self.check_call("get_Visible", hr)
        self.assertTrue(visible, "wpsApp.get_Visible")

        if not wpsApp.openDocument(os.path.dirname(os.path.realpath(__file__)) + "/../pyproject.toml", True):
            print("Can't open document")

        self.assertTrue(wpsApp.insertDocumentField("test"))
        self.assertTrue(wpsApp.insertDocumentField("公文域"))
        self.assertEqual(wpsApp.getAllDocumentField(), "test,公文域")
        # wpsApp.getForceBackUpEnabled()

        hr = wpsApp.Quit(wpsapi.wdDoNotSaveChanges)
        self.check_call("Quit", hr)

    def test_cmp_docs(self):
        _, rpc = rpcwpsapi.createWpsRpcInstance()
        _, app = rpc.getWpsApplication()

        _, doc1 = app.Documents.Add()
        _, doc2 = app.Documents.Add()
        doc2.Content.InsertAfter("test")

        _, doc = app.CompareDocuments(doc1, doc2)
        # FIXME: seems not works for linux..
        # self.assertNotEqual(doc, None)

        app.Quit(wpsapi.wdDoNotSaveChanges)


if __name__ == "__main__":
    unittest.main()
