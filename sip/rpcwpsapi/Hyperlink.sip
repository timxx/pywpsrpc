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
    struct Hyperlink : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_AddressOld(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Type(
            MsoHyperlinkType *prop /Out/) = 0;

        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT get_Shape(
            Shape **prop /Out/) = 0;

        virtual HRESULT get_SubAddressOld(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_ExtraInfoRequired(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Follow(
            VARIANT *NewWindow = argMissing(),
            VARIANT *AddHistory = argMissing(),
            VARIANT *ExtraInfo = argMissing(),
            VARIANT *Method = argMissing(),
            VARIANT *HeaderInfo = argMissing()) = 0;

        virtual HRESULT AddToFavorites() = 0;

        virtual HRESULT CreateNewDocument(
            BSTR FileName,
            VARIANT_BOOL EditNow,
            VARIANT_BOOL Overwrite) = 0;

        virtual HRESULT get_Address(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Address(
            BSTR prop) = 0;

        virtual HRESULT get_SubAddress(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_SubAddress(
            BSTR prop) = 0;

        virtual HRESULT get_EmailSubject(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_EmailSubject(
            BSTR prop) = 0;

        virtual HRESULT get_ScreenTip(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_ScreenTip(
            BSTR prop) = 0;

        virtual HRESULT get_TextToDisplay(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_TextToDisplay(
            BSTR prop) = 0;

        virtual HRESULT get_Target(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Target(
            BSTR prop) = 0;

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

        BSTR getAddressOld();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_AddressOld(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AddressOld()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AddressOld, get=getAddressOld)

        MsoHyperlinkType getType();
        %MethodCode
            wpsapi::MsoHyperlinkType prop = (wpsapi::MsoHyperlinkType)0;
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

        Shape* getShape();
        %MethodCode
            wpsapi::Shape *prop = nullptr;
            HRESULT hr = sipCpp->get_Shape(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Shape()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Shape, get=getShape)

        BSTR getSubAddressOld();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_SubAddressOld(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SubAddressOld()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SubAddressOld, get=getSubAddressOld)

        VARIANT_BOOL getExtraInfoRequired();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ExtraInfoRequired(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ExtraInfoRequired()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ExtraInfoRequired, get=getExtraInfoRequired)

        BSTR getAddress();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Address(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Address()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAddress(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Address(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Address()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Address, get=getAddress, set=setAddress)

        BSTR getSubAddress();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_SubAddress(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SubAddress()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSubAddress(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SubAddress(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SubAddress()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SubAddress, get=getSubAddress, set=setSubAddress)

        BSTR getEmailSubject();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_EmailSubject(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EmailSubject()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEmailSubject(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EmailSubject(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EmailSubject()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EmailSubject, get=getEmailSubject, set=setEmailSubject)

        BSTR getScreenTip();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ScreenTip(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ScreenTip()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setScreenTip(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ScreenTip(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ScreenTip()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ScreenTip, get=getScreenTip, set=setScreenTip)

        BSTR getTextToDisplay();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_TextToDisplay(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextToDisplay()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextToDisplay(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextToDisplay(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextToDisplay()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextToDisplay, get=getTextToDisplay, set=setTextToDisplay)

        BSTR getTarget();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Target(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Target()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTarget(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Target(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Target()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Target, get=getTarget, set=setTarget)
    };
};
