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
    struct Field : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Code(
            Range **prop /Out/) = 0;

        virtual HRESULT put_Code(
            Range *prop) = 0;

        virtual HRESULT get_Type(
            WdFieldType *prop /Out/) = 0;

        virtual HRESULT get_Locked(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Locked(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Kind(
            WdFieldKind *prop /Out/) = 0;

        virtual HRESULT get_Result(
            Range **prop /Out/) = 0;

        virtual HRESULT put_Result(
            Range *prop) = 0;

        virtual HRESULT get_Data(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Data(
            BSTR prop) = 0;

        virtual HRESULT get_Next(
            Field **prop /Out/) = 0;

        virtual HRESULT get_Previous(
            Field **prop /Out/) = 0;

        virtual HRESULT get_Index(
            long *prop /Out/) = 0;

        virtual HRESULT get_ShowCodes(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowCodes(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_LinkFormat(
            LinkFormat **prop /Out/) = 0;

        virtual HRESULT get_OLEFormat(
            OLEFormat **prop /Out/) = 0;

        virtual HRESULT get_InlineShape(
            InlineShape **prop /Out/) = 0;

        virtual HRESULT Select() = 0;

        virtual HRESULT Update(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT Unlink() = 0;

        virtual HRESULT UpdateSource() = 0;

        virtual HRESULT DoClick() = 0;

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

        WdFieldKind getKind();
        %MethodCode
            wpsapi::WdFieldKind prop = (wpsapi::WdFieldKind)0;
            HRESULT hr = sipCpp->get_Kind(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Kind()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Kind, get=getKind)

        Range* getResult();
        %MethodCode
            wpsapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_Result(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Result()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setResult(Range *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Result(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Result()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Result, get=getResult, set=setResult)

        BSTR getData();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Data(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Data()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setData(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Data(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Data()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Data, get=getData, set=setData)

        Field* getNext();
        %MethodCode
            wpsapi::Field *prop = nullptr;
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

        Field* getPrevious();
        %MethodCode
            wpsapi::Field *prop = nullptr;
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

        VARIANT_BOOL getShowCodes();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowCodes(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowCodes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowCodes(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowCodes(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowCodes()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowCodes, get=getShowCodes, set=setShowCodes)

        LinkFormat* getLinkFormat();
        %MethodCode
            wpsapi::LinkFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_LinkFormat(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LinkFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=LinkFormat, get=getLinkFormat)

        OLEFormat* getOLEFormat();
        %MethodCode
            wpsapi::OLEFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_OLEFormat(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OLEFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=OLEFormat, get=getOLEFormat)

        InlineShape* getInlineShape();
        %MethodCode
            wpsapi::InlineShape *prop = nullptr;
            HRESULT hr = sipCpp->get_InlineShape(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InlineShape()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=InlineShape, get=getInlineShape)
    };
};
