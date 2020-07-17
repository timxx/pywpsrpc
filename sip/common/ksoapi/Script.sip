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
    struct Script : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Extended(
            BSTR *Extended /Out/) = 0;

        virtual HRESULT put_Extended(
            BSTR Extended) = 0;

        virtual HRESULT get_Id(
            BSTR *Id /Out/) = 0;

        virtual HRESULT put_Id(
            BSTR Id) = 0;

        virtual HRESULT get_Language(
            MsoScriptLanguage *Language /Out/) = 0;

        virtual HRESULT put_Language(
            MsoScriptLanguage Language) = 0;

        virtual HRESULT get_Location(
            MsoScriptLocation *Location /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_Shape(
            IDispatch **Object /Out/) = 0;

        virtual HRESULT get_ScriptText(
            BSTR *Script /Out/) = 0;

        virtual HRESULT put_ScriptText(
            BSTR Script) = 0;

        BSTR getExtended();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Extended(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Extended()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setExtended(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Extended(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Extended()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Extended, get=getExtended, set=setExtended)

        BSTR getId();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Id(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Id()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setId(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Id(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Id()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Id, get=getId, set=setId)

        MsoScriptLanguage getLanguage();
        %MethodCode
            ksoapi::MsoScriptLanguage prop = (ksoapi::MsoScriptLanguage)0;
            HRESULT hr = sipCpp->get_Language(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Language()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLanguage(MsoScriptLanguage prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Language(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Language()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Language, get=getLanguage, set=setLanguage)

        MsoScriptLocation getLocation();
        %MethodCode
            ksoapi::MsoScriptLocation prop = (ksoapi::MsoScriptLocation)0;
            HRESULT hr = sipCpp->get_Location(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Location()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Location, get=getLocation)

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

        BSTR getScriptText();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ScriptText(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ScriptText()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setScriptText(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ScriptText(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ScriptText()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ScriptText, get=getScriptText, set=setScriptText)
    };
};
