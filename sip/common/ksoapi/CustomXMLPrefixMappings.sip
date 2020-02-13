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
    struct CustomXMLPrefixMappings : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **ppdispParent /Out/) = 0;

        virtual HRESULT get_Count(
            long *plCount /Out/) = 0;

        virtual HRESULT get_Item(
            VARIANT Index,
            CustomXMLPrefixMapping **ppPrefixMapping /Out/) = 0;

        virtual HRESULT AddNamespace(
            BSTR Prefix,
            BSTR NamespaceURI) = 0;

        virtual HRESULT LookupNamespace(
            BSTR Prefix,
            BSTR *pbstrNamespaceURI /Out/) = 0;

        virtual HRESULT LookupPrefix(
            BSTR NamespaceURI,
            BSTR *pbstrPrefix /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **ppunkEnum /Out/) = 0;

    };
};
