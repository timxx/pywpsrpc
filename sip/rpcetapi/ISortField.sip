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
    struct ISortField : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_SortOn(
            XlSortOn *RHS /Out/) = 0;

        virtual HRESULT put_SortOn(
            XlSortOn RHS) = 0;

        virtual HRESULT get_SortOnValue(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Key(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_Order(
            XlSortOrder *RHS /Out/) = 0;

        virtual HRESULT put_Order(
            XlSortOrder RHS) = 0;

        virtual HRESULT get_CustomOrder(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_CustomOrder(
            VARIANT RHS) = 0;

        virtual HRESULT get_DataOption(
            XlSortDataOption *RHS /Out/) = 0;

        virtual HRESULT put_DataOption(
            XlSortDataOption RHS) = 0;

        virtual HRESULT get_Priority(
            long *RHS /Out/) = 0;

        virtual HRESULT put_Priority(
            long RHS) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT ModifyKey(
            Range *Key) = 0;

        virtual HRESULT SetIcon(
            Icon *Icon) = 0;

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

        XlSortOn getSortOn();
        %MethodCode
            etapi::XlSortOn prop = (etapi::XlSortOn)0;
            HRESULT hr = sipCpp->get_SortOn(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SortOn()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSortOn(XlSortOn prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SortOn(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SortOn()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SortOn, get=getSortOn, set=setSortOn)

        IDispatch* getSortOnValue();
        %MethodCode
            IDispatch *prop = nullptr;
            HRESULT hr = sipCpp->get_SortOnValue(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SortOnValue()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SortOnValue, get=getSortOnValue)

        Range* getKey();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_Key(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Key()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Key, get=getKey)

        XlSortOrder getOrder();
        %MethodCode
            etapi::XlSortOrder prop = (etapi::XlSortOrder)0;
            HRESULT hr = sipCpp->get_Order(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Order()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOrder(XlSortOrder prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Order(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Order()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Order, get=getOrder, set=setOrder)

        VARIANT getCustomOrder();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_CustomOrder(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CustomOrder()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCustomOrder(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CustomOrder(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CustomOrder()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CustomOrder, get=getCustomOrder, set=setCustomOrder)

        XlSortDataOption getDataOption();
        %MethodCode
            etapi::XlSortDataOption prop = (etapi::XlSortDataOption)0;
            HRESULT hr = sipCpp->get_DataOption(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DataOption()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDataOption(XlSortDataOption prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DataOption(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DataOption()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DataOption, get=getDataOption, set=setDataOption)

        long getPriority();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Priority(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Priority()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPriority(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Priority(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Priority()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Priority, get=getPriority, set=setPriority)
    };
};
