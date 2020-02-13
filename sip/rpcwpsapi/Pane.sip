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
    struct Pane : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Document(
            Document **prop /Out/) = 0;

        virtual HRESULT get_Selection(
            Selection **prop /Out/) = 0;

        virtual HRESULT get_DisplayRulers(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DisplayRulers(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_DisplayVerticalRuler(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DisplayVerticalRuler(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Zooms(
            Zooms **prop /Out/) = 0;

        virtual HRESULT get_Index(
            long *prop /Out/) = 0;

        virtual HRESULT get_View(
            View **prop /Out/) = 0;

        virtual HRESULT get_Next(
            Pane **prop /Out/) = 0;

        virtual HRESULT get_Previous(
            Pane **prop /Out/) = 0;

        virtual HRESULT get_HorizontalPercentScrolled(
            long *prop /Out/) = 0;

        virtual HRESULT put_HorizontalPercentScrolled(
            long prop) = 0;

        virtual HRESULT get_VerticalPercentScrolled(
            long *prop /Out/) = 0;

        virtual HRESULT put_VerticalPercentScrolled(
            long prop) = 0;

        virtual HRESULT get_MinimumFontSize(
            long *prop /Out/) = 0;

        virtual HRESULT put_MinimumFontSize(
            long prop) = 0;

        virtual HRESULT get_BrowseToWindow(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_BrowseToWindow(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_BrowseWidth(
            long *prop /Out/) = 0;

        virtual HRESULT Activate() = 0;

        virtual HRESULT Close() = 0;

        virtual HRESULT LargeScroll(
            VARIANT *Down = argMissing(),
            VARIANT *Up = argMissing(),
            VARIANT *ToRight = argMissing(),
            VARIANT *ToLeft = argMissing()) = 0;

        virtual HRESULT SmallScroll(
            VARIANT *Down = argMissing(),
            VARIANT *Up = argMissing(),
            VARIANT *ToRight = argMissing(),
            VARIANT *ToLeft = argMissing()) = 0;

        virtual HRESULT AutoScroll(
            long Velocity) = 0;

        virtual HRESULT PageScroll(
            VARIANT *Down = argMissing(),
            VARIANT *Up = argMissing()) = 0;

        virtual HRESULT NewFrameset() = 0;

        virtual HRESULT TOCInFrameset() = 0;

        virtual HRESULT get_Frameset(
            Frameset **prop /Out/) = 0;

        virtual HRESULT get_Pages(
            Pages **prop /Out/) = 0;

    };
};
