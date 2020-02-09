/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wpsapi
{
    struct Tables : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT Item(
            long Index,
            Table **prop /Out/) = 0;

        virtual HRESULT AddOld(
            Range *Range,
            long NumRows,
            long NumColumns,
            Table **prop /Out/) = 0;

        virtual HRESULT Add(
            Range *Range,
            long NumRows,
            long NumColumns,
            VARIANT *DefaultTableBehavior = argMissing(),
            VARIANT *AutoFitBehavior = argMissing(),
            Table **prop /Out/ = 0) = 0;

        virtual HRESULT get_NestingLevel(
            long *prop /Out/) = 0;
    };

    struct Table : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Columns(
            Columns **prop /Out/) = 0;

        virtual HRESULT get_Rows(
            Rows **prop /Out/) = 0;

        virtual HRESULT get_Borders(
            Borders **prop /Out/) = 0;

        virtual HRESULT put_Borders(
            Borders *prop) = 0;

        virtual HRESULT get_Shading(
            Shading **prop /Out/) = 0;

        virtual HRESULT get_Uniform(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_AutoFormatType(
            long *prop /Out/) = 0;

        virtual HRESULT Select() = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT SortOld(
            VARIANT *ExcludeHeader = argMissing(),
            VARIANT *FieldNumber = argMissing(),
            VARIANT *SortFieldType = argMissing(),
            VARIANT *SortOrder = argMissing(),
            VARIANT *FieldNumber2 = argMissing(),
            VARIANT *SortFieldType2 = argMissing(),
            VARIANT *SortOrder2 = argMissing(),
            VARIANT *FieldNumber3 = argMissing(),
            VARIANT *SortFieldType3 = argMissing(),
            VARIANT *SortOrder3 = argMissing(),
            VARIANT *CaseSensitive = argMissing(),
            VARIANT *LanguageID = argMissing()) = 0;

        virtual HRESULT SortAscending() = 0;

        virtual HRESULT SortDescending() = 0;

        virtual HRESULT AutoFormat(
            VARIANT *Format = argMissing(),
            VARIANT *ApplyBorders = argMissing(),
            VARIANT *ApplyShading = argMissing(),
            VARIANT *ApplyFont = argMissing(),
            VARIANT *ApplyColor = argMissing(),
            VARIANT *ApplyHeadingRows = argMissing(),
            VARIANT *ApplyLastRow = argMissing(),
            VARIANT *ApplyFirstColumn = argMissing(),
            VARIANT *ApplyLastColumn = argMissing(),
            VARIANT *AutoFit = argMissing()) = 0;

        virtual HRESULT UpdateAutoFormat() = 0;

        virtual HRESULT ConvertToTextOld(
            VARIANT *Separator = argMissing(),
            Range **prop /Out/ = 0) = 0;

        virtual HRESULT Cell(
            long Row,
            long Column,
            Cell **prop /Out/) = 0;

        virtual HRESULT Split(
            VARIANT *BeforeRow,
            Table **prop /Out/) = 0;

        virtual HRESULT ConvertToText(
            VARIANT *Separator = argMissing(),
            VARIANT *NestedTables = argMissing(),
            Range **prop /Out/ = 0) = 0;

        virtual HRESULT AutoFitBehavior(
            WdAutoFitBehavior Behavior) = 0;

        virtual HRESULT Sort(
            VARIANT *ExcludeHeader = argMissing(),
            VARIANT *FieldNumber = argMissing(),
            VARIANT *SortFieldType = argMissing(),
            VARIANT *SortOrder = argMissing(),
            VARIANT *FieldNumber2 = argMissing(),
            VARIANT *SortFieldType2 = argMissing(),
            VARIANT *SortOrder2 = argMissing(),
            VARIANT *FieldNumber3 = argMissing(),
            VARIANT *SortFieldType3 = argMissing(),
            VARIANT *SortOrder3 = argMissing(),
            VARIANT *CaseSensitive = argMissing(),
            VARIANT *BidiSort = argMissing(),
            VARIANT *IgnoreThe = argMissing(),
            VARIANT *IgnoreKashida = argMissing(),
            VARIANT *IgnoreDiacritics = argMissing(),
            VARIANT *IgnoreHe = argMissing(),
            VARIANT *LanguageID = argMissing()) = 0;

        virtual HRESULT get_Tables(
            Tables **prop /Out/) = 0;

        virtual HRESULT get_NestingLevel(
            long *prop /Out/) = 0;

        virtual HRESULT get_AllowPageBreaks(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AllowPageBreaks(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AllowAutoFit(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AllowAutoFit(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_PreferredWidth(
            single *prop /Out/) = 0;

        virtual HRESULT put_PreferredWidth(
            single prop) = 0;

        virtual HRESULT get_PreferredWidthType(
            WdPreferredWidthType *prop /Out/) = 0;

        virtual HRESULT put_PreferredWidthType(
            WdPreferredWidthType prop) = 0;

        virtual HRESULT get_TopPadding(
            single *prop /Out/) = 0;

        virtual HRESULT put_TopPadding(
            single prop) = 0;

        virtual HRESULT get_BottomPadding(
            single *prop /Out/) = 0;

        virtual HRESULT put_BottomPadding(
            single prop) = 0;

        virtual HRESULT get_LeftPadding(
            single *prop /Out/) = 0;

        virtual HRESULT put_LeftPadding(
            single prop) = 0;

        virtual HRESULT get_RightPadding(
            single *prop /Out/) = 0;

        virtual HRESULT put_RightPadding(
            single prop) = 0;

        virtual HRESULT get_Spacing(
            single *prop /Out/) = 0;

        virtual HRESULT put_Spacing(
            single prop) = 0;

        virtual HRESULT get_TableDirection(
            WdTableDirection *prop /Out/) = 0;

        virtual HRESULT put_TableDirection(
            WdTableDirection prop) = 0;

        virtual HRESULT get_ID(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_ID(
            BSTR prop) = 0;

        virtual HRESULT get_Style(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Style(
            VARIANT *prop) = 0;

        virtual HRESULT get_ApplyStyleHeadingRows(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ApplyStyleHeadingRows(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ApplyStyleLastRow(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ApplyStyleLastRow(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ApplyStyleFirstColumn(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ApplyStyleFirstColumn(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ApplyStyleLastColumn(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ApplyStyleLastColumn(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ApplyStyleRowBands(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ApplyStyleRowBands(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ApplyStyleColumnBands(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ApplyStyleColumnBands(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT ApplyStyleDirectFormatting(
            BSTR StyleName) = 0;

        virtual HRESULT get_Title(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Title(
            BSTR prop) = 0;

        virtual HRESULT get_Descr(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Descr(
            BSTR prop) = 0;
    };
};