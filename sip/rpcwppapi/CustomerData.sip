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
    struct CustomerData : public wppapi::Collection /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT Item(
            BSTR Id,
            ksoapi::CustomXMLPart **Item /Out/) = 0;

        virtual HRESULT Add(
            ksoapi::CustomXMLPart **Add /Out/) = 0;

        virtual HRESULT Delete(
            BSTR Id) = 0;

    };
};
