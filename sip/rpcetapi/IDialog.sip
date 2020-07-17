/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace etapi
{
    struct IDialog : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT Show(
            /* VARIANT Arg1 = argMissing2(),
            VARIANT Arg2 = argMissing2(),
            VARIANT Arg3 = argMissing2(),
            VARIANT Arg4 = argMissing2(),
            VARIANT Arg5 = argMissing2(),
            VARIANT Arg6 = argMissing2(),
            VARIANT Arg7 = argMissing2(),
            VARIANT Arg8 = argMissing2(),
            VARIANT Arg9 = argMissing2(),
            VARIANT Arg10 = argMissing2(),
            VARIANT Arg11 = argMissing2(),
            VARIANT Arg12 = argMissing2(),
            VARIANT Arg13 = argMissing2(),
            VARIANT Arg14 = argMissing2(),
            VARIANT Arg15 = argMissing2(),
            VARIANT Arg16 = argMissing2(),
            VARIANT Arg17 = argMissing2(),
            VARIANT Arg18 = argMissing2(),
            VARIANT Arg19 = argMissing2(),
            VARIANT Arg20 = argMissing2(),
            VARIANT Arg21 = argMissing2(),
            VARIANT Arg22 = argMissing2(),
            VARIANT Arg23 = argMissing2(),
            VARIANT Arg24 = argMissing2(),
            VARIANT Arg25 = argMissing2(),
            VARIANT Arg26 = argMissing2(),
            VARIANT Arg27 = argMissing2(),
            VARIANT Arg28 = argMissing2(),
            VARIANT Arg29 = argMissing2(),
            VARIANT Arg30 = argMissing2(),
            VARIANT_BOOL *RHS /Out/ = 0*/) = 0 /NoArgParser/;
        %Docstring(format="deindented")
            Show(self, Arg1: Any = None, Arg2: Any = None, Arg3: Any = None, Arg4: Any = None, Arg5: Any = None, Arg6: Any = None, Arg7: Any = None, Arg8: Any = None, Arg9: Any = None, Arg10: Any = None, Arg11: Any = None, Arg12: Any = None, Arg13: Any = None, Arg14: Any = None, Arg15: Any = None, Arg16: Any = None, Arg17: Any = None, Arg18: Any = None, Arg19: Any = None, Arg20: Any = None, Arg21: Any = None, Arg22: Any = None, Arg23: Any = None, Arg24: Any = None, Arg25: Any = None, Arg26: Any = None, Arg27: Any = None, Arg28: Any = None, Arg29: Any = None, Arg30: Any = None) -> Tuple[int, bool]
        %End
        %MethodCode
            Py_ssize_t posArgsCount = PyTuple_Size(sipArgs);
            if (posArgsCount > 30)
            {
                PyErr_Format(PyExc_TypeError,
                    "Show() takes from 0 to 30 positional arguments but %d were given\n",
                    posArgsCount);
                return nullptr;
            }

            VARIANT* args[30];
            for (int i = posArgsCount; i < 30; ++i)
                args[i] = argMissing();

            std::vector<std::pair<int, int>> indexes;
            if (!parseVariantArgs(sipArgs, args, indexes))
                return nullptr;

            static const char * const s_kwds[] =
            {
                "Arg1", "Arg2", "Arg3", "Arg4", "Arg5",
                "Arg6", "Arg7", "Arg8", "Arg9", "Arg10",
                "Arg11", "Arg12", "Arg13", "Arg14", "Arg15",
                "Arg16", "Arg17", "Arg18", "Arg19", "Arg20",
                "Arg21", "Arg22", "Arg23", "Arg24", "Arg25",
                "Arg26", "Arg27", "Arg28", "Arg29", "Arg30"
            };
            const int kwdsCount = sizeof(s_kwds) / sizeof(s_kwds[0]);

            if (!parseVariantKwds(sipKwds, s_kwds, kwdsCount, args, posArgsCount, indexes))
                return nullptr;

            etapi::IDialog *sipCpp = reinterpret_cast<etapi::IDialog *>(
                sipGetCppPtr((sipSimpleWrapper *)sipSelf, sipType_etapi_IDialog));

            VARIANT_BOOL *prop = new VARIANT_BOOL;

            HRESULT hr = sipCpp->Show(
                *args[0], *args[1], *args[2], *args[3], *args[4], *args[5],
                *args[6], *args[7], *args[8], *args[9], *args[10],
                *args[11], *args[12], *args[13], *args[14], *args[15],
                *args[16], *args[17], *args[18], *args[19], *args[20],
                *args[21], *args[22], *args[23], *args[24], *args[25],
                *args[26], *args[27], *args[28], *args[29],
                prop);

            for (const auto &index : indexes)
                sipReleaseType(args[index.first], sipType_VARIANT, index.second);

            return sipBuildResult(0, "(iN)", hr, prop, sipType_VARIANT_BOOL, SIP_NULLPTR);
        %End

        Application* getApplication();
        %MethodCode
            etapi::Application *prop = nullptr;
            HRESULT hr = sipCpp->get_Application(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Application()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Application, get=getApplication)

        XlCreator getCreator();
        %MethodCode
            etapi::XlCreator prop = (etapi::XlCreator)0;
            HRESULT hr = sipCpp->get_Creator(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Creator()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Creator, get=getCreator)
    };
};
