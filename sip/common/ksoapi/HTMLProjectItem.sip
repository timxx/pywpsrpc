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
    struct HTMLProjectItem : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Name(
            BSTR *RetValue /Out/) = 0;

        virtual HRESULT get_IsOpen(
            VARIANT_BOOL *RetValue /Out/) = 0;

        virtual HRESULT LoadFromFile(
            BSTR FileName) = 0;

        virtual HRESULT Open(
            MsoHTMLProjectOpen OpenKind = (ksoapi::MsoHTMLProjectOpen)0) = 0;

        virtual HRESULT SaveCopyAs(
            BSTR FileName) = 0;

        virtual HRESULT get_Text(
            BSTR *Text /Out/) = 0;

        virtual HRESULT put_Text(
            BSTR Text) = 0;

        virtual HRESULT get_Parent(
            IDispatch **ppidisp /Out/) = 0;

    };
};
