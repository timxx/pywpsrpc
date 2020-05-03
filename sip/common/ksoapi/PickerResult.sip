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
    struct PickerResult : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Id(
            BSTR *Id /Out/) = 0;

        virtual HRESULT get_DisplayName(
            BSTR *DisplayName /Out/) = 0;

        virtual HRESULT put_DisplayName(
            BSTR DisplayName) = 0;

        virtual HRESULT get_Type(
            BSTR *Type /Out/) = 0;

        virtual HRESULT put_Type(
            BSTR Type) = 0;

        virtual HRESULT get_SIPId(
            BSTR *SIPId /Out/) = 0;

        virtual HRESULT put_SIPId(
            BSTR SIPId) = 0;

        virtual HRESULT get_ItemData(
            VARIANT *ItemData /Out/) = 0;

        virtual HRESULT put_ItemData(
            VARIANT ItemData) = 0;

        virtual HRESULT get_SubItems(
            VARIANT *SubItems /Out/) = 0;

        virtual HRESULT put_SubItems(
            VARIANT SubItems) = 0;

        virtual HRESULT get_DuplicateResults(
            VARIANT *DuplicateResults /Out/) = 0;

        virtual HRESULT get_Fields(
            PickerFields **Fields /Out/) = 0;

        virtual HRESULT put_Fields(
            PickerFields *Fields) = 0;

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

        %Property(name=Id, get=getId)

        BSTR getDisplayName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_DisplayName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayName(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayName(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayName()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayName, get=getDisplayName, set=setDisplayName)

        BSTR getType();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Type(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Type()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setType(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Type(*a0);
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

        BSTR getSIPId();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_SIPId(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SIPId()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSIPId(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SIPId(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SIPId()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SIPId, get=getSIPId, set=setSIPId)

        VARIANT getItemData();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_ItemData(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ItemData()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setItemData(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ItemData(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ItemData()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ItemData, get=getItemData, set=setItemData)

        VARIANT getSubItems();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_SubItems(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SubItems()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSubItems(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SubItems(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SubItems()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SubItems, get=getSubItems, set=setSubItems)

        VARIANT getDuplicateResults();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_DuplicateResults(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DuplicateResults()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DuplicateResults, get=getDuplicateResults)

        PickerFields* getFields();
        %MethodCode
            ksoapi::PickerFields *prop = nullptr;
            HRESULT hr = sipCpp->get_Fields(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Fields()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFields(PickerFields *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Fields(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Fields()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Fields, get=getFields, set=setFields)
    };
};
