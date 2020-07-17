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
    struct TextRetrievalMode : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_ViewType(
            WdViewType *prop /Out/) = 0;

        virtual HRESULT put_ViewType(
            WdViewType prop) = 0;

        virtual HRESULT get_Duplicate(
            TextRetrievalMode **prop /Out/) = 0;

        virtual HRESULT get_IncludeHiddenText(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_IncludeHiddenText(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_IncludeFieldCodes(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_IncludeFieldCodes(
            VARIANT_BOOL prop) = 0;

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

        WdViewType getViewType();
        %MethodCode
            wpsapi::WdViewType prop = (wpsapi::WdViewType)0;
            HRESULT hr = sipCpp->get_ViewType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ViewType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setViewType(WdViewType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ViewType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ViewType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ViewType, get=getViewType, set=setViewType)

        TextRetrievalMode* getDuplicate();
        %MethodCode
            wpsapi::TextRetrievalMode *prop = nullptr;
            HRESULT hr = sipCpp->get_Duplicate(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Duplicate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Duplicate, get=getDuplicate)

        VARIANT_BOOL getIncludeHiddenText();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IncludeHiddenText(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IncludeHiddenText()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setIncludeHiddenText(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_IncludeHiddenText(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_IncludeHiddenText()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=IncludeHiddenText, get=getIncludeHiddenText, set=setIncludeHiddenText)

        VARIANT_BOOL getIncludeFieldCodes();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IncludeFieldCodes(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IncludeFieldCodes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setIncludeFieldCodes(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_IncludeFieldCodes(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_IncludeFieldCodes()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=IncludeFieldCodes, get=getIncludeFieldCodes, set=setIncludeFieldCodes)
    };
};
