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
    struct Cells : public IDispatch /Abstract/
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

        virtual HRESULT get_Width(
            single *prop /Out/) = 0;

        virtual HRESULT put_Width(
            single prop) = 0;

        virtual HRESULT get_Height(
            single *prop /Out/) = 0;

        virtual HRESULT put_Height(
            single prop) = 0;

        virtual HRESULT get_HeightRule(
            WdRowHeightRule *prop /Out/) = 0;

        virtual HRESULT put_HeightRule(
            WdRowHeightRule prop) = 0;

        virtual HRESULT get_VerticalAlignment(
            WdCellVerticalAlignment *prop /Out/) = 0;

        virtual HRESULT put_VerticalAlignment(
            WdCellVerticalAlignment prop) = 0;

        virtual HRESULT get_Borders(
            Borders **prop /Out/) = 0;

        virtual HRESULT put_Borders(
            Borders *prop) = 0;

        virtual HRESULT get_Shading(
            Shading **prop /Out/) = 0;

        virtual HRESULT Item(
            long Index,
            Cell **prop /Out/) = 0;

        virtual HRESULT Add(
            VARIANT *BeforeCell = argMissing(),
            Cell **prop /Out/ = 0) = 0;

        virtual HRESULT Delete(
            VARIANT *ShiftCells = argMissing()) = 0;

        virtual HRESULT SetWidth(
            single ColumnWidth,
            WdRulerStyle RulerStyle) = 0;

        virtual HRESULT SetHeight(
            VARIANT *RowHeight,
            WdRowHeightRule HeightRule) = 0;

        virtual HRESULT Merge() = 0;

        virtual HRESULT Split(
            VARIANT *NumRows = argMissing(),
            VARIANT *NumColumns = argMissing(),
            VARIANT *MergeBeforeSplit = argMissing()) = 0;

        virtual HRESULT DistributeHeight() = 0;

        virtual HRESULT DistributeWidth() = 0;

        virtual HRESULT AutoFit() = 0;

        virtual HRESULT get_NestingLevel(
            long *prop /Out/) = 0;

        virtual HRESULT get_PreferredWidth(
            single *prop /Out/) = 0;

        virtual HRESULT put_PreferredWidth(
            single prop) = 0;

        virtual HRESULT get_PreferredWidthType(
            WdPreferredWidthType *prop /Out/) = 0;

        virtual HRESULT put_PreferredWidthType(
            WdPreferredWidthType prop) = 0;
    };

    struct Cell : public IDispatch /Abstract/
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

        virtual HRESULT get_RowIndex(
            long *prop /Out/) = 0;

        virtual HRESULT get_ColumnIndex(
            long *prop /Out/) = 0;

        virtual HRESULT get_Width(
            single *prop /Out/) = 0;

        virtual HRESULT put_Width(
            single prop) = 0;

        virtual HRESULT get_Height(
            single *prop /Out/) = 0;

        virtual HRESULT put_Height(
            single prop) = 0;

        virtual HRESULT get_HeightRule(
            WdRowHeightRule *prop /Out/) = 0;

        virtual HRESULT put_HeightRule(
            WdRowHeightRule prop) = 0;

        virtual HRESULT get_VerticalAlignment(
            WdCellVerticalAlignment *prop /Out/) = 0;

        virtual HRESULT put_VerticalAlignment(
            WdCellVerticalAlignment prop) = 0;

        virtual HRESULT get_Column(
            Column **prop /Out/) = 0;

        virtual HRESULT get_Row(
            Row **prop /Out/) = 0;

        virtual HRESULT get_Next(
            Cell **prop /Out/) = 0;

        virtual HRESULT get_Previous(
            Cell **prop /Out/) = 0;

        virtual HRESULT get_Shading(
            Shading **prop /Out/) = 0;

        virtual HRESULT get_Borders(
            Borders **prop /Out/) = 0;

        virtual HRESULT put_Borders(
            Borders *prop) = 0;

        virtual HRESULT Select() = 0;

        virtual HRESULT Delete(
            VARIANT *ShiftCells = argMissing()) = 0;

        virtual HRESULT Formula(
            VARIANT *Formula = argMissing(),
            VARIANT *NumFormat = argMissing()) = 0;

        virtual HRESULT SetWidth(
            single ColumnWidth,
            WdRulerStyle RulerStyle) = 0;

        virtual HRESULT SetHeight(
            VARIANT *RowHeight,
            WdRowHeightRule HeightRule) = 0;

        virtual HRESULT Merge(
            Cell *MergeTo) = 0;

        virtual HRESULT Split(
            VARIANT *NumRows = argMissing(),
            VARIANT *NumColumns = argMissing()) = 0;

        virtual HRESULT AutoSum() = 0;

        virtual HRESULT get_Tables(
            Tables **prop /Out/) = 0;

        virtual HRESULT get_NestingLevel(
            long *prop /Out/) = 0;

        virtual HRESULT get_WordWrap(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_WordWrap(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_PreferredWidth(
            single *prop /Out/) = 0;

        virtual HRESULT put_PreferredWidth(
            single prop) = 0;

        virtual HRESULT get_FitText(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_FitText(
            VARIANT_BOOL prop) = 0;

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

        virtual HRESULT get_ID(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_ID(
            BSTR prop) = 0;

        virtual HRESULT get_PreferredWidthType(
            WdPreferredWidthType *prop /Out/) = 0;

        virtual HRESULT put_PreferredWidthType(
            WdPreferredWidthType prop) = 0;
    };
};