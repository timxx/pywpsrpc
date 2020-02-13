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
    struct _OLEControl : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Left(
            single *prop /Out/) = 0;

        virtual HRESULT put_Left(
            single prop) = 0;

        virtual HRESULT get_Top(
            single *prop /Out/) = 0;

        virtual HRESULT put_Top(
            single prop) = 0;

        virtual HRESULT get_Height(
            single *prop /Out/) = 0;

        virtual HRESULT put_Height(
            single prop) = 0;

        virtual HRESULT get_Width(
            single *prop /Out/) = 0;

        virtual HRESULT put_Width(
            single prop) = 0;

        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR prop) = 0;

        virtual HRESULT get_Automation(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT Select() = 0;

        virtual HRESULT Copy() = 0;

        virtual HRESULT Cut() = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Activate() = 0;

        virtual HRESULT get_AltHTML(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_AltHTML(
            BSTR prop) = 0;

    };
};
