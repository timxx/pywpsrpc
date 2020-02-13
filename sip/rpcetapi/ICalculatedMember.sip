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
    struct ICalculatedMember : public IDispatch /Abstract/
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

        virtual HRESULT get_Formula(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_SourceName(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_SolveOrder(
            long *RHS /Out/) = 0;

        virtual HRESULT get_IsValid(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get__Default(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_Type(
            XlCalculatedMemberType *RHS /Out/) = 0;

        virtual HRESULT get_Dynamic(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_DisplayFolder(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_HierarchizeDistinct(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_HierarchizeDistinct(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_FlattenHierarchies(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_FlattenHierarchies(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_MeasureGroup(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_ParentHierarchy(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_ParentMember(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_NumberFormat(
            XlCalcMemNumberFormatType *RHS /Out/) = 0;

    };
};
