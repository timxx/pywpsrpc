#!/usr/bin/python3
# -- coding: utf-8 -
# **
# * Copyright (c) 2022 cong.zheng
# *
# * This file is part of pywpsrpc.
# *
# * This file is distributed under the MIT License.
# * See the LICENSE file for details.
# *
# *

import os
import subprocess
import sys

import argparse

from pywpsrpc.rpcwppapi import (createWppRpcInstance, wppapi)
from pywpsrpc.common import (S_OK, QtApp)

formats = {
    "pdf": wppapi.PpSaveAsFileType.ppSaveAsPDF,
}

pid = None

class ConvertException(Exception):

    def __init__(self, text, hr):
        self.text = text
        self.hr = hr

    def __str__(self):
        return """Convert failed:
Details: {}
ErrCode: {}
""".format(self.text, hex(self.hr & 0xFFFFFFFF))


def convert_to(paths, format, abort_on_fails=False):
    hr, rpc = createWppRpcInstance()
    if hr != S_OK:
        raise ConvertException("Can't create the rpc instance", hr)
    hr, app = rpc.getWppApplication()
    if hr != S_OK:
        raise ConvertException("Can't get the application", hr)
    global pid
    hr, pid = rpc.getProcessPid()
    if hr != S_OK:
        raise ConvertException("Can't  get the PID", hr)
    print("PID:{}".format(pid))
    # we don't need the gui
    # Call 'put_Visible()' failed with 0x80010105
    # app.Visible = wppapi.MsoTriState.msoFalse

    docs = app.Presentations

    def _handle_result(hr):
        if abort_on_fails and hr != S_OK:
            raise ConvertException("convert_file failed", hr)

    for path in paths:
        abs_path = os.path.realpath(path)
        if os.path.isdir(abs_path):
            files = [(os.path.join(abs_path, f)) for f in os.listdir(abs_path)]
            for file in files:
                hr = convert_file(file, docs, format)
                _handle_result(hr)
        else:
            hr = convert_file(abs_path, docs, format)
            _handle_result(hr)

    app.Quit()


def convert_file(file, docs, format):
    hr, doc = docs.Open(file, ReadOnly=True, WithWindow=wppapi.MsoTriState.msoFalse)
    if hr != S_OK:
        return hr

    out_dir = os.path.dirname(os.path.realpath(file)) + "/out"
    os.makedirs(out_dir, exist_ok=True)

    # you have to handle if the new_file already exists
    new_file = out_dir + "/" + os.path.splitext(os.path.basename(file))[0] + "." + format
    ret = doc.SaveAs(new_file, formats[format])
    # always close the doc
    doc.Close()

    return ret


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--format", "-f",
                        required=True,
                        metavar="<DOC_TYPE>",
                        choices=["pdf"],
                        help="convert to <DOC_TYPE>,")

    parser.add_argument("--abort", "-a",
                        action="store_true",
                        help="abort if one convert fails")

    parser.add_argument("path",
                        metavar="<path>",
                        nargs='+',
                        help="the <path> can be one or more file or folder")

    args = parser.parse_args()

    qApp = QtApp(sys.argv)
    try:
        convert_to(args.path, args.format, args.abort)
        print("conversion completed")
    except Exception as e:
        print(e)
    finally:
        if pid is not None:
            print("kill wpp,pid {}".format(pid))
            subprocess.call("kill -9 {}".format(pid), shell=True)


if __name__ == "__main__":
    main()
