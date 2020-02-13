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
    struct _Global : public IDispatch /Abstract/
    {
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
/*
        virtual HRESULT Intersect(
            Range *Arg1,
            Range *Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            long lcid,
            Range **RHS /Out/) = 0;
*/
        virtual HRESULT get_MenuBars(
            MenuBars **RHS /Out/) = 0;

        virtual HRESULT get_Modules(
            Modules **RHS /Out/) = 0;

        virtual HRESULT get_Names(
            Names **RHS /Out/) = 0;

        virtual HRESULT get_Range(
            VARIANT Cell1,
            VARIANT Cell2,
            Range **RHS /Out/) = 0;

        virtual HRESULT get_Rows(
            Range **RHS /Out/) = 0;
/*
        virtual HRESULT Run(
            VARIANT Macro,
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT _Run2(
            VARIANT Macro,
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            long lcid,
            VARIANT *RHS /Out/) = 0;
*/
        virtual HRESULT get_Selection(
            long lcid,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT SendKeys(
            VARIANT Keys,
            VARIANT Wait,
            long lcid) = 0;

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
/*
        virtual HRESULT Union(
            Range *Arg1,
            Range *Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            long lcid,
            Range **RHS /Out/) = 0;
*/
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

    };
};
