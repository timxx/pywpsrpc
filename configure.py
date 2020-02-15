#**
# * Copyright (c) 2020 Weitian Leung
# *
# * This file is part of pywpsrpc.
# *
# * This file is distributed under the MIT License.
# * See the LICENSE file for details.
# *
#*

from distutils import sysconfig
import os
import sys
import shutil
import subprocess


class PyWpsRpcProject:
    def __init__(self):
        self.name = "pywpsrpc"
        self.root_dir = os.getcwd()
        self.build_dir = os.path.join(self.root_dir, "build")
        self.target_dir = os.path.join(
            sysconfig.get_python_lib(), self.name)
        self.debug = False
        self.verbose = False

        self.sip = self._find_sip()
        self.qmake = self._find_qmake()
        self.py_include_dir = sysconfig.get_python_inc()

        self.sdk_inc_dir = os.path.join(self.root_dir, "include")
        # For Arch Linux
        if os.path.exists("/usr/lib/office6"):
            self.sdk_lib_dir = "/usr/lib/office6"
        else:
            self.sdk_lib_dir = "/opt/kingsoft/wps-office/office6"

        self.bindings_factories = [RpcWpsApi, RpcWppApi, RpcEtApi]

    def _find_sip(self):
        return shutil.which("sip")

    def _find_qmake(self):
        qmake = shutil.which("qmake-qt5")
        if not qmake:
            qmake = shutil.which("qmake")
        return qmake

    def run_command(self, args, fatal=True, verbose=False):
        stdout = sys.stdout if verbose else subprocess.PIPE
        cmd = ' '.join(args)

        pipe = subprocess.Popen(cmd, shell=True,
                                stdin=subprocess.PIPE,
                                stdout=stdout,
                                stderr=stdout)

        ret = pipe.wait()
        if ret != 0 and fatal:
            raise RpcException(
                "`{}' failed returning {}".format(cmd, ret), ret)

    def progress(self, text):
        print(text + "...")

    def build(self):
        if os.path.exists(self.build_dir):
            shutil.rmtree(self.build_dir)
        else:
            os.makedirs(self.build_dir)

        installed = []
        sub_dirs = []

        for binding_factory in self.bindings_factories:
            binding = binding_factory(self)
            self._gen_cxx_source(binding)
            self._gen_module_pro_file(binding, installed)
            sub_dirs.append(binding.name)

        self.progress("Generating the top-level project")

        inventory_file = os.path.join(self.build_dir, "inventory.txt")

        with open(self.build_dir + "/" + self.name + ".pro", "w+") as f:
            f.write("TEMPLATE = subdirs\n")
            f.write("CONFIG += ordered\n\n")
            f.write("SUBDIRS = %s\n\n" % ' '.join(sub_dirs))

            f.write("init.path = %s\n" % self.target_dir)
            f.write("init.files = %s\n" % (self.root_dir + "/__init__.py"))
            f.write("INSTALLS += init\n\n")

            installed.append(self.target_dir + "/__init__.py")

            # install the non-target files
            common_dir = os.path.join(self.root_dir, "sip", "common")
            common_binding_dir = os.path.join(
                self.target_dir, "bindings", "common")
            sip_common_files = [(common_dir + "/" + f)
                                for f in os.listdir(common_dir) if f.endswith(".sip")]

            f.write("sip_common.path = %s\n" % common_binding_dir)
            f.write("sip_common.files = %s\n" %
                    " \\\n\t".join(sip_common_files))
            f.write("INSTALLS += sip_common\n\n")

            installed.extend([f.replace(common_dir, common_binding_dir)
                              for f in sip_common_files])

            self._install_common_subdir(f, common_dir, "ksoapi", installed)
            self._install_common_subdir(f, common_dir, "wpsapiex", installed)

        with open(inventory_file, "w+") as f:
            f.write('\n'.join(installed))
            f.write('\n')

        old_dir = os.getcwd()
        os.chdir(self.build_dir)

        self.run_command(
            [self.qmake, "-recursive", self.name + ".pro"],
            fatal=True,
            verbose=self.verbose)

        self.progress("Compiling the project")
        self._run_make()

        os.chdir(old_dir)

        print("The project has been built.")

    def install(self):
        old_dir = os.getcwd()
        os.chdir(self.build_dir)

        self.progress("Installing the project")
        self._run_make(install=True)

        os.chdir(old_dir)

    def _gen_cxx_source(self, binding):
        self.progress("Generating the %s bindings" % binding.name)

        build_subdir = os.path.join(self.build_dir, binding.name)
        os.makedirs(build_subdir, exist_ok=True)

        args = [self.sip,
                "-w",
                #"-n", "sip",
                "-f",
                "-c", build_subdir,
                "-I", self.root_dir + "/sip/common",
                "-t", "Module_%s" % binding.name,
                self.root_dir + "/sip/" + binding.sip_file]

        self.run_command(args)

        pch_file = os.path.join(build_subdir, "stdafx.h")
        with open(pch_file, "w+") as f:
            f.write("#ifndef PYWPSRPC_%s_H\n" % binding.name)
            f.write("#define PYWPSRPC_%s_H\n\n" % binding.name)
            for pch in binding.PCH:
                f.write("#include <%s>\n" % pch)

            f.write("#include <wpsapiex.h>\n")
            f.write("#include <vector>\n\n")
            f.write("#endif\n")

    def _gen_module_pro_file(self, binding, installed):
        self.progress("Generating the %s project" % binding.name)

        build_subdir = os.path.join(self.build_dir, binding.name)
        with open(os.path.join(build_subdir, binding.name + ".pro"), "w+") as f:
            f.write("TEMPLATE = lib\n")
            f.write("CONFIG += plugin no_plugin_name_prefix warn_off\n")
            f.write("CONFIG += %s\n" % ("debug" if self.debug else "release"))
            f.write("CONFIG += c++11 precompile_header\n")
            f.write("QT = %s\n" % (' '.join(binding.QT) if binding.QT else ''))
            f.write("TARGET = %s\n\n" % binding.name)

            f.write("INCLUDEPATH += .\n")
            for dir in binding.include_dirs:
                f.write("INCLUDEPATH += %s\n" % dir)
            f.write("INCLUDEPATH += %s\n\n" % self.py_include_dir)

            for dir in binding.library_dirs:
                f.write("LIBS += -L%s\n" % dir)
            for lib in binding.libraries:
                f.write("LIBS += -l%s\n" % lib)

            f.write('\n')

            # hidden symbols
            with open(build_subdir + "/" + binding.name + ".exp", "w+") as exp:
                exp.write("{ global: PyInit_%s; local: *; };" % binding.name)

            f.write("QMAKE_LFLAGS += -Wl,--version-script=%s.exp\n" %
                    binding.name)
            #f.write("QMAKE_LFLAGS_PLUGIN += -Wl,--no-undefined\n")
            f.write("QMAKE_CXXFLAGS += -Wno-attributes -Wno-delete-non-virtual-dtor\n")
            f.write("QMAKE_CXXFLAGS += -Wno-delete-incomplete -Wno-unused-variable\n")
            f.write("QMAKE_RPATHDIR += $ORIGIN /opt/kingsoft/wps-office/office6\n")
            f.write("QMAKE_RPATHDIR += /usr/lib/office6\n\n")

            # for testing
            rpc_dir = os.path.join(self.build_dir, self.name)
            os.makedirs(rpc_dir, exist_ok=True)
            f.write("QMAKE_POST_LINK = $(COPY_FILE) $(TARGET) %s\n\n" % rpc_dir)

            f.write("PRECOMPILED_HEADER = stdafx.h\n\n")

            headers = [os.path.basename(f) for f in os.listdir(
                build_subdir) if f.endswith(".h")]
            sources = [os.path.basename(f) for f in os.listdir(
                build_subdir) if f.endswith(".cpp")]

            f.write("HEADERS = %s\n" % " \\\n\t".join(headers))
            f.write("SOURCES = %s" % " \\\n\t".join(sources))
            f.write('\n\n')

            f.write("target.path = %s\n" % self.target_dir)
            f.write("INSTALLS += target\n\n")

            installed.append(self.target_dir + "/%s.so" % binding.name)

            sip_dir = os.path.join(self.root_dir, "sip", binding.name)
            sip_files = [(sip_dir + "/" + f)
                         for f in os.listdir(sip_dir) if f.endswith(".sip")]
            sip_binding_dir = self.target_dir + "/bindings/" + binding.name

            f.write("sip.path = %s\n" % sip_binding_dir)
            f.write("sip.files = %s\n" % " \\\n\t".join(sip_files))
            f.write("INSTALLS += sip")

            installed.extend([f.replace(sip_dir, sip_binding_dir) for f in sip_files])

    def _run_make(self, install=False):
        if install:
            # single thread only
            args = ["make", "install"]
        else:
            args = ["make", "-j%s" % os.cpu_count()]

        self.run_command(args, fatal=True, verbose=self.verbose)

    def _install_common_subdir(self, f, common_dir, subdir, installed):
        target_dir = os.path.join(common_dir, subdir)
        binding_dir = os.path.join(
            self.target_dir, "bindings", "common", subdir)
        sip_files = [(target_dir + "/" + f)
                     for f in os.listdir(target_dir) if f.endswith(".sip")]

        f.write("sip_%s.path = %s\n" % (subdir, binding_dir))
        f.write("sip_%s.files = %s\n" %
                (subdir, " \\\n\t".join(sip_files)))
        f.write("INSTALLS += sip_%s\n\n" % subdir)

        installed.extend([f.replace(target_dir, binding_dir)
                          for f in sip_files])



