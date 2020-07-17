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
    struct TableStyle : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_AllowPageBreaks(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AllowPageBreaks(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Borders(
            Borders **prop /Out/) = 0;

        virtual HRESULT put_Borders(
            Borders *prop) = 0;

        virtual HRESULT get_BottomPadding(
            single *prop /Out/) = 0;

        virtual HRESULT put_BottomPadding(
            single prop) = 0;

        virtual HRESULT get_LeftPadding(
            single *prop /Out/) = 0;

        virtual HRESULT put_LeftPadding(
            single prop) = 0;

        virtual HRESULT get_TopPadding(
            single *prop /Out/) = 0;

        virtual HRESULT put_TopPadding(
            single prop) = 0;

        virtual HRESULT get_RightPadding(
            single *prop /Out/) = 0;

        virtual HRESULT put_RightPadding(
            single prop) = 0;

        virtual HRESULT get_Alignment(
            WdRowAlignment *prop /Out/) = 0;

        virtual HRESULT put_Alignment(
            WdRowAlignment prop) = 0;

        virtual HRESULT get_Spacing(
            single *prop /Out/) = 0;

        virtual HRESULT put_Spacing(
            single prop) = 0;

        virtual HRESULT Condition(
            WdConditionCode ConditionCode,
            ConditionalStyle **prop /Out/) = 0;

        virtual HRESULT get_TableDirection(
            WdTableDirection *prop /Out/) = 0;

        virtual HRESULT put_TableDirection(
            WdTableDirection prop) = 0;

        virtual HRESULT get_AllowBreakAcrossPage(
            long *prop /Out/) = 0;

        virtual HRESULT put_AllowBreakAcrossPage(
            long prop) = 0;

        virtual HRESULT get_LeftIndent(
            single *prop /Out/) = 0;

        virtual HRESULT put_LeftIndent(
            single prop) = 0;

        virtual HRESULT get_Shading(
            Shading **prop /Out/) = 0;

        virtual HRESULT get_RowStripe(
            long *prop /Out/) = 0;

        virtual HRESULT put_RowStripe(
            long prop) = 0;

        virtual HRESULT get_ColumnStripe(
            long *prop /Out/) = 0;

        virtual HRESULT put_ColumnStripe(
            long prop) = 0;

        Application* getApplication();
        %MethodCode
            wpsapi::Application *prop = nullptr;
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

        VARIANT_BOOL getAllowPageBreaks();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AllowPageBreaks(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AllowPageBreaks()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAllowPageBreaks(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AllowPageBreaks(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AllowPageBreaks()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AllowPageBreaks, get=getAllowPageBreaks, set=setAllowPageBreaks)

        Borders* getBorders();
        %MethodCode
            wpsapi::Borders *prop = nullptr;
            HRESULT hr = sipCpp->get_Borders(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Borders()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBorders(Borders *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Borders(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Borders()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Borders, get=getBorders, set=setBorders)

        single getBottomPadding();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_BottomPadding(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BottomPadding()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBottomPadding(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BottomPadding(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BottomPadding()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BottomPadding, get=getBottomPadding, set=setBottomPadding)

        single getLeftPadding();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_LeftPadding(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LeftPadding()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLeftPadding(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LeftPadding(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LeftPadding()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LeftPadding, get=getLeftPadding, set=setLeftPadding)

        single getTopPadding();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_TopPadding(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TopPadding()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTopPadding(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TopPadding(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TopPadding()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TopPadding, get=getTopPadding, set=setTopPadding)

        single getRightPadding();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_RightPadding(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RightPadding()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRightPadding(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RightPadding(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RightPadding()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RightPadding, get=getRightPadding, set=setRightPadding)

        WdRowAlignment getAlignment();
        %MethodCode
            wpsapi::WdRowAlignment prop = (wpsapi::WdRowAlignment)0;
            HRESULT hr = sipCpp->get_Alignment(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Alignment()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAlignment(WdRowAlignment prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Alignment(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Alignment()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Alignment, get=getAlignment, set=setAlignment)

        single getSpacing();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_Spacing(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Spacing()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSpacing(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Spacing(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Spacing()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Spacing, get=getSpacing, set=setSpacing)

        WdTableDirection getTableDirection();
        %MethodCode
            wpsapi::WdTableDirection prop = (wpsapi::WdTableDirection)0;
            HRESULT hr = sipCpp->get_TableDirection(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TableDirection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTableDirection(WdTableDirection prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TableDirection(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TableDirection()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TableDirection, get=getTableDirection, set=setTableDirection)

        long getAllowBreakAcrossPage();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_AllowBreakAcrossPage(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AllowBreakAcrossPage()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAllowBreakAcrossPage(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AllowBreakAcrossPage(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AllowBreakAcrossPage()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AllowBreakAcrossPage, get=getAllowBreakAcrossPage, set=setAllowBreakAcrossPage)

        single getLeftIndent();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_LeftIndent(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LeftIndent()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLeftIndent(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LeftIndent(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LeftIndent()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LeftIndent, get=getLeftIndent, set=setLeftIndent)

        Shading* getShading();
        %MethodCode
            wpsapi::Shading *prop = nullptr;
            HRESULT hr = sipCpp->get_Shading(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Shading()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Shading, get=getShading)

        long getRowStripe();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_RowStripe(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RowStripe()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRowStripe(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RowStripe(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RowStripe()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RowStripe, get=getRowStripe, set=setRowStripe)

        long getColumnStripe();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_ColumnStripe(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ColumnStripe()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setColumnStripe(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ColumnStripe(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ColumnStripe()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ColumnStripe, get=getColumnStripe, set=setColumnStripe)
    };
};
