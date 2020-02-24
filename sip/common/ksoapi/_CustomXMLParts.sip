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
    struct _CustomXMLParts : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **ppdispParent /Out/) = 0;

        virtual HRESULT get_Count(
            long *plCount /Out/) = 0;

        virtual HRESULT get_Item(
            VARIANT Index,
            CustomXMLPart **ppPart /Out/) = 0;

        virtual HRESULT Add(
            BSTR XML = 0,
            VARIANT SchemaCollection = argMissing2(),
            CustomXMLPart **ppPart /Out/ = 0) = 0;

        virtual HRESULT SelectByID(
            BSTR Id,
            CustomXMLPart **ppPart /Out/) = 0;

        virtual HRESULT SelectByNamespace(
            BSTR NamespaceURI,
            CustomXMLParts **ppParts /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **ppunkEnum /Out/) = 0;

    };
};
