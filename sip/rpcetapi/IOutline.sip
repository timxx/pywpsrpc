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
    struct IOutline : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_AutomaticStyles(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AutomaticStyles(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT ShowLevels(
            VARIANT RowLevels = argMissing2(),
            VARIANT ColumnLevels = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_SummaryColumn(
            XlSummaryColumn *RHS /Out/) = 0;

        virtual HRESULT put_SummaryColumn(
            XlSummaryColumn RHS) = 0;

        virtual HRESULT get_SummaryRow(
            XlSummaryRow *RHS /Out/) = 0;

        virtual HRESULT put_SummaryRow(
            XlSummaryRow RHS) = 0;

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

        VARIANT_BOOL getAutomaticStyles();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutomaticStyles(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutomaticStyles()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutomaticStyles(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutomaticStyles(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutomaticStyles()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutomaticStyles, get=getAutomaticStyles, set=setAutomaticStyles)

        XlSummaryColumn getSummaryColumn();
        %MethodCode
            etapi::XlSummaryColumn prop = (etapi::XlSummaryColumn)0;
            HRESULT hr = sipCpp->get_SummaryColumn(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SummaryColumn()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSummaryColumn(XlSummaryColumn prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SummaryColumn(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SummaryColumn()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SummaryColumn, get=getSummaryColumn, set=setSummaryColumn)

        XlSummaryRow getSummaryRow();
        %MethodCode
            etapi::XlSummaryRow prop = (etapi::XlSummaryRow)0;
            HRESULT hr = sipCpp->get_SummaryRow(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SummaryRow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSummaryRow(XlSummaryRow prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SummaryRow(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SummaryRow()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SummaryRow, get=getSummaryRow, set=setSummaryRow)
    };
};
