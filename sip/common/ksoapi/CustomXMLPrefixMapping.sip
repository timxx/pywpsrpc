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
    struct CustomXMLPrefixMapping : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **ppdispParent /Out/) = 0;

        virtual HRESULT get_Prefix(
            BSTR *pbstrPrefix /Out/) = 0;

        virtual HRESULT get_NamespaceURI(
            BSTR *pbstrNamespaceURI /Out/) = 0;

    };
};
