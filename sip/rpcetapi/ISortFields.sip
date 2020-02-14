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
    struct ISortFields : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT Add(
            Range *Key,
            VARIANT SortOn = argMissing2(),
            VARIANT Order = argMissing2(),
            VARIANT CustomOrder = argMissing2(),
            VARIANT DataOption = argMissing2(),
            SortField **RHS /Out/ = 0) = 0;

        virtual HRESULT get_Item(
            VARIANT Index,
            SortField **RHS /Out/) = 0;

        virtual HRESULT get_Count(
            long *RHS /Out/) = 0;

        virtual HRESULT Clear() = 0;

        virtual HRESULT get__Default(
            VARIANT Index,
            SortField **RHS /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **RHS /Out/) = 0;

    };
};
