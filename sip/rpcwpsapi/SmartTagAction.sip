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
    struct SmartTagAction : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT Execute() = 0;

        virtual HRESULT get_Type(
            WdSmartTagControlType *prop /Out/) = 0;

        virtual HRESULT get_PresentInPane(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_ExpandHelp(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ExpandHelp(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_CheckboxState(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_CheckboxState(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_TextboxText(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_TextboxText(
            BSTR prop) = 0;

        virtual HRESULT get_ListSelection(
            long *prop /Out/) = 0;

        virtual HRESULT put_ListSelection(
            long prop) = 0;

        virtual HRESULT get_RadioGroupSelection(
            long *prop /Out/) = 0;

        virtual HRESULT put_RadioGroupSelection(
            long prop) = 0;

        virtual HRESULT get_ExpandDocumentFragment(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ExpandDocumentFragment(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ActiveXControl(
            IDispatch **prop /Out/) = 0;

    };
};
