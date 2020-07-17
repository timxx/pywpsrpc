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

        Application* getApplication();
        %MethodCode
            wppapi::Application *prop = nullptr;
            HRESULT hr = sipCpp->get_Application(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Application()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Application, get=getApplication)

        PpViewType getType();
        %MethodCode
            wppapi::PpViewType prop = (wppapi::PpViewType)0;
            HRESULT hr = sipCpp->get_Type(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Type()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Type, get=getType)

        int getZoom();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_Zoom(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Zoom()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setZoom(int prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Zoom(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Zoom()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Zoom, get=getZoom, set=setZoom)

        IDispatch* getSlide();
        %MethodCode
            IDispatch *prop = nullptr;
            HRESULT hr = sipCpp->get_Slide(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Slide()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSlide(IDispatch *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Slide(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Slide()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Slide, get=getSlide, set=setSlide)

        MsoTriState getDisplaySlideMiniature();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_DisplaySlideMiniature(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplaySlideMiniature()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplaySlideMiniature(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplaySlideMiniature(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplaySlideMiniature()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplaySlideMiniature, get=getDisplaySlideMiniature, set=setDisplaySlideMiniature)

        MsoTriState getZoomToFit();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_ZoomToFit(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ZoomToFit()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setZoomToFit(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ZoomToFit(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ZoomToFit()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ZoomToFit, get=getZoomToFit, set=setZoomToFit)

        PrintOptions* getPrintOptions();
        %MethodCode
            wppapi::PrintOptions *prop = nullptr;
            HRESULT hr = sipCpp->get_PrintOptions(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PrintOptions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PrintOptions, get=getPrintOptions)

        MsoTriState getMediaControlsVisible();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_MediaControlsVisible(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MediaControlsVisible()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MediaControlsVisible, get=getMediaControlsVisible)

        single getMediaControlsLeft();
        %MethodCode
            wppapi::single prop = 0;
            HRESULT hr = sipCpp->get_MediaControlsLeft(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MediaControlsLeft()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MediaControlsLeft, get=getMediaControlsLeft)

        single getMediaControlsTop();
        %MethodCode
            wppapi::single prop = 0;
            HRESULT hr = sipCpp->get_MediaControlsTop(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MediaControlsTop()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MediaControlsTop, get=getMediaControlsTop)

        single getMediaControlsWidth();
        %MethodCode
            wppapi::single prop = 0;
            HRESULT hr = sipCpp->get_MediaControlsWidth(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MediaControlsWidth()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MediaControlsWidth, get=getMediaControlsWidth)

        single getMediaControlsHeight();
        %MethodCode
            wppapi::single prop = 0;
            HRESULT hr = sipCpp->get_MediaControlsHeight(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MediaControlsHeight()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MediaControlsHeight, get=getMediaControlsHeight)
    };
};
