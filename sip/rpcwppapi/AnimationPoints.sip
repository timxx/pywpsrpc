/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wppapi
{
    struct AnimationPoints : public wppapi::Collection /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT Item(
            int Index,
            AnimationPoint **Item /Out/) = 0;

        virtual HRESULT Add(
            int Index = 0,
            AnimationPoint **Add /Out/ = 0) = 0;

        virtual HRESULT get_Smooth(
            MsoTriState *Smooth /Out/) = 0;

        virtual HRESULT put_Smooth(
            MsoTriState Smooth) = 0;

    };
};
