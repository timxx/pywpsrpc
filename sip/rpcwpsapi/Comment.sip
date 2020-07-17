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
    struct Comment : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT get_Reference(
            Range **prop /Out/) = 0;

        virtual HRESULT get_Scope(
            Range **prop /Out/) = 0;

        virtual HRESULT get_Index(
            long *prop /Out/) = 0;

        virtual HRESULT get_Author(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Author(
            BSTR prop) = 0;

        virtual HRESULT get_Initial(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Initial(
            BSTR prop) = 0;

        virtual HRESULT get_ShowTip(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowTip(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Edit() = 0;

        virtual HRESULT get_Date(
            DATE *prop /Out/) = 0;

        virtual HRESULT get_IsInk(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_Done(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Done(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Ancestor(
            Comment **prop /Out/) = 0;

        virtual HRESULT get_Contact(
            CoAuthor **prop /Out/) = 0;

        virtual HRESULT DeleteRecursively() = 0;

        virtual HRESULT get_Replies(
            Comments **prop /Out/) = 0;

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

        Range* getRange();
        %MethodCode
            wpsapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_Range(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Range()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Range, get=getRange)

        Range* getReference();
        %MethodCode
            wpsapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_Reference(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Reference()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Reference, get=getReference)

        Range* getScope();
        %MethodCode
            wpsapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_Scope(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Scope()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Scope, get=getScope)

        long getIndex();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Index(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Index()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Index, get=getIndex)

        BSTR getAuthor();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Author(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Author()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAuthor(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Author(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Author()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Author, get=getAuthor, set=setAuthor)

        BSTR getInitial();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Initial(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Initial()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setInitial(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Initial(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Initial()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Initial, get=getInitial, set=setInitial)

        VARIANT_BOOL getShowTip();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowTip(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowTip()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowTip(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowTip(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowTip()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowTip, get=getShowTip, set=setShowTip)

        DATE getDate();
        %MethodCode
            DATE prop = 0;
            HRESULT hr = sipCpp->get_Date(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Date()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Date, get=getDate)

        VARIANT_BOOL getIsInk();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IsInk(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IsInk()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=IsInk, get=getIsInk)

        VARIANT_BOOL getDone();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Done(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Done()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDone(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Done(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Done()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Done, get=getDone, set=setDone)

        Comment* getAncestor();
        %MethodCode
            wpsapi::Comment *prop = nullptr;
            HRESULT hr = sipCpp->get_Ancestor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Ancestor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Ancestor, get=getAncestor)

        CoAuthor* getContact();
        %MethodCode
            wpsapi::CoAuthor *prop = nullptr;
            HRESULT hr = sipCpp->get_Contact(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Contact()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Contact, get=getContact)

        Comments* getReplies();
        %MethodCode
            wpsapi::Comments *prop = nullptr;
            HRESULT hr = sipCpp->get_Replies(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Replies()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Replies, get=getReplies)
    };
};
