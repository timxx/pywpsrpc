/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wpsapi
{
    struct Hyperlinks : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT Item(
            VARIANT *Index,
            Hyperlink **prop /Out/) = 0;

        virtual HRESULT _Add(
            IDispatch *Anchor,
            VARIANT *Address = argMissing(),
            VARIANT *SubAddress = argMissing(),
            Hyperlink **prop /Out/ = 0) = 0;

        virtual HRESULT Add(
            IDispatch *Anchor,
            VARIANT *Address = argMissing(),
            VARIANT *SubAddress = argMissing(),
            VARIANT *ScreenTip = argMissing(),
            VARIANT *TextToDisplay = argMissing(),
            VARIANT *Target = argMissing(),
            Hyperlink **prop /Out/ = 0) = 0;

    };
};