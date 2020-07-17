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
    struct SharedWorkspaceTask : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Title(
            BSTR *Title /Out/) = 0;

        virtual HRESULT put_Title(
            BSTR Title) = 0;

        virtual HRESULT get_AssignedTo(
            BSTR *AssignedTo /Out/) = 0;

        virtual HRESULT put_AssignedTo(
            BSTR AssignedTo) = 0;

        virtual HRESULT get_Status(
            MsoSharedWorkspaceTaskStatus *Status /Out/) = 0;

        virtual HRESULT put_Status(
            MsoSharedWorkspaceTaskStatus Status) = 0;

        virtual HRESULT get_Priority(
            MsoSharedWorkspaceTaskPriority *Priority /Out/) = 0;

        virtual HRESULT put_Priority(
            MsoSharedWorkspaceTaskPriority Priority) = 0;

        virtual HRESULT get_Description(
            BSTR *Description /Out/) = 0;

        virtual HRESULT put_Description(
            BSTR Description) = 0;

        virtual HRESULT get_DueDate(
            VARIANT *DueDate /Out/) = 0;

        virtual HRESULT put_DueDate(
            VARIANT DueDate) = 0;

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

        BSTR getAssignedTo();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_AssignedTo(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AssignedTo()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAssignedTo(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AssignedTo(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AssignedTo()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AssignedTo, get=getAssignedTo, set=setAssignedTo)

        MsoSharedWorkspaceTaskStatus getStatus();
        %MethodCode
            ksoapi::MsoSharedWorkspaceTaskStatus prop = (ksoapi::MsoSharedWorkspaceTaskStatus)0;
            HRESULT hr = sipCpp->get_Status(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Status()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setStatus(MsoSharedWorkspaceTaskStatus prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Status(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Status()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Status, get=getStatus, set=setStatus)

        MsoSharedWorkspaceTaskPriority getPriority();
        %MethodCode
            ksoapi::MsoSharedWorkspaceTaskPriority prop = (ksoapi::MsoSharedWorkspaceTaskPriority)0;
            HRESULT hr = sipCpp->get_Priority(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Priority()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPriority(MsoSharedWorkspaceTaskPriority prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Priority(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Priority()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Priority, get=getPriority, set=setPriority)

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

        VARIANT getDueDate();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_DueDate(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DueDate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDueDate(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DueDate(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DueDate()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DueDate, get=getDueDate, set=setDueDate)

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
