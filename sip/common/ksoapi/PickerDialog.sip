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
    struct PickerDialog : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_DataHandlerId(
            BSTR *Id /Out/) = 0;

        virtual HRESULT put_DataHandlerId(
            BSTR Id) = 0;

        virtual HRESULT get_Title(
            BSTR *Title /Out/) = 0;

        virtual HRESULT put_Title(
            BSTR Title) = 0;

        virtual HRESULT get_Properties(
            PickerProperties **Props /Out/) = 0;

        virtual HRESULT CreatePickerResults(
            PickerResults **Results /Out/) = 0;

        virtual HRESULT Show(
            VARIANT_BOOL IsMultiSelect = VARIANT_FALSE,
            PickerResults *ExistingResults = 0,
            PickerResults **Results /Out/ = 0) = 0;

        virtual HRESULT Resolve(
            BSTR TokenText,
            int duplicateDlgMode,
            PickerResults **Results /Out/) = 0;

        BSTR getDataHandlerId();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_DataHandlerId(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DataHandlerId()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDataHandlerId(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DataHandlerId(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DataHandlerId()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DataHandlerId, get=getDataHandlerId, set=setDataHandlerId)

        BSTR getTitle();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Title(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Title()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTitle(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Title(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Title()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Title, get=getTitle, set=setTitle)

        PickerProperties* getProperties();
        %MethodCode
            ksoapi::PickerProperties *prop = nullptr;
            HRESULT hr = sipCpp->get_Properties(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Properties()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Properties, get=getProperties)
    };
};
