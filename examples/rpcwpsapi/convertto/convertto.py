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

import os
import sys
import argparse

from pywpsrpc.rpcwpsapi import (createWpsRpcInstance, wpsapi, FAILED)


formats = {
    "doc": wpsapi.wdFormatDocument,
    "docx": wpsapi.wdFormatXMLDocument,
    "rtf": wpsapi.wdFormatRTF,
    "html": wpsapi.wdFormatHTML,
    "pdf": wpsapi.wdFormatPDF,
    "xml": wpsapi.wdFormatXML,
}


class ConvertException(Exception):

    def __init__(self, text, hr):
        self.text = text
        self.hr = hr

    def __repr__(self):
        return """Convert failed:
Details: {}
ErrCode: {}
""".format(self.text, self.hr)


def convert_to(paths, format, abort_on_fails=False):
    hr, rpc = createWpsRpcInstance()
    if FAILED(hr):
        raise ConvertException("Can't create the rpc instance", hr)

    hr, app = rpc.getWpsApplication()
    if FAILED(hr):
        raise ConvertException("Can't get the application", hr)

    # we don't need the gui
    app.put_Visible(False)

    hr, docs = app.get_Documents()
    if FAILED(hr):
        raise ConvertException("Can't get the documents", hr)

    for path in paths:
        abs_path = os.path.realpath(path)
        if os.path.isdir(abs_path):
            files = [(os.path.join(abs_path, f)) for f in os.listdir(abs_path)]
            for file in files:
                hr = convert_file(file, docs, format)
                if FAILED(hr) and abort_on_fails:
                    raise ConvertException("Failed to convert '%s'" % path, hr)
        else:
            hr = convert_file(abs_path, docs, format)
            if FAILED(hr) and abort_on_fails:
                raise ConvertException("Failed to convert '%s'" % path, hr)

    app.Quit()


def convert_file(file, docs, format):
    hr, doc = docs.Open(file, ReadOnly=True)
    if FAILED(hr):
        return hr

    out_dir = os.path.dirname(os.path.realpath(file)) + "/out"
    os.makedirs(out_dir, exist_ok=True)

    # you have to handle if the new_file already exists
    new_file = out_dir + "/" + os.path.splitext(os.path.basename(file))[0] + "." + format
    hr = doc.SaveAs2(new_file, FileFormat=formats[format])

    # always close the doc
    doc.Close(wpsapi.wdDoNotSaveChanges)

    return hr


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--format", "-f",
                        required=True,
                        metavar="<DOC_TYPE>",
                        choices=["doc", "docx", "rtf", "html", "pdf", "xml"],
                        help="convert to <DOC_TYPE>,")

    parser.add_argument("--abort", "-a",
                        action="store_true",
                        help="abort if one convert fails")

    parser.add_argument("path",
                        metavar="<path>",
                        nargs='+',
                        help="the <path> can be one or more file or folder")

    args = parser.parse_args()

    try:
        convert_to(args.path, args.format, args.abort)
    except ConvertException as e:
        print(e)


if __name__ == "__main__":
    try:
        from PySide2.QtCore import QCoreApplication
        # silent the "QEventLoop: Cannot be used without QApplication"
        qApp = QCoreApplication(sys.argv)
    except:
        pass

    main()
