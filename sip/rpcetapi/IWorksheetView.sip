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
    struct IWorksheetView : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Sheet(
            _Worksheet **RHS /Out/) = 0;
        %MethodCode
            etapi::_Worksheet *prop = nullptr;
            HRESULT hr = sipCpp->get_Sheet((IDispatch**)&prop);
            return sipBuildResult(0, "(iD)", hr, prop, sipType_etapi_Worksheet, SIP_NULLPTR);
        %End

        virtual HRESULT get_DisplayGridlines(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayGridlines(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DisplayFormulas(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayFormulas(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DisplayHeadings(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayHeadings(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DisplayOutline(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayOutline(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DisplayZeros(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayZeros(
            VARIANT_BOOL RHS) = 0;

    };
};
