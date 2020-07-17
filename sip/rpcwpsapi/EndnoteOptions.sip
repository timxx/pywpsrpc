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
    struct EndnoteOptions : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Location(
            WdEndnoteLocation *prop /Out/) = 0;

        virtual HRESULT put_Location(
            WdEndnoteLocation prop) = 0;

        virtual HRESULT get_NumberStyle(
            WdNoteNumberStyle *prop /Out/) = 0;

        virtual HRESULT put_NumberStyle(
            WdNoteNumberStyle prop) = 0;

        virtual HRESULT get_StartingNumber(
            long *prop /Out/) = 0;

        virtual HRESULT put_StartingNumber(
            long prop) = 0;

        virtual HRESULT get_NumberingRule(
            WdNumberingRule *prop /Out/) = 0;

        virtual HRESULT put_NumberingRule(
            WdNumberingRule prop) = 0;

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

        WdEndnoteLocation getLocation();
        %MethodCode
            wpsapi::WdEndnoteLocation prop = (wpsapi::WdEndnoteLocation)0;
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

        PyObject* setLocation(WdEndnoteLocation prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Location(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Location()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Location, get=getLocation, set=setLocation)

        WdNoteNumberStyle getNumberStyle();
        %MethodCode
            wpsapi::WdNoteNumberStyle prop = (wpsapi::WdNoteNumberStyle)0;
            HRESULT hr = sipCpp->get_NumberStyle(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NumberStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNumberStyle(WdNoteNumberStyle prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NumberStyle(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NumberStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NumberStyle, get=getNumberStyle, set=setNumberStyle)

        long getStartingNumber();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_StartingNumber(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_StartingNumber()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setStartingNumber(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_StartingNumber(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_StartingNumber()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=StartingNumber, get=getStartingNumber, set=setStartingNumber)

        WdNumberingRule getNumberingRule();
        %MethodCode
            wpsapi::WdNumberingRule prop = (wpsapi::WdNumberingRule)0;
            HRESULT hr = sipCpp->get_NumberingRule(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NumberingRule()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNumberingRule(WdNumberingRule prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NumberingRule(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NumberingRule()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NumberingRule, get=getNumberingRule, set=setNumberingRule)
    };
};
