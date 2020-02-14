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
    struct IProtectedViewWindow : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get__Default(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Caption(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Caption(
            BSTR RHS) = 0;

        virtual HRESULT get_EnableResize(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnableResize(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Height(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Height(
            double RHS) = 0;

        virtual HRESULT get_Left(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Left(
            double RHS) = 0;

        virtual HRESULT get_Top(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Top(
            double RHS) = 0;

        virtual HRESULT get_Width(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Width(
            double RHS) = 0;

        virtual HRESULT get_Visible(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Visible(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_SourceName(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_SourcePath(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_WindowState(
            XlProtectedViewWindowState *RHS /Out/) = 0;

        virtual HRESULT put_WindowState(
            XlProtectedViewWindowState RHS) = 0;

        virtual HRESULT get_Workbook(
            Workbook **RHS /Out/) = 0;

        virtual HRESULT Activate() = 0;

        virtual HRESULT Close(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT Edit(
            VARIANT WriteResPassword = argMissing2(),
            VARIANT UpdateLinks = argMissing2(),
            Workbook **RHS /Out/ = 0) = 0;

    };
};
