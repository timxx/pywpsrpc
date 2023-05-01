/**
 * Copyright (c) 2020-2023 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace etapi
{
    struct _Application : public IDispatch /Abstract/
    {
    %TypeCode
        bool _parseVariantKwdsWithLcid(
            PyObject *sipKwds,
            const char * const kwdNames[],
            int kwdNamesCount,
            VARIANT *args[],
            long *lcid,
            Py_ssize_t posArgsCount,
            std::vector<std::pair<int, int>> &indexes,
            int offset = 0)
        {
            if (!sipKwds)
                return true;

            auto _kwdPos = [&](const char *name) -> int
            {
                if (strcmp(name, "lcid") == 0)
                    return kwdNamesCount;

                for (int i = 0; i < kwdNamesCount; ++i)
                {
                    if (strcmp(name, kwdNames[i]) == 0)
                        return i;
                }

                return -1;
            };

            Py_ssize_t pos = 0;
            PyObject *pyName = nullptr;
            PyObject *pyValue = nullptr;
            while (PyDict_Next(sipKwds, &pos, &pyName, &pyValue))
            {
                PyObject *pyEncName = pyName;
                const char *name = sipString_AsASCIIString(&pyEncName);

                int argPos = _kwdPos(name);
                if (argPos == -1)
                {
                    PyErr_Format(PyExc_TypeError,
                        "'%s' is not a valid keyword argument", name);
                    return false;
                }

                if ((argPos + offset) < posArgsCount)
                {
                    PyErr_Format(PyExc_TypeError,
                        "'%s' has already been given as a positional argument\n",
                        name);
                    return false;
                }

                if (argPos == kwdNamesCount)
                {
                    if (!PyLong_Check(pyValue))
                    {
                        PyErr_Format(PyExc_TypeError,
                            "The lcid argument requires 'int' not '%s'.",
                            Py_TYPE(pyValue)->tp_name);
                        return false;
                    }
                    *lcid = PyLong_AsLong(pyValue);
                }
                else
                {
                    int state = 0;
                    int isError = 0;
                    args[argPos] = reinterpret_cast<VARIANT *>(
                        sipConvertToType(pyValue, sipType_VARIANT, 0, SIP_NO_CONVERTORS, &state, &isError));

                    indexes.push_back(std::make_pair(argPos, state));
                }
            }

            return true;
        }

        static PyObject* _IntersectOrUnion(PyObject *sipSelf, PyObject *sipArgs, PyObject *sipKwds, bool isIntersect)
        {
            Py_ssize_t posArgsCount = PyTuple_Size(sipArgs);
            if (posArgsCount < 2 || posArgsCount > 31)
            {
                PyErr_Format(PyExc_TypeError,
                    "%s() takes from 2 to 31 positional arguments but %d were given\n",
                    isIntersect ? "Intersect" : "Union", posArgsCount);
                return nullptr;
            }

            etapi::Range *rgArgs[2];
            std::vector<int> rgState;
            for (int i = 0; i < 2; ++i)
            {
                PyObject *pyArg = PyTuple_GetItem(sipArgs, i);
                if (Py_TYPE(pyArg) != sipTypeAsPyTypeObject(sipType_etapi_IRange))
                {
                    PyErr_Format(PyExc_TypeError,
                            "The %d positional argument requires 'etapi.Range' not '%s'.",
                            i,  Py_TYPE(pyArg)->tp_name);
                    return nullptr;
                }

                int state = 0;
                int isError = 0;
                rgArgs[i] = reinterpret_cast<etapi::Range*>(
                    sipConvertToType(pyArg, sipType_etapi_IRange, 0, SIP_NO_CONVERTORS, &state, &isError));

                rgState.push_back(state);
            }

            VARIANT* args[28];
            for (int i = posArgsCount - 2; i < 28; ++i)
                args[i] = argMissing();

            std::vector<std::pair<int, int>> indexes;
            if (!parseVariantArgs(sipArgs, args, indexes, 2, 30))
                return nullptr;

            long lcid = 0;
            if (posArgsCount == 31)
            {
                PyObject *pyArg = PyTuple_GetItem(sipArgs, 30);
                if (!PyLong_Check(pyArg))
                {
                    PyErr_Format(PyExc_TypeError,
                        "The 30 positional argument requires 'int' not '%s'.",
                        Py_TYPE(pyArg)->tp_name);
                    return nullptr;
                }
                lcid = PyLong_AsLong(pyArg);
            }

            static const char * const s_kwds[] =
            {
                "Arg3", "Arg4", "Arg5",
                "Arg6", "Arg7", "Arg8", "Arg9", "Arg10",
                "Arg11", "Arg12", "Arg13", "Arg14", "Arg15",
                "Arg16", "Arg17", "Arg18", "Arg19", "Arg20",
                "Arg21", "Arg22", "Arg23", "Arg24", "Arg25",
                "Arg26", "Arg27", "Arg28", "Arg29", "Arg30"
            };
            const int kwdsCount = sizeof(s_kwds) / sizeof(s_kwds[0]);

            if (!_parseVariantKwdsWithLcid(sipKwds, s_kwds, kwdsCount, args, &lcid, posArgsCount, indexes, 2))
                return nullptr;

            etapi::_Application *sipCpp = reinterpret_cast<etapi::_Application *>(
                sipGetCppPtr((sipSimpleWrapper *)sipSelf, sipType_etapi__Application));

            etapi::Range *prop = nullptr;

            auto func = isIntersect ? (&etapi::_Application::Intersect) : (&etapi::_Application::Union);

            HRESULT hr = (sipCpp->*func)(
                rgArgs[0], rgArgs[1],
                *args[0], *args[1], *args[2], *args[3], *args[4], *args[5],
                *args[6], *args[7], *args[8], *args[9], *args[10],
                *args[11], *args[12], *args[13], *args[14], *args[15],
                *args[16], *args[17], *args[18], *args[19], *args[20],
                *args[21], *args[22], *args[23], *args[24], *args[25],
                *args[26], *args[27],
                lcid, &prop);

            for (const auto &index : indexes)
                sipReleaseType(args[index.first], sipType_VARIANT, index.second);

            for (int i = 0; i < 2; ++i)
                sipReleaseType(rgArgs[i], sipType_etapi_IRange, rgState[i]);

            return sipBuildResult(0, "(iD)", hr, prop, sipType_etapi_IRange, SIP_NULLPTR);
        }
    %End

    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_ActiveCell(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_ActiveChart(
            Chart **RHS /Out/) = 0;

        virtual HRESULT get_ActiveDialog(
            DialogSheet **RHS /Out/) = 0;

        virtual HRESULT get_ActiveMenuBar(
            MenuBar **RHS /Out/) = 0;

        virtual HRESULT get_ActivePrinter(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_ActivePrinter(
            long lcid,
            BSTR RHS) = 0;

        virtual HRESULT get_ActiveSheet(
            _Worksheet **RHS /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_ActiveSheet((IDispatch**)&a0);
        %End

        virtual HRESULT get_ActiveWindow(
            Window **RHS /Out/) = 0;

        virtual HRESULT get_ActiveWorkbook(
            Workbook **RHS /Out/) = 0;

        virtual HRESULT get_AddIns(
            AddIns **RHS /Out/) = 0;

        virtual HRESULT get_Assistant(
            ksoapi::Assistant **RHS /Out/) = 0;

        virtual HRESULT Calculate(
            long lcid) = 0;

        virtual HRESULT get_Cells(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_Charts(
            Sheets **RHS /Out/) = 0;

        virtual HRESULT get_Columns(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_CommandBars(
            ksoapi::CommandBars **RHS /Out/) = 0;

        virtual HRESULT get_DDEAppReturnCode(
            long lcid,
            long *RHS /Out/) = 0;

        virtual HRESULT DDEExecute(
            long Channel,
            BSTR String,
            long lcid) = 0;

        virtual HRESULT DDEInitiate(
            BSTR App,
            BSTR Topic,
            long lcid,
            long *RHS /Out/) = 0;

        virtual HRESULT DDEPoke(
            long Channel,
            VARIANT Item,
            VARIANT Data,
            long lcid) = 0;

        virtual HRESULT DDERequest(
            long Channel,
            BSTR Item,
            long lcid,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT DDETerminate(
            long Channel,
            long lcid) = 0;

        virtual HRESULT get_DialogSheets(
            Sheets **RHS /Out/) = 0;

        virtual HRESULT Evaluate(
            VARIANT Name,
            long lcid,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT _Evaluate(
            VARIANT Name,
            long lcid,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT ExecuteExcel4Macro(
            BSTR String,
            long lcid,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT Intersect(
            /* Range *Arg1,
            Range *Arg2,
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
            long lcid = 0,
            Range **RHS /Out/ = 0 */) = 0 /NoArgParser/;
        %Docstring(format="deindented")
            Intersect(self, Arg1: etapi.Range, Arg2: etapi.Range, Arg3: Any = None ... Arg30: Any = None, lcid: int = 0) -> Tuple[int, etapi.Range]
        %End
        %MethodCode
            return _IntersectOrUnion(sipSelf, sipArgs, sipKwds, true);
        %End

        virtual HRESULT get_MenuBars(
            MenuBars **RHS /Out/) = 0;

        virtual HRESULT get_Modules(
            Modules **RHS /Out/) = 0;

        virtual HRESULT get_Names(
            Names **RHS /Out/) = 0;

        virtual HRESULT get_Range(
            VARIANT Cell1,
            VARIANT Cell2 = argMissing2(),
            Range **RHS /Out/ = 0) = 0;

        etapi::Range* Range(
            VARIANT Cell1,
            VARIANT Cell2 = argMissing2());
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_Range(*a0, *a1, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Range()' failed with 0x%x", hr);
                return nullptr;
            }
            sipRes = prop;
        %End

        virtual HRESULT get_Rows(
            Range **RHS /Out/) = 0;

        virtual HRESULT Run(
            /*VARIANT Macro = argMissing2(),
            VARIANT Arg1 = argMissing2(),
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
            VARIANT *RHS /Out/ = 0*/) = 0 /NoArgParser/;
        %Docstring(format="deindented")
            Run(self, Macro: Any = None, Arg1: Any = None ... Arg30: Any = None) -> Tuple[int, Any]
        %End
        %MethodCode
            Py_ssize_t posArgsCount = PyTuple_Size(sipArgs);
            if (posArgsCount > 31)
            {
                PyErr_Format(PyExc_TypeError,
                    "Run() takes from 0 to 31 positional arguments but %d were given\n",
                    posArgsCount);
                return nullptr;
            }

            VARIANT* args[31];
            for (int i = posArgsCount; i < 31; ++i)
                args[i] = argMissing();

            std::vector<std::pair<int, int>> indexes;
            if (!parseVariantArgs(sipArgs, args, indexes))
                return nullptr;

            static const char * const s_kwds[] =
            {
                "Macro",
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

            etapi::_Application *sipCpp = reinterpret_cast<etapi::_Application *>(
                sipGetCppPtr((sipSimpleWrapper *)sipSelf, sipType_etapi__Application));

            VARIANT *prop = new VARIANT;
            VariantInit(prop);

            HRESULT hr = sipCpp->Run(
                *args[0], *args[1], *args[2], *args[3], *args[4], *args[5],
                *args[6], *args[7], *args[8], *args[9], *args[10],
                *args[11], *args[12], *args[13], *args[14], *args[15],
                *args[16], *args[17], *args[18], *args[19], *args[20],
                *args[21], *args[22], *args[23], *args[24], *args[25],
                *args[26], *args[27], *args[28], *args[29], *args[30],
                prop);

            for (const auto &index : indexes)
                sipReleaseType(args[index.first], sipType_VARIANT, index.second);

            return sipBuildResult(0, "(iN)", hr, prop, sipType_VARIANT, SIP_NULLPTR);
        %End

        virtual HRESULT _Run2(
            /*VARIANT Macro = argMissing2(),
            VARIANT Arg1 = argMissing2(),
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
            long lcid = 0,
            VARIANT *RHS /Out/ = 0 */) = 0 /NoArgParser/;
        %Docstring(format="deindented")
            _Run2(self, Macro: Any = None, Arg1: Any = None ... Arg30: Any = None, lcid: int = 0) -> Tuple[int, Any]
        %End
        %MethodCode
            Py_ssize_t posArgsCount = PyTuple_Size(sipArgs);
            if (posArgsCount > 32)
            {
                PyErr_Format(PyExc_TypeError,
                    "_Run2() takes from 0 to 32 positional arguments but %d were given\n",
                    posArgsCount);
                return nullptr;
            }

            VARIANT* args[31];
            for (int i = posArgsCount; i < 31; ++i)
                args[i] = argMissing();

            std::vector<std::pair<int, int>> indexes;
            if (!parseVariantArgs(sipArgs, args, indexes))
                return nullptr;

            long lcid = 0;
            if (posArgsCount == 32)
            {
                PyObject *pyArg = PyTuple_GetItem(sipArgs, 31);
                if (!PyLong_Check(pyArg))
                {
                    PyErr_Format(PyExc_TypeError,
                        "The 30 positional argument requires 'int' not '%s'.",
                        Py_TYPE(pyArg)->tp_name);
                    return nullptr;
                }
                lcid = PyLong_AsLong(pyArg);
            }

            static const char * const s_kwds[] =
            {
                "Macro",
                "Arg1", "Arg2", "Arg3", "Arg4", "Arg5",
                "Arg6", "Arg7", "Arg8", "Arg9", "Arg10",
                "Arg11", "Arg12", "Arg13", "Arg14", "Arg15",
                "Arg16", "Arg17", "Arg18", "Arg19", "Arg20",
                "Arg21", "Arg22", "Arg23", "Arg24", "Arg25",
                "Arg26", "Arg27", "Arg28", "Arg29", "Arg30"
            };
            const int kwdsCount = sizeof(s_kwds) / sizeof(s_kwds[0]);

            if (!_parseVariantKwdsWithLcid(sipKwds, s_kwds, kwdsCount, args, &lcid, posArgsCount, indexes))
                return nullptr;

            etapi::_Application *sipCpp = reinterpret_cast<etapi::_Application *>(
                sipGetCppPtr((sipSimpleWrapper *)sipSelf, sipType_etapi__Application));

            VARIANT *prop = new VARIANT;
            VariantInit(prop);

            HRESULT hr = sipCpp->_Run2(
                *args[0], *args[1], *args[2], *args[3], *args[4], *args[5],
                *args[6], *args[7], *args[8], *args[9], *args[10],
                *args[11], *args[12], *args[13], *args[14], *args[15],
                *args[16], *args[17], *args[18], *args[19], *args[20],
                *args[21], *args[22], *args[23], *args[24], *args[25],
                *args[26], *args[27], *args[28], *args[29], *args[30],
                lcid, prop);

            for (const auto &index : indexes)
                sipReleaseType(args[index.first], sipType_VARIANT, index.second);

            return sipBuildResult(0, "(iN)", hr, prop, sipType_VARIANT, SIP_NULLPTR);
        %End

        virtual HRESULT get_Selection(
            long lcid,
            IRange **RHS /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Selection(a0, (IDispatch**)&a1);
        %End

        virtual HRESULT SendKeys(
            VARIANT Keys,
            VARIANT Wait = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT get_Sheets(
            Sheets **RHS /Out/) = 0;

        virtual HRESULT get_ShortcutMenus(
            long Index,
            Menu **RHS /Out/) = 0;

        virtual HRESULT get_ThisWorkbook(
            long lcid,
            Workbook **RHS /Out/) = 0;

        virtual HRESULT get_Toolbars(
            Toolbars **RHS /Out/) = 0;

        virtual HRESULT Union(
            /*Range *Arg1,
            Range *Arg2,
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
            long lcid = 0,
            Range **RHS /Out/ = 0 */) = 0 /NoArgParser/;
        %Docstring(format="deindented")
            Union(self, Arg1: etapi.Range, Arg2: etapi.Range, Arg3: Any = None ... Arg30: Any = None, lcid: int = 0) -> Tuple[int, etapi.Range]
        %End
        %MethodCode
            return _IntersectOrUnion(sipSelf, sipArgs, sipKwds, false);
        %End

        virtual HRESULT get_Windows(
            Windows **RHS /Out/) = 0;

        virtual HRESULT get_Workbooks(
            Workbooks **RHS /Out/) = 0;

        virtual HRESULT get_WorksheetFunction(
            WorksheetFunction **RHS /Out/) = 0;

        virtual HRESULT get_Worksheets(
            Sheets **RHS /Out/) = 0;

        virtual HRESULT get_Excel4IntlMacroSheets(
            Sheets **RHS /Out/) = 0;

        virtual HRESULT get_Excel4MacroSheets(
            Sheets **RHS /Out/) = 0;

        virtual HRESULT ActivateMicrosoftApp(
            XlMSApplication Index,
            long lcid) = 0;

        virtual HRESULT AddChartAutoFormat(
            VARIANT Chart,
            BSTR Name,
            VARIANT Description = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT AddCustomList(
            VARIANT ListArray,
            VARIANT ByRow = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT get_AlertBeforeOverwriting(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AlertBeforeOverwriting(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_AltStartupPath(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_AltStartupPath(
            long lcid,
            BSTR RHS) = 0;

        virtual HRESULT get_AskToUpdateLinks(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AskToUpdateLinks(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_EnableAnimations(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnableAnimations(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_AutoCorrect(
            AutoCorrect **RHS /Out/) = 0;

        virtual HRESULT get_Build(
            long lcid,
            long *RHS /Out/) = 0;

        virtual HRESULT get_CalculateBeforeSave(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_CalculateBeforeSave(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Calculation(
            long lcid,
            XlCalculation *RHS /Out/) = 0;

        virtual HRESULT put_Calculation(
            long lcid,
            XlCalculation RHS) = 0;

        virtual HRESULT get_Caller(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_CanPlaySounds(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_CanRecordSounds(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_Caption(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Caption(
            BSTR RHS) = 0;

        virtual HRESULT get_CellDragAndDrop(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_CellDragAndDrop(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT CentimetersToPoints(
            double Centimeters,
            long lcid,
            double *RHS /Out/) = 0;

        virtual HRESULT CheckSpelling(
            BSTR Word,
            VARIANT CustomDictionary = argMissing2(),
            VARIANT IgnoreUppercase = argMissing2(),
            long lcid = 0,
            VARIANT_BOOL *RHS /Out/ = 0) = 0;

        virtual HRESULT get_ClipboardFormats(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_DisplayClipboardWindow(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayClipboardWindow(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ColorButtons(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ColorButtons(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_CommandUnderlines(
            long lcid,
            XlCommandUnderlines *RHS /Out/) = 0;

        virtual HRESULT put_CommandUnderlines(
            long lcid,
            XlCommandUnderlines RHS) = 0;

        virtual HRESULT get_ConstrainNumeric(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ConstrainNumeric(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT ConvertFormula(
            VARIANT Formula,
            XlReferenceStyle FromReferenceStyle,
            VARIANT ToReferenceStyle = argMissing2(),
            VARIANT ToAbsolute = argMissing2(),
            VARIANT RelativeTo = argMissing2(),
            long lcid = 0,
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_CopyObjectsWithCells(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_CopyObjectsWithCells(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Cursor(
            long lcid,
            XlMousePointer *RHS /Out/) = 0;

        virtual HRESULT put_Cursor(
            long lcid,
            XlMousePointer RHS) = 0;

        virtual HRESULT get_CustomListCount(
            long lcid,
            long *RHS /Out/) = 0;

        virtual HRESULT get_CutCopyMode(
            long lcid,
            XlCutCopyMode *RHS /Out/) = 0;

        virtual HRESULT put_CutCopyMode(
            long lcid,
            XlCutCopyMode RHS) = 0;

        virtual HRESULT get_DataEntryMode(
            long lcid,
            long *RHS /Out/) = 0;

        virtual HRESULT put_DataEntryMode(
            long lcid,
            long RHS) = 0;

        virtual HRESULT Dummy1(
            VARIANT Arg1 = argMissing2(),
            VARIANT Arg2 = argMissing2(),
            VARIANT Arg3 = argMissing2(),
            VARIANT Arg4 = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT Dummy2(
            VARIANT Arg1 = argMissing2(),
            VARIANT Arg2 = argMissing2(),
            VARIANT Arg3 = argMissing2(),
            VARIANT Arg4 = argMissing2(),
            VARIANT Arg5 = argMissing2(),
            VARIANT Arg6 = argMissing2(),
            VARIANT Arg7 = argMissing2(),
            VARIANT Arg8 = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT Dummy3(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT Dummy4(
            VARIANT Arg1 = argMissing2(),
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
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT Dummy5(
            VARIANT Arg1 = argMissing2(),
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
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT Dummy6(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT Dummy7(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT Dummy8(
            VARIANT Arg1 = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT Dummy9(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT Dummy10(
            VARIANT arg = argMissing2(),
            VARIANT_BOOL *RHS /Out/ = 0) = 0;

        virtual HRESULT Dummy11() = 0;

        virtual HRESULT get__Default(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_DefaultFilePath(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_DefaultFilePath(
            long lcid,
            BSTR RHS) = 0;

        virtual HRESULT DeleteChartAutoFormat(
            BSTR Name,
            long lcid) = 0;

        virtual HRESULT DeleteCustomList(
            long ListNum,
            long lcid) = 0;

        virtual HRESULT get_Dialogs(
            Dialogs **RHS /Out/) = 0;

        virtual HRESULT get_DisplayAlerts(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayAlerts(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DisplayFormulaBar(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayFormulaBar(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DisplayFullScreen(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayFullScreen(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DisplayNoteIndicator(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayNoteIndicator(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DisplayCommentIndicator(
            XlCommentDisplayMode *RHS /Out/) = 0;

        virtual HRESULT put_DisplayCommentIndicator(
            XlCommentDisplayMode RHS) = 0;

        virtual HRESULT get_DisplayExcel4Menus(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayExcel4Menus(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DisplayRecentFiles(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayRecentFiles(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DisplayScrollBars(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayScrollBars(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DisplayStatusBar(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayStatusBar(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT DoubleClick(
            long lcid) = 0;

        virtual HRESULT get_EditDirectlyInCell(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EditDirectlyInCell(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_EnableAutoComplete(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnableAutoComplete(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_EnableCancelKey(
            long lcid,
            XlEnableCancelKey *RHS /Out/) = 0;

        virtual HRESULT put_EnableCancelKey(
            long lcid,
            XlEnableCancelKey RHS) = 0;

        virtual HRESULT get_EnableSound(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnableSound(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_EnableTipWizard(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnableTipWizard(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_FileConverters(
            VARIANT Index1 = argMissing2(),
            VARIANT Index2 = argMissing2(),
            long lcid = 0,
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_FileSearch(
            ksoapi::FileSearch **RHS /Out/) = 0;

        virtual HRESULT get_FileFind(
            ksoapi::IFind **RHS /Out/) = 0;

        virtual HRESULT _FindFile(
            long lcid) = 0;

        virtual HRESULT get_FixedDecimal(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_FixedDecimal(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_FixedDecimalPlaces(
            long lcid,
            long *RHS /Out/) = 0;

        virtual HRESULT put_FixedDecimalPlaces(
            long lcid,
            long RHS) = 0;

        virtual HRESULT GetCustomListContents(
            long ListNum,
            long lcid,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT GetCustomListNum(
            VARIANT ListArray,
            long lcid,
            long *RHS /Out/) = 0;

        virtual HRESULT GetOpenFilename(
            VARIANT FileFilter = argMissing2(),
            VARIANT FilterIndex = argMissing2(),
            VARIANT Title = argMissing2(),
            VARIANT ButtonText = argMissing2(),
            VARIANT MultiSelect = argMissing2(),
            long lcid = 0,
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT GetSaveAsFilename(
            VARIANT InitialFilename = argMissing2(),
            VARIANT FileFilter = argMissing2(),
            VARIANT FilterIndex = argMissing2(),
            VARIANT Title = argMissing2(),
            VARIANT ButtonText = argMissing2(),
            long lcid = 0,
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT Goto(
            VARIANT Reference = argMissing2(),
            VARIANT Scroll = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT get_Height(
            long lcid,
            double *RHS /Out/) = 0;

        virtual HRESULT put_Height(
            long lcid,
            double RHS) = 0;

        virtual HRESULT Help(
            VARIANT HelpFile = argMissing2(),
            VARIANT HelpContextID = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT get_IgnoreRemoteRequests(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_IgnoreRemoteRequests(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT InchesToPoints(
            double Inches,
            long lcid,
            double *RHS /Out/) = 0;

        virtual HRESULT InputBox(
            BSTR Prompt,
            VARIANT Title = argMissing2(),
            VARIANT Default = argMissing2(),
            VARIANT Left = argMissing2(),
            VARIANT Top = argMissing2(),
            VARIANT HelpFile = argMissing2(),
            VARIANT HelpContextID = argMissing2(),
            VARIANT Type = argMissing2(),
            long lcid = 0,
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_Interactive(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Interactive(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_International(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_Iteration(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Iteration(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_LargeButtons(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_LargeButtons(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Left(
            long lcid,
            double *RHS /Out/) = 0;

        virtual HRESULT put_Left(
            long lcid,
            double RHS) = 0;

        virtual HRESULT get_LibraryPath(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT _MacroOptions(
            VARIANT Macro = argMissing2(),
            VARIANT Description = argMissing2(),
            VARIANT HasMenu = argMissing2(),
            VARIANT MenuText = argMissing2(),
            VARIANT HasShortcutKey = argMissing2(),
            VARIANT ShortcutKey = argMissing2(),
            VARIANT Category = argMissing2(),
            VARIANT StatusBar = argMissing2(),
            VARIANT HelpContextID = argMissing2(),
            VARIANT HelpFile = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT MailLogoff(
            long lcid) = 0;

        virtual HRESULT MailLogon(
            VARIANT Name = argMissing2(),
            VARIANT Password = argMissing2(),
            VARIANT DownloadNewMail = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT get_MailSession(
            long lcid,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_MailSystem(
            long lcid,
            XlMailSystem *RHS /Out/) = 0;

        virtual HRESULT get_MathCoprocessorAvailable(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_MaxChange(
            long lcid,
            double *RHS /Out/) = 0;

        virtual HRESULT put_MaxChange(
            long lcid,
            double RHS) = 0;

        virtual HRESULT get_MaxIterations(
            long lcid,
            long *RHS /Out/) = 0;

        virtual HRESULT put_MaxIterations(
            long lcid,
            long RHS) = 0;

        virtual HRESULT get_MemoryFree(
            long lcid,
            long *RHS /Out/) = 0;

        virtual HRESULT get_MemoryTotal(
            long lcid,
            long *RHS /Out/) = 0;

        virtual HRESULT get_MemoryUsed(
            long lcid,
            long *RHS /Out/) = 0;

        virtual HRESULT get_MouseAvailable(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_MoveAfterReturn(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_MoveAfterReturn(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_MoveAfterReturnDirection(
            long lcid,
            XlDirection *RHS /Out/) = 0;

        virtual HRESULT put_MoveAfterReturnDirection(
            long lcid,
            XlDirection RHS) = 0;

        virtual HRESULT get_RecentFiles(
            RecentFiles **RHS /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT NextLetter(
            long lcid,
            Workbook **RHS /Out/) = 0;

        virtual HRESULT get_NetworkTemplatesPath(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_ODBCErrors(
            ODBCErrors **RHS /Out/) = 0;

        virtual HRESULT get_ODBCTimeout(
            long *RHS /Out/) = 0;

        virtual HRESULT put_ODBCTimeout(
            long RHS) = 0;

        virtual HRESULT get_OnCalculate(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_OnCalculate(
            long lcid,
            BSTR RHS) = 0;

        virtual HRESULT get_OnData(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_OnData(
            long lcid,
            BSTR RHS) = 0;

        virtual HRESULT get_OnDoubleClick(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_OnDoubleClick(
            long lcid,
            BSTR RHS) = 0;

        virtual HRESULT get_OnEntry(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_OnEntry(
            long lcid,
            BSTR RHS) = 0;

        virtual HRESULT OnKey(
            BSTR Key,
            VARIANT Procedure = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT OnRepeat(
            BSTR Text,
            BSTR Procedure,
            long lcid) = 0;

        virtual HRESULT get_OnSheetActivate(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_OnSheetActivate(
            long lcid,
            BSTR RHS) = 0;

        virtual HRESULT get_OnSheetDeactivate(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_OnSheetDeactivate(
            long lcid,
            BSTR RHS) = 0;

        virtual HRESULT OnTime(
            VARIANT EarliestTime,
            BSTR Procedure,
            VARIANT LatestTime = argMissing2(),
            VARIANT Schedule = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT OnUndo(
            BSTR Text,
            BSTR Procedure,
            long lcid) = 0;

        virtual HRESULT get_OnWindow(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_OnWindow(
            long lcid,
            BSTR RHS) = 0;

        virtual HRESULT get_OperatingSystem(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_OrganizationName(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Path(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_PathSeparator(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_PreviousSelections(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_PivotTableSelection(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_PivotTableSelection(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_PromptForSummaryInfo(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_PromptForSummaryInfo(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT Quit() = 0;

        virtual HRESULT RecordMacro(
            VARIANT BasicCode = argMissing2(),
            VARIANT XlmCode = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT get_RecordRelative(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_ReferenceStyle(
            long lcid,
            XlReferenceStyle *RHS /Out/) = 0;

        virtual HRESULT put_ReferenceStyle(
            long lcid,
            XlReferenceStyle RHS) = 0;

        virtual HRESULT get_RegisteredFunctions(
            VARIANT Index1 = argMissing2(),
            VARIANT Index2 = argMissing2(),
            long lcid = 0,
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT RegisterXLL(
            BSTR Filename,
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT Repeat(
            long lcid) = 0;

        virtual HRESULT ResetTipWizard(
            long lcid) = 0;

        virtual HRESULT get_RollZoom(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_RollZoom(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT Save(
            VARIANT Filename = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT SaveWorkspace(
            VARIANT Filename = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT get_ScreenUpdating(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ScreenUpdating(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT SetDefaultChart(
            VARIANT FormatName = argMissing2(),
            VARIANT Gallery = argMissing2()) = 0;

        virtual HRESULT get_SheetsInNewWorkbook(
            long lcid,
            long *RHS /Out/) = 0;

        virtual HRESULT put_SheetsInNewWorkbook(
            long lcid,
            long RHS) = 0;

        virtual HRESULT get_ShowChartTipNames(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowChartTipNames(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ShowChartTipValues(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowChartTipValues(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_StandardFont(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_StandardFont(
            long lcid,
            BSTR RHS) = 0;

        virtual HRESULT get_StandardFontSize(
            long lcid,
            double *RHS /Out/) = 0;

        virtual HRESULT put_StandardFontSize(
            long lcid,
            double RHS) = 0;

        virtual HRESULT get_StartupPath(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_StatusBar(
            long lcid,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_StatusBar(
            long lcid,
            VARIANT RHS) = 0;

        virtual HRESULT get_TemplatesPath(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_ShowToolTips(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowToolTips(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Top(
            long lcid,
            double *RHS /Out/) = 0;

        virtual HRESULT put_Top(
            long lcid,
            double RHS) = 0;

        virtual HRESULT get_DefaultSaveFormat(
            XlFileFormat *RHS /Out/) = 0;

        virtual HRESULT put_DefaultSaveFormat(
            XlFileFormat RHS) = 0;

        virtual HRESULT get_TransitionMenuKey(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_TransitionMenuKey(
            long lcid,
            BSTR RHS) = 0;

        virtual HRESULT get_TransitionMenuKeyAction(
            long lcid,
            long *RHS /Out/) = 0;

        virtual HRESULT put_TransitionMenuKeyAction(
            long lcid,
            long RHS) = 0;

        virtual HRESULT get_TransitionNavigKeys(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_TransitionNavigKeys(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT Undo(
            long lcid) = 0;

        virtual HRESULT get_UsableHeight(
            long lcid,
            double *RHS /Out/) = 0;

        virtual HRESULT get_UsableWidth(
            long lcid,
            double *RHS /Out/) = 0;

        virtual HRESULT get_UserControl(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_UserControl(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_UserName(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_UserName(
            long lcid,
            BSTR RHS) = 0;

        virtual HRESULT get_Value(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_VBE(
            VBE **RHS /Out/) = 0;

        virtual HRESULT get_Version(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Visible(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Visible(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT Volatile(
            VARIANT Volatile = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT _Wait(
            VARIANT Time,
            long lcid) = 0;

        virtual HRESULT get_Width(
            long lcid,
            double *RHS /Out/) = 0;

        virtual HRESULT put_Width(
            long lcid,
            double RHS) = 0;

        virtual HRESULT get_WindowsForPens(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_WindowState(
            long lcid,
            XlWindowState *RHS /Out/) = 0;

        virtual HRESULT put_WindowState(
            long lcid,
            XlWindowState RHS) = 0;

        virtual HRESULT get_UILanguage(
            long lcid,
            long *RHS /Out/) = 0;

        virtual HRESULT put_UILanguage(
            long lcid,
            long RHS) = 0;

        virtual HRESULT get_DefaultSheetDirection(
            long lcid,
            long *RHS /Out/) = 0;

        virtual HRESULT put_DefaultSheetDirection(
            long lcid,
            long RHS) = 0;

        virtual HRESULT get_CursorMovement(
            long lcid,
            long *RHS /Out/) = 0;

        virtual HRESULT put_CursorMovement(
            long lcid,
            long RHS) = 0;

        virtual HRESULT get_ControlCharacters(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ControlCharacters(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT _WSFunction(
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
            long lcid = 0,
            VARIANT *RHS /Out/ = 0 */) = 0 /NoArgParser/;
        %Docstring(format="deindented")
            _WSFunction(self, Arg1: Any = None ... Arg30: Any = None, lcid: int = 0) -> Tuple[int, Any]
        %End
        %MethodCode
            Py_ssize_t posArgsCount = PyTuple_Size(sipArgs);
            if (posArgsCount > 31)
            {
                PyErr_Format(PyExc_TypeError,
                    "_WSFunction() takes from 0 to 31 positional arguments but %d were given\n",
                    posArgsCount);
                return nullptr;
            }

            VARIANT* args[30];
            for (int i = posArgsCount; i < 30; ++i)
                args[i] = argMissing();

            std::vector<std::pair<int, int>> indexes;
            if (!parseVariantArgs(sipArgs, args, indexes))
                return nullptr;

            long lcid = 0;
            if (posArgsCount == 31)
            {
                PyObject *pyArg = PyTuple_GetItem(sipArgs, 30);
                if (!PyLong_Check(pyArg))
                {
                    PyErr_Format(PyExc_TypeError,
                        "The 30 positional argument requires 'int' not '%s'.",
                        Py_TYPE(pyArg)->tp_name);
                    return nullptr;
                }
                lcid = PyLong_AsLong(pyArg);
            }

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

            if (!_parseVariantKwdsWithLcid(sipKwds, s_kwds, kwdsCount, args, &lcid, posArgsCount, indexes))
                return nullptr;

            etapi::_Application *sipCpp = reinterpret_cast<etapi::_Application *>(
                sipGetCppPtr((sipSimpleWrapper *)sipSelf, sipType_etapi__Application));

            VARIANT *prop = new VARIANT;
            VariantInit(prop);

            HRESULT hr = sipCpp->_WSFunction(
                *args[0], *args[1], *args[2], *args[3], *args[4], *args[5],
                *args[6], *args[7], *args[8], *args[9], *args[10],
                *args[11], *args[12], *args[13], *args[14], *args[15],
                *args[16], *args[17], *args[18], *args[19], *args[20],
                *args[21], *args[22], *args[23], *args[24], *args[25],
                *args[26], *args[27], *args[28], *args[29],
                lcid, prop);

            for (const auto &index : indexes)
                sipReleaseType(args[index.first], sipType_VARIANT, index.second);

            return sipBuildResult(0, "(iN)", hr, prop, sipType_VARIANT, SIP_NULLPTR);
        %End

        virtual HRESULT get_EnableEvents(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnableEvents(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DisplayInfoWindow(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayInfoWindow(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT Wait(
            VARIANT Time,
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_ExtendList(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ExtendList(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_OLEDBErrors(
            OLEDBErrors **RHS /Out/) = 0;

        virtual HRESULT GetPhonetic(
            VARIANT Text = argMissing2(),
            BSTR *RHS /Out/ = 0) = 0;

        virtual HRESULT get_COMAddIns(
            ksoapi::COMAddIns **RHS /Out/) = 0;

        virtual HRESULT get_DefaultWebOptions(
            DefaultWebOptions **RHS /Out/) = 0;

        virtual HRESULT get_ProductCode(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_UserLibraryPath(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_AutoPercentEntry(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AutoPercentEntry(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_LanguageSettings(
            ksoapi::LanguageSettings **RHS /Out/) = 0;

        virtual HRESULT Dummy12(
            PivotTable *p1,
            PivotTable *p2) = 0;

        virtual HRESULT get_AnswerWizard(
            ksoapi::AnswerWizard **RHS /Out/) = 0;

        virtual HRESULT CalculateFull() = 0;

        virtual HRESULT FindFile(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_CalculationVersion(
            long *RHS /Out/) = 0;

        virtual HRESULT get_ShowWindowsInTaskbar(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowWindowsInTaskbar(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_FeatureInstall(
            MsoFeatureInstall *RHS /Out/) = 0;

        virtual HRESULT put_FeatureInstall(
            MsoFeatureInstall RHS) = 0;

        virtual HRESULT get_Ready(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT Dummy13(
            /*VARIANT Arg1,
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
            VARIANT *RHS /Out/ = 0 */) = 0 /NoArgParser/;
        %Docstring(format="deindented")
            Dummy13(self, Arg1: Any, Arg2: Any = None ... Arg30: Any = None) -> Tuple[int, Any]
        %End
        %MethodCode
            Py_ssize_t posArgsCount = PyTuple_Size(sipArgs);
            if (posArgsCount < 1 || posArgsCount > 30)
            {
                PyErr_Format(PyExc_TypeError,
                    "Dummy13() takes from 1 to 30 positional arguments but %d were given\n",
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

            etapi::_Application *sipCpp = reinterpret_cast<etapi::_Application *>(
                sipGetCppPtr((sipSimpleWrapper *)sipSelf, sipType_etapi__Application));

            VARIANT *prop = new VARIANT;
            VariantInit(prop);

            HRESULT hr = sipCpp->Dummy13(
                *args[0], *args[1], *args[2], *args[3], *args[4], *args[5],
                *args[6], *args[7], *args[8], *args[9], *args[10],
                *args[11], *args[12], *args[13], *args[14], *args[15],
                *args[16], *args[17], *args[18], *args[19], *args[20],
                *args[21], *args[22], *args[23], *args[24], *args[25],
                *args[26], *args[27], *args[28], *args[29],
                prop);

            for (const auto &index : indexes)
                sipReleaseType(args[index.first], sipType_VARIANT, index.second);

            return sipBuildResult(0, "(iN)", hr, prop, sipType_VARIANT, SIP_NULLPTR);
        %End

        virtual HRESULT get_FindFormat(
            CellFormat **RHS /Out/) = 0;

        virtual HRESULT putref_FindFormat(
            CellFormat *RHS) = 0;

        virtual HRESULT get_ReplaceFormat(
            CellFormat **RHS /Out/) = 0;

        virtual HRESULT putref_ReplaceFormat(
            CellFormat *RHS) = 0;

        virtual HRESULT get_UsedObjects(
            UsedObjects **RHS /Out/) = 0;

        virtual HRESULT get_CalculationState(
            XlCalculationState *RHS /Out/) = 0;

        virtual HRESULT get_CalculationInterruptKey(
            XlCalculationInterruptKey *RHS /Out/) = 0;

        virtual HRESULT put_CalculationInterruptKey(
            XlCalculationInterruptKey RHS) = 0;

        virtual HRESULT get_Watches(
            Watches **RHS /Out/) = 0;

        virtual HRESULT get_DisplayFunctionToolTips(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayFunctionToolTips(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_AutomationSecurity(
            MsoAutomationSecurity *RHS /Out/) = 0;

        virtual HRESULT put_AutomationSecurity(
            MsoAutomationSecurity RHS) = 0;

        virtual HRESULT get_FileDialog(
            MsoFileDialogType fileDialogType,
            ksoapi::FileDialog **RHS /Out/) = 0;

        virtual HRESULT Dummy14() = 0;

        virtual HRESULT CalculateFullRebuild() = 0;

        virtual HRESULT get_DisplayPasteOptions(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayPasteOptions(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DisplayInsertOptions(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayInsertOptions(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_GenerateGetPivotData(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_GenerateGetPivotData(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_AutoRecover(
            AutoRecover **RHS /Out/) = 0;

        virtual HRESULT get_Hwnd(
            long *RHS /Out/) = 0;

        virtual HRESULT get_Hinstance(
            long *RHS /Out/) = 0;

        virtual HRESULT CheckAbort(
            VARIANT KeepAbort = argMissing2()) = 0;

        virtual HRESULT get_ErrorCheckingOptions(
            ErrorCheckingOptions **RHS /Out/) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeReplaceHyperlinks(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeReplaceHyperlinks(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_SmartTagRecognizers(
            SmartTagRecognizers **RHS /Out/) = 0;

        virtual HRESULT get_NewWorkbook(
            ksoapi::NewFile **RHS /Out/) = 0;

        virtual HRESULT get_SpellingOptions(
            SpellingOptions **RHS /Out/) = 0;

        virtual HRESULT get_Speech(
            Speech **RHS /Out/) = 0;

        virtual HRESULT get_MapPaperSize(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_MapPaperSize(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ShowStartupDialog(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowStartupDialog(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DecimalSeparator(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_DecimalSeparator(
            BSTR RHS) = 0;

        virtual HRESULT get_ThousandsSeparator(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_ThousandsSeparator(
            BSTR RHS) = 0;

        virtual HRESULT get_UseSystemSeparators(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_UseSystemSeparators(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ThisCell(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_RTD(
            RTD **RHS /Out/) = 0;

        virtual HRESULT get_DisplayDocumentActionTaskPane(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayDocumentActionTaskPane(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT DisplayXMLSourcePane(
            VARIANT XmlMap = argMissing2()) = 0;

        virtual HRESULT get_ArbitraryXMLSupportAvailable(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT Support(
            IDispatch *Object,
            long ID,
            VARIANT arg = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT Dummy20(
            long grfCompareFunctions,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_MeasurementUnit(
            long *RHS /Out/) = 0;

        virtual HRESULT put_MeasurementUnit(
            long RHS) = 0;

        virtual HRESULT get_ShowSelectionFloaties(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowSelectionFloaties(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ShowMenuFloaties(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowMenuFloaties(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ShowDevTools(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowDevTools(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_EnableLivePreview(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnableLivePreview(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DisplayDocumentInformationPanel(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayDocumentInformationPanel(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_AlwaysUseClearType(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AlwaysUseClearType(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_WarnOnFunctionNameConflict(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_WarnOnFunctionNameConflict(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_FormulaBarHeight(
            long *RHS /Out/) = 0;

        virtual HRESULT put_FormulaBarHeight(
            long RHS) = 0;

        virtual HRESULT get_DisplayFormulaAutoComplete(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayFormulaAutoComplete(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_GenerateTableRefs(
            long lcid,
            XlGenerateTableRefs *RHS /Out/) = 0;

        virtual HRESULT put_GenerateTableRefs(
            long lcid,
            XlGenerateTableRefs RHS) = 0;

        virtual HRESULT get_Assistance(
            ksoapi::IAssistance **RHS /Out/) = 0;

        virtual HRESULT CalculateUntilAsyncQueriesDone() = 0;

        virtual HRESULT get_EnableLargeOperationAlert(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnableLargeOperationAlert(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_LargeOperationCellThousandCount(
            long *RHS /Out/) = 0;

        virtual HRESULT put_LargeOperationCellThousandCount(
            long RHS) = 0;

        virtual HRESULT get_DeferAsyncQueries(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DeferAsyncQueries(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_MultiThreadedCalculation(
            MultiThreadedCalculation **RHS /Out/) = 0;

        virtual HRESULT SharePointVersion(
            BSTR bstrUrl,
            long *RHS /Out/) = 0;

        virtual HRESULT get_ActiveEncryptionSession(
            long *RHS /Out/) = 0;

        virtual HRESULT get_HighQualityModeForGraphics(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_HighQualityModeForGraphics(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_FileExportConverters(
            FileExportConverters **RHS /Out/) = 0;

        virtual HRESULT get_SmartArtLayouts(
            ksoapi::SmartArtLayouts **RHS /Out/) = 0;

        virtual HRESULT get_SmartArtQuickStyles(
            ksoapi::SmartArtQuickStyles **RHS /Out/) = 0;

        virtual HRESULT get_SmartArtColors(
            ksoapi::SmartArtColors **RHS /Out/) = 0;

        virtual HRESULT get_AddIns2(
            AddIns2 **RHS /Out/) = 0;

        virtual HRESULT get_PrintCommunication(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_PrintCommunication(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT MacroOptions(
            VARIANT Macro = argMissing2(),
            VARIANT Description = argMissing2(),
            VARIANT HasMenu = argMissing2(),
            VARIANT MenuText = argMissing2(),
            VARIANT HasShortcutKey = argMissing2(),
            VARIANT ShortcutKey = argMissing2(),
            VARIANT Category = argMissing2(),
            VARIANT StatusBar = argMissing2(),
            VARIANT HelpContextID = argMissing2(),
            VARIANT HelpFile = argMissing2(),
            VARIANT ArgumentDescriptions = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT get_UseClusterConnector(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_UseClusterConnector(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ClusterConnector(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_ClusterConnector(
            BSTR RHS) = 0;

        virtual HRESULT get_Quitting(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_Dummy22(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Dummy22(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Dummy23(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Dummy23(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ProtectedViewWindows(
            ProtectedViewWindows **RHS /Out/) = 0;

        virtual HRESULT get_ActiveProtectedViewWindow(
            ProtectedViewWindow **RHS /Out/) = 0;

        virtual HRESULT get_IsSandboxed(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_SaveISO8601Dates(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_SaveISO8601Dates(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_HinstancePtr(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_FileValidation(
            MsoFileValidationMode *RHS /Out/) = 0;

        virtual HRESULT put_FileValidation(
            MsoFileValidationMode RHS) = 0;

        virtual HRESULT get_FileValidationPivot(
            XlFileValidationPivotMode *RHS /Out/) = 0;

        virtual HRESULT put_FileValidationPivot(
            XlFileValidationPivotMode RHS) = 0;

        virtual HRESULT get_ShowQuickAnalysis(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowQuickAnalysis(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_QuickAnalysis(
            QuickAnalysis **RHS /Out/) = 0;

        virtual HRESULT get_FlashFill(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_FlashFill(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_EnableMacroAnimations(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnableMacroAnimations(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ChartDataPointTrack(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ChartDataPointTrack(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_FlashFillMode(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_FlashFillMode(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_MergeInstances(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_MergeInstances(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_EnableCheckFileExtensions(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnableCheckFileExtensions(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DebugTools(
            _DebugTools **RHS /Out/) = 0;

        virtual HRESULT get_ApplicationEx(wpsapiex::_ApplicationEx **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->QueryInterface(wpsapiex::IID__EtApplicationEx, (void**)&a0);
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

        Application* getParent();
        %MethodCode
            etapi::Application *prop = nullptr;
            HRESULT hr = sipCpp->get_Parent(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Parent()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        Range* getActiveCell();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_ActiveCell(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ActiveCell()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ActiveCell, get=getActiveCell)

        Chart* getActiveChart();
        %MethodCode
            etapi::Chart *prop = nullptr;
            HRESULT hr = sipCpp->get_ActiveChart(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ActiveChart()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ActiveChart, get=getActiveChart)

        DialogSheet* getActiveDialog();
        %MethodCode
            etapi::DialogSheet *prop = nullptr;
            HRESULT hr = sipCpp->get_ActiveDialog(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ActiveDialog()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ActiveDialog, get=getActiveDialog)

        MenuBar* getActiveMenuBar();
        %MethodCode
            etapi::MenuBar *prop = nullptr;
            HRESULT hr = sipCpp->get_ActiveMenuBar(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ActiveMenuBar()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ActiveMenuBar, get=getActiveMenuBar)

        BSTR getActivePrinter();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ActivePrinter(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ActivePrinter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setActivePrinter(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ActivePrinter(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ActivePrinter()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ActivePrinter, get=getActivePrinter, set=setActivePrinter)

        _Worksheet* getActiveSheet();
        %MethodCode
            etapi::_Worksheet *prop = nullptr;
            HRESULT hr = sipCpp->get_ActiveSheet((IDispatch**)&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ActiveSheet()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ActiveSheet, get=getActiveSheet)

        Window* getActiveWindow();
        %MethodCode
            etapi::Window *prop = nullptr;
            HRESULT hr = sipCpp->get_ActiveWindow(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ActiveWindow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ActiveWindow, get=getActiveWindow)

        Workbook* getActiveWorkbook();
        %MethodCode
            etapi::Workbook *prop = nullptr;
            HRESULT hr = sipCpp->get_ActiveWorkbook(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ActiveWorkbook()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ActiveWorkbook, get=getActiveWorkbook)

        AddIns* getAddIns();
        %MethodCode
            etapi::AddIns *prop = nullptr;
            HRESULT hr = sipCpp->get_AddIns(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AddIns()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AddIns, get=getAddIns)

        ksoapi::Assistant* getAssistant();
        %MethodCode
            ksoapi::Assistant *prop = nullptr;
            HRESULT hr = sipCpp->get_Assistant(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Assistant()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Assistant, get=getAssistant)

        Range* getCells();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_Cells(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Cells()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Cells, get=getCells)

        Sheets* getCharts();
        %MethodCode
            etapi::Sheets *prop = nullptr;
            HRESULT hr = sipCpp->get_Charts(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Charts()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Charts, get=getCharts)

        Range* getColumns();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_Columns(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Columns()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Columns, get=getColumns)

        ksoapi::CommandBars* getCommandBars();
        %MethodCode
            ksoapi::CommandBars *prop = nullptr;
            HRESULT hr = sipCpp->get_CommandBars(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CommandBars()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CommandBars, get=getCommandBars)

        long getDDEAppReturnCode();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_DDEAppReturnCode(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DDEAppReturnCode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DDEAppReturnCode, get=getDDEAppReturnCode)

        Sheets* getDialogSheets();
        %MethodCode
            etapi::Sheets *prop = nullptr;
            HRESULT hr = sipCpp->get_DialogSheets(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DialogSheets()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DialogSheets, get=getDialogSheets)

        MenuBars* getMenuBars();
        %MethodCode
            etapi::MenuBars *prop = nullptr;
            HRESULT hr = sipCpp->get_MenuBars(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MenuBars()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MenuBars, get=getMenuBars)

        Modules* getModules();
        %MethodCode
            etapi::Modules *prop = nullptr;
            HRESULT hr = sipCpp->get_Modules(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Modules()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Modules, get=getModules)

        Names* getNames();
        %MethodCode
            etapi::Names *prop = nullptr;
            HRESULT hr = sipCpp->get_Names(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Names()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Names, get=getNames)

        Range* getRows();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_Rows(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Rows()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Rows, get=getRows)

        IRange* getSelection();
        %MethodCode
            etapi::IRange *prop = nullptr;
            HRESULT hr = sipCpp->get_Selection(0, (IDispatch**)&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Selection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Selection, get=getSelection)

        Sheets* getSheets();
        %MethodCode
            etapi::Sheets *prop = nullptr;
            HRESULT hr = sipCpp->get_Sheets(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Sheets()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Sheets, get=getSheets)

        Workbook* getThisWorkbook();
        %MethodCode
            etapi::Workbook *prop = nullptr;
            HRESULT hr = sipCpp->get_ThisWorkbook(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ThisWorkbook()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ThisWorkbook, get=getThisWorkbook)

        Toolbars* getToolbars();
        %MethodCode
            etapi::Toolbars *prop = nullptr;
            HRESULT hr = sipCpp->get_Toolbars(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Toolbars()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Toolbars, get=getToolbars)

        Windows* getWindows();
        %MethodCode
            etapi::Windows *prop = nullptr;
            HRESULT hr = sipCpp->get_Windows(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Windows()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Windows, get=getWindows)

        Workbooks* getWorkbooks();
        %MethodCode
            etapi::Workbooks *prop = nullptr;
            HRESULT hr = sipCpp->get_Workbooks(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Workbooks()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Workbooks, get=getWorkbooks)

        WorksheetFunction* getWorksheetFunction();
        %MethodCode
            etapi::WorksheetFunction *prop = nullptr;
            HRESULT hr = sipCpp->get_WorksheetFunction(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WorksheetFunction()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=WorksheetFunction, get=getWorksheetFunction)

        Sheets* getWorksheets();
        %MethodCode
            etapi::Sheets *prop = nullptr;
            HRESULT hr = sipCpp->get_Worksheets(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Worksheets()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Worksheets, get=getWorksheets)

        Sheets* getExcel4IntlMacroSheets();
        %MethodCode
            etapi::Sheets *prop = nullptr;
            HRESULT hr = sipCpp->get_Excel4IntlMacroSheets(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Excel4IntlMacroSheets()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Excel4IntlMacroSheets, get=getExcel4IntlMacroSheets)

        Sheets* getExcel4MacroSheets();
        %MethodCode
            etapi::Sheets *prop = nullptr;
            HRESULT hr = sipCpp->get_Excel4MacroSheets(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Excel4MacroSheets()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Excel4MacroSheets, get=getExcel4MacroSheets)

        VARIANT_BOOL getAlertBeforeOverwriting();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AlertBeforeOverwriting(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AlertBeforeOverwriting()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAlertBeforeOverwriting(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AlertBeforeOverwriting(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AlertBeforeOverwriting()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AlertBeforeOverwriting, get=getAlertBeforeOverwriting, set=setAlertBeforeOverwriting)

        BSTR getAltStartupPath();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_AltStartupPath(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AltStartupPath()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAltStartupPath(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AltStartupPath(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AltStartupPath()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AltStartupPath, get=getAltStartupPath, set=setAltStartupPath)

        VARIANT_BOOL getAskToUpdateLinks();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AskToUpdateLinks(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AskToUpdateLinks()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAskToUpdateLinks(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AskToUpdateLinks(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AskToUpdateLinks()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AskToUpdateLinks, get=getAskToUpdateLinks, set=setAskToUpdateLinks)

        VARIANT_BOOL getEnableAnimations();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EnableAnimations(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EnableAnimations()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnableAnimations(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EnableAnimations(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EnableAnimations()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EnableAnimations, get=getEnableAnimations, set=setEnableAnimations)

        AutoCorrect* getAutoCorrect();
        %MethodCode
            etapi::AutoCorrect *prop = nullptr;
            HRESULT hr = sipCpp->get_AutoCorrect(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoCorrect()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AutoCorrect, get=getAutoCorrect)

        long getBuild();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Build(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Build()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Build, get=getBuild)

        VARIANT_BOOL getCalculateBeforeSave();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_CalculateBeforeSave(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CalculateBeforeSave()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCalculateBeforeSave(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CalculateBeforeSave(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CalculateBeforeSave()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CalculateBeforeSave, get=getCalculateBeforeSave, set=setCalculateBeforeSave)

        XlCalculation getCalculation();
        %MethodCode
            etapi::XlCalculation prop = (etapi::XlCalculation)0;
            HRESULT hr = sipCpp->get_Calculation(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Calculation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCalculation(XlCalculation prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Calculation(0, a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Calculation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Calculation, get=getCalculation, set=setCalculation)

        VARIANT_BOOL getCanPlaySounds();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_CanPlaySounds(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CanPlaySounds()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CanPlaySounds, get=getCanPlaySounds)

        VARIANT_BOOL getCanRecordSounds();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_CanRecordSounds(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CanRecordSounds()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CanRecordSounds, get=getCanRecordSounds)

        BSTR getCaption();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Caption(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Caption()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCaption(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Caption(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Caption()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Caption, get=getCaption, set=setCaption)

        VARIANT_BOOL getCellDragAndDrop();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_CellDragAndDrop(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CellDragAndDrop()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCellDragAndDrop(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CellDragAndDrop(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CellDragAndDrop()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CellDragAndDrop, get=getCellDragAndDrop, set=setCellDragAndDrop)

        VARIANT_BOOL getDisplayClipboardWindow();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayClipboardWindow(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayClipboardWindow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayClipboardWindow(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayClipboardWindow(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayClipboardWindow()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayClipboardWindow, get=getDisplayClipboardWindow, set=setDisplayClipboardWindow)

        VARIANT_BOOL getColorButtons();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ColorButtons(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ColorButtons()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setColorButtons(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ColorButtons(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ColorButtons()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ColorButtons, get=getColorButtons, set=setColorButtons)

        XlCommandUnderlines getCommandUnderlines();
        %MethodCode
            etapi::XlCommandUnderlines prop = (etapi::XlCommandUnderlines)0;
            HRESULT hr = sipCpp->get_CommandUnderlines(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CommandUnderlines()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCommandUnderlines(XlCommandUnderlines prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CommandUnderlines(0, a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CommandUnderlines()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CommandUnderlines, get=getCommandUnderlines, set=setCommandUnderlines)

        VARIANT_BOOL getConstrainNumeric();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ConstrainNumeric(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ConstrainNumeric()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setConstrainNumeric(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ConstrainNumeric(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ConstrainNumeric()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ConstrainNumeric, get=getConstrainNumeric, set=setConstrainNumeric)

        VARIANT_BOOL getCopyObjectsWithCells();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_CopyObjectsWithCells(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CopyObjectsWithCells()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCopyObjectsWithCells(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CopyObjectsWithCells(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CopyObjectsWithCells()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CopyObjectsWithCells, get=getCopyObjectsWithCells, set=setCopyObjectsWithCells)

        XlMousePointer getCursor();
        %MethodCode
            etapi::XlMousePointer prop = (etapi::XlMousePointer)0;
            HRESULT hr = sipCpp->get_Cursor(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Cursor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCursor(XlMousePointer prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Cursor(0, a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Cursor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Cursor, get=getCursor, set=setCursor)

        long getCustomListCount();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_CustomListCount(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CustomListCount()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CustomListCount, get=getCustomListCount)

        XlCutCopyMode getCutCopyMode();
        %MethodCode
            etapi::XlCutCopyMode prop = (etapi::XlCutCopyMode)0;
            HRESULT hr = sipCpp->get_CutCopyMode(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CutCopyMode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCutCopyMode(XlCutCopyMode prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CutCopyMode(0, a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CutCopyMode()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CutCopyMode, get=getCutCopyMode, set=setCutCopyMode)

        long getDataEntryMode();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_DataEntryMode(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DataEntryMode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDataEntryMode(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DataEntryMode(0, a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DataEntryMode()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DataEntryMode, get=getDataEntryMode, set=setDataEntryMode)

        BSTR get_Default();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get__Default(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get__Default()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=_Default, get=get_Default)

        BSTR getDefaultFilePath();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_DefaultFilePath(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DefaultFilePath()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDefaultFilePath(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DefaultFilePath(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DefaultFilePath()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DefaultFilePath, get=getDefaultFilePath, set=setDefaultFilePath)

        Dialogs* getDialogs();
        %MethodCode
            etapi::Dialogs *prop = nullptr;
            HRESULT hr = sipCpp->get_Dialogs(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Dialogs()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Dialogs, get=getDialogs)

        VARIANT_BOOL getDisplayAlerts();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayAlerts(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayAlerts()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayAlerts(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayAlerts(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayAlerts()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayAlerts, get=getDisplayAlerts, set=setDisplayAlerts)

        VARIANT_BOOL getDisplayFormulaBar();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayFormulaBar(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayFormulaBar()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayFormulaBar(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayFormulaBar(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayFormulaBar()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayFormulaBar, get=getDisplayFormulaBar, set=setDisplayFormulaBar)

        VARIANT_BOOL getDisplayFullScreen();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayFullScreen(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayFullScreen()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayFullScreen(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayFullScreen(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayFullScreen()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayFullScreen, get=getDisplayFullScreen, set=setDisplayFullScreen)

        VARIANT_BOOL getDisplayNoteIndicator();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayNoteIndicator(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayNoteIndicator()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayNoteIndicator(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayNoteIndicator(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayNoteIndicator()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayNoteIndicator, get=getDisplayNoteIndicator, set=setDisplayNoteIndicator)

        XlCommentDisplayMode getDisplayCommentIndicator();
        %MethodCode
            etapi::XlCommentDisplayMode prop = (etapi::XlCommentDisplayMode)0;
            HRESULT hr = sipCpp->get_DisplayCommentIndicator(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayCommentIndicator()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayCommentIndicator(XlCommentDisplayMode prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayCommentIndicator(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayCommentIndicator()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayCommentIndicator, get=getDisplayCommentIndicator, set=setDisplayCommentIndicator)

        VARIANT_BOOL getDisplayExcel4Menus();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayExcel4Menus(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayExcel4Menus()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayExcel4Menus(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayExcel4Menus(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayExcel4Menus()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayExcel4Menus, get=getDisplayExcel4Menus, set=setDisplayExcel4Menus)

        VARIANT_BOOL getDisplayRecentFiles();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayRecentFiles(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayRecentFiles()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayRecentFiles(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayRecentFiles(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayRecentFiles()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayRecentFiles, get=getDisplayRecentFiles, set=setDisplayRecentFiles)

        VARIANT_BOOL getDisplayScrollBars();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayScrollBars(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayScrollBars()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayScrollBars(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayScrollBars(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayScrollBars()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayScrollBars, get=getDisplayScrollBars, set=setDisplayScrollBars)

        VARIANT_BOOL getDisplayStatusBar();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayStatusBar(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayStatusBar()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayStatusBar(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayStatusBar(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayStatusBar()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayStatusBar, get=getDisplayStatusBar, set=setDisplayStatusBar)

        VARIANT_BOOL getEditDirectlyInCell();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EditDirectlyInCell(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EditDirectlyInCell()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEditDirectlyInCell(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EditDirectlyInCell(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EditDirectlyInCell()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EditDirectlyInCell, get=getEditDirectlyInCell, set=setEditDirectlyInCell)

        VARIANT_BOOL getEnableAutoComplete();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EnableAutoComplete(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EnableAutoComplete()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnableAutoComplete(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EnableAutoComplete(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EnableAutoComplete()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EnableAutoComplete, get=getEnableAutoComplete, set=setEnableAutoComplete)

        XlEnableCancelKey getEnableCancelKey();
        %MethodCode
            etapi::XlEnableCancelKey prop = (etapi::XlEnableCancelKey)0;
            HRESULT hr = sipCpp->get_EnableCancelKey(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EnableCancelKey()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnableCancelKey(XlEnableCancelKey prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EnableCancelKey(0, a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EnableCancelKey()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EnableCancelKey, get=getEnableCancelKey, set=setEnableCancelKey)

        VARIANT_BOOL getEnableSound();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EnableSound(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EnableSound()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnableSound(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EnableSound(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EnableSound()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EnableSound, get=getEnableSound, set=setEnableSound)

        VARIANT_BOOL getEnableTipWizard();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EnableTipWizard(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EnableTipWizard()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnableTipWizard(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EnableTipWizard(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EnableTipWizard()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EnableTipWizard, get=getEnableTipWizard, set=setEnableTipWizard)

        ksoapi::FileSearch* getFileSearch();
        %MethodCode
            ksoapi::FileSearch *prop = nullptr;
            HRESULT hr = sipCpp->get_FileSearch(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FileSearch()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=FileSearch, get=getFileSearch)

        ksoapi::IFind* getFileFind();
        %MethodCode
            ksoapi::IFind *prop = nullptr;
            HRESULT hr = sipCpp->get_FileFind(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FileFind()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=FileFind, get=getFileFind)

        VARIANT_BOOL getFixedDecimal();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_FixedDecimal(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FixedDecimal()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFixedDecimal(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FixedDecimal(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FixedDecimal()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FixedDecimal, get=getFixedDecimal, set=setFixedDecimal)

        long getFixedDecimalPlaces();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_FixedDecimalPlaces(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FixedDecimalPlaces()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFixedDecimalPlaces(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FixedDecimalPlaces(0, a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FixedDecimalPlaces()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FixedDecimalPlaces, get=getFixedDecimalPlaces, set=setFixedDecimalPlaces)

        double getHeight();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_Height(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Height()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHeight(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Height(0, a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Height()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Height, get=getHeight, set=setHeight)

        VARIANT_BOOL getIgnoreRemoteRequests();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IgnoreRemoteRequests(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IgnoreRemoteRequests()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setIgnoreRemoteRequests(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_IgnoreRemoteRequests(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_IgnoreRemoteRequests()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=IgnoreRemoteRequests, get=getIgnoreRemoteRequests, set=setIgnoreRemoteRequests)

        VARIANT_BOOL getInteractive();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Interactive(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Interactive()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setInteractive(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Interactive(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Interactive()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Interactive, get=getInteractive, set=setInteractive)

        VARIANT_BOOL getIteration();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Iteration(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Iteration()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setIteration(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Iteration(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Iteration()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Iteration, get=getIteration, set=setIteration)

        VARIANT_BOOL getLargeButtons();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_LargeButtons(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LargeButtons()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLargeButtons(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LargeButtons(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LargeButtons()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LargeButtons, get=getLargeButtons, set=setLargeButtons)

        double getLeft();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_Left(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Left()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLeft(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Left(0, a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Left()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Left, get=getLeft, set=setLeft)

        BSTR getLibraryPath();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_LibraryPath(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LibraryPath()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=LibraryPath, get=getLibraryPath)

        VARIANT getMailSession();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_MailSession(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MailSession()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MailSession, get=getMailSession)

        XlMailSystem getMailSystem();
        %MethodCode
            etapi::XlMailSystem prop = (etapi::XlMailSystem)0;
            HRESULT hr = sipCpp->get_MailSystem(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MailSystem()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MailSystem, get=getMailSystem)

        VARIANT_BOOL getMathCoprocessorAvailable();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MathCoprocessorAvailable(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MathCoprocessorAvailable()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MathCoprocessorAvailable, get=getMathCoprocessorAvailable)

        double getMaxChange();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_MaxChange(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MaxChange()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMaxChange(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MaxChange(0, a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MaxChange()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MaxChange, get=getMaxChange, set=setMaxChange)

        long getMaxIterations();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_MaxIterations(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MaxIterations()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMaxIterations(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MaxIterations(0, a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MaxIterations()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MaxIterations, get=getMaxIterations, set=setMaxIterations)

        long getMemoryFree();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_MemoryFree(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MemoryFree()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MemoryFree, get=getMemoryFree)

        long getMemoryTotal();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_MemoryTotal(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MemoryTotal()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MemoryTotal, get=getMemoryTotal)

        long getMemoryUsed();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_MemoryUsed(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MemoryUsed()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MemoryUsed, get=getMemoryUsed)

        VARIANT_BOOL getMouseAvailable();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MouseAvailable(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MouseAvailable()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MouseAvailable, get=getMouseAvailable)

        VARIANT_BOOL getMoveAfterReturn();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MoveAfterReturn(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MoveAfterReturn()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMoveAfterReturn(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MoveAfterReturn(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MoveAfterReturn()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MoveAfterReturn, get=getMoveAfterReturn, set=setMoveAfterReturn)

        XlDirection getMoveAfterReturnDirection();
        %MethodCode
            etapi::XlDirection prop = (etapi::XlDirection)0;
            HRESULT hr = sipCpp->get_MoveAfterReturnDirection(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MoveAfterReturnDirection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMoveAfterReturnDirection(XlDirection prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MoveAfterReturnDirection(0, a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MoveAfterReturnDirection()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MoveAfterReturnDirection, get=getMoveAfterReturnDirection, set=setMoveAfterReturnDirection)

        RecentFiles* getRecentFiles();
        %MethodCode
            etapi::RecentFiles *prop = nullptr;
            HRESULT hr = sipCpp->get_RecentFiles(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RecentFiles()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=RecentFiles, get=getRecentFiles)

        BSTR getName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Name(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Name()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Name, get=getName)

        BSTR getNetworkTemplatesPath();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_NetworkTemplatesPath(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NetworkTemplatesPath()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=NetworkTemplatesPath, get=getNetworkTemplatesPath)

        ODBCErrors* getODBCErrors();
        %MethodCode
            etapi::ODBCErrors *prop = nullptr;
            HRESULT hr = sipCpp->get_ODBCErrors(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ODBCErrors()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ODBCErrors, get=getODBCErrors)

        long getODBCTimeout();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_ODBCTimeout(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ODBCTimeout()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setODBCTimeout(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ODBCTimeout(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ODBCTimeout()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ODBCTimeout, get=getODBCTimeout, set=setODBCTimeout)

        BSTR getOnCalculate();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_OnCalculate(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OnCalculate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOnCalculate(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OnCalculate(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OnCalculate()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OnCalculate, get=getOnCalculate, set=setOnCalculate)

        BSTR getOnData();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_OnData(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OnData()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOnData(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OnData(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OnData()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OnData, get=getOnData, set=setOnData)

        BSTR getOnDoubleClick();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_OnDoubleClick(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OnDoubleClick()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOnDoubleClick(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OnDoubleClick(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OnDoubleClick()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OnDoubleClick, get=getOnDoubleClick, set=setOnDoubleClick)

        BSTR getOnEntry();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_OnEntry(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OnEntry()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOnEntry(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OnEntry(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OnEntry()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OnEntry, get=getOnEntry, set=setOnEntry)

        BSTR getOnSheetActivate();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_OnSheetActivate(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OnSheetActivate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOnSheetActivate(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OnSheetActivate(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OnSheetActivate()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OnSheetActivate, get=getOnSheetActivate, set=setOnSheetActivate)

        BSTR getOnSheetDeactivate();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_OnSheetDeactivate(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OnSheetDeactivate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOnSheetDeactivate(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OnSheetDeactivate(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OnSheetDeactivate()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OnSheetDeactivate, get=getOnSheetDeactivate, set=setOnSheetDeactivate)

        BSTR getOnWindow();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_OnWindow(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OnWindow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOnWindow(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OnWindow(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OnWindow()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OnWindow, get=getOnWindow, set=setOnWindow)

        BSTR getOperatingSystem();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_OperatingSystem(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OperatingSystem()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=OperatingSystem, get=getOperatingSystem)

        BSTR getOrganizationName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_OrganizationName(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OrganizationName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=OrganizationName, get=getOrganizationName)

        BSTR getPath();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Path(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Path()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Path, get=getPath)

        BSTR getPathSeparator();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_PathSeparator(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PathSeparator()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PathSeparator, get=getPathSeparator)

        VARIANT_BOOL getPivotTableSelection();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PivotTableSelection(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PivotTableSelection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPivotTableSelection(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PivotTableSelection(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PivotTableSelection()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PivotTableSelection, get=getPivotTableSelection, set=setPivotTableSelection)

        VARIANT_BOOL getPromptForSummaryInfo();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PromptForSummaryInfo(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PromptForSummaryInfo()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPromptForSummaryInfo(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PromptForSummaryInfo(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PromptForSummaryInfo()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PromptForSummaryInfo, get=getPromptForSummaryInfo, set=setPromptForSummaryInfo)

        VARIANT_BOOL getRecordRelative();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_RecordRelative(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RecordRelative()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=RecordRelative, get=getRecordRelative)

        XlReferenceStyle getReferenceStyle();
        %MethodCode
            etapi::XlReferenceStyle prop = (etapi::XlReferenceStyle)0;
            HRESULT hr = sipCpp->get_ReferenceStyle(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ReferenceStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setReferenceStyle(XlReferenceStyle prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ReferenceStyle(0, a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ReferenceStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ReferenceStyle, get=getReferenceStyle, set=setReferenceStyle)

        VARIANT_BOOL getRollZoom();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_RollZoom(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RollZoom()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRollZoom(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RollZoom(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RollZoom()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RollZoom, get=getRollZoom, set=setRollZoom)

        VARIANT_BOOL getScreenUpdating();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ScreenUpdating(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ScreenUpdating()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setScreenUpdating(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ScreenUpdating(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ScreenUpdating()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ScreenUpdating, get=getScreenUpdating, set=setScreenUpdating)

        long getSheetsInNewWorkbook();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_SheetsInNewWorkbook(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SheetsInNewWorkbook()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSheetsInNewWorkbook(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SheetsInNewWorkbook(0, a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SheetsInNewWorkbook()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SheetsInNewWorkbook, get=getSheetsInNewWorkbook, set=setSheetsInNewWorkbook)

        VARIANT_BOOL getShowChartTipNames();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowChartTipNames(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowChartTipNames()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowChartTipNames(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowChartTipNames(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowChartTipNames()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowChartTipNames, get=getShowChartTipNames, set=setShowChartTipNames)

        VARIANT_BOOL getShowChartTipValues();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowChartTipValues(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowChartTipValues()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowChartTipValues(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowChartTipValues(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowChartTipValues()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowChartTipValues, get=getShowChartTipValues, set=setShowChartTipValues)

        BSTR getStandardFont();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_StandardFont(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_StandardFont()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setStandardFont(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_StandardFont(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_StandardFont()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=StandardFont, get=getStandardFont, set=setStandardFont)

        double getStandardFontSize();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_StandardFontSize(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_StandardFontSize()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setStandardFontSize(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_StandardFontSize(0, a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_StandardFontSize()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=StandardFontSize, get=getStandardFontSize, set=setStandardFontSize)

        BSTR getStartupPath();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_StartupPath(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_StartupPath()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=StartupPath, get=getStartupPath)

        VARIANT getStatusBar();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_StatusBar(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_StatusBar()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setStatusBar(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_StatusBar(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_StatusBar()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=StatusBar, get=getStatusBar, set=setStatusBar)

        BSTR getTemplatesPath();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_TemplatesPath(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TemplatesPath()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TemplatesPath, get=getTemplatesPath)

        VARIANT_BOOL getShowToolTips();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowToolTips(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowToolTips()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowToolTips(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowToolTips(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowToolTips()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowToolTips, get=getShowToolTips, set=setShowToolTips)

        double getTop();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_Top(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Top()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTop(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Top(0, a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Top()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Top, get=getTop, set=setTop)

        XlFileFormat getDefaultSaveFormat();
        %MethodCode
            etapi::XlFileFormat prop = (etapi::XlFileFormat)0;
            HRESULT hr = sipCpp->get_DefaultSaveFormat(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DefaultSaveFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDefaultSaveFormat(XlFileFormat prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DefaultSaveFormat(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DefaultSaveFormat()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DefaultSaveFormat, get=getDefaultSaveFormat, set=setDefaultSaveFormat)

        BSTR getTransitionMenuKey();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_TransitionMenuKey(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TransitionMenuKey()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTransitionMenuKey(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TransitionMenuKey(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TransitionMenuKey()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TransitionMenuKey, get=getTransitionMenuKey, set=setTransitionMenuKey)

        long getTransitionMenuKeyAction();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_TransitionMenuKeyAction(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TransitionMenuKeyAction()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTransitionMenuKeyAction(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TransitionMenuKeyAction(0, a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TransitionMenuKeyAction()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TransitionMenuKeyAction, get=getTransitionMenuKeyAction, set=setTransitionMenuKeyAction)

        VARIANT_BOOL getTransitionNavigKeys();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_TransitionNavigKeys(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TransitionNavigKeys()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTransitionNavigKeys(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TransitionNavigKeys(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TransitionNavigKeys()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TransitionNavigKeys, get=getTransitionNavigKeys, set=setTransitionNavigKeys)

        double getUsableHeight();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_UsableHeight(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UsableHeight()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=UsableHeight, get=getUsableHeight)

        double getUsableWidth();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_UsableWidth(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UsableWidth()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=UsableWidth, get=getUsableWidth)

        VARIANT_BOOL getUserControl();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_UserControl(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UserControl()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUserControl(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_UserControl(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_UserControl()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=UserControl, get=getUserControl, set=setUserControl)

        BSTR getUserName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_UserName(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UserName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUserName(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_UserName(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_UserName()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=UserName, get=getUserName, set=setUserName)

        BSTR getValue();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Value(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Value()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Value, get=getValue)

        VBE* getVBE();
        %MethodCode
            etapi::VBE *prop = nullptr;
            HRESULT hr = sipCpp->get_VBE(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_VBE()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=VBE, get=getVBE)

        BSTR getVersion();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Version(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Version()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Version, get=getVersion)

        VARIANT_BOOL getVisible();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Visible(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Visible()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setVisible(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Visible(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Visible()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Visible, get=getVisible, set=setVisible)

        double getWidth();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_Width(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Width()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWidth(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Width(0, a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Width()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Width, get=getWidth, set=setWidth)

        VARIANT_BOOL getWindowsForPens();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_WindowsForPens(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WindowsForPens()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=WindowsForPens, get=getWindowsForPens)

        XlWindowState getWindowState();
        %MethodCode
            etapi::XlWindowState prop = (etapi::XlWindowState)0;
            HRESULT hr = sipCpp->get_WindowState(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WindowState()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWindowState(XlWindowState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_WindowState(0, a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_WindowState()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=WindowState, get=getWindowState, set=setWindowState)

        long getUILanguage();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_UILanguage(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UILanguage()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUILanguage(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_UILanguage(0, a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_UILanguage()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=UILanguage, get=getUILanguage, set=setUILanguage)

        long getDefaultSheetDirection();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_DefaultSheetDirection(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DefaultSheetDirection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDefaultSheetDirection(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DefaultSheetDirection(0, a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DefaultSheetDirection()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DefaultSheetDirection, get=getDefaultSheetDirection, set=setDefaultSheetDirection)

        long getCursorMovement();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_CursorMovement(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CursorMovement()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCursorMovement(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CursorMovement(0, a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CursorMovement()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CursorMovement, get=getCursorMovement, set=setCursorMovement)

        VARIANT_BOOL getControlCharacters();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ControlCharacters(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ControlCharacters()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setControlCharacters(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ControlCharacters(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ControlCharacters()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ControlCharacters, get=getControlCharacters, set=setControlCharacters)

        VARIANT_BOOL getEnableEvents();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EnableEvents(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EnableEvents()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnableEvents(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EnableEvents(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EnableEvents()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EnableEvents, get=getEnableEvents, set=setEnableEvents)

        VARIANT_BOOL getDisplayInfoWindow();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayInfoWindow(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayInfoWindow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayInfoWindow(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayInfoWindow(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayInfoWindow()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayInfoWindow, get=getDisplayInfoWindow, set=setDisplayInfoWindow)

        VARIANT_BOOL getExtendList();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ExtendList(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ExtendList()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setExtendList(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ExtendList(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ExtendList()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ExtendList, get=getExtendList, set=setExtendList)

        OLEDBErrors* getOLEDBErrors();
        %MethodCode
            etapi::OLEDBErrors *prop = nullptr;
            HRESULT hr = sipCpp->get_OLEDBErrors(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OLEDBErrors()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=OLEDBErrors, get=getOLEDBErrors)

        ksoapi::COMAddIns* getCOMAddIns();
        %MethodCode
            ksoapi::COMAddIns *prop = nullptr;
            HRESULT hr = sipCpp->get_COMAddIns(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_COMAddIns()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=COMAddIns, get=getCOMAddIns)

        DefaultWebOptions* getDefaultWebOptions();
        %MethodCode
            etapi::DefaultWebOptions *prop = nullptr;
            HRESULT hr = sipCpp->get_DefaultWebOptions(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DefaultWebOptions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DefaultWebOptions, get=getDefaultWebOptions)

        BSTR getProductCode();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ProductCode(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ProductCode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ProductCode, get=getProductCode)

        BSTR getUserLibraryPath();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_UserLibraryPath(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UserLibraryPath()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=UserLibraryPath, get=getUserLibraryPath)

        VARIANT_BOOL getAutoPercentEntry();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoPercentEntry(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoPercentEntry()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoPercentEntry(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoPercentEntry(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoPercentEntry()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoPercentEntry, get=getAutoPercentEntry, set=setAutoPercentEntry)

        ksoapi::LanguageSettings* getLanguageSettings();
        %MethodCode
            ksoapi::LanguageSettings *prop = nullptr;
            HRESULT hr = sipCpp->get_LanguageSettings(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LanguageSettings()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=LanguageSettings, get=getLanguageSettings)

        ksoapi::AnswerWizard* getAnswerWizard();
        %MethodCode
            ksoapi::AnswerWizard *prop = nullptr;
            HRESULT hr = sipCpp->get_AnswerWizard(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AnswerWizard()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AnswerWizard, get=getAnswerWizard)

        long getCalculationVersion();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_CalculationVersion(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CalculationVersion()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CalculationVersion, get=getCalculationVersion)

        VARIANT_BOOL getShowWindowsInTaskbar();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowWindowsInTaskbar(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowWindowsInTaskbar()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowWindowsInTaskbar(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowWindowsInTaskbar(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowWindowsInTaskbar()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowWindowsInTaskbar, get=getShowWindowsInTaskbar, set=setShowWindowsInTaskbar)

        MsoFeatureInstall getFeatureInstall();
        %MethodCode
            etapi::MsoFeatureInstall prop = (etapi::MsoFeatureInstall)0;
            HRESULT hr = sipCpp->get_FeatureInstall(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FeatureInstall()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFeatureInstall(MsoFeatureInstall prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FeatureInstall(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FeatureInstall()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FeatureInstall, get=getFeatureInstall, set=setFeatureInstall)

        VARIANT_BOOL getReady();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Ready(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Ready()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Ready, get=getReady)

        CellFormat* getFindFormat();
        %MethodCode
            etapi::CellFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_FindFormat(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FindFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=FindFormat, get=getFindFormat)

        CellFormat* getReplaceFormat();
        %MethodCode
            etapi::CellFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_ReplaceFormat(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ReplaceFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ReplaceFormat, get=getReplaceFormat)

        UsedObjects* getUsedObjects();
        %MethodCode
            etapi::UsedObjects *prop = nullptr;
            HRESULT hr = sipCpp->get_UsedObjects(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UsedObjects()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=UsedObjects, get=getUsedObjects)

        XlCalculationState getCalculationState();
        %MethodCode
            etapi::XlCalculationState prop = (etapi::XlCalculationState)0;
            HRESULT hr = sipCpp->get_CalculationState(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CalculationState()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CalculationState, get=getCalculationState)

        XlCalculationInterruptKey getCalculationInterruptKey();
        %MethodCode
            etapi::XlCalculationInterruptKey prop = (etapi::XlCalculationInterruptKey)0;
            HRESULT hr = sipCpp->get_CalculationInterruptKey(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CalculationInterruptKey()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCalculationInterruptKey(XlCalculationInterruptKey prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CalculationInterruptKey(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CalculationInterruptKey()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CalculationInterruptKey, get=getCalculationInterruptKey, set=setCalculationInterruptKey)

        Watches* getWatches();
        %MethodCode
            etapi::Watches *prop = nullptr;
            HRESULT hr = sipCpp->get_Watches(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Watches()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Watches, get=getWatches)

        VARIANT_BOOL getDisplayFunctionToolTips();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayFunctionToolTips(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayFunctionToolTips()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayFunctionToolTips(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayFunctionToolTips(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayFunctionToolTips()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayFunctionToolTips, get=getDisplayFunctionToolTips, set=setDisplayFunctionToolTips)

        MsoAutomationSecurity getAutomationSecurity();
        %MethodCode
            etapi::MsoAutomationSecurity prop = (etapi::MsoAutomationSecurity)0;
            HRESULT hr = sipCpp->get_AutomationSecurity(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutomationSecurity()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutomationSecurity(MsoAutomationSecurity prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutomationSecurity(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutomationSecurity()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutomationSecurity, get=getAutomationSecurity, set=setAutomationSecurity)

        VARIANT_BOOL getDisplayPasteOptions();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayPasteOptions(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayPasteOptions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayPasteOptions(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayPasteOptions(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayPasteOptions()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayPasteOptions, get=getDisplayPasteOptions, set=setDisplayPasteOptions)

        VARIANT_BOOL getDisplayInsertOptions();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayInsertOptions(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayInsertOptions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayInsertOptions(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayInsertOptions(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayInsertOptions()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayInsertOptions, get=getDisplayInsertOptions, set=setDisplayInsertOptions)

        VARIANT_BOOL getGenerateGetPivotData();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_GenerateGetPivotData(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_GenerateGetPivotData()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setGenerateGetPivotData(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_GenerateGetPivotData(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_GenerateGetPivotData()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=GenerateGetPivotData, get=getGenerateGetPivotData, set=setGenerateGetPivotData)

        AutoRecover* getAutoRecover();
        %MethodCode
            etapi::AutoRecover *prop = nullptr;
            HRESULT hr = sipCpp->get_AutoRecover(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoRecover()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AutoRecover, get=getAutoRecover)

        long getHwnd();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Hwnd(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Hwnd()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Hwnd, get=getHwnd)

        long getHinstance();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Hinstance(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Hinstance()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Hinstance, get=getHinstance)

        ErrorCheckingOptions* getErrorCheckingOptions();
        %MethodCode
            etapi::ErrorCheckingOptions *prop = nullptr;
            HRESULT hr = sipCpp->get_ErrorCheckingOptions(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ErrorCheckingOptions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ErrorCheckingOptions, get=getErrorCheckingOptions)

        VARIANT_BOOL getAutoFormatAsYouTypeReplaceHyperlinks();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatAsYouTypeReplaceHyperlinks(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatAsYouTypeReplaceHyperlinks()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatAsYouTypeReplaceHyperlinks(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatAsYouTypeReplaceHyperlinks(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatAsYouTypeReplaceHyperlinks()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatAsYouTypeReplaceHyperlinks, get=getAutoFormatAsYouTypeReplaceHyperlinks, set=setAutoFormatAsYouTypeReplaceHyperlinks)

        SmartTagRecognizers* getSmartTagRecognizers();
        %MethodCode
            etapi::SmartTagRecognizers *prop = nullptr;
            HRESULT hr = sipCpp->get_SmartTagRecognizers(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SmartTagRecognizers()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SmartTagRecognizers, get=getSmartTagRecognizers)

        ksoapi::NewFile* getNewWorkbook();
        %MethodCode
            ksoapi::NewFile *prop = nullptr;
            HRESULT hr = sipCpp->get_NewWorkbook(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NewWorkbook()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=NewWorkbook, get=getNewWorkbook)

        SpellingOptions* getSpellingOptions();
        %MethodCode
            etapi::SpellingOptions *prop = nullptr;
            HRESULT hr = sipCpp->get_SpellingOptions(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SpellingOptions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SpellingOptions, get=getSpellingOptions)

        Speech* getSpeech();
        %MethodCode
            etapi::Speech *prop = nullptr;
            HRESULT hr = sipCpp->get_Speech(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Speech()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Speech, get=getSpeech)

        VARIANT_BOOL getMapPaperSize();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MapPaperSize(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MapPaperSize()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMapPaperSize(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MapPaperSize(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MapPaperSize()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MapPaperSize, get=getMapPaperSize, set=setMapPaperSize)

        VARIANT_BOOL getShowStartupDialog();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowStartupDialog(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowStartupDialog()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowStartupDialog(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowStartupDialog(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowStartupDialog()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowStartupDialog, get=getShowStartupDialog, set=setShowStartupDialog)

        BSTR getDecimalSeparator();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_DecimalSeparator(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DecimalSeparator()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDecimalSeparator(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DecimalSeparator(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DecimalSeparator()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DecimalSeparator, get=getDecimalSeparator, set=setDecimalSeparator)

        BSTR getThousandsSeparator();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ThousandsSeparator(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ThousandsSeparator()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setThousandsSeparator(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ThousandsSeparator(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ThousandsSeparator()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ThousandsSeparator, get=getThousandsSeparator, set=setThousandsSeparator)

        VARIANT_BOOL getUseSystemSeparators();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_UseSystemSeparators(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UseSystemSeparators()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUseSystemSeparators(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_UseSystemSeparators(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_UseSystemSeparators()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=UseSystemSeparators, get=getUseSystemSeparators, set=setUseSystemSeparators)

        Range* getThisCell();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_ThisCell(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ThisCell()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ThisCell, get=getThisCell)

        RTD* getRTD();
        %MethodCode
            etapi::RTD *prop = nullptr;
            HRESULT hr = sipCpp->get_RTD(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RTD()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=RTD, get=getRTD)

        VARIANT_BOOL getDisplayDocumentActionTaskPane();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayDocumentActionTaskPane(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayDocumentActionTaskPane()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayDocumentActionTaskPane(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayDocumentActionTaskPane(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayDocumentActionTaskPane()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayDocumentActionTaskPane, get=getDisplayDocumentActionTaskPane, set=setDisplayDocumentActionTaskPane)

        VARIANT_BOOL getArbitraryXMLSupportAvailable();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ArbitraryXMLSupportAvailable(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ArbitraryXMLSupportAvailable()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ArbitraryXMLSupportAvailable, get=getArbitraryXMLSupportAvailable)

        long getMeasurementUnit();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_MeasurementUnit(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MeasurementUnit()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMeasurementUnit(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MeasurementUnit(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MeasurementUnit()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MeasurementUnit, get=getMeasurementUnit, set=setMeasurementUnit)

        VARIANT_BOOL getShowSelectionFloaties();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowSelectionFloaties(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowSelectionFloaties()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowSelectionFloaties(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowSelectionFloaties(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowSelectionFloaties()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowSelectionFloaties, get=getShowSelectionFloaties, set=setShowSelectionFloaties)

        VARIANT_BOOL getShowMenuFloaties();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowMenuFloaties(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowMenuFloaties()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowMenuFloaties(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowMenuFloaties(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowMenuFloaties()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowMenuFloaties, get=getShowMenuFloaties, set=setShowMenuFloaties)

        VARIANT_BOOL getShowDevTools();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowDevTools(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowDevTools()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowDevTools(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowDevTools(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowDevTools()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowDevTools, get=getShowDevTools, set=setShowDevTools)

        VARIANT_BOOL getEnableLivePreview();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EnableLivePreview(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EnableLivePreview()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnableLivePreview(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EnableLivePreview(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EnableLivePreview()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EnableLivePreview, get=getEnableLivePreview, set=setEnableLivePreview)

        VARIANT_BOOL getDisplayDocumentInformationPanel();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayDocumentInformationPanel(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayDocumentInformationPanel()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayDocumentInformationPanel(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayDocumentInformationPanel(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayDocumentInformationPanel()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayDocumentInformationPanel, get=getDisplayDocumentInformationPanel, set=setDisplayDocumentInformationPanel)

        VARIANT_BOOL getAlwaysUseClearType();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AlwaysUseClearType(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AlwaysUseClearType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAlwaysUseClearType(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AlwaysUseClearType(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AlwaysUseClearType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AlwaysUseClearType, get=getAlwaysUseClearType, set=setAlwaysUseClearType)

        VARIANT_BOOL getWarnOnFunctionNameConflict();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_WarnOnFunctionNameConflict(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WarnOnFunctionNameConflict()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWarnOnFunctionNameConflict(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_WarnOnFunctionNameConflict(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_WarnOnFunctionNameConflict()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=WarnOnFunctionNameConflict, get=getWarnOnFunctionNameConflict, set=setWarnOnFunctionNameConflict)

        long getFormulaBarHeight();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_FormulaBarHeight(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FormulaBarHeight()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFormulaBarHeight(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FormulaBarHeight(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FormulaBarHeight()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FormulaBarHeight, get=getFormulaBarHeight, set=setFormulaBarHeight)

        VARIANT_BOOL getDisplayFormulaAutoComplete();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayFormulaAutoComplete(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayFormulaAutoComplete()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayFormulaAutoComplete(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayFormulaAutoComplete(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayFormulaAutoComplete()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayFormulaAutoComplete, get=getDisplayFormulaAutoComplete, set=setDisplayFormulaAutoComplete)

        XlGenerateTableRefs getGenerateTableRefs();
        %MethodCode
            etapi::XlGenerateTableRefs prop = (etapi::XlGenerateTableRefs)0;
            HRESULT hr = sipCpp->get_GenerateTableRefs(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_GenerateTableRefs()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setGenerateTableRefs(XlGenerateTableRefs prop);
        %MethodCode
            HRESULT hr = sipCpp->put_GenerateTableRefs(0, a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_GenerateTableRefs()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=GenerateTableRefs, get=getGenerateTableRefs, set=setGenerateTableRefs)

        ksoapi::IAssistance* getAssistance();
        %MethodCode
            ksoapi::IAssistance *prop = nullptr;
            HRESULT hr = sipCpp->get_Assistance(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Assistance()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Assistance, get=getAssistance)

        VARIANT_BOOL getEnableLargeOperationAlert();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EnableLargeOperationAlert(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EnableLargeOperationAlert()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnableLargeOperationAlert(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EnableLargeOperationAlert(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EnableLargeOperationAlert()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EnableLargeOperationAlert, get=getEnableLargeOperationAlert, set=setEnableLargeOperationAlert)

        long getLargeOperationCellThousandCount();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_LargeOperationCellThousandCount(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LargeOperationCellThousandCount()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLargeOperationCellThousandCount(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LargeOperationCellThousandCount(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LargeOperationCellThousandCount()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LargeOperationCellThousandCount, get=getLargeOperationCellThousandCount, set=setLargeOperationCellThousandCount)

        VARIANT_BOOL getDeferAsyncQueries();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DeferAsyncQueries(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DeferAsyncQueries()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDeferAsyncQueries(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DeferAsyncQueries(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DeferAsyncQueries()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DeferAsyncQueries, get=getDeferAsyncQueries, set=setDeferAsyncQueries)

        MultiThreadedCalculation* getMultiThreadedCalculation();
        %MethodCode
            etapi::MultiThreadedCalculation *prop = nullptr;
            HRESULT hr = sipCpp->get_MultiThreadedCalculation(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MultiThreadedCalculation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MultiThreadedCalculation, get=getMultiThreadedCalculation)

        long getActiveEncryptionSession();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_ActiveEncryptionSession(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ActiveEncryptionSession()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ActiveEncryptionSession, get=getActiveEncryptionSession)

        VARIANT_BOOL getHighQualityModeForGraphics();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HighQualityModeForGraphics(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HighQualityModeForGraphics()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHighQualityModeForGraphics(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HighQualityModeForGraphics(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HighQualityModeForGraphics()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HighQualityModeForGraphics, get=getHighQualityModeForGraphics, set=setHighQualityModeForGraphics)

        FileExportConverters* getFileExportConverters();
        %MethodCode
            etapi::FileExportConverters *prop = nullptr;
            HRESULT hr = sipCpp->get_FileExportConverters(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FileExportConverters()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=FileExportConverters, get=getFileExportConverters)

        ksoapi::SmartArtLayouts* getSmartArtLayouts();
        %MethodCode
            ksoapi::SmartArtLayouts *prop = nullptr;
            HRESULT hr = sipCpp->get_SmartArtLayouts(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SmartArtLayouts()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SmartArtLayouts, get=getSmartArtLayouts)

        ksoapi::SmartArtQuickStyles* getSmartArtQuickStyles();
        %MethodCode
            ksoapi::SmartArtQuickStyles *prop = nullptr;
            HRESULT hr = sipCpp->get_SmartArtQuickStyles(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SmartArtQuickStyles()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SmartArtQuickStyles, get=getSmartArtQuickStyles)

        ksoapi::SmartArtColors* getSmartArtColors();
        %MethodCode
            ksoapi::SmartArtColors *prop = nullptr;
            HRESULT hr = sipCpp->get_SmartArtColors(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SmartArtColors()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SmartArtColors, get=getSmartArtColors)

        AddIns2* getAddIns2();
        %MethodCode
            etapi::AddIns2 *prop = nullptr;
            HRESULT hr = sipCpp->get_AddIns2(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AddIns2()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AddIns2, get=getAddIns2)

        VARIANT_BOOL getPrintCommunication();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PrintCommunication(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PrintCommunication()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPrintCommunication(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PrintCommunication(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PrintCommunication()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PrintCommunication, get=getPrintCommunication, set=setPrintCommunication)

        VARIANT_BOOL getUseClusterConnector();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_UseClusterConnector(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UseClusterConnector()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUseClusterConnector(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_UseClusterConnector(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_UseClusterConnector()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=UseClusterConnector, get=getUseClusterConnector, set=setUseClusterConnector)

        BSTR getClusterConnector();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ClusterConnector(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ClusterConnector()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setClusterConnector(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ClusterConnector(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ClusterConnector()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ClusterConnector, get=getClusterConnector, set=setClusterConnector)

        VARIANT_BOOL getQuitting();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Quitting(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Quitting()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Quitting, get=getQuitting)

        VARIANT_BOOL getDummy22();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Dummy22(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Dummy22()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDummy22(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Dummy22(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Dummy22()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Dummy22, get=getDummy22, set=setDummy22)

        VARIANT_BOOL getDummy23();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Dummy23(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Dummy23()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDummy23(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Dummy23(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Dummy23()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Dummy23, get=getDummy23, set=setDummy23)

        ProtectedViewWindows* getProtectedViewWindows();
        %MethodCode
            etapi::ProtectedViewWindows *prop = nullptr;
            HRESULT hr = sipCpp->get_ProtectedViewWindows(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ProtectedViewWindows()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ProtectedViewWindows, get=getProtectedViewWindows)

        ProtectedViewWindow* getActiveProtectedViewWindow();
        %MethodCode
            etapi::ProtectedViewWindow *prop = nullptr;
            HRESULT hr = sipCpp->get_ActiveProtectedViewWindow(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ActiveProtectedViewWindow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ActiveProtectedViewWindow, get=getActiveProtectedViewWindow)

        VARIANT_BOOL getIsSandboxed();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IsSandboxed(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IsSandboxed()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=IsSandboxed, get=getIsSandboxed)

        VARIANT_BOOL getSaveISO8601Dates();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_SaveISO8601Dates(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SaveISO8601Dates()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSaveISO8601Dates(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SaveISO8601Dates(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SaveISO8601Dates()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SaveISO8601Dates, get=getSaveISO8601Dates, set=setSaveISO8601Dates)

        VARIANT getHinstancePtr();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_HinstancePtr(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HinstancePtr()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HinstancePtr, get=getHinstancePtr)

        MsoFileValidationMode getFileValidation();
        %MethodCode
            etapi::MsoFileValidationMode prop = (etapi::MsoFileValidationMode)0;
            HRESULT hr = sipCpp->get_FileValidation(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FileValidation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFileValidation(MsoFileValidationMode prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FileValidation(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FileValidation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FileValidation, get=getFileValidation, set=setFileValidation)

        XlFileValidationPivotMode getFileValidationPivot();
        %MethodCode
            etapi::XlFileValidationPivotMode prop = (etapi::XlFileValidationPivotMode)0;
            HRESULT hr = sipCpp->get_FileValidationPivot(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FileValidationPivot()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFileValidationPivot(XlFileValidationPivotMode prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FileValidationPivot(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FileValidationPivot()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FileValidationPivot, get=getFileValidationPivot, set=setFileValidationPivot)

        VARIANT_BOOL getShowQuickAnalysis();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowQuickAnalysis(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowQuickAnalysis()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowQuickAnalysis(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowQuickAnalysis(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowQuickAnalysis()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowQuickAnalysis, get=getShowQuickAnalysis, set=setShowQuickAnalysis)

        QuickAnalysis* getQuickAnalysis();
        %MethodCode
            etapi::QuickAnalysis *prop = nullptr;
            HRESULT hr = sipCpp->get_QuickAnalysis(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_QuickAnalysis()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=QuickAnalysis, get=getQuickAnalysis)

        VARIANT_BOOL getFlashFill();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_FlashFill(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FlashFill()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFlashFill(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FlashFill(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FlashFill()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FlashFill, get=getFlashFill, set=setFlashFill)

        VARIANT_BOOL getEnableMacroAnimations();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EnableMacroAnimations(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EnableMacroAnimations()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnableMacroAnimations(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EnableMacroAnimations(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EnableMacroAnimations()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EnableMacroAnimations, get=getEnableMacroAnimations, set=setEnableMacroAnimations)

        VARIANT_BOOL getChartDataPointTrack();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ChartDataPointTrack(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ChartDataPointTrack()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setChartDataPointTrack(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ChartDataPointTrack(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ChartDataPointTrack()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ChartDataPointTrack, get=getChartDataPointTrack, set=setChartDataPointTrack)

        VARIANT_BOOL getFlashFillMode();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_FlashFillMode(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FlashFillMode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFlashFillMode(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FlashFillMode(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FlashFillMode()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FlashFillMode, get=getFlashFillMode, set=setFlashFillMode)

        VARIANT_BOOL getMergeInstances();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MergeInstances(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MergeInstances()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMergeInstances(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MergeInstances(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MergeInstances()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MergeInstances, get=getMergeInstances, set=setMergeInstances)

        VARIANT_BOOL getEnableCheckFileExtensions();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EnableCheckFileExtensions(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EnableCheckFileExtensions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnableCheckFileExtensions(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EnableCheckFileExtensions(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EnableCheckFileExtensions()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EnableCheckFileExtensions, get=getEnableCheckFileExtensions, set=setEnableCheckFileExtensions)

        _DebugTools* getDebugTools();
        %MethodCode
            etapi::_DebugTools *prop = nullptr;
            HRESULT hr = sipCpp->get_DebugTools(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DebugTools()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DebugTools, get=getDebugTools)

        wpsapiex::_ApplicationEx* getApplicationEx();
        %MethodCode
            wpsapiex::_ApplicationEx *prop = nullptr;
            HRESULT hr = sipCpp->QueryInterface(wpsapiex::IID__EtApplicationEx, (void**)&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'QueryInterface()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ApplicationEx, get=getApplicationEx)
    };
};
