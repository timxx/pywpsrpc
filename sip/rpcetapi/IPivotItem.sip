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
    struct IPivotItem : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            PivotField **RHS /Out/) = 0;

        virtual HRESULT get_ChildItems(
            VARIANT Index,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_DataRange(
            Range **RHS /Out/) = 0;

        virtual HRESULT get__Default(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put__Default(
            BSTR RHS) = 0;

        virtual HRESULT get_LabelRange(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR RHS) = 0;

        virtual HRESULT get_ParentItem(
            PivotItem **RHS /Out/) = 0;

        virtual HRESULT get_ParentShowDetail(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_Position(
            long *RHS /Out/) = 0;

        virtual HRESULT put_Position(
            long RHS) = 0;

        virtual HRESULT get_ShowDetail(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowDetail(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_SourceName(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Value(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Value(
            BSTR RHS) = 0;

        virtual HRESULT get_Visible(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Visible(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_IsCalculated(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_RecordCount(
            long *RHS /Out/) = 0;

        virtual HRESULT get_Formula(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Formula(
            BSTR RHS) = 0;

        virtual HRESULT get_Caption(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Caption(
            BSTR RHS) = 0;

        virtual HRESULT get_DrilledDown(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DrilledDown(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_StandardFormula(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_StandardFormula(
            BSTR RHS) = 0;

        virtual HRESULT get_SourceNameStandard(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT DrillTo(
            BSTR Field) = 0;

    };
};
