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
    struct Row : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

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

        virtual HRESULT get_IsLast(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_IsFirst(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_Index(
            long *prop /Out/) = 0;

        virtual HRESULT get_Cells(
            Cells **prop /Out/) = 0;

        virtual HRESULT get_Borders(
            Borders **prop /Out/) = 0;

        virtual HRESULT put_Borders(
            Borders *prop) = 0;

        virtual HRESULT get_Shading(
            Shading **prop /Out/) = 0;

        virtual HRESULT get_Next(
            Row **prop /Out/) = 0;

        virtual HRESULT get_Previous(
            Row **prop /Out/) = 0;

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

        virtual HRESULT ConvertToText(
            VARIANT *Separator = argMissing(),
            VARIANT *NestedTables = argMissing(),
            Range **prop /Out/ = 0) = 0;

        virtual HRESULT get_NestingLevel(
            long *prop /Out/) = 0;

        virtual HRESULT get_ID(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_ID(
            BSTR prop) = 0;

    };
};
