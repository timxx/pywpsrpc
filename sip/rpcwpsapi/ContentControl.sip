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
    struct ContentControl : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT get_LockContentControl(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_LockContentControl(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_LockContents(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_LockContents(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_XMLMapping(
            XMLMapping **prop /Out/) = 0;

        virtual HRESULT get_Type(
            WdContentControlType *prop /Out/) = 0;

        virtual HRESULT put_Type(
            WdContentControlType prop) = 0;

        virtual HRESULT Copy() = 0;

        virtual HRESULT Cut() = 0;

        virtual HRESULT Delete(
            VARIANT_BOOL DeleteContents = VARIANT_FALSE) = 0;

        virtual HRESULT get_DropdownListEntries(
            ContentControlListEntries **prop /Out/) = 0;

        virtual HRESULT get_PlaceholderText(
            BuildingBlock **prop /Out/) = 0;

        virtual HRESULT SetPlaceholderText(
            BuildingBlock *BuildingBlock = 0,
            Range *Range = 0,
            BSTR Text = 0) = 0;

        virtual HRESULT get_Title(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Title(
            BSTR prop) = 0;

        virtual HRESULT get_DateDisplayFormat(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_DateDisplayFormat(
            BSTR prop) = 0;

        virtual HRESULT get_MultiLine(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MultiLine(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ParentContentControl(
            ContentControl **prop /Out/) = 0;

        virtual HRESULT get_Temporary(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Temporary(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ID(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_ShowingPlaceholderText(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_DateStorageFormat(
            WdContentControlDateStorageFormat *prop /Out/) = 0;

        virtual HRESULT put_DateStorageFormat(
            WdContentControlDateStorageFormat prop) = 0;

        virtual HRESULT get_BuildingBlockType(
            WdBuildingBlockTypes *prop /Out/) = 0;

        virtual HRESULT put_BuildingBlockType(
            WdBuildingBlockTypes prop) = 0;

        virtual HRESULT get_BuildingBlockCategory(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_BuildingBlockCategory(
            BSTR prop) = 0;

        virtual HRESULT get_DateDisplayLocale(
            WdLanguageID *prop /Out/) = 0;

        virtual HRESULT put_DateDisplayLocale(
            WdLanguageID prop) = 0;

        virtual HRESULT Ungroup() = 0;

        virtual HRESULT get_DefaultTextStyle(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_DefaultTextStyle(
            VARIANT *prop) = 0;

        virtual HRESULT get_DateCalendarType(
            WdCalendarType *prop /Out/) = 0;

        virtual HRESULT put_DateCalendarType(
            WdCalendarType prop) = 0;

        virtual HRESULT get_Tag(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Tag(
            BSTR prop) = 0;

        virtual HRESULT get_Checked(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Checked(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT SetCheckedSymbol(
            long CharacterNumber,
            BSTR Font = 0) = 0;

        virtual HRESULT SetUncheckedSymbol(
            long CharacterNumber,
            BSTR Font = 0) = 0;

        virtual HRESULT get_Color(
            WdColor *prop /Out/) = 0;

        virtual HRESULT put_Color(
            WdColor prop) = 0;

        virtual HRESULT get_Appearance(
            WdContentControlAppearance *prop /Out/) = 0;

        virtual HRESULT put_Appearance(
            WdContentControlAppearance prop) = 0;

        virtual HRESULT get_Level(
            WdContentControlLevel *prop /Out/) = 0;

        virtual HRESULT get_RepeatingSectionItems(
            RepeatingSectionItemColl **prop /Out/) = 0;

        virtual HRESULT get_RepeatingSectionItemTitle(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_RepeatingSectionItemTitle(
            BSTR prop) = 0;

        virtual HRESULT get_AllowInsertDeleteSection(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AllowInsertDeleteSection(
            VARIANT_BOOL prop) = 0;

    };
};
