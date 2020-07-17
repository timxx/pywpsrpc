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
    struct LineNumbering : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_RestartMode(
            WdNumberingRule *prop /Out/) = 0;

        virtual HRESULT put_RestartMode(
            WdNumberingRule prop) = 0;

        virtual HRESULT get_StartingNumber(
            long *prop /Out/) = 0;

        virtual HRESULT put_StartingNumber(
            long prop) = 0;

        virtual HRESULT get_DistanceFromText(
            single *prop /Out/) = 0;

        virtual HRESULT put_DistanceFromText(
            single prop) = 0;

        virtual HRESULT get_CountBy(
            long *prop /Out/) = 0;

        virtual HRESULT put_CountBy(
            long prop) = 0;

        virtual HRESULT get_Active(
            long *prop /Out/) = 0;

        virtual HRESULT put_Active(
            long prop) = 0;

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

        WdNumberingRule getRestartMode();
        %MethodCode
            wpsapi::WdNumberingRule prop = (wpsapi::WdNumberingRule)0;
            HRESULT hr = sipCpp->get_RestartMode(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RestartMode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRestartMode(WdNumberingRule prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RestartMode(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RestartMode()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RestartMode, get=getRestartMode, set=setRestartMode)

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

        long getCountBy();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_CountBy(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CountBy()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCountBy(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CountBy(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CountBy()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CountBy, get=getCountBy, set=setCountBy)

        long getActive();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Active(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Active()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setActive(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Active(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Active()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Active, get=getActive, set=setActive)
    };
};
