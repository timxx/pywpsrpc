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
    struct SlideShowSettings : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_PointerColor(
            ColorFormat **PointerColor /Out/) = 0;

        virtual HRESULT get_NamedSlideShows(
            NamedSlideShows **NamedSlideShows /Out/) = 0;

        virtual HRESULT get_StartingSlide(
            int *StartingSlide /Out/) = 0;

        virtual HRESULT put_StartingSlide(
            int StartingSlide) = 0;

        virtual HRESULT get_EndingSlide(
            int *EndingSlide /Out/) = 0;

        virtual HRESULT put_EndingSlide(
            int EndingSlide) = 0;

        virtual HRESULT get_AdvanceMode(
            PpSlideShowAdvanceMode *AdvanceMode /Out/) = 0;

        virtual HRESULT put_AdvanceMode(
            PpSlideShowAdvanceMode AdvanceMode) = 0;

        virtual HRESULT Run(
            SlideShowWindow **Run /Out/) = 0;

        virtual HRESULT get_LoopUntilStopped(
            MsoTriState *LoopUntilStopped /Out/) = 0;

        virtual HRESULT put_LoopUntilStopped(
            MsoTriState LoopUntilStopped) = 0;

        virtual HRESULT get_ShowType(
            PpSlideShowType *ShowType /Out/) = 0;

        virtual HRESULT put_ShowType(
            PpSlideShowType ShowType) = 0;

        virtual HRESULT get_ShowWithNarration(
            MsoTriState *ShowWithNarration /Out/) = 0;

        virtual HRESULT put_ShowWithNarration(
            MsoTriState ShowWithNarration) = 0;

        virtual HRESULT get_ShowWithAnimation(
            MsoTriState *ShowWithAnimation /Out/) = 0;

        virtual HRESULT put_ShowWithAnimation(
            MsoTriState ShowWithAnimation) = 0;

        virtual HRESULT get_SlideShowName(
            BSTR *SlideShowName /Out/) = 0;

        virtual HRESULT put_SlideShowName(
            BSTR SlideShowName) = 0;

        virtual HRESULT get_RangeType(
            PpSlideShowRangeType *RangeType /Out/) = 0;

        virtual HRESULT put_RangeType(
            PpSlideShowRangeType RangeType) = 0;

        virtual HRESULT get_ShowScrollbar(
            MsoTriState *ShowScrollbar /Out/) = 0;

        virtual HRESULT put_ShowScrollbar(
            MsoTriState ShowScrollbar) = 0;

        virtual HRESULT get_ShowPresenterView(
            MsoTriState *ShowPresenterView /Out/) = 0;

        virtual HRESULT put_ShowPresenterView(
            MsoTriState ShowPresenterView) = 0;

        virtual HRESULT get_ShowMediaControls(
            MsoTriState *ShowMediaControls /Out/) = 0;

        virtual HRESULT put_ShowMediaControls(
            MsoTriState ShowMediaControls) = 0;

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

        NamedSlideShows* getNamedSlideShows();
        %MethodCode
            wppapi::NamedSlideShows *prop = nullptr;
            HRESULT hr = sipCpp->get_NamedSlideShows(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NamedSlideShows()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=NamedSlideShows, get=getNamedSlideShows)

        int getStartingSlide();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_StartingSlide(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_StartingSlide()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setStartingSlide(int prop);
        %MethodCode
            HRESULT hr = sipCpp->put_StartingSlide(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_StartingSlide()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=StartingSlide, get=getStartingSlide, set=setStartingSlide)

        int getEndingSlide();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_EndingSlide(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EndingSlide()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEndingSlide(int prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EndingSlide(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EndingSlide()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EndingSlide, get=getEndingSlide, set=setEndingSlide)

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

        PyObject* setAdvanceMode(PpSlideShowAdvanceMode prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AdvanceMode(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AdvanceMode()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AdvanceMode, get=getAdvanceMode, set=setAdvanceMode)

        MsoTriState getLoopUntilStopped();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_LoopUntilStopped(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LoopUntilStopped()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLoopUntilStopped(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LoopUntilStopped(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LoopUntilStopped()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LoopUntilStopped, get=getLoopUntilStopped, set=setLoopUntilStopped)

        PpSlideShowType getShowType();
        %MethodCode
            wppapi::PpSlideShowType prop = (wppapi::PpSlideShowType)0;
            HRESULT hr = sipCpp->get_ShowType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowType(PpSlideShowType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowType, get=getShowType, set=setShowType)

        MsoTriState getShowWithNarration();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_ShowWithNarration(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowWithNarration()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowWithNarration(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowWithNarration(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowWithNarration()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowWithNarration, get=getShowWithNarration, set=setShowWithNarration)

        MsoTriState getShowWithAnimation();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_ShowWithAnimation(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowWithAnimation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowWithAnimation(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowWithAnimation(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowWithAnimation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowWithAnimation, get=getShowWithAnimation, set=setShowWithAnimation)

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

        PyObject* setSlideShowName(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SlideShowName(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SlideShowName()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SlideShowName, get=getSlideShowName, set=setSlideShowName)

        PpSlideShowRangeType getRangeType();
        %MethodCode
            wppapi::PpSlideShowRangeType prop = (wppapi::PpSlideShowRangeType)0;
            HRESULT hr = sipCpp->get_RangeType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RangeType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRangeType(PpSlideShowRangeType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RangeType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RangeType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RangeType, get=getRangeType, set=setRangeType)

        MsoTriState getShowScrollbar();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_ShowScrollbar(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowScrollbar()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowScrollbar(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowScrollbar(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowScrollbar()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowScrollbar, get=getShowScrollbar, set=setShowScrollbar)

        MsoTriState getShowPresenterView();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_ShowPresenterView(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowPresenterView()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowPresenterView(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowPresenterView(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowPresenterView()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowPresenterView, get=getShowPresenterView, set=setShowPresenterView)

        MsoTriState getShowMediaControls();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_ShowMediaControls(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowMediaControls()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowMediaControls(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowMediaControls(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowMediaControls()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowMediaControls, get=getShowMediaControls, set=setShowMediaControls)
    };
};
