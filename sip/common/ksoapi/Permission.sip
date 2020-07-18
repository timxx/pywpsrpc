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
    struct Permission : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Item(
            VARIANT Index,
            UserPermission **UserPerm /Out/) = 0;

        UserPermission* __getitem__(VARIANT index) const;
        %MethodCode
            ksoapi::UserPermission *prop = nullptr;
            if (sipCpp->get_Item(*a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT get_Count(
            long *Count /Out/) = 0;

        int __len__() const;
        %MethodCode
            long count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT get_EnableTrustedBrowser(
            VARIANT_BOOL *Enable /Out/) = 0;

        virtual HRESULT put_EnableTrustedBrowser(
            VARIANT_BOOL Enable) = 0;

        virtual HRESULT Add(
            BSTR UserId,
            VARIANT Permission = argMissing2(),
            VARIANT ExpirationDate = argMissing2(),
            UserPermission **UserPerm /Out/ = 0) = 0;

        virtual HRESULT ApplyPolicy(
            BSTR FileName) = 0;

        virtual HRESULT RemoveAll() = 0;

        virtual HRESULT get_Enabled(
            VARIANT_BOOL *Enabled /Out/) = 0;

        virtual HRESULT put_Enabled(
            VARIANT_BOOL Enabled) = 0;

        virtual HRESULT get_RequestPermissionURL(
            BSTR *Contact /Out/) = 0;

        virtual HRESULT put_RequestPermissionURL(
            BSTR Contact) = 0;

        virtual HRESULT get_PolicyName(
            BSTR *PolicyName /Out/) = 0;

        virtual HRESULT get_PolicyDescription(
            BSTR *PolicyDescription /Out/) = 0;

        virtual HRESULT get_StoreLicenses(
            VARIANT_BOOL *Enabled /Out/) = 0;

        virtual HRESULT put_StoreLicenses(
            VARIANT_BOOL Enabled) = 0;

        virtual HRESULT get_DocumentAuthor(
            BSTR *Author /Out/) = 0;

        virtual HRESULT put_DocumentAuthor(
            BSTR Author) = 0;

        virtual HRESULT get_PermissionFromPolicy(
            VARIANT_BOOL *FromPolicy /Out/) = 0;

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

        VARIANT_BOOL getEnableTrustedBrowser();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EnableTrustedBrowser(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EnableTrustedBrowser()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnableTrustedBrowser(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EnableTrustedBrowser(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EnableTrustedBrowser()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EnableTrustedBrowser, get=getEnableTrustedBrowser, set=setEnableTrustedBrowser)

        VARIANT_BOOL getEnabled();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Enabled(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Enabled()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnabled(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Enabled(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Enabled()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Enabled, get=getEnabled, set=setEnabled)

        BSTR getRequestPermissionURL();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_RequestPermissionURL(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RequestPermissionURL()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRequestPermissionURL(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RequestPermissionURL(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RequestPermissionURL()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RequestPermissionURL, get=getRequestPermissionURL, set=setRequestPermissionURL)

        BSTR getPolicyName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_PolicyName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PolicyName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PolicyName, get=getPolicyName)

        BSTR getPolicyDescription();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_PolicyDescription(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PolicyDescription()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PolicyDescription, get=getPolicyDescription)

        VARIANT_BOOL getStoreLicenses();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_StoreLicenses(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_StoreLicenses()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setStoreLicenses(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_StoreLicenses(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_StoreLicenses()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=StoreLicenses, get=getStoreLicenses, set=setStoreLicenses)

        BSTR getDocumentAuthor();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_DocumentAuthor(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DocumentAuthor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDocumentAuthor(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DocumentAuthor(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DocumentAuthor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DocumentAuthor, get=getDocumentAuthor, set=setDocumentAuthor)

        VARIANT_BOOL getPermissionFromPolicy();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PermissionFromPolicy(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PermissionFromPolicy()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PermissionFromPolicy, get=getPermissionFromPolicy)

    };
};
