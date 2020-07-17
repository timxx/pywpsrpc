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
    struct PageSetup : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_FirstSlideNumber(
            int *FirstSlideNumber /Out/) = 0;

        virtual HRESULT put_FirstSlideNumber(
            int FirstSlideNumber) = 0;

        virtual HRESULT get_SlideHeight(
            single *SlideHeight /Out/) = 0;

        virtual HRESULT put_SlideHeight(
            single SlideHeight) = 0;

        virtual HRESULT get_SlideWidth(
            single *SlideWidth /Out/) = 0;

        virtual HRESULT put_SlideWidth(
            single SlideWidth) = 0;

        virtual HRESULT get_SlideSize(
            PpSlideSizeType *SlideSize /Out/) = 0;

        virtual HRESULT put_SlideSize(
            PpSlideSizeType SlideSize) = 0;

        virtual HRESULT get_NotesOrientation(
            MsoOrientation *NotesOrientation /Out/) = 0;

        virtual HRESULT put_NotesOrientation(
            MsoOrientation NotesOrientation) = 0;

        virtual HRESULT get_SlideOrientation(
            MsoOrientation *SlideOrientation /Out/) = 0;

        virtual HRESULT put_SlideOrientation(
            MsoOrientation SlideOrientation) = 0;

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

        int getFirstSlideNumber();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_FirstSlideNumber(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FirstSlideNumber()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFirstSlideNumber(int prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FirstSlideNumber(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FirstSlideNumber()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FirstSlideNumber, get=getFirstSlideNumber, set=setFirstSlideNumber)

        single getSlideHeight();
        %MethodCode
            wppapi::single prop = 0;
            HRESULT hr = sipCpp->get_SlideHeight(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SlideHeight()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSlideHeight(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SlideHeight(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SlideHeight()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SlideHeight, get=getSlideHeight, set=setSlideHeight)

        single getSlideWidth();
        %MethodCode
            wppapi::single prop = 0;
            HRESULT hr = sipCpp->get_SlideWidth(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SlideWidth()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSlideWidth(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SlideWidth(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SlideWidth()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SlideWidth, get=getSlideWidth, set=setSlideWidth)

        PpSlideSizeType getSlideSize();
        %MethodCode
            wppapi::PpSlideSizeType prop = (wppapi::PpSlideSizeType)0;
            HRESULT hr = sipCpp->get_SlideSize(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SlideSize()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSlideSize(PpSlideSizeType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SlideSize(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SlideSize()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SlideSize, get=getSlideSize, set=setSlideSize)

        MsoOrientation getNotesOrientation();
        %MethodCode
            wppapi::MsoOrientation prop = (wppapi::MsoOrientation)0;
            HRESULT hr = sipCpp->get_NotesOrientation(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NotesOrientation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNotesOrientation(MsoOrientation prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NotesOrientation(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NotesOrientation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NotesOrientation, get=getNotesOrientation, set=setNotesOrientation)

        MsoOrientation getSlideOrientation();
        %MethodCode
            wppapi::MsoOrientation prop = (wppapi::MsoOrientation)0;
            HRESULT hr = sipCpp->get_SlideOrientation(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SlideOrientation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSlideOrientation(MsoOrientation prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SlideOrientation(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SlideOrientation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SlideOrientation, get=getSlideOrientation, set=setSlideOrientation)
    };
};
