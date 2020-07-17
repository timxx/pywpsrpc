/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace etapi
{
    struct IPane : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT Activate(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_Index(
            long *RHS /Out/) = 0;

        virtual HRESULT LargeScroll(
            VARIANT Down = argMissing2(),
            VARIANT Up = argMissing2(),
            VARIANT ToRight = argMissing2(),
            VARIANT ToLeft = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_ScrollColumn(
            long *RHS /Out/) = 0;

        virtual HRESULT put_ScrollColumn(
            long RHS) = 0;

        virtual HRESULT get_ScrollRow(
            long *RHS /Out/) = 0;

        virtual HRESULT put_ScrollRow(
            long RHS) = 0;

        virtual HRESULT SmallScroll(
            VARIANT Down = argMissing2(),
            VARIANT Up = argMissing2(),
            VARIANT ToRight = argMissing2(),
            VARIANT ToLeft = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_VisibleRange(
            Range **RHS /Out/) = 0;

        virtual HRESULT ScrollIntoView(
            long Left,
            long Top,
            long Width,
            long Height,
            VARIANT Start = argMissing2()) = 0;

        virtual HRESULT PointsToScreenPixelsX(
            long Points,
            long *RHS /Out/) = 0;

        virtual HRESULT PointsToScreenPixelsY(
            long Points,
            long *RHS /Out/) = 0;

        Application* getApplication();
        %MethodCode
            etapi::Application *prop = nullptr;
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

        XlCreator getCreator();
        %MethodCode
            etapi::XlCreator prop = (etapi::XlCreator)0;
            HRESULT hr = sipCpp->get_Creator(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Creator()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Creator, get=getCreator)

        long getIndex();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Index(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Index()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Index, get=getIndex)

        long getScrollColumn();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_ScrollColumn(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ScrollColumn()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setScrollColumn(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ScrollColumn(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ScrollColumn()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ScrollColumn, get=getScrollColumn, set=setScrollColumn)

        long getScrollRow();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_ScrollRow(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ScrollRow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setScrollRow(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ScrollRow(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ScrollRow()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ScrollRow, get=getScrollRow, set=setScrollRow)

        Range* getVisibleRange();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_VisibleRange(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_VisibleRange()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=VisibleRange, get=getVisibleRange)
    };
};
