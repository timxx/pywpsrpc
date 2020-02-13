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
    struct _Worksheet : public IDispatch /Abstract/
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
            VARIANT Before,
            VARIANT After,
            long lcid) = 0;

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
            VARIANT Before,
            VARIANT After,
            long lcid) = 0;

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
            VARIANT From,
            VARIANT To,
            VARIANT Copies,
            VARIANT Preview,
            VARIANT ActivePrinter,
            VARIANT PrintToFile,
            VARIANT Collate,
            long lcid) = 0;

        virtual HRESULT PrintPreview(
            VARIANT EnableChanges,
            long lcid) = 0;

        virtual HRESULT _Protect(
            VARIANT Password,
            VARIANT DrawingObjects,
            VARIANT Contents,
            VARIANT Scenarios,
            VARIANT UserInterfaceOnly,
            long lcid) = 0;

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
            VARIANT FileFormat,
            VARIANT Password,
            VARIANT WriteResPassword,
            VARIANT ReadOnlyRecommended,
            VARIANT CreateBackup,
            VARIANT AddToMru,
            VARIANT TextCodepage,
            VARIANT TextVisualLayout,
            long lcid) = 0;

        virtual HRESULT Select(
            VARIANT Replace,
            long lcid) = 0;

        virtual HRESULT Unprotect(
            VARIANT Password,
            long lcid) = 0;

        virtual HRESULT get_Visible(
            long lcid,
            XlSheetVisibility *RHS /Out/) = 0;

        virtual HRESULT put_Visible(
            long lcid,
            XlSheetVisibility RHS) = 0;

        virtual HRESULT get_Shapes(
            Shapes **RHS /Out/) = 0;

        virtual HRESULT get_TransitionExpEval(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_TransitionExpEval(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT Arcs(
            VARIANT Index,
            long lcid,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_AutoFilterMode(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AutoFilterMode(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT SetBackgroundPicture(
            BSTR Filename) = 0;

        virtual HRESULT Buttons(
            VARIANT Index,
            long lcid,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT Calculate(
            long lcid) = 0;

        virtual HRESULT get_EnableCalculation(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnableCalculation(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Cells(
            Range **RHS /Out/) = 0;

        virtual HRESULT ChartObjects(
            VARIANT Index,
            long lcid,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT CheckBoxes(
            VARIANT Index,
            long lcid,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT CheckSpelling(
            VARIANT CustomDictionary,
            VARIANT IgnoreUppercase,
            VARIANT AlwaysSuggest,
            VARIANT SpellLang,
            long lcid) = 0;

        virtual HRESULT get_CircularReference(
            long lcid,
            Range **RHS /Out/) = 0;

        virtual HRESULT ClearArrows(
            long lcid) = 0;

        virtual HRESULT get_Columns(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_ConsolidationFunction(
            long lcid,
            XlConsolidationFunction *RHS /Out/) = 0;

        virtual HRESULT get_ConsolidationOptions(
            long lcid,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_ConsolidationSources(
            long lcid,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_DisplayAutomaticPageBreaks(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayAutomaticPageBreaks(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT Drawings(
            VARIANT Index,
            long lcid,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT DrawingObjects(
            VARIANT Index,
            long lcid,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT DropDowns(
            VARIANT Index,
            long lcid,
            IDispatch **RHS /Out/) = 0;

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

        virtual HRESULT get_FilterMode(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT ResetAllPageBreaks() = 0;

        virtual HRESULT GroupBoxes(
            VARIANT Index,
            long lcid,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT GroupObjects(
            VARIANT Index,
            long lcid,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT Labels(
            VARIANT Index,
            long lcid,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT Lines(
            VARIANT Index,
            long lcid,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT ListBoxes(
            VARIANT Index,
            long lcid,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Names(
            Names **RHS /Out/) = 0;

        virtual HRESULT OLEObjects(
            VARIANT Index,
            long lcid,
            IDispatch **RHS /Out/) = 0;

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

        virtual HRESULT get_OnEntry(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_OnEntry(
            long lcid,
            BSTR RHS) = 0;

        virtual HRESULT OptionButtons(
            VARIANT Index,
            long lcid,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Outline(
            Outline **RHS /Out/) = 0;

        virtual HRESULT Ovals(
            VARIANT Index,
            long lcid,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT Paste(
            VARIANT Destination,
            VARIANT Link,
            long lcid) = 0;

        virtual HRESULT _PasteSpecial(
            VARIANT Format,
            VARIANT Link,
            VARIANT DisplayAsIcon,
            VARIANT IconFileName,
            VARIANT IconIndex,
            VARIANT IconLabel,
            long lcid) = 0;

        virtual HRESULT Pictures(
            VARIANT Index,
            long lcid,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT PivotTables(
            VARIANT Index,
            long lcid,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT PivotTableWizard(
            VARIANT SourceType,
            VARIANT SourceData,
            VARIANT TableDestination,
            VARIANT TableName,
            VARIANT RowGrand,
            VARIANT ColumnGrand,
            VARIANT SaveData,
            VARIANT HasAutoFormat,
            VARIANT AutoPage,
            VARIANT Reserved,
            VARIANT BackgroundQuery,
            VARIANT OptimizeCache,
            VARIANT PageFieldOrder,
            VARIANT PageFieldWrapCount,
            VARIANT ReadData,
            VARIANT Connection,
            long lcid,
            PivotTable **RHS /Out/) = 0;

        virtual HRESULT get_Range(
            VARIANT Cell1,
            VARIANT Cell2,
            Range **RHS /Out/) = 0;

        virtual HRESULT Rectangles(
            VARIANT Index,
            long lcid,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Rows(
            Range **RHS /Out/) = 0;

        virtual HRESULT Scenarios(
            VARIANT Index,
            long lcid,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_ScrollArea(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_ScrollArea(
            BSTR RHS) = 0;

        virtual HRESULT ScrollBars(
            VARIANT Index,
            long lcid,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT ShowAllData(
            long lcid) = 0;

        virtual HRESULT ShowDataForm(
            long lcid) = 0;

        virtual HRESULT Spinners(
            VARIANT Index,
            long lcid,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_StandardHeight(
            long lcid,
            double *RHS /Out/) = 0;

        virtual HRESULT get_StandardWidth(
            long lcid,
            double *RHS /Out/) = 0;

        virtual HRESULT put_StandardWidth(
            long lcid,
            double RHS) = 0;

        virtual HRESULT TextBoxes(
            VARIANT Index,
            long lcid,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_TransitionFormEntry(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_TransitionFormEntry(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Type(
            long lcid,
            XlSheetType *RHS /Out/) = 0;

        virtual HRESULT get_UsedRange(
            long lcid,
            Range **RHS /Out/) = 0;

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
            VARIANT From,
            VARIANT To,
            VARIANT Copies,
            VARIANT Preview,
            VARIANT ActivePrinter,
            VARIANT PrintToFile,
            VARIANT Collate,
            VARIANT PrToFileName,
            long lcid) = 0;

        virtual HRESULT _CheckSpelling(
            VARIANT CustomDictionary,
            VARIANT IgnoreUppercase,
            VARIANT AlwaysSuggest,
            VARIANT SpellLang,
            VARIANT IgnoreFinalYaa,
            VARIANT SpellScript,
            long lcid) = 0;

        virtual HRESULT get_Tab(
            Tab **RHS /Out/) = 0;

        virtual HRESULT get_MailEnvelope(
            ksoapi::MsoEnvelope **RHS /Out/) = 0;

        virtual HRESULT SaveAs(
            BSTR Filename,
            VARIANT FileFormat,
            VARIANT Password,
            VARIANT WriteResPassword,
            VARIANT ReadOnlyRecommended,
            VARIANT CreateBackup,
            VARIANT AddToMru,
            VARIANT TextCodepage,
            VARIANT TextVisualLayout,
            VARIANT Local) = 0;

        virtual HRESULT get_CustomProperties(
            CustomProperties **RHS /Out/) = 0;

        virtual HRESULT get_SmartTags(
            SmartTags **RHS /Out/) = 0;

        virtual HRESULT get_Protection(
            Protection **RHS /Out/) = 0;

        virtual HRESULT PasteSpecial(
            VARIANT Format,
            VARIANT Link,
            VARIANT DisplayAsIcon,
            VARIANT IconFileName,
            VARIANT IconIndex,
            VARIANT IconLabel,
            VARIANT NoHTMLFormatting,
            long lcid) = 0;

        virtual HRESULT Protect(
            VARIANT Password,
            VARIANT DrawingObjects,
            VARIANT Contents,
            VARIANT Scenarios,
            VARIANT UserInterfaceOnly,
            VARIANT AllowFormattingCells,
            VARIANT AllowFormattingColumns,
            VARIANT AllowFormattingRows,
            VARIANT AllowInsertingColumns,
            VARIANT AllowInsertingRows,
            VARIANT AllowInsertingHyperlinks,
            VARIANT AllowDeletingColumns,
            VARIANT AllowDeletingRows,
            VARIANT AllowSorting,
            VARIANT AllowFiltering,
            VARIANT AllowUsingPivotTables) = 0;

        virtual HRESULT get_ListObjects(
            ListObjects **RHS /Out/) = 0;

        virtual HRESULT XmlDataQuery(
            BSTR XPath,
            VARIANT SelectionNamespaces,
            VARIANT Map,
            Range **RHS /Out/) = 0;

        virtual HRESULT XmlMapQuery(
            BSTR XPath,
            VARIANT SelectionNamespaces,
            VARIANT Map,
            Range **RHS /Out/) = 0;

        virtual HRESULT PrintOut(
            VARIANT From,
            VARIANT To,
            VARIANT Copies,
            VARIANT Preview,
            VARIANT ActivePrinter,
            VARIANT PrintToFile,
            VARIANT Collate,
            VARIANT PrToFileName,
            VARIANT IgnorePrintAreas,
            long lcid) = 0;

        virtual HRESULT get_EnableFormatConditionsCalculation(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnableFormatConditionsCalculation(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Sort(
            Sort **RHS /Out/) = 0;

        virtual HRESULT ExportAsFixedFormat(
            XlFixedFormatType Type,
            VARIANT Filename,
            VARIANT Quality,
            VARIANT IncludeDocProperties,
            VARIANT IgnorePrintAreas,
            VARIANT From,
            VARIANT To,
            VARIANT OpenAfterPublish,
            VARIANT FixedFormatExtClassPtr) = 0;

        virtual HRESULT get_PrintedCommentPages(
            long *RHS /Out/) = 0;

        virtual HRESULT ExportToPNG(
            VARIANT FilePath) = 0;

    };
};
