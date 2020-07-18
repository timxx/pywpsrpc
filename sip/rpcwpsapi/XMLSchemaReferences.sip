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
    struct XMLSchemaReferences : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        int __len__() const;
        %MethodCode
            long count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_AutomaticValidation(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutomaticValidation(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AllowSaveAsXMLWithoutValidation(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AllowSaveAsXMLWithoutValidation(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HideValidationErrors(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HideValidationErrors(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_IgnoreMixedContent(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_IgnoreMixedContent(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowPlaceholderText(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowPlaceholderText(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT Item(
            VARIANT *Index,
            XMLSchemaReference **prop /Out/) = 0;

        XMLSchemaReference* __getitem__(VARIANT *index) const;
        %MethodCode
            wpsapi::XMLSchemaReference *prop = nullptr;
            if (sipCpp->Item(a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT Validate() = 0;

        virtual HRESULT Add(
            VARIANT *NamespaceURI = argMissing(),
            VARIANT *Alias = argMissing(),
            VARIANT *FileName = argMissing(),
            VARIANT_BOOL InstallForAllUsers = VARIANT_FALSE,
            XMLSchemaReference **prop /Out/ = 0) = 0;

        long getCount();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Count(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Count()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Count, get=getCount)

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

        VARIANT_BOOL getAutomaticValidation();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutomaticValidation(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutomaticValidation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutomaticValidation(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutomaticValidation(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutomaticValidation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutomaticValidation, get=getAutomaticValidation, set=setAutomaticValidation)

        VARIANT_BOOL getAllowSaveAsXMLWithoutValidation();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AllowSaveAsXMLWithoutValidation(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AllowSaveAsXMLWithoutValidation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAllowSaveAsXMLWithoutValidation(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AllowSaveAsXMLWithoutValidation(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AllowSaveAsXMLWithoutValidation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AllowSaveAsXMLWithoutValidation, get=getAllowSaveAsXMLWithoutValidation, set=setAllowSaveAsXMLWithoutValidation)

        VARIANT_BOOL getHideValidationErrors();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HideValidationErrors(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HideValidationErrors()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHideValidationErrors(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HideValidationErrors(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HideValidationErrors()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HideValidationErrors, get=getHideValidationErrors, set=setHideValidationErrors)

        VARIANT_BOOL getIgnoreMixedContent();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IgnoreMixedContent(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IgnoreMixedContent()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setIgnoreMixedContent(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_IgnoreMixedContent(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_IgnoreMixedContent()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=IgnoreMixedContent, get=getIgnoreMixedContent, set=setIgnoreMixedContent)

        VARIANT_BOOL getShowPlaceholderText();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowPlaceholderText(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowPlaceholderText()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowPlaceholderText(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowPlaceholderText(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowPlaceholderText()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowPlaceholderText, get=getShowPlaceholderText, set=setShowPlaceholderText)
    };
};
