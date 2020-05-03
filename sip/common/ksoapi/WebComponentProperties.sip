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
    struct WebComponentProperties : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Shape(
            IDispatch **RetValue /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *RetValue /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR RetValue) = 0;

        virtual HRESULT get_URL(
            BSTR *RetValue /Out/) = 0;

        virtual HRESULT put_URL(
            BSTR RetValue) = 0;

        virtual HRESULT get_HTML(
            BSTR *RetValue /Out/) = 0;

        virtual HRESULT put_HTML(
            BSTR RetValue) = 0;

        virtual HRESULT get_PreviewGraphic(
            BSTR *RetValue /Out/) = 0;

        virtual HRESULT put_PreviewGraphic(
            BSTR RetValue) = 0;

        virtual HRESULT get_PreviewHTML(
            BSTR *RetValue /Out/) = 0;

        virtual HRESULT put_PreviewHTML(
            BSTR RetValue) = 0;

        virtual HRESULT get_Width(
            long *RetValue /Out/) = 0;

        virtual HRESULT put_Width(
            long RetValue) = 0;

        virtual HRESULT get_Height(
            long *RetValue /Out/) = 0;

        virtual HRESULT put_Height(
            long RetValue) = 0;

        virtual HRESULT get_Tag(
            BSTR *RetValue /Out/) = 0;

        virtual HRESULT put_Tag(
            BSTR RetValue) = 0;

        IDispatch* getShape();
        %MethodCode
            IDispatch *prop = nullptr;
            HRESULT hr = sipCpp->get_Shape(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Shape()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Shape, get=getShape)

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

        BSTR getURL();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_URL(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_URL()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setURL(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_URL(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_URL()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=URL, get=getURL, set=setURL)

        BSTR getHTML();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_HTML(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HTML()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHTML(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HTML(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HTML()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HTML, get=getHTML, set=setHTML)

        BSTR getPreviewGraphic();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_PreviewGraphic(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PreviewGraphic()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPreviewGraphic(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PreviewGraphic(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PreviewGraphic()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PreviewGraphic, get=getPreviewGraphic, set=setPreviewGraphic)

        BSTR getPreviewHTML();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_PreviewHTML(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PreviewHTML()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPreviewHTML(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PreviewHTML(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PreviewHTML()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PreviewHTML, get=getPreviewHTML, set=setPreviewHTML)

        long getWidth();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Width(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Width()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWidth(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Width(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Width()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Width, get=getWidth, set=setWidth)

        long getHeight();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Height(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Height()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHeight(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Height(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Height()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Height, get=getHeight, set=setHeight)

        BSTR getTag();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Tag(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Tag()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTag(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Tag(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Tag()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Tag, get=getTag, set=setTag)
    };
};
