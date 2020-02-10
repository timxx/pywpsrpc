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
    struct SmartTags : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT Item(
            VARIANT *Index,
            SmartTag **prop /Out/) = 0;

        virtual HRESULT Add(
            BSTR Name,
            VARIANT *Range = argMissing(),
            VARIANT *Properties = argMissing(),
            SmartTag **prop /Out/ = 0) = 0;

        virtual HRESULT SmartTagsByType(
            BSTR Name,
            SmartTags **prop /Out/) = 0;
    };

    struct SmartTag : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_XML(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT get_DownloadURL(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Properties(
            CustomProperties **prop /Out/) = 0;

        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT Select() = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_SmartTagActions(
            SmartTagActions **prop /Out/) = 0;

        virtual HRESULT get_XMLNode(
            XMLNode **prop /Out/) = 0;
    };

    struct SmartTagActions : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT Item(
            VARIANT *Index,
            SmartTagAction **prop /Out/) = 0;

        virtual HRESULT ReloadActions() = 0;
    };

    struct SmartTagAction : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

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