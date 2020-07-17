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
    struct SlideShowView : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Zoom(
            int *Zoom /Out/) = 0;

        virtual HRESULT get_Slide(
            Slide **Slide /Out/) = 0;

        virtual HRESULT get_PointerType(
            PpSlideShowPointerType *PointerType /Out/) = 0;

        virtual HRESULT put_PointerType(
            PpSlideShowPointerType PointerType) = 0;

        virtual HRESULT get_State(
            PpSlideShowState *State /Out/) = 0;

        virtual HRESULT put_State(
            PpSlideShowState State) = 0;

        virtual HRESULT get_AcceleratorsEnabled(
            MsoTriState *AcceleratorsEnabled /Out/) = 0;

        virtual HRESULT put_AcceleratorsEnabled(
            MsoTriState AcceleratorsEnabled) = 0;

        virtual HRESULT get_PresentationElapsedTime(
            single *PresentationElapsedTime /Out/) = 0;

        virtual HRESULT get_SlideElapsedTime(
            single *SlideElapsedTime /Out/) = 0;

        virtual HRESULT put_SlideElapsedTime(
            single SlideElapsedTime) = 0;

        virtual HRESULT get_LastSlideViewed(
            Slide **LastSlideViewed /Out/) = 0;

        virtual HRESULT get_AdvanceMode(
            PpSlideShowAdvanceMode *AdvanceMode /Out/) = 0;

        virtual HRESULT get_PointerColor(
            ColorFormat **PointerColor /Out/) = 0;

        virtual HRESULT get_IsNamedShow(
            MsoTriState *IsNamedShow /Out/) = 0;

        virtual HRESULT get_SlideShowName(
            BSTR *SlideShowName /Out/) = 0;

        virtual HRESULT DrawLine(
            single BeginX,
            single BeginY,
            single EndX,
            single EndY) = 0;

        virtual HRESULT EraseDrawing() = 0;

        virtual HRESULT First() = 0;

        virtual HRESULT Last() = 0;

        virtual HRESULT Next() = 0;

        virtual HRESULT Previous() = 0;

        virtual HRESULT GotoSlide(
            int Index,
            MsoTriState ResetSlide = wppapi::msoTrue) = 0;

        virtual HRESULT GotoNamedShow(
            BSTR SlideShowName) = 0;

        virtual HRESULT EndNamedShow() = 0;

        virtual HRESULT ResetSlideTime() = 0;

        virtual HRESULT Exit() = 0;

        virtual HRESULT InstallTracker(
            MouseTracker *pTracker,
            MsoTriState Presenter) = 0;

        virtual HRESULT get_CurrentShowPosition(
            int *CurrentShowPosition /Out/) = 0;

        virtual HRESULT GotoClick(
            int Index) = 0;

        virtual HRESULT GetClickIndex(
            int *GetClickIndex /Out/) = 0;

        virtual HRESULT GetClickCount(
            int *GetClickCount /Out/) = 0;

        virtual HRESULT FirstAnimationIsAutomatic(
            VARIANT_BOOL *FirstAnimationIsAutomatic /Out/) = 0;

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

        %Property(name=Zoom, get=getZoom)

        Slide* getSlide();
        %MethodCode
            wppapi::Slide *prop = nullptr;
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

        %Property(name=Slide, get=getSlide)

        PpSlideShowPointerType getPointerType();
        %MethodCode
            wppapi::PpSlideShowPointerType prop = (wppapi::PpSlideShowPointerType)0;
            HRESULT hr = sipCpp->get_PointerType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PointerType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPointerType(PpSlideShowPointerType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PointerType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PointerType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PointerType, get=getPointerType, set=setPointerType)

        PpSlideShowState getState();
        %MethodCode
            wppapi::PpSlideShowState prop = (wppapi::PpSlideShowState)0;
            HRESULT hr = sipCpp->get_State(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_State()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setState(PpSlideShowState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_State(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_State()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=State, get=getState, set=setState)

        MsoTriState getAcceleratorsEnabled();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_AcceleratorsEnabled(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AcceleratorsEnabled()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAcceleratorsEnabled(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AcceleratorsEnabled(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AcceleratorsEnabled()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AcceleratorsEnabled, get=getAcceleratorsEnabled, set=setAcceleratorsEnabled)

        single getPresentationElapsedTime();
        %MethodCode
            wppapi::single prop = 0;
            HRESULT hr = sipCpp->get_PresentationElapsedTime(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PresentationElapsedTime()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PresentationElapsedTime, get=getPresentationElapsedTime)

        single getSlideElapsedTime();
        %MethodCode
            wppapi::single prop = 0;
            HRESULT hr = sipCpp->get_SlideElapsedTime(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SlideElapsedTime()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSlideElapsedTime(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SlideElapsedTime(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SlideElapsedTime()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SlideElapsedTime, get=getSlideElapsedTime, set=setSlideElapsedTime)

        Slide* getLastSlideViewed();
        %MethodCode
            wppapi::Slide *prop = nullptr;
            HRESULT hr = sipCpp->get_LastSlideViewed(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LastSlideViewed()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=LastSlideViewed, get=getLastSlideViewed)

        PpSlideShowAdvanceMode getAdvanceMode();
        %MethodCode
            wppapi::PpSlideShowAdvanceMode prop = (wppapi::PpSlideShowAdvanceMode)0;
            HRESULT hr = sipCpp->get_AdvanceMode(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AdvanceMode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AdvanceMode, get=getAdvanceMode)

        ColorFormat* getPointerColor();
        %MethodCode
            wppapi::ColorFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_PointerColor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PointerColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PointerColor, get=getPointerColor)

        MsoTriState getIsNamedShow();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_IsNamedShow(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IsNamedShow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=IsNamedShow, get=getIsNamedShow)

        BSTR getSlideShowName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_SlideShowName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SlideShowName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SlideShowName, get=getSlideShowName)

        int getCurrentShowPosition();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_CurrentShowPosition(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CurrentShowPosition()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CurrentShowPosition, get=getCurrentShowPosition)

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
