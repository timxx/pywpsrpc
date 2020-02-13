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
    struct _IQueryTable : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR RHS) = 0;

        virtual HRESULT get_FieldNames(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_FieldNames(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_RowNumbers(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_RowNumbers(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_FillAdjacentFormulas(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_FillAdjacentFormulas(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_HasAutoFormat(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_HasAutoFormat(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_RefreshOnFileOpen(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_RefreshOnFileOpen(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Refreshing(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_FetchedRowOverflow(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_BackgroundQuery(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_BackgroundQuery(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT CancelRefresh() = 0;

        virtual HRESULT get_RefreshStyle(
            XlCellInsertionMode *RHS /Out/) = 0;

        virtual HRESULT put_RefreshStyle(
            XlCellInsertionMode RHS) = 0;

        virtual HRESULT get_EnableRefresh(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnableRefresh(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_SavePassword(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_SavePassword(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Destination(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_Connection(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Connection(
            VARIANT RHS) = 0;

        virtual HRESULT get_Sql(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Sql(
            VARIANT RHS) = 0;

        virtual HRESULT get_PostText(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_PostText(
            BSTR RHS) = 0;

        virtual HRESULT get_ResultRange(
            Range **RHS /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Refresh(
            VARIANT BackgroundQuery,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_Parameters(
            Parameters **RHS /Out/) = 0;

        virtual HRESULT get_Recordset(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT putref_Recordset(
            IDispatch *RHS) = 0;

        virtual HRESULT get_SaveData(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_SaveData(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_TablesOnlyFromHTML(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_TablesOnlyFromHTML(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_EnableEditing(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnableEditing(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_TextFilePlatform(
            long *RHS /Out/) = 0;

        virtual HRESULT put_TextFilePlatform(
            long RHS) = 0;

        virtual HRESULT get_TextFileStartRow(
            long *RHS /Out/) = 0;

        virtual HRESULT put_TextFileStartRow(
            long RHS) = 0;

        virtual HRESULT get_TextFileParseType(
            XlTextParsingType *RHS /Out/) = 0;

        virtual HRESULT put_TextFileParseType(
            XlTextParsingType RHS) = 0;

        virtual HRESULT get_TextFileTextQualifier(
            XlTextQualifier *RHS /Out/) = 0;

        virtual HRESULT put_TextFileTextQualifier(
            XlTextQualifier RHS) = 0;

        virtual HRESULT get_TextFileConsecutiveDelimiter(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_TextFileConsecutiveDelimiter(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_TextFileTabDelimiter(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_TextFileTabDelimiter(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_TextFileSemicolonDelimiter(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_TextFileSemicolonDelimiter(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_TextFileCommaDelimiter(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_TextFileCommaDelimiter(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_TextFileSpaceDelimiter(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_TextFileSpaceDelimiter(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_TextFileOtherDelimiter(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_TextFileOtherDelimiter(
            BSTR RHS) = 0;

        virtual HRESULT get_TextFileColumnDataTypes(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_TextFileColumnDataTypes(
            VARIANT RHS) = 0;

        virtual HRESULT get_TextFileFixedColumnWidths(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_TextFileFixedColumnWidths(
            VARIANT RHS) = 0;

        virtual HRESULT get_PreserveColumnInfo(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_PreserveColumnInfo(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_PreserveFormatting(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_PreserveFormatting(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_AdjustColumnWidth(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AdjustColumnWidth(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_CommandText(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_CommandText(
            VARIANT RHS) = 0;

        virtual HRESULT get_CommandType(
            XlCmdType *RHS /Out/) = 0;

        virtual HRESULT put_CommandType(
            XlCmdType RHS) = 0;

        virtual HRESULT get_TextFilePromptOnRefresh(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_TextFilePromptOnRefresh(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_QueryType(
            XlQueryType *RHS /Out/) = 0;

        virtual HRESULT get_MaintainConnection(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_MaintainConnection(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_TextFileDecimalSeparator(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_TextFileDecimalSeparator(
            BSTR RHS) = 0;

        virtual HRESULT get_TextFileThousandsSeparator(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_TextFileThousandsSeparator(
            BSTR RHS) = 0;

        virtual HRESULT get_RefreshPeriod(
            long *RHS /Out/) = 0;

        virtual HRESULT put_RefreshPeriod(
            long RHS) = 0;

        virtual HRESULT ResetTimer() = 0;

        virtual HRESULT get_WebSelectionType(
            XlWebSelectionType *RHS /Out/) = 0;

        virtual HRESULT put_WebSelectionType(
            XlWebSelectionType RHS) = 0;

        virtual HRESULT get_WebFormatting(
            XlWebFormatting *RHS /Out/) = 0;

        virtual HRESULT put_WebFormatting(
            XlWebFormatting RHS) = 0;

        virtual HRESULT get_WebTables(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_WebTables(
            BSTR RHS) = 0;

        virtual HRESULT get_WebPreFormattedTextToColumns(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_WebPreFormattedTextToColumns(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_WebSingleBlockTextImport(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_WebSingleBlockTextImport(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_WebDisableDateRecognition(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_WebDisableDateRecognition(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_WebConsecutiveDelimitersAsOne(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_WebConsecutiveDelimitersAsOne(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_WebDisableRedirections(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_WebDisableRedirections(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_EditWebPage(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_EditWebPage(
            VARIANT RHS) = 0;

        virtual HRESULT get_SourceConnectionFile(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_SourceConnectionFile(
            BSTR RHS) = 0;

        virtual HRESULT get_SourceDataFile(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_SourceDataFile(
            BSTR RHS) = 0;

        virtual HRESULT get_RobustConnect(
            XlRobustConnect *RHS /Out/) = 0;

        virtual HRESULT put_RobustConnect(
            XlRobustConnect RHS) = 0;

        virtual HRESULT get_TextFileTrailingMinusNumbers(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_TextFileTrailingMinusNumbers(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT SaveAsODC(
            BSTR ODCFileName,
            VARIANT Description,
            VARIANT Keywords) = 0;

        virtual HRESULT get_ListObject(
            ListObject **RHS /Out/) = 0;

        virtual HRESULT get_TextFileVisualLayout(
            XlTextVisualLayoutType *RHS /Out/) = 0;

        virtual HRESULT put_TextFileVisualLayout(
            XlTextVisualLayoutType RHS) = 0;

        virtual HRESULT get_WorkbookConnection(
            WorkbookConnection **RHS /Out/) = 0;

        virtual HRESULT get_Sort(
            Sort **RHS /Out/) = 0;

    };
};
