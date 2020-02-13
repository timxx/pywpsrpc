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
    struct XMLNamespace : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_URI(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Location(
            VARIANT_BOOL AllUsers,
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Location(
            VARIANT_BOOL AllUsers,
            BSTR prop) = 0;

        virtual HRESULT get_Alias(
            VARIANT_BOOL AllUsers,
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Alias(
            VARIANT_BOOL AllUsers,
            BSTR prop) = 0;

        virtual HRESULT get_XSLTransforms(
            XSLTransforms **prop /Out/) = 0;

        virtual HRESULT get_DefaultTransform(
            VARIANT_BOOL AllUsers,
            XSLTransform **prop /Out/) = 0;

        virtual HRESULT put_DefaultTransform(
            VARIANT_BOOL AllUsers,
            XSLTransform *prop) = 0;

        virtual HRESULT AttachToDocument(
            VARIANT *Document) = 0;

        virtual HRESULT Delete() = 0;

    };
};
