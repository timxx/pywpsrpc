#**
# * Copyright (c) 2020-2021 Weitian Leung
# *
# * This file is part of pywpsrpc.
# *
# * This file is distributed under the MIT License.
# * See the LICENSE file for details.
# *
#*

import sipbuild
import os
import sys
import shutil
import re


var_pattern = re.compile(
    rb"(\s+::([a-zA-Z0-9_]+::)?[a-zA-Z0-9_]+\* a[0-9]+);$")


class PyWpsRpcProject(sipbuild.Project):
    def __init__(self):
        super().__init__(dunder_init=True)
        self.abi_version = "12"

        self.bindings_factories = [RpcCommon, RpcWpsApi, RpcWppApi, RpcEtApi]
        self.sdk_inc_dir = os.path.join(self.root_dir, "include")

        # For Arch Linux
        if os.path.exists("/usr/lib/office6"):
            self.sdk_lib_dir = "/usr/lib/office6"
        else:
            self.sdk_lib_dir = "/opt/kingsoft/wps-office/office6"

    def apply_nonuser_defaults(self, tool):
        if self.builder_factory is None:
            self.builder_factory = RpcApiBuilder

        if self.sip_files_dir is None:
            self.sip_files_dir = "sip"

        # must set sip_module
        if self.sip_module is None:
            self.sip_module = "pywpsrpc.sip"

        if self.sip_include_dirs is None:
            self.sip_include_dirs = [self.root_dir + "/sip/common"]

        super().apply_nonuser_defaults(tool)

    def get_dunder_init(self):
        dunder_init = ""
        with open(os.path.join(self.root_dir, "py", "__init__.py")) as f:
            dunder_init = f.read()

        return dunder_init

    def get_requires_dists(self):
        # the sip module already contains in the package
        return []


class RpcApiBindings(sipbuild.Bindings):

    def get_options(self):
        options = super().get_options()

        options.append(sipbuild.Option("QT", option_type=list))
        options.append(sipbuild.Option("PCH", option_type=list))

        return options

    def apply_nonuser_defaults(self, tool):
        if self.sip_file is None:
            self.sip_file = self.name + "/" + self.name + ".sip"

        super().apply_nonuser_defaults(tool)

        self.builder_settings.append("QT = %s" % ' '.join(self.QT))

    def apply_user_defaults(self, tool):
        super().apply_user_defaults(tool)

    def generate(self):
        buildable = super().generate()

        pch_file = os.path.join(buildable.build_dir, "stdafx.h")
        with open(pch_file, "w+") as f:
            f.write("#ifndef PYWPSRPC_%s_H\n" % buildable.target)
            f.write("#define PYWPSRPC_%s_H\n\n" % buildable.target)
            for pch in self.PCH:
                f.write("#include <%s>\n" % pch)

            f.write("#include <wpsapiex.h>\n")
            f.write("#include <string>\n")
            f.write("#include <vector>\n\n")
            f.write("#endif\n")

        buildable.headers.append(pch_file)

        # asyncio seems no improves here
        self._fix_uninited_vars(buildable.sources)

        return buildable

    def _fix_uninited_vars(self, sources):
        """ Try init the pointer argument
        We need it because of using sipEventCollectingWrapper
        """
        # FIXME: this should be done by SIP
        for src in sources:
            tmp_file = src + "_tmp"
            f = open(src, "rb")
            f_tmp = open(tmp_file, "wb+")

            for line in f:
                m = var_pattern.match(line)
                if m:
                    line = m.group(1) + b' = nullptr;\n'
                f_tmp.write(line)

            f.close()
            f_tmp.close()
            os.rename(tmp_file, src)


class RpcCommon(RpcApiBindings):

    def __init__(self, project):
        dirs = [project.sdk_inc_dir, project.sdk_inc_dir + "/common"]
        super().__init__(project,
                         "common",
                         include_dirs=dirs,
                         QT=["core"],
                         PCH=["pre_stddef.h",
                              "kfc/guid.h",
                              "int.h",
                              "typedef.h",
                              "guiddef.h",
                              "objbase.h",
                              "strapi/strapi.h",
                              "comdef.h",
                              "ksoapi/ksoapi.h"])

    def generate(self):
        buildable = super().generate()
        self._fix_sip(buildable)
        return buildable

    def _fix_sip(self, buildable):
        for installable in buildable.installables:
            if installable.name != "sip":
                continue

            self._fix_subdir_sip(buildable, installable)

            # The export.sip include in other module
            common_dir = os.path.join(self.project.root_dir, "sip", "common")
            installable.files.append(common_dir + "/export.sip")

            break

    def _fix_subdir_sip(self, buildable, sip_installable):
        subdirs = ["ksoapi", "wpsapiex"]
        for subdir in subdirs:
            sub_installable = sipbuild.Installable(
                "sip_" + subdir,
                target_subdir=sip_installable.target_subdir + "/" + subdir)

            sub_path = "/" + subdir + "/"
            sub_installable.files = [
                f for f in sip_installable.files if sub_path in f]

            sip_installable.files = [f for f in sip_installable.files
                                     if f not in sub_installable.files]
            buildable.installables.append(sub_installable)


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


