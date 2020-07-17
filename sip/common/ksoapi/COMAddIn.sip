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
    struct COMAddIn : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Description(
            BSTR *RetValue /Out/) = 0;

        virtual HRESULT put_Description(
            BSTR RetValue) = 0;

        virtual HRESULT get_ProgId(
            BSTR *RetValue /Out/) = 0;

        virtual HRESULT get_Guid(
            BSTR *RetValue /Out/) = 0;

        virtual HRESULT get_Connect(
            VARIANT_BOOL *RetValue /Out/) = 0;

        virtual HRESULT put_Connect(
            VARIANT_BOOL RetValue) = 0;

        virtual HRESULT get_Object(
            IDispatch **RetValue /Out/) = 0;

        virtual HRESULT put_Object(
            IDispatch *RetValue) = 0;

        BSTR getDescription();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Description(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Description()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDescription(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Description(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Description()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Description, get=getDescription, set=setDescription)

        BSTR getProgId();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ProgId(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ProgId()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ProgId, get=getProgId)

        BSTR getGuid();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Guid(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Guid()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Guid, get=getGuid)

        VARIANT_BOOL getConnect();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Connect(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Connect()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setConnect(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Connect(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Connect()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Connect, get=getConnect, set=setConnect)

        IDispatch* getObject();
        %MethodCode
            IDispatch *prop = nullptr;
            HRESULT hr = sipCpp->get_Object(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Object()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setObject(IDispatch *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Object(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Object()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Object, get=getObject, set=setObject)
    };
};
