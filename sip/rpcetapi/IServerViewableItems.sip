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
    struct IServerViewableItems : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Count(
            long *RHS /Out/) = 0;

        virtual HRESULT Add(
            VARIANT Obj,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT Delete(
            VARIANT Index) = 0;

        virtual HRESULT DeleteAll() = 0;

        virtual HRESULT Item(
            VARIANT Index,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get__Default(
            VARIANT Index,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **RHS /Out/) = 0;

    };
};
