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
    struct AnimationBehaviors : public wppapi::Collection /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT Item(
            int Index,
            AnimationBehavior **Item /Out/) = 0;

        AnimationBehavior* __getitem__(int index) const;
        %MethodCode
            wppapi::AnimationBehavior *prop = nullptr;
            if (sipCpp->Item(a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT Add(
            MsoAnimType Type,
            int Index = 0,
            AnimationBehavior **Add /Out/ = 0) = 0;

    };
};
