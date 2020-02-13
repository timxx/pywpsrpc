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
    struct XMLChildNodeSuggestion : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_BaseName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_NamespaceURI(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_XMLSchemaReference(
            XMLSchemaReference **prop /Out/) = 0;

        virtual HRESULT Insert(
            VARIANT *Range = argMissing(),
            XMLNode **prop /Out/ = 0) = 0;

    };
};
