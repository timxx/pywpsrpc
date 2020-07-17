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
    struct Section : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_PageSetup(
            PageSetup **prop /Out/) = 0;

        virtual HRESULT put_PageSetup(
            PageSetup *prop) = 0;

        virtual HRESULT get_Headers(
            HeadersFooters **prop /Out/) = 0;

        virtual HRESULT get_Footers(
            HeadersFooters **prop /Out/) = 0;

        virtual HRESULT get_ProtectedForForms(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ProtectedForForms(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Index(
            long *prop /Out/) = 0;

        virtual HRESULT get_Borders(
            Borders **prop /Out/) = 0;

        virtual HRESULT put_Borders(
            Borders *prop) = 0;

        Range* getRange();
        %MethodCode
            wpsapi::Range *prop = nullptr;
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

        PageSetup* getPageSetup();
        %MethodCode
            wpsapi::PageSetup *prop = nullptr;
            HRESULT hr = sipCpp->get_PageSetup(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PageSetup()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPageSetup(PageSetup *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PageSetup(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PageSetup()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PageSetup, get=getPageSetup, set=setPageSetup)

        HeadersFooters* getHeaders();
        %MethodCode
            wpsapi::HeadersFooters *prop = nullptr;
            HRESULT hr = sipCpp->get_Headers(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Headers()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Headers, get=getHeaders)

        HeadersFooters* getFooters();
        %MethodCode
            wpsapi::HeadersFooters *prop = nullptr;
            HRESULT hr = sipCpp->get_Footers(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Footers()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Footers, get=getFooters)

        VARIANT_BOOL getProtectedForForms();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ProtectedForForms(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ProtectedForForms()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setProtectedForForms(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ProtectedForForms(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ProtectedForForms()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ProtectedForForms, get=getProtectedForForms, set=setProtectedForForms)

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
    };
};
