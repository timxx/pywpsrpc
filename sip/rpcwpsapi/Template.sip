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
    struct Template : public IDispatch /Abstract/
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

        virtual HRESULT get_Path(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_AutoTextEntries(
            AutoTextEntries **prop /Out/) = 0;

        virtual HRESULT get_LanguageID(
            WdLanguageID *prop /Out/) = 0;

        virtual HRESULT put_LanguageID(
            WdLanguageID prop) = 0;

        virtual HRESULT get_Saved(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Saved(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Type(
            WdTemplateType *prop /Out/) = 0;

        virtual HRESULT get_FullName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_BuiltInDocumentProperties(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_CustomDocumentProperties(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_ListTemplates(
            ListTemplates **prop /Out/) = 0;

        virtual HRESULT get_LanguageIDFarEast(
            WdLanguageID *prop /Out/) = 0;

        virtual HRESULT put_LanguageIDFarEast(
            WdLanguageID prop) = 0;

        virtual HRESULT get_VBProject(
            VBProject **prop /Out/) = 0;

        virtual HRESULT get_KerningByAlgorithm(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_KerningByAlgorithm(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_JustificationMode(
            WdJustificationMode *prop /Out/) = 0;

        virtual HRESULT put_JustificationMode(
            WdJustificationMode prop) = 0;

        virtual HRESULT get_FarEastLineBreakLevel(
            WdFarEastLineBreakLevel *prop /Out/) = 0;

        virtual HRESULT put_FarEastLineBreakLevel(
            WdFarEastLineBreakLevel prop) = 0;

        virtual HRESULT get_NoLineBreakBefore(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_NoLineBreakBefore(
            BSTR prop) = 0;

        virtual HRESULT get_NoLineBreakAfter(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_NoLineBreakAfter(
            BSTR prop) = 0;

        virtual HRESULT OpenAsDocument(
            Document **prop /Out/) = 0;

        virtual HRESULT Save() = 0;

        virtual HRESULT get_NoProofing(
            long *prop /Out/) = 0;

        virtual HRESULT put_NoProofing(
            long prop) = 0;

        virtual HRESULT get_FarEastLineBreakLanguage(
            WdFarEastLineBreakLanguageID *prop /Out/) = 0;

        virtual HRESULT put_FarEastLineBreakLanguage(
            WdFarEastLineBreakLanguageID prop) = 0;

        virtual HRESULT get_BuildingBlockEntries(
            BuildingBlockEntries **prop /Out/) = 0;

        virtual HRESULT get_BuildingBlockTypes(
            BuildingBlockTypes **prop /Out/) = 0;

    };
};
