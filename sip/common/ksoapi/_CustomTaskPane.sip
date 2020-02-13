/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace ksoapi
{
    struct _CustomTaskPane : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Title(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Window(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Visible(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Visible(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ContentControl(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Height(
            int *prop /Out/) = 0;

        virtual HRESULT put_Height(
            int prop) = 0;

        virtual HRESULT get_Width(
            int *prop /Out/) = 0;

        virtual HRESULT put_Width(
            int prop) = 0;

        virtual HRESULT get_DockPosition(
            MsoCTPDockPosition *prop /Out/) = 0;

        virtual HRESULT put_DockPosition(
            MsoCTPDockPosition prop) = 0;

        virtual HRESULT get_DockPositionRestrict(
            MsoCTPDockPositionRestrict *prop /Out/) = 0;

        virtual HRESULT put_DockPositionRestrict(
            MsoCTPDockPositionRestrict prop) = 0;

        virtual HRESULT Delete() = 0;

    };
};
