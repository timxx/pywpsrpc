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
    struct TabStop2 : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT Clear() = 0;

        virtual HRESULT get_Position(
            single *Position /Out/) = 0;

        virtual HRESULT put_Position(
            single Position) = 0;

        virtual HRESULT get_Type(
            MsoTabStopType *Type /Out/) = 0;

        virtual HRESULT put_Type(
            MsoTabStopType Type) = 0;

    };
};
