/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace ksoapi
{
    struct _CommandBarComboBox : public ksoapi::CommandBarControl /Abstract/
    {
    public:
        virtual HRESULT AddItem(
            BSTR Text,
            VARIANT Index) = 0;

        virtual HRESULT Clear() = 0;

        virtual HRESULT get_DropDownLines(
            int *pcLines /Out/) = 0;

        virtual HRESULT put_DropDownLines(
            int pcLines) = 0;

        virtual HRESULT get_DropDownWidth(
            int *pdx /Out/) = 0;

        virtual HRESULT put_DropDownWidth(
            int pdx) = 0;

        virtual HRESULT get_List(
            int Index,
            BSTR *pbstrItem /Out/) = 0;

        virtual HRESULT put_List(
            int Index,
            BSTR pbstrItem) = 0;

        virtual HRESULT get_ListCount(
            int *pcItems /Out/) = 0;

        virtual HRESULT get_ListHeaderCount(
            int *pcItems /Out/) = 0;

        virtual HRESULT put_ListHeaderCount(
            int pcItems) = 0;

        virtual HRESULT get_ListIndex(
            int *pi /Out/) = 0;

        virtual HRESULT put_ListIndex(
            int pi) = 0;

        virtual HRESULT RemoveItem(
            int Index) = 0;

        virtual HRESULT get_Style(
            MsoComboStyle *pstyle /Out/) = 0;

        virtual HRESULT put_Style(
            MsoComboStyle pstyle) = 0;

        virtual HRESULT get_Text(
            BSTR *pbstrText /Out/) = 0;

        virtual HRESULT put_Text(
            BSTR pbstrText) = 0;

        virtual HRESULT get_InstanceIdPtr(
            VARIANT *pvarPic /Out/) = 0;

    };
};
