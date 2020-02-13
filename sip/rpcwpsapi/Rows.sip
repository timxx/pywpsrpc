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
    struct Rows : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT get_AllowBreakAcrossPages(
            long *prop /Out/) = 0;

        virtual HRESULT put_AllowBreakAcrossPages(
            long prop) = 0;

        virtual HRESULT get_Alignment(
            WdRowAlignment *prop /Out/) = 0;

        virtual HRESULT put_Alignment(
            WdRowAlignment prop) = 0;

        virtual HRESULT get_HeadingFormat(
            long *prop /Out/) = 0;

        virtual HRESULT put_HeadingFormat(
            long prop) = 0;

        virtual HRESULT get_SpaceBetweenColumns(
            single *prop /Out/) = 0;

        virtual HRESULT put_SpaceBetweenColumns(
            single prop) = 0;

        virtual HRESULT get_Height(
            single *prop /Out/) = 0;

        virtual HRESULT put_Height(
            single prop) = 0;

        virtual HRESULT get_HeightRule(
            WdRowHeightRule *prop /Out/) = 0;

        virtual HRESULT put_HeightRule(
            WdRowHeightRule prop) = 0;

        virtual HRESULT get_LeftIndent(
            single *prop /Out/) = 0;

        virtual HRESULT put_LeftIndent(
            single prop) = 0;

        virtual HRESULT get_First(
            Row **prop /Out/) = 0;

        virtual HRESULT get_Last(
            Row **prop /Out/) = 0;

        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Borders(
            Borders **prop /Out/) = 0;

        virtual HRESULT put_Borders(
            Borders *prop) = 0;

        virtual HRESULT get_Shading(
            Shading **prop /Out/) = 0;

        virtual HRESULT Item(
            long Index,
            Row **prop /Out/) = 0;

        virtual HRESULT Add(
            VARIANT *BeforeRow = argMissing(),
            Row **prop /Out/ = 0) = 0;

        virtual HRESULT Select() = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT SetLeftIndent(
            single LeftIndent,
            WdRulerStyle RulerStyle) = 0;

        virtual HRESULT SetHeight(
            single RowHeight,
            WdRowHeightRule HeightRule) = 0;

        virtual HRESULT ConvertToTextOld(
            VARIANT *Separator = argMissing(),
            Range **prop /Out/ = 0) = 0;

        virtual HRESULT DistributeHeight() = 0;

        virtual HRESULT ConvertToText(
            VARIANT *Separator = argMissing(),
            VARIANT *NestedTables = argMissing(),
            Range **prop /Out/ = 0) = 0;

        virtual HRESULT get_WrapAroundText(
            long *prop /Out/) = 0;

        virtual HRESULT put_WrapAroundText(
            long prop) = 0;

        virtual HRESULT get_DistanceTop(
            single *prop /Out/) = 0;

        virtual HRESULT put_DistanceTop(
            single prop) = 0;

        virtual HRESULT get_DistanceBottom(
            single *prop /Out/) = 0;

        virtual HRESULT put_DistanceBottom(
            single prop) = 0;

        virtual HRESULT get_DistanceLeft(
            single *prop /Out/) = 0;

        virtual HRESULT put_DistanceLeft(
            single prop) = 0;

        virtual HRESULT get_DistanceRight(
            single *prop /Out/) = 0;

        virtual HRESULT put_DistanceRight(
            single prop) = 0;

        virtual HRESULT get_HorizontalPosition(
            single *prop /Out/) = 0;

        virtual HRESULT put_HorizontalPosition(
            single prop) = 0;

        virtual HRESULT get_VerticalPosition(
            single *prop /Out/) = 0;

        virtual HRESULT put_VerticalPosition(
            single prop) = 0;

        virtual HRESULT get_RelativeHorizontalPosition(
            WdRelativeHorizontalPosition *prop /Out/) = 0;

        virtual HRESULT put_RelativeHorizontalPosition(
            WdRelativeHorizontalPosition prop) = 0;

        virtual HRESULT get_RelativeVerticalPosition(
            WdRelativeVerticalPosition *prop /Out/) = 0;

        virtual HRESULT put_RelativeVerticalPosition(
            WdRelativeVerticalPosition prop) = 0;

        virtual HRESULT get_AllowOverlap(
            long *prop /Out/) = 0;

        virtual HRESULT put_AllowOverlap(
            long prop) = 0;

        virtual HRESULT get_NestingLevel(
            long *prop /Out/) = 0;

        virtual HRESULT get_TableDirection(
            WdTableDirection *prop /Out/) = 0;

        virtual HRESULT put_TableDirection(
            WdTableDirection prop) = 0;

    };
};
