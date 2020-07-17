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
    struct OLEFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_ClassType(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_ClassType(
            BSTR prop) = 0;

        virtual HRESULT get_DisplayAsIcon(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DisplayAsIcon(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_IconName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_IconName(
            BSTR prop) = 0;

        virtual HRESULT get_IconPath(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_IconIndex(
            long *prop /Out/) = 0;

        virtual HRESULT put_IconIndex(
            long prop) = 0;

        virtual HRESULT get_IconLabel(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_IconLabel(
            BSTR prop) = 0;

        virtual HRESULT get_Label(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Object(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_ProgID(
            BSTR *prop /Out/) = 0;

        virtual HRESULT Activate() = 0;

        virtual HRESULT Edit() = 0;

        virtual HRESULT Open() = 0;

        virtual HRESULT DoVerb(
            VARIANT *VerbIndex = argMissing()) = 0;

        virtual HRESULT ConvertTo(
            VARIANT *ClassType = argMissing(),
            VARIANT *DisplayAsIcon = argMissing(),
            VARIANT *IconFileName = argMissing(),
            VARIANT *IconIndex = argMissing(),
            VARIANT *IconLabel = argMissing()) = 0;

        virtual HRESULT ActivateAs(
            BSTR ClassType) = 0;

        virtual HRESULT get_PreserveFormattingOnUpdate(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_PreserveFormattingOnUpdate(
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

        BSTR getClassType();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ClassType(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ClassType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setClassType(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ClassType(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ClassType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ClassType, get=getClassType, set=setClassType)

        VARIANT_BOOL getDisplayAsIcon();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayAsIcon(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayAsIcon()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayAsIcon(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayAsIcon(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayAsIcon()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayAsIcon, get=getDisplayAsIcon, set=setDisplayAsIcon)

        BSTR getIconName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_IconName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IconName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setIconName(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_IconName(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_IconName()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=IconName, get=getIconName, set=setIconName)

        BSTR getIconPath();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_IconPath(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IconPath()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=IconPath, get=getIconPath)

        long getIconIndex();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_IconIndex(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IconIndex()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setIconIndex(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_IconIndex(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_IconIndex()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=IconIndex, get=getIconIndex, set=setIconIndex)

        BSTR getIconLabel();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_IconLabel(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IconLabel()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setIconLabel(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_IconLabel(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_IconLabel()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=IconLabel, get=getIconLabel, set=setIconLabel)

        BSTR getLabel();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Label(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Label()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Label, get=getLabel)

        IDispatch* getObject();
        %MethodCode
            IDispatch *prop = nullptr;
            HRESULT hr = sipCpp->get_Object(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Object()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Object, get=getObject)

        BSTR getProgID();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ProgID(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ProgID()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ProgID, get=getProgID)

        VARIANT_BOOL getPreserveFormattingOnUpdate();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PreserveFormattingOnUpdate(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PreserveFormattingOnUpdate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPreserveFormattingOnUpdate(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PreserveFormattingOnUpdate(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PreserveFormattingOnUpdate()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PreserveFormattingOnUpdate, get=getPreserveFormattingOnUpdate, set=setPreserveFormattingOnUpdate)
    };
};
