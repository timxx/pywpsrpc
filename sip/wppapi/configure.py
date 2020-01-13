import sipconfig
import subprocess
import site
import os

from PyQt5.QtCore import PYQT_CONFIGURATION


build_file = "wppapi.sbf"
config = sipconfig.Configuration()

# FIXME:
sip_dir = site.getsitepackages()[0] + "/PyQt5/bindings"
sip_flags = PYQT_CONFIGURATION['sip_flags'].split()

subprocess.check_call(
    [config.sip_bin,
     "-c", ".",
     "-b", build_file,
     "-I", "../common",
     "-I", sip_dir] + sip_flags +
    ["wppapi.sip"])

qt_inc_dir = "/usr/include/qt"

makefile = sipconfig.SIPModuleMakefile(config, build_file)

makefile.extra_include_dirs = ["../../include",
                               "../../include/common",
                               qt_inc_dir,
                               qt_inc_dir + "/QtCore"
                               ]

makefile.extra_lib_dirs = ["/opt/kingsoft/wps-office/office6/",
                           "/usr/lib/office6"]
makefile.extra_libs = ["rpcwppapi_sysqt5"]

makefile.extra_cxxflags = ["-Wno-attributes"]

makefile.generate()
