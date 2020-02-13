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
    struct TabStops2 : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT Item(
            VARIANT Index,
            TabStop2 **TabStop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT Add(
            MsoTabStopType Type,
            single Position,
            TabStop2 **TabStop /Out/) = 0;

        virtual HRESULT get_Count(
            int *Count /Out/) = 0;

        virtual HRESULT get_DefaultSpacing(
            single *Spacing /Out/) = 0;

        virtual HRESULT put_DefaultSpacing(
            single Spacing) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **_NewEnum /Out/) = 0;

    };
};
