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
    struct ISortField : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_SortOn(
            XlSortOn *RHS /Out/) = 0;

        virtual HRESULT put_SortOn(
            XlSortOn RHS) = 0;

        virtual HRESULT get_SortOnValue(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Key(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_Order(
            XlSortOrder *RHS /Out/) = 0;

        virtual HRESULT put_Order(
            XlSortOrder RHS) = 0;

        virtual HRESULT get_CustomOrder(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_CustomOrder(
            VARIANT RHS) = 0;

        virtual HRESULT get_DataOption(
            XlSortDataOption *RHS /Out/) = 0;

        virtual HRESULT put_DataOption(
            XlSortDataOption RHS) = 0;

        virtual HRESULT get_Priority(
            long *RHS /Out/) = 0;

        virtual HRESULT put_Priority(
            long RHS) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT ModifyKey(
            Range *Key) = 0;

        virtual HRESULT SetIcon(
            Icon *Icon) = 0;

    };
};