# seems that we have no easy way to change the cxx flags
# we need to set the RPATH flags at least
class RpcApiBuilder(sipbuild.Builder):
    def __init__(self, project, **kwargs):
        super().__init__(project, **kwargs)

    def get_options(self):
        options = super().get_options()

        options.append(
            sipbuild.Option("qmake",
                            metavar="<FILE>",
                            help="Specify the qmake executable"))
        options.append(
            sipbuild.Option("clang",
                            option_type=bool,
                            help="Use clang to compile the project"))

        options.append(
            sipbuild.Option("libcxx",
                            option_type=bool,
                            help="Link libc++ when --clang specified"))
        return options

    def apply_user_defaults(self, tool):
        if tool in sipbuild.Option.BUILD_TOOLS:
            if self.qmake is None:
                self.qmake = shutil.which("qmake-qt5")
                if not self.qmake:
                    self.qmake = shutil.which("qmake")

            if not self.qmake:
                raise sipbuild.UserException(
                    "Please specify a valid qmake executable")

        super().apply_user_defaults(tool)

    def build_executable(self, buildable, *, fatal=True):
        raise sipbuild.UserException("RpcApiBuilder cannot build executables")

    def build_project(self, target_dir, *, wheel_tag=None):
        installed = []
        sub_dirs = []

        is_debug = False
        for buildable in self.project.buildables:
            if isinstance(buildable, sipbuild.BuildableModule):
                is_debug = buildable.debug
                self._gen_module_pro_file(buildable, target_dir, installed)
            elif type(buildable) is sipbuild.Buildable:
                for installable in buildable.installables:
                    installable.install(
                        target_dir, installed, do_install=False)
            else:
                raise sipbuild.UserException(
                    "RpcApiBuilder cannot build '{0}' buildables".format(
                        type(buildable).__name__))

            sub_dirs.append(buildable.name)

        self._gen_sip_project(target_dir, sub_dirs, installed, is_debug)

        self.project.progress("Generating the top-level project")

        pro = self.project.build_dir + "/" + self.project.name + ".pro"
        with open(pro, "w+") as f:
            f.write("TEMPLATE = subdirs\n")
            f.write("CONFIG += ordered\n\n")
            f.write("SUBDIRS = %s\n\n" % ' '.join(sub_dirs))

            for installable in self.project.installables:
                self._install(f, installable, target_dir, installed)

            py_subdir = os.path.join(target_dir, self.project.name)
            sip_py = sipbuild.Installable("sip_py", target_subdir=py_subdir)
            py_dir = os.path.join(self.project.root_dir, "py")
            sip_py_files = [(py_dir + "/" + f) for f in os.listdir(py_dir)
                            if f.endswith(".py") and f != "__init__.py"]
            sip_py.files.extend(sip_py_files)
            self._install(f, sip_py, target_dir, installed)

            fake_root = os.path.join(self.project.build_dir, self.project.name)
            for py in sip_py.files:
                shutil.copy(py, fake_root)
            shutil.copy(os.path.join(py_dir, "__init__.py"), fake_root)

            # for distinfo
            inventory_file = self.project.build_dir + "/inventory.txt"
            with open(inventory_file, "w+") as inventory:
                inventory.write('\n'.join(installed))
                inventory.write('\n')

            distinfo = ["sip-distinfo",
                        "--project-root", self.project.root_dir,
                        "--generator", os.path.basename(sys.argv[0]),
                        "--prefix", '\\"$(INSTALL_ROOT)\\"',
                        "--inventory", inventory_file]

            if wheel_tag:
                distinfo.append("--wheel-tag")
                distinfo.append(wheel_tag)

            distinfo.append(self.project.get_distinfo_dir(target_dir))

            f.write("distinfo.extra = %s\n" % ' '.join(distinfo))
            f.write("distinfo.path = %s\n" % target_dir)
            f.write("INSTALLS += distinfo\n")

        old_dir = os.getcwd()
        os.chdir(self.project.build_dir)

        args = [self.qmake, "-recursive", self.project.name + ".pro"]
        if self.clang:
            if self.libcxx:
                args.extend(["-spec", "linux-clang-libc++"])
            else:
                args.extend(["-spec", "linux-clang"])
        self.project.run_command(args, fatal=True)

        self.project.progress("Compiling the project")
        self._run_make()
        os.chdir(old_dir)

    def install_project(self, target_dir, *, wheel_tag=None):
        self.project.progress("Installing the project")
        old_dir = os.getcwd()
        os.chdir(self.project.build_dir)
        self._run_make(True)
        os.chdir(old_dir)

    def _gen_module_pro_file(self, buildable, target_dir, installed):
        self.project.progress("Generating the %s project" % buildable.target)

        with open(buildable.build_dir + "/" + buildable.target + ".pro", "w+") as f:
            f.write("TEMPLATE = lib\n")
            f.write("CONFIG += plugin no_plugin_name_prefix warn_off\n")
            f.write("CONFIG += %s\n" %
                    ("debug" if buildable.debug else "release"))
            f.write("CONFIG += c++11 precompile_header\n")
            f.write("%s\n" % ' '.join(buildable.builder_settings))
            f.write("TARGET = %s\n\n" % buildable.target)

            if buildable.define_macros:
                f.write("DEFINES += %s\n" % ' '.join(buildable.define_macros))

            f.write("INCLUDEPATH += .\n")
            for dir in buildable.include_dirs:
                f.write("INCLUDEPATH += %s\n" % dir)
            f.write("INCLUDEPATH += %s\n\n" % self.project.py_include_dir)

            for dir in buildable.library_dirs:
                f.write("LIBS += -L%s\n" % dir)
            for lib in buildable.libraries:
                f.write("LIBS += -l%s\n" % lib)

            f.write('\n')

            # hidden symbols
            with open(buildable.build_dir + "/" + buildable.target + ".exp", "w+") as exp:
                exp.write("{ global: PyInit_%s; local: *; };" %
                          buildable.target)

            f.write("QMAKE_LFLAGS += -Wl,--version-script=%s.exp\n" %
                    buildable.target)
            if not buildable.debug:
                f.write("QMAKE_LFLAGS += -s\n")
            #f.write("QMAKE_LFLAGS_PLUGIN += -Wl,--no-undefined\n")
            f.write(
                "QMAKE_CXXFLAGS += -Wno-attributes -Wno-delete-non-virtual-dtor\n")
            f.write("QMAKE_CXXFLAGS += -Wno-delete-incomplete -Wno-unused-variable\n")
            f.write("QMAKE_RPATHDIR += $ORIGIN /opt/kingsoft/wps-office/office6\n")
            f.write("QMAKE_RPATHDIR += /usr/lib/office6\n\n")

            # for testing
            rpc_dir = os.path.join(self.project.build_dir, self.project.name)
            os.makedirs(rpc_dir, exist_ok=True)
            f.write("QMAKE_POST_LINK = $(COPY_FILE) $(TARGET) %s\n\n" % rpc_dir)

            f.write("PRECOMPILED_HEADER = stdafx.h\n\n")

            f.write("HEADERS = %s\n" % " \\\n\t".join(buildable.headers))
            f.write("SOURCES = %s" % " \\\n\t".join(buildable.sources))
            f.write('\n\n')

            f.write("target.path = %s\n" %
                    (target_dir + "/" + self.project.name))
            f.write("INSTALLS += target\n\n")

            # for dist-info
            target_installable = sipbuild.Installable(
                "target", target_subdir=buildable.get_install_subdir())
            installed.append(
                target_installable.get_full_target_dir(target_dir) +
                "/%s.so" % buildable.target)

            for installable in buildable.installables:
                self._install(f, installable, target_dir, installed)

    def _install(self, f, installable, target_dir, installed):
        installable.install(target_dir, installed, do_install=False)

        f.write("{}.path = {}\n".format(
            installable.name,
            installable.get_full_target_dir(target_dir)))
        f.write("{}.files = {}\n".format(
            installable.name,
            " \\\n\t".join(installable.files)))
        f.write("INSTALLS += %s\n\n" % installable.name)

    def _run_make(self, install=False):
        if install:
            # single thread only
            args = ["make", "install"]
        else:
            args = ["make", "-j%s" % os.cpu_count()]

        self.project.run_command(args, fatal=True)

    def _gen_sip_project(self, target_dir, sub_dirs, installed, is_debug):
        self.project.progress("Generating the sip project")

        sub_dir = self.project.build_dir + "/sip"
        os.makedirs(sub_dir, exist_ok=True)

        sources = sipbuild.module.copy_nonshared_sources(
            self.project.abi_version, sub_dir)

        # use copy_sip_h instead?
        shutil.copy(self.project.build_dir + "/sip.h", sub_dir)

        with open(sub_dir + "/sip.pro", "w+") as f:
            f.write("TEMPLATE = lib\n")

            f.write("CONFIG += plugin no_plugin_name_prefix warn_on\n")
            f.write("CONFIG += %s\n" % ("debug" if is_debug else "release"))

            f.write("QT =\n")
            f.write("TARGET = sip\n\n")

            f.write("INCLUDEPATH += %s\n\n" % self.project.py_include_dir)

            with open(sub_dir + "/sip.exp", "w+") as exp:
                exp.write("{ global: PyInit_sip; local: *; };")

            f.write("QMAKE_LFLAGS += -Wl,--version-script=sip.exp\n")
            if not is_debug:
                f.write("QMAKE_LFLAGS += -s\n")
            f.write("\n")

            rpc_dir = os.path.join(self.project.build_dir, self.project.name)
            os.makedirs(rpc_dir, exist_ok=True)
            f.write("QMAKE_POST_LINK = $(COPY_FILE) $(TARGET) %s\n\n" % rpc_dir)

            f.write("SOURCES = %s\n\n" % " \\\n\t".join(sources))

            f.write("target.path = %s\n" %
                    (target_dir + "/" + self.project.name))
            f.write("INSTALLS += target\n\n")

        sub_dirs.append("sip")
        installed.append(target_dir + "/" + self.project.name + "/sip.so")
