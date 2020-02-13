/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace etapi
{
    struct IControlFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT AddItem(
            BSTR Text,
            VARIANT Index) = 0;

        virtual HRESULT RemoveAllItems() = 0;

        virtual HRESULT RemoveItem(
            long Index,
            VARIANT Count) = 0;

        virtual HRESULT get_DropDownLines(
            long *RHS /Out/) = 0;

        virtual HRESULT put_DropDownLines(
            long RHS) = 0;

        virtual HRESULT get_Enabled(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Enabled(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_LargeChange(
            long *RHS /Out/) = 0;

        virtual HRESULT put_LargeChange(
            long RHS) = 0;

        virtual HRESULT get_LinkedCell(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_LinkedCell(
            BSTR RHS) = 0;

        virtual HRESULT List(
            VARIANT Index,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_ListCount(
            long *RHS /Out/) = 0;

        virtual HRESULT put_ListCount(
            long RHS) = 0;

        virtual HRESULT get_ListFillRange(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_ListFillRange(
            BSTR RHS) = 0;

        virtual HRESULT get_ListIndex(
            long *RHS /Out/) = 0;

        virtual HRESULT put_ListIndex(
            long RHS) = 0;

        virtual HRESULT get_LockedText(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_LockedText(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Max(
            long *RHS /Out/) = 0;

        virtual HRESULT put_Max(
            long RHS) = 0;

        virtual HRESULT get_Min(
            long *RHS /Out/) = 0;

        virtual HRESULT put_Min(
            long RHS) = 0;

        virtual HRESULT get_MultiSelect(
            long *RHS /Out/) = 0;

        virtual HRESULT put_MultiSelect(
            long RHS) = 0;

        virtual HRESULT get_PrintObject(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_PrintObject(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_SmallChange(
            long *RHS /Out/) = 0;

        virtual HRESULT put_SmallChange(
            long RHS) = 0;

        virtual HRESULT get__Default(
            long *RHS /Out/) = 0;

        virtual HRESULT put__Default(
            long RHS) = 0;

        virtual HRESULT get_Value(
            long *RHS /Out/) = 0;

        virtual HRESULT put_Value(
            long RHS) = 0;

    };
};
