#!/usr/bin/python3

#**
# * Copyright (c) 2020 Weitian Leung
# *
# * This file is part of pywpsrpc.
# *
# * This file is distributed under the MIT License.
# * See the LICENSE file for details.
# *
#*


import sys

from pywpsrpc.rpcwpsapi import (createWpsRpcInstance, wpsapi)
from pywpsrpc.common import FAILED

from PySide2.QtWidgets import *
from PySide2.QtCore import *
from PySide2.QtGui import QWindow


class WpsWindow(QWidget):

    def __init__(self, parent=None):
        super().__init__(parent)

        self.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)
        self.setAttribute(Qt.WA_NativeWindow, True)

        layout = QVBoxLayout(self)

        self._container = None

    def setContainer(self, container):
        if self._container:
            self.layout().removeWidget(self._container)
            self._container = None

        self.layout().addWidget(container)
        self._container = container


class MyWindow(QWidget):

    def __init__(self, parent=None):
        super().__init__(parent)

        self._wpsApp = None

        layout = QVBoxLayout(self)

        hbox = QHBoxLayout()
        layout.addLayout(hbox)

        btnOpen = QPushButton("Open Wps", self)
        btnOpen.clicked.connect(self._onOpenWps)
        hbox.addWidget(btnOpen)

        self.btnOpenDoc = QPushButton("Open Document", self)
        self.btnOpenDoc.clicked.connect(self._onOpenDocument)
        self.btnOpenDoc.setEnabled(False)
        hbox.addWidget(self.btnOpenDoc)

        hbox.addStretch()

        self._wpsWnd = WpsWindow(self)
        layout.addWidget(self._wpsWnd)

        hbox = QHBoxLayout()
        hbox.addWidget(QLabel(self.tr("Current Document: "), self))
        self.lbCurDocName = QLabel(self.tr("<No document>"), self)
        hbox.addWidget(self.lbCurDocName)
        hbox.addStretch()
        layout.addLayout(hbox)

        hbox = QHBoxLayout()
        hbox.addWidget(QLabel(self.tr("Current Selection: "), self))
        self.lbCurSelection = QLabel(self.tr("<No selection>"), self)
        hbox.addWidget(self.lbCurSelection)
        hbox.addStretch()
        layout.addLayout(hbox)

    def _onOpenWps(self):
        if self._wpsApp:
            return

        hr, rpc = createWpsRpcInstance()
        if FAILED(hr):
            QMessageBox.critical(
                self, "Open Wps", "Failed to call createWpsRpcInstance")
            return

        args = ["-shield", "-multiply", "-x11embed",
                "{}".format(self._wpsWnd.winId()),
                "{}".format(self._wpsWnd.width()),
                "{}".format(self._wpsWnd.height())
                ]

        rpc.setProcessArgs(args)

        hr, self._wpsApp = rpc.getWpsApplication()
        if not self._wpsApp:
            QMessageBox.critical(
                self, "Open Wps", "Failed to call getWpsApplication")
            return

        hr = rpc.registerEvent(self._wpsApp,
                               wpsapi.DIID_ApplicationEvents4,
                               "WindowBeforeRightClick",
                               self._onWindowBeforeRightClick)

        hr = rpc.registerEvent(self._wpsApp,
                               wpsapi.DIID_ApplicationEvents4,
                               "WindowSelectionChange",
                               self._onWindowSelectionChange)

        hr = rpc.registerEvent(self._wpsApp,
                               wpsapi.DIID_ApplicationEvents4,
                               "DocumentChange",
                               self._onDocumentChange)

        hr = rpc.registerEvent(self._wpsApp,
                               wpsapi.DIID_ApplicationEvents4,
                               "DocumentOpen",
                               self._onDocumentOpen)

        hr = rpc.registerEvent(self._wpsApp,
                               wpsapi.DIID_ApplicationEvents4,
                               "NewDocument",
                               self._onNewDocument)
        appEx = self._wpsApp.ApplicationEx
        if appEx:
            container = QWidget.createWindowContainer(
                QWindow.fromWinId(appEx.EmbedWid), self)
            self._wpsWnd.setContainer(container)
            # FIXME: the container isn't place correctly
            if not self.isMaximized():
                self.resize(self.width() + 1, self.height())

        self.btnOpenDoc.setEnabled(True)

    def _onOpenDocument(self):
        if not self._wpsApp:
            return

        filePath, _ = QFileDialog.getOpenFileName(
            self,
            "Select File",
            QStandardPaths.standardLocations(
                QStandardPaths.DocumentsLocation)[0]
        )

        if not filePath:
            return

        hr, _ = self._wpsApp.Documents.Open(filePath)
        if FAILED(hr):
            QMessageBox.critical(
                self, "Demo", "Failed to call open document '%s'" % filePath)

    def _onWindowBeforeRightClick(self, selection):
        btn = QMessageBox.question(
            self,
            self.tr("About to show popup menu"),
            self.tr('Press "No" to cancel the popup menu.'))

        return btn == QMessageBox.No

    def _onWindowSelectionChange(self, selection):
        start = selection.Start
        end = selection.End
        if start == end:
            self.lbCurSelection.setText(self.tr("<No selection>"))
        else:
            text = selection.Text
            if text:
                fm = self.lbCurDocName.fontMetrics()
                text = fm.elidedText(text, Qt.ElideRight, self.width() / 2)
                self.lbCurSelection.setText(text)
            else:
                self.lbCurSelection.setText(self.tr("<No text>"))

    def _onDocumentChange(self):
        text = self.tr("<No document>")
        if self._wpsApp:
            docs = self._wpsApp.Documents
            if docs.Count > 0:
                doc = self._wpsApp.ActiveDocument
                text = doc.Name

        self.lbCurDocName.setText(text)

    def _onDocumentOpen(self, doc):
        self._onDocumentChange()

    def _onNewDocument(self, doc):
        self._onDocumentChange()

    def closeEvent(self, event):
        if self._wpsApp:
            self._wpsApp.Quit()
        event.accept()


def main():
    app = QApplication(sys.argv)

    window = MyWindow()
    window.resize(800, 600)
    window.show()

    sys.exit(app.exec_())


if __name__ == "__main__":
    main()
