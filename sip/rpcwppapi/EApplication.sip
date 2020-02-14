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
    struct EApplication : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT WindowSelectionChange(
            Selection *Sel) = 0;

        virtual HRESULT WindowBeforeRightClick(
            Selection *Sel,
            VARIANT_BOOL *Cancel /In,Out/) = 0;

        virtual HRESULT WindowBeforeDoubleClick(
            Selection *Sel,
            VARIANT_BOOL *Cancel /In,Out/) = 0;

        virtual HRESULT PresentationClose(
            Presentation *Pres) = 0;

        virtual HRESULT PresentationSave(
            Presentation *Pres) = 0;

        virtual HRESULT PresentationOpen(
            Presentation *Pres) = 0;

        virtual HRESULT NewPresentation(
            Presentation *Pres) = 0;

        virtual HRESULT PresentationNewSlide(
            Slide *Sld) = 0;

        virtual HRESULT WindowActivate(
            Presentation *Pres,
            DocumentWindow *Wn) = 0;

        virtual HRESULT WindowDeactivate(
            Presentation *Pres,
            DocumentWindow *Wn) = 0;

        virtual HRESULT SlideShowBegin(
            SlideShowWindow *Wn) = 0;

        virtual HRESULT SlideShowNextBuild(
            SlideShowWindow *Wn) = 0;

        virtual HRESULT SlideShowNextSlide(
            SlideShowWindow *Wn) = 0;

        virtual HRESULT SlideShowEnd(
            Presentation *Pres) = 0;

        virtual HRESULT PresentationPrint(
            Presentation *Pres) = 0;

        virtual HRESULT SlideSelectionChanged(
            SlideRange *SldRange) = 0;

        virtual HRESULT ColorSchemeChanged(
            SlideRange *SldRange) = 0;

        virtual HRESULT PresentationBeforeSave(
            Presentation *Pres,
            VARIANT_BOOL *Cancel /In,Out/) = 0;

        virtual HRESULT SlideShowNextClick(
            SlideShowWindow *Wn,
            Effect *nEffect) = 0;

        virtual HRESULT AfterNewPresentation(
            Presentation *Pres) = 0;

        virtual HRESULT AfterPresentationOpen(
            Presentation *Pres) = 0;

        virtual HRESULT PresentationSync(
            Presentation *Pres,
            MsoSyncEventType SyncEventType) = 0;

        virtual HRESULT SlideShowOnNext(
            SlideShowWindow *Wn) = 0;

        virtual HRESULT SlideShowOnPrevious(
            SlideShowWindow *Wn) = 0;

        virtual HRESULT PresentationBeforeClose(
            Presentation *Pres,
            VARIANT_BOOL *Cancel /In,Out/) = 0;

        virtual HRESULT ProtectedViewWindowOpen(
            ProtectedViewWindow *ProtViewWindow) = 0;

        virtual HRESULT ProtectedViewWindowBeforeEdit(
            ProtectedViewWindow *ProtViewWindow,
            VARIANT_BOOL *Cancel /In,Out/) = 0;

        virtual HRESULT ProtectedViewWindowBeforeClose(
            ProtectedViewWindow *ProtViewWindow,
            PpProtectedViewCloseReason ProtectedViewCloseReason,
            VARIANT_BOOL *Cancel /In,Out/) = 0;

        virtual HRESULT ProtectedViewWindowActivate(
            ProtectedViewWindow *ProtViewWindow) = 0;

        virtual HRESULT ProtectedViewWindowDeactivate(
            ProtectedViewWindow *ProtViewWindow) = 0;

        virtual HRESULT PresentationCloseFinal(
            Presentation *Pres) = 0;

        virtual HRESULT AfterDragDropOnSlide(
            Slide *Sld,
            single X,
            single Y) = 0;

        virtual HRESULT AfterShapeSizeChange(
            Shape *shp) = 0;

    };
};
