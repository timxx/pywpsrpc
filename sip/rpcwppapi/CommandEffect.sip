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
    struct CommandEffect : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Type(
            MsoAnimCommandType *Type /Out/) = 0;

        virtual HRESULT put_Type(
            MsoAnimCommandType Type) = 0;

        virtual HRESULT get_Command(
            BSTR *Command /Out/) = 0;

        virtual HRESULT put_Command(
            BSTR Command) = 0;

        virtual HRESULT get_bookmark(
            BSTR *bookmark /Out/) = 0;

        virtual HRESULT put_bookmark(
            BSTR bookmark) = 0;

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

        MsoAnimCommandType getType();
        %MethodCode
            wppapi::MsoAnimCommandType prop = (wppapi::MsoAnimCommandType)0;
            HRESULT hr = sipCpp->get_Type(&prop);
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

        PyObject* setType(MsoAnimCommandType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Type(a0);
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

        BSTR getCommand();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Command(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Command()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCommand(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Command(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Command()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Command, get=getCommand, set=setCommand)

        BSTR getbookmark();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_bookmark(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_bookmark()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setbookmark(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_bookmark(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_bookmark()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=bookmark, get=getbookmark, set=setbookmark)
    };
};
