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
    struct View : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Type(
            PpViewType *Type /Out/) = 0;

        virtual HRESULT get_Zoom(
            int *Zoom /Out/) = 0;

        virtual HRESULT put_Zoom(
            int Zoom) = 0;

        virtual HRESULT Paste() = 0;

        virtual HRESULT get_Slide(
            IDispatch **Slide /Out/) = 0;

        virtual HRESULT put_Slide(
            IDispatch *Slide) = 0;

        virtual HRESULT GotoSlide(
            int Index) = 0;

        virtual HRESULT get_DisplaySlideMiniature(
            MsoTriState *DisplaySlideMiniature /Out/) = 0;

        virtual HRESULT put_DisplaySlideMiniature(
            MsoTriState DisplaySlideMiniature) = 0;

        virtual HRESULT get_ZoomToFit(
            MsoTriState *ZoomToFit /Out/) = 0;

        virtual HRESULT put_ZoomToFit(
            MsoTriState ZoomToFit) = 0;

        virtual HRESULT PasteSpecial(
            PpPasteDataType DataType = wppapi::ppPasteDefault,
            MsoTriState DisplayAsIcon = wppapi::msoFalse,
            BSTR IconFileName = 0,
            int IconIndex = 0,
            BSTR IconLabel = 0,
            MsoTriState Link = wppapi::msoFalse) = 0;

        virtual HRESULT get_PrintOptions(
            PrintOptions **PrintOptions /Out/) = 0;

        virtual HRESULT PrintOut(
            int From = -1,
            int To = -1,
            BSTR PrintToFile = 0,
            int Copies = 0,
            MsoTriState Collate = (wppapi::MsoTriState)-99) = 0;

        virtual HRESULT Player(
            VARIANT ShapeId,
            Player **Player /Out/) = 0;

        virtual HRESULT get_MediaControlsVisible(
            MsoTriState *MediaControlsVisible /Out/) = 0;

        virtual HRESULT get_MediaControlsLeft(
            single *MediaControlsLeft /Out/) = 0;

        virtual HRESULT get_MediaControlsTop(
            single *MediaControlsTop /Out/) = 0;

        virtual HRESULT get_MediaControlsWidth(
            single *MediaControlsWidth /Out/) = 0;

        virtual HRESULT get_MediaControlsHeight(
            single *MediaControlsHeight /Out/) = 0;

    };
};
