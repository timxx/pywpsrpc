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
    struct XMLMapping : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_IsMapped(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_CustomXMLPart(
            ksoapi::CustomXMLPart **prop /Out/) = 0;

        virtual HRESULT get_CustomXMLNode(
            ksoapi::CustomXMLNode **prop /Out/) = 0;

        virtual HRESULT SetMapping(
            BSTR XPath,
            BSTR PrefixMapping,
            ksoapi::CustomXMLPart *Source,
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT SetMappingByNode(
            ksoapi::CustomXMLNode *Node,
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_XPath(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_PrefixMappings(
            BSTR *prop /Out/) = 0;

    };
};
