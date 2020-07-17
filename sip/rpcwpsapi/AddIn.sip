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
    struct AddIn : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Index(
            long *prop /Out/) = 0;

        virtual HRESULT get_Path(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Installed(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Installed(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Compiled(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_Autoload(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT Delete() = 0;

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

        %Property(name=Name, get=getName)

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

        BSTR getPath();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Path(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Path()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Path, get=getPath)

        VARIANT_BOOL getInstalled();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Installed(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Installed()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setInstalled(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Installed(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Installed()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Installed, get=getInstalled, set=setInstalled)

        VARIANT_BOOL getCompiled();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Compiled(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Compiled()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Compiled, get=getCompiled)

        VARIANT_BOOL getAutoload();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Autoload(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Autoload()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Autoload, get=getAutoload)
    };
};
