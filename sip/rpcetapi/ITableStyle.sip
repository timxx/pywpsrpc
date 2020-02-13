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
    struct ITableStyle : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get__Default(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_NameLocal(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_BuiltIn(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_TableStyleElements(
            TableStyleElements **RHS /Out/) = 0;

        virtual HRESULT get_ShowAsAvailableTableStyle(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowAsAvailableTableStyle(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ShowAsAvailablePivotTableStyle(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowAsAvailablePivotTableStyle(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Duplicate(
            VARIANT NewTableStyleName,
            TableStyle **RHS /Out/) = 0;

        virtual HRESULT get_ShowAsAvailableSlicerStyle(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowAsAvailableSlicerStyle(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ShowAsAvailableTimelineStyle(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowAsAvailableTimelineStyle(
            VARIANT_BOOL RHS) = 0;

    };
};
