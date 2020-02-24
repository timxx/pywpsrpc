/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wppapi
{
    struct Table : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Columns(
            Columns **Columns /Out/) = 0;

        virtual HRESULT get_Rows(
            Rows **Rows /Out/) = 0;

        virtual HRESULT Cell(
            int Row,
            int Column,
            Cell **Cell /Out/) = 0;

        virtual HRESULT get_TableDirection(
            PpDirection *TableDirection /Out/) = 0;

        virtual HRESULT put_TableDirection(
            PpDirection TableDirection) = 0;

        virtual HRESULT MergeBorders() = 0;

        virtual HRESULT get_FirstRow(
            VARIANT_BOOL *FirstRow /Out/) = 0;

        virtual HRESULT put_FirstRow(
            VARIANT_BOOL FirstRow) = 0;

        virtual HRESULT get_LastRow(
            VARIANT_BOOL *LastRow /Out/) = 0;

        virtual HRESULT put_LastRow(
            VARIANT_BOOL LastRow) = 0;

        virtual HRESULT get_FirstCol(
            VARIANT_BOOL *FirstCol /Out/) = 0;

        virtual HRESULT put_FirstCol(
            VARIANT_BOOL FirstCol) = 0;

        virtual HRESULT get_LastCol(
            VARIANT_BOOL *LastCol /Out/) = 0;

        virtual HRESULT put_LastCol(
            VARIANT_BOOL LastCol) = 0;

        virtual HRESULT get_HorizBanding(
            VARIANT_BOOL *HorizBanding /Out/) = 0;

        virtual HRESULT put_HorizBanding(
            VARIANT_BOOL HorizBanding) = 0;

        virtual HRESULT get_VertBanding(
            VARIANT_BOOL *VertBanding /Out/) = 0;

        virtual HRESULT put_VertBanding(
            VARIANT_BOOL VertBanding) = 0;

        virtual HRESULT get_Style(
            TableStyle **Style /Out/) = 0;

        virtual HRESULT get_Background(
            TableBackground **Background /Out/) = 0;

        virtual HRESULT ScaleProportionally(
            single scale) = 0;

        virtual HRESULT ApplyStyle(
            BSTR StyleID = 0,
            VARIANT_BOOL SaveFormatting = VARIANT_FALSE) = 0;

        virtual HRESULT get_AlternativeText(
            BSTR *AlternativeText /Out/) = 0;

        virtual HRESULT put_AlternativeText(
            BSTR AlternativeText) = 0;

        virtual HRESULT get_Title(
            BSTR *Title /Out/) = 0;

        virtual HRESULT put_Title(
            BSTR Title) = 0;

    };
};
