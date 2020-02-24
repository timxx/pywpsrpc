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
    struct ProtectedViewWindow : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Presentation(
            Presentation **Presentation /Out/) = 0;

        virtual HRESULT get_Active(
            MsoTriState *Active /Out/) = 0;

        virtual HRESULT get_WindowState(
            PpWindowState *WindowState /Out/) = 0;

        virtual HRESULT put_WindowState(
            PpWindowState WindowState) = 0;

        virtual HRESULT get_Caption(
            BSTR *Caption /Out/) = 0;

        virtual HRESULT get_SourcePath(
            BSTR *SourcePath /Out/) = 0;

        virtual HRESULT get_SourceName(
            BSTR *SourceName /Out/) = 0;

        virtual HRESULT get_Left(
            single *Left /Out/) = 0;

        virtual HRESULT put_Left(
            single Left) = 0;

        virtual HRESULT get_Top(
            single *Top /Out/) = 0;

        virtual HRESULT put_Top(
            single Top) = 0;

        virtual HRESULT get_Width(
            single *Width /Out/) = 0;

        virtual HRESULT put_Width(
            single Width) = 0;

        virtual HRESULT get_Height(
            single *Height /Out/) = 0;

        virtual HRESULT put_Height(
            single Height) = 0;

        virtual HRESULT Activate() = 0;

        virtual HRESULT Close() = 0;

        virtual HRESULT Edit(
            BSTR ModifyPassword = 0,
            Presentation **Edit /Out/ = 0) = 0;

        virtual HRESULT get_HWND(
            long *HWND /Out/) = 0;

    };
};
