/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace etapi
{
    struct IHyperlink : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Range(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_Shape(
            Shape **RHS /Out/) = 0;

        virtual HRESULT get_SubAddress(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_SubAddress(
            BSTR RHS) = 0;

        virtual HRESULT get_Address(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Address(
            BSTR RHS) = 0;

        virtual HRESULT get_Type(
            long *RHS /Out/) = 0;

        virtual HRESULT AddToFavorites() = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Follow(
            VARIANT NewWindow = argMissing2(),
            VARIANT AddHistory = argMissing2(),
            VARIANT ExtraInfo = argMissing2(),
            VARIANT Method = argMissing2(),
            VARIANT HeaderInfo = argMissing2()) = 0;

        virtual HRESULT get_EmailSubject(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_EmailSubject(
            BSTR RHS) = 0;

        virtual HRESULT get_ScreenTip(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_ScreenTip(
            BSTR RHS) = 0;

        virtual HRESULT get_TextToDisplay(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_TextToDisplay(
            BSTR RHS) = 0;

        virtual HRESULT CreateNewDocument(
            BSTR Filename,
            VARIANT_BOOL EditNow,
            VARIANT_BOOL Overwrite) = 0;

        Application* getApplication();
        %MethodCode
            etapi::Application *prop = nullptr;
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

        XlCreator getCreator();
        %MethodCode
            etapi::XlCreator prop = (etapi::XlCreator)0;
            HRESULT hr = sipCpp->get_Creator(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Creator()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Creator, get=getCreator)

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

        Range* getRange();
        %MethodCode
            etapi::Range *prop = nullptr;
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
            etapi::Shape *prop = nullptr;
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

        long getType();
        %MethodCode
            long prop = 0;
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
    };
};
