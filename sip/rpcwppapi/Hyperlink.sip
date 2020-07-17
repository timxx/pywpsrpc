/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wppapi
{
    struct Hyperlink : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Type(
            MsoHyperlinkType *Type /Out/) = 0;

        virtual HRESULT get_Address(
            BSTR *Address /Out/) = 0;

        virtual HRESULT put_Address(
            BSTR Address) = 0;

        virtual HRESULT get_SubAddress(
            BSTR *SubAddress /Out/) = 0;

        virtual HRESULT put_SubAddress(
            BSTR SubAddress) = 0;

        virtual HRESULT AddToFavorites() = 0;

        virtual HRESULT get_EmailSubject(
            BSTR *EmailSubject /Out/) = 0;

        virtual HRESULT put_EmailSubject(
            BSTR EmailSubject) = 0;

        virtual HRESULT get_ScreenTip(
            BSTR *ScreenTip /Out/) = 0;

        virtual HRESULT put_ScreenTip(
            BSTR ScreenTip) = 0;

        virtual HRESULT get_TextToDisplay(
            BSTR *TextToDisplay /Out/) = 0;

        virtual HRESULT put_TextToDisplay(
            BSTR TextToDisplay) = 0;

        virtual HRESULT get_ShowAndReturn(
            MsoTriState *ShowAndReturn /Out/) = 0;

        virtual HRESULT put_ShowAndReturn(
            MsoTriState ShowAndReturn) = 0;

        virtual HRESULT Follow() = 0;

        virtual HRESULT CreateNewDocument(
            BSTR FileName,
            MsoTriState EditNow,
            MsoTriState Overwrite) = 0;

        virtual HRESULT Delete() = 0;

        Application* getApplication();
        %MethodCode
            wppapi::Application *prop = nullptr;
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

        MsoHyperlinkType getType();
        %MethodCode
            wppapi::MsoHyperlinkType prop = (wppapi::MsoHyperlinkType)0;
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

        MsoTriState getShowAndReturn();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_ShowAndReturn(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowAndReturn()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowAndReturn(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowAndReturn(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowAndReturn()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowAndReturn, get=getShowAndReturn, set=setShowAndReturn)
    };
};
