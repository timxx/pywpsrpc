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
    struct DropCap : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Position(
            WdDropPosition *prop /Out/) = 0;

        virtual HRESULT put_Position(
            WdDropPosition prop) = 0;

        virtual HRESULT get_FontName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_FontName(
            BSTR prop) = 0;

        virtual HRESULT get_LinesToDrop(
            long *prop /Out/) = 0;

        virtual HRESULT put_LinesToDrop(
            long prop) = 0;

        virtual HRESULT get_DistanceFromText(
            single *prop /Out/) = 0;

        virtual HRESULT put_DistanceFromText(
            single prop) = 0;

        virtual HRESULT Clear() = 0;

        virtual HRESULT Enable() = 0;

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

        WdDropPosition getPosition();
        %MethodCode
            wpsapi::WdDropPosition prop = (wpsapi::WdDropPosition)0;
            HRESULT hr = sipCpp->get_Position(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Position()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPosition(WdDropPosition prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Position(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Position()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Position, get=getPosition, set=setPosition)

        BSTR getFontName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_FontName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FontName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFontName(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FontName(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FontName()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FontName, get=getFontName, set=setFontName)

        long getLinesToDrop();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_LinesToDrop(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LinesToDrop()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLinesToDrop(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LinesToDrop(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LinesToDrop()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LinesToDrop, get=getLinesToDrop, set=setLinesToDrop)

        single getDistanceFromText();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_DistanceFromText(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DistanceFromText()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDistanceFromText(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DistanceFromText(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DistanceFromText()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DistanceFromText, get=getDistanceFromText, set=setDistanceFromText)
    };
};
