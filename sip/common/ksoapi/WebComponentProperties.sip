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
    struct WebComponentProperties : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Shape(
            IDispatch **RetValue /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *RetValue /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR RetValue) = 0;

        virtual HRESULT get_URL(
            BSTR *RetValue /Out/) = 0;

        virtual HRESULT put_URL(
            BSTR RetValue) = 0;

        virtual HRESULT get_HTML(
            BSTR *RetValue /Out/) = 0;

        virtual HRESULT put_HTML(
            BSTR RetValue) = 0;

        virtual HRESULT get_PreviewGraphic(
            BSTR *RetValue /Out/) = 0;

        virtual HRESULT put_PreviewGraphic(
            BSTR RetValue) = 0;

        virtual HRESULT get_PreviewHTML(
            BSTR *RetValue /Out/) = 0;

        virtual HRESULT put_PreviewHTML(
            BSTR RetValue) = 0;

        virtual HRESULT get_Width(
            long *RetValue /Out/) = 0;

        virtual HRESULT put_Width(
            long RetValue) = 0;

        virtual HRESULT get_Height(
            long *RetValue /Out/) = 0;

        virtual HRESULT put_Height(
            long RetValue) = 0;

        virtual HRESULT get_Tag(
            BSTR *RetValue /Out/) = 0;

        virtual HRESULT put_Tag(
            BSTR RetValue) = 0;

    };
};
