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
    struct SmartArtNodes : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get__NewEnum(
            IUnknown **_NewEnum /Out/) = 0;

        virtual HRESULT get_Item(
            VARIANT Index,
            SmartArtNode **SmartArtNode /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Count(
            int *Count /Out/) = 0;

        virtual HRESULT Add(
            SmartArtNode **NewNode /Out/) = 0;

    };
};