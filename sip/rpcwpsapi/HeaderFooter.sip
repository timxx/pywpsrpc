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
    struct HeaderFooter : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT get_Index(
            WdHeaderFooterIndex *prop /Out/) = 0;

        virtual HRESULT get_IsHeader(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_Exists(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Exists(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_PageNumbers(
            PageNumbers **prop /Out/) = 0;

        virtual HRESULT get_LinkToPrevious(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_LinkToPrevious(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Shapes(
            Shapes **prop /Out/) = 0;

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

        WdHeaderFooterIndex getIndex();
        %MethodCode
            wpsapi::WdHeaderFooterIndex prop = (wpsapi::WdHeaderFooterIndex)0;
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

        VARIANT_BOOL getIsHeader();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IsHeader(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IsHeader()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=IsHeader, get=getIsHeader)

        VARIANT_BOOL getExists();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Exists(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Exists()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setExists(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Exists(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Exists()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Exists, get=getExists, set=setExists)

        PageNumbers* getPageNumbers();
        %MethodCode
            wpsapi::PageNumbers *prop = nullptr;
            HRESULT hr = sipCpp->get_PageNumbers(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PageNumbers()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PageNumbers, get=getPageNumbers)

        VARIANT_BOOL getLinkToPrevious();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_LinkToPrevious(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LinkToPrevious()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLinkToPrevious(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LinkToPrevious(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LinkToPrevious()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LinkToPrevious, get=getLinkToPrevious, set=setLinkToPrevious)

        Shapes* getShapes();
        %MethodCode
            wpsapi::Shapes *prop = nullptr;
            HRESULT hr = sipCpp->get_Shapes(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Shapes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Shapes, get=getShapes)
    };
};
