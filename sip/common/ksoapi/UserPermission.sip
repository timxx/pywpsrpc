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
    struct UserPermission : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_UserId(
            BSTR *UserId /Out/) = 0;

        virtual HRESULT get_Permission(
            long *Permission /Out/) = 0;

        virtual HRESULT put_Permission(
            long Permission) = 0;

        virtual HRESULT get_ExpirationDate(
            VARIANT *ExpirationDate /Out/) = 0;

        virtual HRESULT put_ExpirationDate(
            VARIANT ExpirationDate) = 0;

        virtual HRESULT Remove() = 0;

        BSTR getUserId();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_UserId(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UserId()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=UserId, get=getUserId)

        long getPermission();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Permission(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Permission()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPermission(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Permission(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Permission()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Permission, get=getPermission, set=setPermission)

        VARIANT getExpirationDate();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_ExpirationDate(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ExpirationDate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setExpirationDate(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ExpirationDate(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ExpirationDate()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ExpirationDate, get=getExpirationDate, set=setExpirationDate)
    };
};
