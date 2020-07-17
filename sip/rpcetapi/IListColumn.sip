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
    struct IListColumn : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get__Default(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_ListDataFormat(
            ListDataFormat **RHS /Out/) = 0;

        virtual HRESULT get_Index(
            long *RHS /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR RHS) = 0;

        virtual HRESULT get_Range(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_TotalsCalculation(
            XlTotalsCalculation *RHS /Out/) = 0;

        virtual HRESULT put_TotalsCalculation(
            XlTotalsCalculation RHS) = 0;

        virtual HRESULT get_XPath(
            XPath **RHS /Out/) = 0;

        virtual HRESULT get_SharePointFormula(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_DataBodyRange(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_Total(
            Range **RHS /Out/) = 0;

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

        BSTR get_Default();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get__Default(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get__Default()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=_Default, get=get_Default)

        ListDataFormat* getListDataFormat();
        %MethodCode
            etapi::ListDataFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_ListDataFormat(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ListDataFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ListDataFormat, get=getListDataFormat)

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

        BSTR getName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Name(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Name()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setName(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Name(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Name()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Name, get=getName, set=setName)

        Range* getRange();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_Range(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Range()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Range, get=getRange)

        XlTotalsCalculation getTotalsCalculation();
        %MethodCode
            etapi::XlTotalsCalculation prop = (etapi::XlTotalsCalculation)0;
            HRESULT hr = sipCpp->get_TotalsCalculation(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TotalsCalculation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTotalsCalculation(XlTotalsCalculation prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TotalsCalculation(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TotalsCalculation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TotalsCalculation, get=getTotalsCalculation, set=setTotalsCalculation)

        XPath* getXPath();
        %MethodCode
            etapi::XPath *prop = nullptr;
            HRESULT hr = sipCpp->get_XPath(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_XPath()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=XPath, get=getXPath)

        BSTR getSharePointFormula();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_SharePointFormula(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SharePointFormula()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SharePointFormula, get=getSharePointFormula)

        Range* getDataBodyRange();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_DataBodyRange(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DataBodyRange()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DataBodyRange, get=getDataBodyRange)

        Range* getTotal();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_Total(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Total()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Total, get=getTotal)
    };
};
