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

        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

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
};
