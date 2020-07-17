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
    struct SharedWorkspaceLink : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_URL(
            BSTR *URL /Out/) = 0;

        virtual HRESULT put_URL(
            BSTR URL) = 0;

        virtual HRESULT get_Description(
            BSTR *Description /Out/) = 0;

        virtual HRESULT put_Description(
            BSTR Description) = 0;

        virtual HRESULT get_Notes(
            BSTR *Notes /Out/) = 0;

        virtual HRESULT put_Notes(
            BSTR Notes) = 0;

        virtual HRESULT get_CreatedBy(
            BSTR *CreatedBy /Out/) = 0;

        virtual HRESULT get_CreatedDate(
            VARIANT *CreatedDate /Out/) = 0;

        virtual HRESULT get_ModifiedBy(
            BSTR *ModifiedBy /Out/) = 0;

        virtual HRESULT get_ModifiedDate(
            VARIANT *ModifiedDate /Out/) = 0;

        virtual HRESULT Save() = 0;

        virtual HRESULT Delete() = 0;

        BSTR getURL();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_URL(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_URL()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setURL(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_URL(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_URL()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=URL, get=getURL, set=setURL)

        BSTR getDescription();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Description(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Description()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDescription(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Description(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Description()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Description, get=getDescription, set=setDescription)

        BSTR getNotes();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Notes(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Notes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNotes(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Notes(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Notes()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Notes, get=getNotes, set=setNotes)

        BSTR getCreatedBy();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_CreatedBy(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CreatedBy()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CreatedBy, get=getCreatedBy)

        VARIANT getCreatedDate();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_CreatedDate(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CreatedDate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CreatedDate, get=getCreatedDate)

        BSTR getModifiedBy();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ModifiedBy(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ModifiedBy()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ModifiedBy, get=getModifiedBy)

        VARIANT getModifiedDate();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_ModifiedDate(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ModifiedDate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ModifiedDate, get=getModifiedDate)
    };
};
