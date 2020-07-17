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
    struct LinkFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_SourceFullName(
            BSTR *SourceFullName /Out/) = 0;

        virtual HRESULT put_SourceFullName(
            BSTR SourceFullName) = 0;

        virtual HRESULT get_AutoUpdate(
            PpUpdateOption *AutoUpdate /Out/) = 0;

        virtual HRESULT put_AutoUpdate(
            PpUpdateOption AutoUpdate) = 0;

        virtual HRESULT Update() = 0;

        virtual HRESULT BreakLink() = 0;

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

        BSTR getSourceFullName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_SourceFullName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SourceFullName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSourceFullName(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SourceFullName(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SourceFullName()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SourceFullName, get=getSourceFullName, set=setSourceFullName)

        PpUpdateOption getAutoUpdate();
        %MethodCode
            wppapi::PpUpdateOption prop = (wppapi::PpUpdateOption)0;
            HRESULT hr = sipCpp->get_AutoUpdate(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoUpdate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoUpdate(PpUpdateOption prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoUpdate(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoUpdate()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoUpdate, get=getAutoUpdate, set=setAutoUpdate)
    };
};
