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
    struct _CustomXMLSchemaCollection : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **ppdispParent /Out/) = 0;

        virtual HRESULT get_Count(
            long *plCount /Out/) = 0;

        virtual HRESULT get_Item(
            VARIANT Index,
            CustomXMLSchema **ppSchema /Out/) = 0;

        virtual HRESULT get_NamespaceURI(
            long Index,
            BSTR *pbstrNamespaceURI /Out/) = 0;

        virtual HRESULT Add(
            BSTR NamespaceURI,
            BSTR Alias,
            BSTR FileName,
            VARIANT_BOOL InstallForAllUsers,
            CustomXMLSchema **ppSchema /Out/) = 0;

        virtual HRESULT AddCollection(
            CustomXMLSchemaCollection *SchemaCollection) = 0;

        virtual HRESULT Validate(
            VARIANT_BOOL *pfResult /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **ppunkEnum /Out/) = 0;

    };
};
