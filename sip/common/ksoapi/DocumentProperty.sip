/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace ksoapi
{
    struct DocumentProperty : public IDispatch /Abstract/
    {
    public:
        virtual IDispatch *get_Parent() = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_Name(
            long lcid,
            BSTR *pbstrRetVal /Out/) = 0;

        virtual HRESULT put_Name(
            long lcid,
            BSTR pbstrRetVal) = 0;

        virtual HRESULT get_Value(
            long lcid,
            VARIANT *pvargRetVal /Out/) = 0;

        virtual HRESULT put_Value(
            long lcid,
            VARIANT pvargRetVal) = 0;

        virtual HRESULT get_Type(
            long lcid,
            MsoDocProperties *ptypeRetVal /Out/) = 0;

        virtual HRESULT put_Type(
            long lcid,
            MsoDocProperties ptypeRetVal) = 0;

        virtual HRESULT get_LinkToContent(
            VARIANT_BOOL *pfLinkRetVal /Out/) = 0;

        virtual HRESULT put_LinkToContent(
            VARIANT_BOOL pfLinkRetVal) = 0;

        virtual HRESULT get_LinkSource(
            BSTR *pbstrSourceRetVal /Out/) = 0;

        virtual HRESULT put_LinkSource(
            BSTR pbstrSourceRetVal) = 0;

        BSTR getName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Name(0, prop);
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
            HRESULT hr = sipCpp->put_Name(0, *a0);
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

        VARIANT getValue();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Value(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Value()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setValue(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Value(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Value()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Value, get=getValue, set=setValue)

        MsoDocProperties getType();
        %MethodCode
            ksoapi::MsoDocProperties prop = (ksoapi::MsoDocProperties)0;
            HRESULT hr = sipCpp->get_Type(0, &prop);
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

        PyObject* setType(MsoDocProperties prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Type(0, a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Type()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Type, get=getType, set=setType)

        VARIANT_BOOL getLinkToContent();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_LinkToContent(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LinkToContent()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLinkToContent(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LinkToContent(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LinkToContent()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LinkToContent, get=getLinkToContent, set=setLinkToContent)

        BSTR getLinkSource();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_LinkSource(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LinkSource()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLinkSource(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LinkSource(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LinkSource()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LinkSource, get=getLinkSource, set=setLinkSource)
    };
};
