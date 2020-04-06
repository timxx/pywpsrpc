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
            int offset)
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
                if (Py_TYPE(pyArg) != sipTypeAsPyTypeObject(sipType_etapi_Range))
                {
                    PyErr_Format(PyExc_TypeError,
                            "The %d positional argument requires 'etapi.Range' not '%s'.",
                            i,  Py_TYPE(pyArg)->tp_name);
                    return nullptr;
                }

                int state = 0;
                int isError = 0;
                rgArgs[i] = reinterpret_cast<etapi::Range*>(
                    sipConvertToType(pyArg, sipType_etapi_Range, 0, SIP_NO_CONVERTORS, &state, &isError));

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
                sipReleaseType(rgArgs[i], sipType_etapi_Range, rgState[i]);

            return sipBuildResult(0, "(iD)", hr, prop, sipType_etapi_Range, SIP_NULLPTR);
        }
    %End

    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            Application **RHS /Out/) = 0;

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
            IDispatch **RHS /Out/) = 0;

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

        virtual HRESULT get_Rows(
            Range **RHS /Out/) = 0;

/*
        virtual HRESULT Run(
            VARIANT Macro = argMissing2(),
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
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT _Run2(
            VARIANT Macro = argMissing2(),
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
            VARIANT *RHS /Out/ = 0) = 0;
*/
        virtual HRESULT get_Selection(
            long lcid,
            IDispatch **RHS /Out/) = 0;

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
/*
        virtual HRESULT _WSFunction(
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
            VARIANT *RHS /Out/ = 0) = 0;
*/
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

        virtual HRESULT get_Dummy101(
            IDispatch **RHS /Out/) = 0;

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
/*
        virtual HRESULT Dummy13(
            VARIANT Arg1,
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
            VARIANT *RHS /Out/ = 0) = 0;
*/
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

    };
};
