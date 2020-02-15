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
from pywpsrpc.rpcwpsapi import (FAILED, S_OK)

from PySide2.QtWidgets import *
from PySide2.QtCore import *


class WpsWindow(QWidget):

    def __init__(self, parent=None):
        super().__init__(parent)

        self.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)
        self.setAttribute(Qt.WA_NativeWindow, True)


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

    def _onOpenWps(self):
        if self._wpsApp:
            retrn

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
        if FAILED(hr):
            QMessageBox.critical(
                self, "Open Wps", "Failed to call getWpsApplication")
            return

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

        hr, docs = self._wpsApp.get_Documents()
        if FAILED(hr):
            QMessageBox.critical(
                self, "Demo", "Failed to call get_Documents")
            return

        hr, doc = docs.Open(filePath)
        if FAILED(hr):
            QMessageBox.critical(
                self, "Demo", "Failed to call open document '%s'" % filePath)


def main():
    app = QApplication(sys.argv)

    window = MyWindow()
    window.resize(800, 600)
    window.show()

    sys.exit(app.exec_())


if __name__ == "__main__":
    main()
