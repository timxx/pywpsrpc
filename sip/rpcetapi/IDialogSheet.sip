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
    struct IDialogSheet : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT Activate(
            long lcid) = 0;

        virtual HRESULT Copy(
            VARIANT Before = argMissing2(),
            VARIANT After = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT Delete(
            long lcid) = 0;

        virtual HRESULT get_CodeName(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get__CodeName(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put__CodeName(
            BSTR RHS) = 0;

        virtual HRESULT get_Index(
            long lcid,
            long *RHS /Out/) = 0;

        virtual HRESULT Move(
            VARIANT Before = argMissing2(),
            VARIANT After = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR RHS) = 0;

        virtual HRESULT get_Next(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_OnDoubleClick(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_OnDoubleClick(
            long lcid,
            BSTR RHS) = 0;

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

        virtual HRESULT get_PageSetup(
            PageSetup **RHS /Out/) = 0;

        virtual HRESULT get_Previous(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT __PrintOut(
            VARIANT From = argMissing2(),
            VARIANT To = argMissing2(),
            VARIANT Copies = argMissing2(),
            VARIANT Preview = argMissing2(),
            VARIANT ActivePrinter = argMissing2(),
            VARIANT PrintToFile = argMissing2(),
            VARIANT Collate = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT PrintPreview(
            VARIANT EnableChanges = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT _Protect(
            VARIANT Password = argMissing2(),
            VARIANT DrawingObjects = argMissing2(),
            VARIANT Contents = argMissing2(),
            VARIANT Scenarios = argMissing2(),
            VARIANT UserInterfaceOnly = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT get_ProtectContents(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_ProtectDrawingObjects(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_ProtectionMode(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_ProtectScenarios(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT _SaveAs(
            BSTR Filename,
            VARIANT FileFormat = argMissing2(),
            VARIANT Password = argMissing2(),
            VARIANT WriteResPassword = argMissing2(),
            VARIANT ReadOnlyRecommended = argMissing2(),
            VARIANT CreateBackup = argMissing2(),
            VARIANT AddToMru = argMissing2(),
            VARIANT TextCodepage = argMissing2(),
            VARIANT TextVisualLayout = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT Select(
            VARIANT Replace = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT Unprotect(
            VARIANT Password = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT get_Visible(
            long lcid,
            XlSheetVisibility *RHS /Out/) = 0;

        virtual HRESULT put_Visible(
            long lcid,
            XlSheetVisibility RHS) = 0;

        virtual HRESULT get_Shapes(
            Shapes **RHS /Out/) = 0;

        virtual void  _Dummy29() = 0;

        virtual HRESULT Arcs(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual void  _Dummy31() = 0;

        virtual void  _Dummy32() = 0;

        virtual HRESULT Buttons(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual void  _Dummy34() = 0;

        virtual HRESULT get_EnableCalculation(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnableCalculation(
            VARIANT_BOOL RHS) = 0;

        virtual void  _Dummy36() = 0;

        virtual HRESULT ChartObjects(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT CheckBoxes(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT CheckSpelling(
            VARIANT CustomDictionary = argMissing2(),
            VARIANT IgnoreUppercase = argMissing2(),
            VARIANT AlwaysSuggest = argMissing2(),
            VARIANT SpellLang = argMissing2(),
            long lcid = 0) = 0;

        virtual void  _Dummy40() = 0;

        virtual void  _Dummy41() = 0;

        virtual void  _Dummy42() = 0;

        virtual void  _Dummy43() = 0;

        virtual void  _Dummy44() = 0;

        virtual void  _Dummy45() = 0;

        virtual HRESULT get_DisplayAutomaticPageBreaks(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayAutomaticPageBreaks(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT Drawings(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT DrawingObjects(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT DropDowns(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get_EnableAutoFilter(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnableAutoFilter(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_EnableSelection(
            XlEnableSelection *RHS /Out/) = 0;

        virtual HRESULT put_EnableSelection(
            XlEnableSelection RHS) = 0;

        virtual HRESULT get_EnableOutlining(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnableOutlining(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_EnablePivotTable(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnablePivotTable(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT Evaluate(
            VARIANT Name,
            long lcid,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT _Evaluate(
            VARIANT Name,
            long lcid,
            VARIANT *RHS /Out/) = 0;

        virtual void  _Dummy56() = 0;

        virtual HRESULT ResetAllPageBreaks() = 0;

        virtual HRESULT GroupBoxes(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT GroupObjects(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT Labels(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT Lines(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT ListBoxes(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get_Names(
            Names **RHS /Out/) = 0;

        virtual HRESULT OLEObjects(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual void  _Dummy65() = 0;

        virtual void  _Dummy66() = 0;

        virtual void  _Dummy67() = 0;

        virtual HRESULT OptionButtons(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual void  _Dummy69() = 0;

        virtual HRESULT Ovals(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT Paste(
            VARIANT Destination = argMissing2(),
            VARIANT Link = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT _PasteSpecial(
            VARIANT Format = argMissing2(),
            VARIANT Link = argMissing2(),
            VARIANT DisplayAsIcon = argMissing2(),
            VARIANT IconFileName = argMissing2(),
            VARIANT IconIndex = argMissing2(),
            VARIANT IconLabel = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT Pictures(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual void  _Dummy74() = 0;

        virtual void  _Dummy75() = 0;

        virtual void  _Dummy76() = 0;

        virtual HRESULT Rectangles(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual void  _Dummy78() = 0;

        virtual void  _Dummy79() = 0;

        virtual HRESULT get_ScrollArea(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_ScrollArea(
            BSTR RHS) = 0;

        virtual HRESULT ScrollBars(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual void  _Dummy82() = 0;

        virtual void  _Dummy83() = 0;

        virtual HRESULT Spinners(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual void  _Dummy85() = 0;

        virtual void  _Dummy86() = 0;

        virtual HRESULT TextBoxes(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual void  _Dummy88() = 0;

        virtual void  _Dummy89() = 0;

        virtual void  _Dummy90() = 0;

        virtual HRESULT get_HPageBreaks(
            HPageBreaks **RHS /Out/) = 0;

        virtual HRESULT get_VPageBreaks(
            VPageBreaks **RHS /Out/) = 0;

        virtual HRESULT get_QueryTables(
            QueryTables **RHS /Out/) = 0;

        virtual HRESULT get_DisplayPageBreaks(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayPageBreaks(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Comments(
            Comments **RHS /Out/) = 0;

        virtual HRESULT get_Hyperlinks(
            Hyperlinks **RHS /Out/) = 0;

        virtual HRESULT ClearCircles() = 0;

        virtual HRESULT CircleInvalid() = 0;

        virtual HRESULT get__DisplayRightToLeft(
            long lcid,
            long *RHS /Out/) = 0;

        virtual HRESULT put__DisplayRightToLeft(
            long lcid,
            long RHS) = 0;

        virtual HRESULT get_AutoFilter(
            AutoFilter **RHS /Out/) = 0;

        virtual HRESULT get_DisplayRightToLeft(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayRightToLeft(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Scripts(
            ksoapi::Scripts **RHS /Out/) = 0;

        virtual HRESULT _PrintOut(
            VARIANT From = argMissing2(),
            VARIANT To = argMissing2(),
            VARIANT Copies = argMissing2(),
            VARIANT Preview = argMissing2(),
            VARIANT ActivePrinter = argMissing2(),
            VARIANT PrintToFile = argMissing2(),
            VARIANT Collate = argMissing2(),
            VARIANT PrToFileName = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT _CheckSpelling(
            VARIANT CustomDictionary = argMissing2(),
            VARIANT IgnoreUppercase = argMissing2(),
            VARIANT AlwaysSuggest = argMissing2(),
            VARIANT SpellLang = argMissing2(),
            VARIANT IgnoreFinalYaa = argMissing2(),
            VARIANT SpellScript = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT get_Tab(
            Tab **RHS /Out/) = 0;

        virtual HRESULT get_MailEnvelope(
            ksoapi::MsoEnvelope **RHS /Out/) = 0;

        virtual HRESULT SaveAs(
            BSTR Filename,
            VARIANT FileFormat = argMissing2(),
            VARIANT Password = argMissing2(),
            VARIANT WriteResPassword = argMissing2(),
            VARIANT ReadOnlyRecommended = argMissing2(),
            VARIANT CreateBackup = argMissing2(),
            VARIANT AddToMru = argMissing2(),
            VARIANT TextCodepage = argMissing2(),
            VARIANT TextVisualLayout = argMissing2(),
            VARIANT Local = argMissing2()) = 0;

        virtual HRESULT get_CustomProperties(
            CustomProperties **RHS /Out/) = 0;

        virtual HRESULT get_SmartTags(
            SmartTags **RHS /Out/) = 0;

        virtual HRESULT get_Protection(
            Protection **RHS /Out/) = 0;

        virtual HRESULT PasteSpecial(
            VARIANT Format = argMissing2(),
            VARIANT Link = argMissing2(),
            VARIANT DisplayAsIcon = argMissing2(),
            VARIANT IconFileName = argMissing2(),
            VARIANT IconIndex = argMissing2(),
            VARIANT IconLabel = argMissing2(),
            VARIANT NoHTMLFormatting = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT Protect(
            VARIANT Password = argMissing2(),
            VARIANT DrawingObjects = argMissing2(),
            VARIANT Contents = argMissing2(),
            VARIANT Scenarios = argMissing2(),
            VARIANT UserInterfaceOnly = argMissing2(),
            VARIANT AllowFormattingCells = argMissing2(),
            VARIANT AllowFormattingColumns = argMissing2(),
            VARIANT AllowFormattingRows = argMissing2(),
            VARIANT AllowInsertingColumns = argMissing2(),
            VARIANT AllowInsertingRows = argMissing2(),
            VARIANT AllowInsertingHyperlinks = argMissing2(),
            VARIANT AllowDeletingColumns = argMissing2(),
            VARIANT AllowDeletingRows = argMissing2(),
            VARIANT AllowSorting = argMissing2(),
            VARIANT AllowFiltering = argMissing2(),
            VARIANT AllowUsingPivotTables = argMissing2()) = 0;

        virtual void  _Dummy113() = 0;

        virtual void  _Dummy114() = 0;

        virtual void  _Dummy115() = 0;

        virtual HRESULT PrintOut(
            VARIANT From = argMissing2(),
            VARIANT To = argMissing2(),
            VARIANT Copies = argMissing2(),
            VARIANT Preview = argMissing2(),
            VARIANT ActivePrinter = argMissing2(),
            VARIANT PrintToFile = argMissing2(),
            VARIANT Collate = argMissing2(),
            VARIANT PrToFileName = argMissing2()) = 0;

        virtual HRESULT get_EnableFormatConditionsCalculation(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnableFormatConditionsCalculation(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Sort(
            Sort **RHS /Out/) = 0;

        virtual HRESULT ExportAsFixedFormat(
            XlFixedFormatType Type,
            VARIANT Filename = argMissing2(),
            VARIANT Quality = argMissing2(),
            VARIANT IncludeDocProperties = argMissing2(),
            VARIANT IgnorePrintAreas = argMissing2(),
            VARIANT From = argMissing2(),
            VARIANT To = argMissing2(),
            VARIANT OpenAfterPublish = argMissing2(),
            VARIANT FixedFormatExtClassPtr = argMissing2()) = 0;

        virtual HRESULT get_PrintedCommentPages(
            long *RHS /Out/) = 0;

        virtual HRESULT get_DefaultButton(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_DefaultButton(
            VARIANT RHS) = 0;

        virtual HRESULT get_DialogFrame(
            DialogFrame **RHS /Out/) = 0;

        virtual HRESULT EditBoxes(
            VARIANT Index = argMissing2(),
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get_Focus(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Focus(
            VARIANT RHS) = 0;

        virtual HRESULT Hide(
            VARIANT Cancel = argMissing2(),
            VARIANT_BOOL *RHS /Out/ = 0) = 0;

        virtual HRESULT Show(
            VARIANT_BOOL *RHS /Out/) = 0;

    };
};
