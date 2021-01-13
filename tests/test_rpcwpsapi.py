#!/usr/bin/env python3

import sys
import os
import time

sys.path.insert(0, os.path.dirname(os.path.realpath(__file__)) + "/../build")
from pywpsrpc import rpcwpsapi
from pywpsrpc import common
from pywpsrpc.rpcwpsapi import wpsapi
from pywpsrpc.utils import RpcIter


def check_call(funcName, hr, value=None):
    if hr != common.S_OK:
        print("call {} failed with code: {}".format(funcName, hr))
        sys.exit(-1)
    if value != None:
        print("{}: {}".format(funcName, value))
    else:
        print("{}: <ok>".format(funcName))


def test():
    hr, rpc = rpcwpsapi.createWpsRpcInstance()
    check_call("createWpsRpcInstance", hr, rpc)

    hr = rpc.setProcessArgs([os.path.dirname(os.path.realpath(__file__)) + "/../pyproject.toml"])
    check_call("setProcessArgs", hr)

    hr, wpsApp = rpc.getWpsApplication()
    check_call("rpc.getWpsApplication", hr, wpsApp)

    hr, pid = rpc.getProcessPid()
    check_call("getProcessPid", hr, pid)

    hr, docs = wpsApp.get_Documents()
    check_call("get_Documents", hr, docs)

    # FIXME: some env may fails get_Count (returns 0)
    time.sleep(0.5)

    hr, count = docs.get_Count()
    check_call("get_Count", hr, count)

    hr, doc = wpsApp.get_ActiveDocument()
    check_call("get_ActiveDocument", hr, doc)

    hr, name = doc.get_Name()
    check_call("get_Name", hr, name)

    hr, docRange = doc.get_Content()
    check_call("get_Content", hr, docRange)

    hr, start = docRange.get_Start()
    check_call("get_Start", hr, start)

    hr, end = docRange.get_End()
    check_call("get_End", hr, end)

    hr, text = docRange.get_Text()
    check_call("get_Text", hr, text)
    # the text uses \r as newline, LoL
    print(text.replace("\r", "\n"))

    hr, paras = doc.get_Paragraphs()
    check_call("get_Paragraphs", hr, paras)

    hr, count = paras.get_Count()
    check_call("get_Count", hr, count)

    hr = docRange.InsertParagraphAfter()
    check_call("InsertParagraphAfter", hr)

    hr = docRange.InsertAfter("Hello, world")
    check_call("InsertAfter", hr)

    hr, count = paras.get_Count()
    check_call("get_Count", hr, count)

    hr, app2 = paras.get_Application()
    check_call("paras.get_Application", hr, app2)

    hr, build = app2.get_Build()
    check_call("app2.get_Build", hr, build)

    hr, para = paras.get_First()
    check_call("paras.get_First", hr, para)

    hr, dropCap = para.get_DropCap()
    check_call("para.get_DropCap", hr, dropCap)

    hr = dropCap.put_Position(wpsapi.wdDropNormal)
    check_call("dropCap.put_Position", hr)

    hr, paraRange = para.get_Range()
    check_call("para.get_Range", hr, paraRange)

    hr, text = paraRange.get_Text()
    check_call("paraRange.get_Text", hr, text)

    hr = para.put_Alignment(wpsapi.wdAlignParagraphCenter)
    check_call("para.put_Alignment", hr)

    hr, paraFormat = para.get_Format()
    check_call("para.get_Format", hr, paraFormat)

    hr, style = paraFormat.get_Style()
    check_call("paraFormat.get_Style", hr, style)

    hr, borders = paraFormat.get_Borders()
    check_call("paraFormat.get_Borders", hr, borders)

    hr, count = borders.get_Count()
    check_call("borders.get_Count", hr, count)

    hr = borders.put_Shadow(True)
    check_call("borders.put_Shadow", hr)

    hr = paraFormat.put_Borders(borders)
    check_call("paraFormat.put_Borders", hr)

    hr, shading = para.get_Shading()
    check_call("para.get_Shading", hr, shading)

    hr = shading.put_BackgroundPatternColor(wpsapi.wdColorGreen)
    check_call("shading.put_BackgroundPatternColor", hr)

    hr, tabStops = para.get_TabStops()
    check_call("para.get_TabStops", hr, tabStops)

    hr, count = tabStops.get_Count()
    check_call("tabStops.get_Count", hr, count)

    hr = docRange.put_Start(end)
    check_call("put_Start", hr)

    hr = docRange.put_End(end + 12)
    check_call("put_End", hr)

    hr, text = docRange.get_Text()
    # should be "Hello, world"
    check_call("get_Text", hr, text)

    # reset the range to find
    hr, docRange = doc.get_Content()

    hr, find = docRange.get_Find()
    check_call("docRange.get_Find", hr, find)

    hr, found = find.Execute("Hello, world", MatchWholeWord=True)
    check_call("find.Execute", hr, found)

    hr, font = docRange.get_Font()
    check_call("docRange.get_Font", hr, font)

    hr, name = font.get_Name()
    check_call("font.get_Name", hr, name)

    hr = font.put_Bold(True)
    check_call("font.put_Bold", hr)

    hr, selection = wpsApp.get_Selection()
    check_call("get_Selection", hr, selection)

    hr = selection.SetRange(0, 10)
    check_call("SetRange", hr)

    hr, start = selection.get_Start()
    check_call("get_Start", hr, start)

    hr, end = selection.get_End()
    check_call("get_End", hr, end)

    hr, text = selection.get_Text()
    check_call("get_Text", hr, text)

    hr, tables = doc.get_Tables()
    check_call("doc.get_Tables", hr, tables)

    hr, pos = selection.EndKey(Unit=wpsapi.wdStory)
    check_call("selection.EndKey", hr, pos)

    hr = selection.InsertParagraphAfter()
    hr, pos = selection.EndKey(Unit=wpsapi.wdStory)

    hr, selRange = selection.get_Range()
    check_call("selection.get_Range", hr, selRange)

    hr, table = tables.Add(selRange, 2, 2)
    check_call("tables.Add", hr, table)

    hr, cell = table.Cell(1, 2)
    check_call("table.Cell", hr, cell)

    hr, cellRange = cell.get_Range()
    check_call("cell.get_Range", hr, cellRange)

    hr = cellRange.put_Text("cell")
    check_call("cellRange.put_Text", hr)

    hr, shapes = doc.get_Shapes()
    check_call("doc.get_Shapes", hr, shapes)

    hr, shape = shapes.AddShape(wpsapi.msoShapeMoon, 0, 0, 100, 100)
    check_call("shapes.AddShape", hr, shape)

    hr = shape.put_AlternativeText("this is a moon shape")
    check_call("shape.put_AlternativeText", hr)

    hr, fields = doc.get_Fields()
    check_call("doc.get_Fields",hr, fields)

    hr, field = fields.Add(selRange, Type=wpsapi.wdFieldDate)
    check_call("fields.Add", hr, field)

    hr, bookmarks = doc.get_Bookmarks()
    check_call("doc.get_Bookmarks", hr, bookmarks)

    hr, bkmRange = doc.Range(0, 10)
    check_call("doc.Range", hr, bkmRange)

    hr, bookmark = bookmarks.Add("BookmarkName", bkmRange)
    check_call("bookmarks.Add", hr, bookmark)

    hr, count = bookmarks.get_Count()
    check_call("bookmarks.get_Count", hr, count)

    hr, name = bookmark.get_Name()
    check_call("bookmark.get_Name", hr, name)

    hr, tocs = doc.get_TablesOfContents()
    check_call("doc.get_TablesOfContents", hr, tocs)

    hr, bkmRange = bookmark.get_Range()
    check_call("bookmark.get_Range", hr, bkmRange)

    hr, toc = tocs.Add(bkmRange)
    check_call("tocs.Add", hr, toc)

    hr = doc.SaveAs("test.docx", wpsapi.wdFormatDocument)
    check_call("SaveAs", hr)

    hr = doc.Close()
    check_call("Close", hr)

    hr, doc = docs.Open("test.docx", ReadOnly=True)
    check_call("Open", hr, doc)

    hr, readOnly = doc.get_ReadOnly()
    check_call("get_ReadOnly", hr, readOnly)

    hr, window = doc.get_ActiveWindow()
    check_call("doc.get_ActiveWindow", hr, window)

    hr, caption = window.get_Caption()
    check_call("window.get_Caption", hr, caption)

    doc.Close()
    check_call("Close", hr)

    hr, doc = docs.Add(Visible=False)
    check_call("Add", hr, doc)

    hr, name = doc.get_Name()
    check_call("get_Name", hr, name)

    props = doc.CustomDocumentProperties
    print("Doc Props:")
    for prop in RpcIter(props):
        print("\t %s: %s" % (prop.Name, prop.Value))

    props = doc.BuiltInDocumentProperties
    print("Builtin Props:")
    for prop in RpcIter(props):
        print("\t %s: %s" % (prop.Name, prop.Value))

    hr, name = wpsApp.get_Name()
    check_call("get_Name", hr, name)

    hr, version = wpsApp.get_Version()
    check_call("get_Version", hr, version)

    hr, build = wpsApp.get_Build()
    check_call("get_Build", hr, build)

    hr, caption = wpsApp.get_Caption()
    check_call("get_Caption", hr, caption)

    hr = wpsApp.put_Caption("test标题")
    check_call("put_Caption", hr)

    hr, caption = wpsApp.get_Caption()
    check_call("get_Caption", hr, caption)

    hr = wpsApp.put_Visible(False)
    check_call("put_Visible", hr)

    hr, visible = wpsApp.get_Visible()
    check_call("get_Visible", hr, visible)

    hr = wpsApp.put_Visible(True)
    check_call("put_Visible", hr)

    hr, visible = wpsApp.get_Visible()
    check_call("get_Visible", hr, visible)

    if not wpsApp.openDocument(os.path.dirname(os.path.realpath(__file__)) + "/../pyproject.toml", True):
        print("Can't open document")

    print(wpsApp.insertDocumentField("test"))
    print(wpsApp.insertDocumentField("公文域"))
    print(wpsApp.getAllDocumentField())
    print(wpsApp.getForceBackUpEnabled())

    hr = wpsApp.Quit(wpsapi.wdDoNotSaveChanges)
    check_call("Quit", hr)


if __name__ == "__main__":
    test()
