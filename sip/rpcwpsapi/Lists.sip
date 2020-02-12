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
    struct ListFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_ListLevelNumber(
            long *prop /Out/) = 0;

        virtual HRESULT put_ListLevelNumber(
            long prop) = 0;

        virtual HRESULT get_List(
            List **prop /Out/) = 0;

        virtual HRESULT get_ListTemplate(
            ListTemplate **prop /Out/) = 0;

        virtual HRESULT get_ListValue(
            long *prop /Out/) = 0;

        virtual HRESULT get_SingleList(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_SingleListTemplate(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_ListType(
            WdListType *prop /Out/) = 0;

        virtual HRESULT get_ListString(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT CanContinuePreviousList(
            ListTemplate *ListTemplate,
            WdContinue *prop /Out/) = 0;

        virtual HRESULT RemoveNumbers(
            VARIANT *NumberType = argMissing()) = 0;

        virtual HRESULT ConvertNumbersToText(
            VARIANT *NumberType = argMissing()) = 0;

        virtual HRESULT CountNumberedItems(
            VARIANT *NumberType = argMissing(),
            VARIANT *Level = argMissing(),
            long *prop /Out/ = 0) = 0;

        virtual HRESULT ApplyBulletDefaultOld() = 0;
        virtual HRESULT ApplyNumberDefaultOld() = 0;
        virtual HRESULT ApplyOutlineNumberDefaultOld() = 0;

        virtual HRESULT ApplyListTemplateOld(
            ListTemplate *ListTemplate,
            VARIANT *ContinuePreviousList = argMissing(),
            VARIANT *ApplyTo = argMissing()) = 0;

        virtual HRESULT ListOutdent() = 0;
        virtual HRESULT ListIndent() = 0;

        virtual HRESULT ApplyBulletDefault(
            VARIANT *DefaultListBehavior = argMissing()) = 0;

        virtual HRESULT ApplyNumberDefault(
            VARIANT *DefaultListBehavior = argMissing()) = 0;

        virtual HRESULT ApplyOutlineNumberDefault(
            VARIANT *DefaultListBehavior = argMissing()) = 0;

        virtual HRESULT ApplyListTemplate(
            ListTemplate *ListTemplate,
            VARIANT *ContinuePreviousList = argMissing(),
            VARIANT *ApplyTo = argMissing(),
            VARIANT *DefaultListBehavior = argMissing()) = 0;

        virtual HRESULT get_ListPictureBullet(
            InlineShape **prop /Out/) = 0;

        virtual HRESULT ApplyListTemplateWithLevel(
            ListTemplate *ListTemplate,
            VARIANT *ContinuePreviousList = argMissing(),
            VARIANT *ApplyTo = argMissing(),
            VARIANT *DefaultListBehavior = argMissing(),
            VARIANT *ApplyLevel = argMissing()) = 0;
    };

    struct Lists : public IDispatch /Abstract/
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
            long Index,
            List **prop /Out/) = 0;
    };

    struct List : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT get_ListParagraphs(
            ListParagraphs **prop /Out/) = 0;

        virtual HRESULT get_SingleListTemplate(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT ConvertNumbersToText(
            VARIANT *NumberType = argMissing()) = 0;

        virtual HRESULT RemoveNumbers(
            VARIANT *NumberType = argMissing()) = 0;

        virtual HRESULT CountNumberedItems(
            VARIANT *NumberType = argMissing(),
            VARIANT *Level = argMissing(),
            long *prop /Out/ = 0) = 0;

        virtual HRESULT ApplyListTemplateOld(
            ListTemplate *ListTemplate,
            VARIANT *ContinuePreviousList = argMissing()) = 0;

        virtual HRESULT CanContinuePreviousList(
            ListTemplate *ListTemplate,
            WdContinue *prop /Out/) = 0;

        virtual HRESULT ApplyListTemplate(
            ListTemplate *ListTemplate,
            VARIANT *ContinuePreviousList = argMissing(),
            VARIANT *DefaultListBehavior = argMissing()) = 0;

        virtual HRESULT get_StyleName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT ApplyListTemplateWithLevel(
            ListTemplate *ListTemplate,
            VARIANT *ContinuePreviousList = argMissing(),
            VARIANT *DefaultListBehavior = argMissing(),
            VARIANT *ApplyLevel = argMissing()) = 0;
    };

    struct ListTemplates : public IDispatch /Abstract/
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
            ListTemplate **prop /Out/) = 0;

        virtual HRESULT Add(
            VARIANT *OutlineNumbered = argMissing(),
            VARIANT *Name = argMissing(),
            ListTemplate **prop /Out/ = 0) = 0;
    };

    struct ListTemplate : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_OutlineNumbered(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_OutlineNumbered(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR prop) = 0;

        virtual HRESULT get_ListLevels(
            ListLevels **prop /Out/) = 0;

        virtual HRESULT Convert(
            VARIANT *Level = argMissing(),
            ListTemplate **prop /Out/ = 0) = 0;
    };

    struct ListLevels : public IDispatch /Abstract/
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
            long Index,
            ListLevel **prop /Out/) = 0;
    };

    struct ListLevel : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Index(
            long *prop /Out/) = 0;

        virtual HRESULT get_NumberFormat(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_NumberFormat(
            BSTR prop) = 0;

        virtual HRESULT get_TrailingCharacter(
            WdTrailingCharacter *prop /Out/) = 0;

        virtual HRESULT put_TrailingCharacter(
            WdTrailingCharacter prop) = 0;

        virtual HRESULT get_NumberStyle(
            WdListNumberStyle *prop /Out/) = 0;

        virtual HRESULT put_NumberStyle(
            WdListNumberStyle prop) = 0;

        virtual HRESULT get_NumberPosition(
            single *prop /Out/) = 0;

        virtual HRESULT put_NumberPosition(
            single prop) = 0;

        virtual HRESULT get_Alignment(
            WdListLevelAlignment *prop /Out/) = 0;

        virtual HRESULT put_Alignment(
            WdListLevelAlignment prop) = 0;

        virtual HRESULT get_TextPosition(
            single *prop /Out/) = 0;

        virtual HRESULT put_TextPosition(
            single prop) = 0;

        virtual HRESULT get_TabPosition(
            single *prop /Out/) = 0;

        virtual HRESULT put_TabPosition(
            single prop) = 0;

        virtual HRESULT get_ResetOnHigherOld(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ResetOnHigherOld(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_StartAt(
            long *prop /Out/) = 0;

        virtual HRESULT put_StartAt(
            long prop) = 0;

        virtual HRESULT get_LinkedStyle(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_LinkedStyle(
            BSTR prop) = 0;

        virtual HRESULT get_Font(_Font **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Font((wpsapi::Font**)&a0);
        %End

        virtual HRESULT put_Font(_Font *prop) = 0;
        %MethodCode
            sipRes = sipCpp->put_Font((wpsapi::Font*)a0);
        %End

        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_ResetOnHigher(
            long *prop /Out/) = 0;

        virtual HRESULT put_ResetOnHigher(
            long prop) = 0;

        virtual HRESULT get_PictureBullet(
            InlineShape **prop /Out/) = 0;

        virtual HRESULT ApplyPictureBullet(
            BSTR FileName,
            InlineShape **prop /Out/) = 0;
    };
};