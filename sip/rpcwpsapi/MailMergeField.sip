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
    struct MailMergeField : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Type(
            WdFieldType *prop /Out/) = 0;

        virtual HRESULT get_Locked(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Locked(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Code(
            Range **prop /Out/) = 0;

        virtual HRESULT put_Code(
            Range *prop) = 0;

        virtual HRESULT get_Next(
            MailMergeField **prop /Out/) = 0;

        virtual HRESULT get_Previous(
            MailMergeField **prop /Out/) = 0;

        virtual HRESULT Select() = 0;

        virtual HRESULT Copy() = 0;

        virtual HRESULT Cut() = 0;

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

        WdFieldType getType();
        %MethodCode
            wpsapi::WdFieldType prop = (wpsapi::WdFieldType)0;
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

        VARIANT_BOOL getLocked();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Locked(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Locked()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLocked(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Locked(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Locked()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Locked, get=getLocked, set=setLocked)

        Range* getCode();
        %MethodCode
            wpsapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_Code(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Code()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCode(Range *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Code(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Code()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Code, get=getCode, set=setCode)

        MailMergeField* getNext();
        %MethodCode
            wpsapi::MailMergeField *prop = nullptr;
            HRESULT hr = sipCpp->get_Next(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Next()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Next, get=getNext)

        MailMergeField* getPrevious();
        %MethodCode
            wpsapi::MailMergeField *prop = nullptr;
            HRESULT hr = sipCpp->get_Previous(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Previous()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Previous, get=getPrevious)
    };
};
