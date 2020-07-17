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
    struct Dictionary : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Path(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_LanguageID(
            WdLanguageID *prop /Out/) = 0;

        virtual HRESULT put_LanguageID(
            WdLanguageID prop) = 0;

        virtual HRESULT get_ReadOnly(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_Type(
            WdDictionaryType *prop /Out/) = 0;

        virtual HRESULT get_LanguageSpecific(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_LanguageSpecific(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT Delete() = 0;

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

        %Property(name=Name, get=getName)

        BSTR getPath();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Path(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Path()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Path, get=getPath)

        WdLanguageID getLanguageID();
        %MethodCode
            wpsapi::WdLanguageID prop = (wpsapi::WdLanguageID)0;
            HRESULT hr = sipCpp->get_LanguageID(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LanguageID()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLanguageID(WdLanguageID prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LanguageID(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LanguageID()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LanguageID, get=getLanguageID, set=setLanguageID)

        VARIANT_BOOL getReadOnly();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ReadOnly(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ReadOnly()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ReadOnly, get=getReadOnly)

        WdDictionaryType getType();
        %MethodCode
            wpsapi::WdDictionaryType prop = (wpsapi::WdDictionaryType)0;
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

        %Property(name=Type, get=getType)

        VARIANT_BOOL getLanguageSpecific();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_LanguageSpecific(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LanguageSpecific()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLanguageSpecific(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LanguageSpecific(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LanguageSpecific()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LanguageSpecific, get=getLanguageSpecific, set=setLanguageSpecific)
    };
};
