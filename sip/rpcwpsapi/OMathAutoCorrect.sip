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
    struct OMathAutoCorrect : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_ReplaceText(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ReplaceText(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_UseOutsideOMath(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_UseOutsideOMath(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Entries(
            OMathAutoCorrectEntries **prop /Out/) = 0;

        virtual HRESULT get_Functions(
            OMathRecognizedFunctions **prop /Out/) = 0;

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

        VARIANT_BOOL getReplaceText();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ReplaceText(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ReplaceText()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setReplaceText(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ReplaceText(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ReplaceText()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ReplaceText, get=getReplaceText, set=setReplaceText)

        VARIANT_BOOL getUseOutsideOMath();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_UseOutsideOMath(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UseOutsideOMath()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUseOutsideOMath(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_UseOutsideOMath(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_UseOutsideOMath()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=UseOutsideOMath, get=getUseOutsideOMath, set=setUseOutsideOMath)

        OMathAutoCorrectEntries* getEntries();
        %MethodCode
            wpsapi::OMathAutoCorrectEntries *prop = nullptr;
            HRESULT hr = sipCpp->get_Entries(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Entries()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Entries, get=getEntries)

        OMathRecognizedFunctions* getFunctions();
        %MethodCode
            wpsapi::OMathRecognizedFunctions *prop = nullptr;
            HRESULT hr = sipCpp->get_Functions(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Functions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Functions, get=getFunctions)
    };
};
