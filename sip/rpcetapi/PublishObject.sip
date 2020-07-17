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
    struct PublishObject : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Publish(
            VARIANT Create = argMissing2()) = 0;

        virtual HRESULT get_DivID(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Sheet(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_SourceType(
            XlSourceType *RHS /Out/) = 0;

        virtual HRESULT get_Source(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_HtmlType(
            XlHtmlType *RHS /Out/) = 0;

        virtual HRESULT put_HtmlType(
            XlHtmlType RHS) = 0;

        virtual HRESULT get_Title(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Title(
            BSTR RHS) = 0;

        virtual HRESULT get_Filename(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Filename(
            BSTR RHS) = 0;

        virtual HRESULT get_AutoRepublish(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AutoRepublish(
            VARIANT_BOOL RHS) = 0;

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

        BSTR getDivID();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_DivID(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DivID()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DivID, get=getDivID)

        BSTR getSheet();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Sheet(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Sheet()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Sheet, get=getSheet)

        XlSourceType getSourceType();
        %MethodCode
            etapi::XlSourceType prop = (etapi::XlSourceType)0;
            HRESULT hr = sipCpp->get_SourceType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SourceType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SourceType, get=getSourceType)

        BSTR getSource();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Source(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Source()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Source, get=getSource)

        XlHtmlType getHtmlType();
        %MethodCode
            etapi::XlHtmlType prop = (etapi::XlHtmlType)0;
            HRESULT hr = sipCpp->get_HtmlType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HtmlType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHtmlType(XlHtmlType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HtmlType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HtmlType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HtmlType, get=getHtmlType, set=setHtmlType)

        BSTR getTitle();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Title(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Title()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTitle(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Title(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Title()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Title, get=getTitle, set=setTitle)

        BSTR getFilename();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Filename(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Filename()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFilename(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Filename(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Filename()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Filename, get=getFilename, set=setFilename)

        VARIANT_BOOL getAutoRepublish();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoRepublish(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoRepublish()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoRepublish(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoRepublish(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoRepublish()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoRepublish, get=getAutoRepublish, set=setAutoRepublish)
    };
};