class RpcApiBindings:

    def __init__(self, project, name, **kwargs):
        self.project = project
        self.name = name

        for option in self.get_options():
            setattr(self, option, kwargs.get(option))

        self.sip_file = name + "/" + name + ".sip"

    def get_options(self):
        return ["include_dirs",
                "libraries",
                "library_dirs",
                "QT",
                "PCH"]


class RpcWpsApi(RpcApiBindings):

    def __init__(self, project):
        dirs = [project.sdk_inc_dir, project.sdk_inc_dir + "/common"]
        dirs.append(project.sdk_inc_dir + "/wps")
        super().__init__(project,
                         "rpcwpsapi",
                         include_dirs=dirs,
                         libraries=["rpcwpsapi_sysqt5"],
                         library_dirs=[project.sdk_lib_dir],
                         QT=["core"],
                         PCH=["QString", "wps/wpsapi.h"])


class RpcWppApi(RpcApiBindings):

    def __init__(self, project):
        dirs = [project.sdk_inc_dir, project.sdk_inc_dir + "/common"]
        dirs.append(project.sdk_inc_dir + "/wpp")
        super().__init__(project,
                         "rpcwppapi",
                         include_dirs=dirs,
                         libraries=["rpcwppapi_sysqt5"],
                         library_dirs=[project.sdk_lib_dir],
                         PCH=["wpp/wppapi.h"])


class RpcEtApi(RpcApiBindings):

    def __init__(self, project):
        dirs = [project.sdk_inc_dir, project.sdk_inc_dir + "/common"]
        dirs.append(project.sdk_inc_dir + "/et")
        super().__init__(project,
                         "rpcetapi",
                         include_dirs=dirs,
                         libraries=["rpcetapi_sysqt5"],
                         library_dirs=[project.sdk_lib_dir],
                         PCH=["et/etapi.h"])


class RpcException(Exception):

    def __init__(self, text, exit_code):
        super().__init__()
        self.text = text
        self.exit_code = exit_code


def main(argv):
    try:
        project = PyWpsRpcProject()
        project.verbose = ("--verbose" in argv)
        project.build()

        if len(argv) >= 2:
            if "install" in argv:
                project.install()
    except RpcException as e:
        print(e.text)
        sys.exit(e.exit_code)


if __name__ == "__main__":
    main(sys.argv)
