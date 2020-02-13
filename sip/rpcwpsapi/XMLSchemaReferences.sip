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
    struct XMLSchemaReferences : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_AutomaticValidation(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutomaticValidation(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AllowSaveAsXMLWithoutValidation(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AllowSaveAsXMLWithoutValidation(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HideValidationErrors(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HideValidationErrors(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_IgnoreMixedContent(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_IgnoreMixedContent(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowPlaceholderText(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowPlaceholderText(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT Item(
            VARIANT *Index,
            XMLSchemaReference **prop /Out/) = 0;

        virtual HRESULT Validate() = 0;

        virtual HRESULT Add(
            VARIANT *NamespaceURI = argMissing(),
            VARIANT *Alias = argMissing(),
            VARIANT *FileName = argMissing(),
            VARIANT_BOOL InstallForAllUsers = VARIANT_FALSE,
            XMLSchemaReference **prop /Out/ = 0) = 0;

    };
};
