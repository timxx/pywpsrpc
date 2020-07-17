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
    struct Replacement : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Font(
            Font **prop /Out/) = 0;

        virtual HRESULT put_Font(
            Font *prop) = 0;

        virtual HRESULT get_ParagraphFormat(
            ParagraphFormat **prop /Out/) = 0;

        virtual HRESULT put_ParagraphFormat(
            ParagraphFormat *prop) = 0;

        virtual HRESULT get_Style(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Style(
            VARIANT *prop) = 0;

        virtual HRESULT get_Text(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Text(
            BSTR prop) = 0;

        virtual HRESULT get_LanguageID(
            WdLanguageID *prop /Out/) = 0;

        virtual HRESULT put_LanguageID(
            WdLanguageID prop) = 0;

        virtual HRESULT get_Highlight(
            long *prop /Out/) = 0;

        virtual HRESULT put_Highlight(
            long prop) = 0;

        virtual HRESULT get_Frame(
            Frame **prop /Out/) = 0;

        virtual HRESULT get_LanguageIDFarEast(
            WdLanguageID *prop /Out/) = 0;

        virtual HRESULT put_LanguageIDFarEast(
            WdLanguageID prop) = 0;

        virtual HRESULT ClearFormatting() = 0;

        virtual HRESULT get_NoProofing(
            long *prop /Out/) = 0;

        virtual HRESULT put_NoProofing(
            long prop) = 0;

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

        Font* getFont();
        %MethodCode
            wpsapi::Font *prop = nullptr;
            HRESULT hr = sipCpp->get_Font(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Font()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFont(Font *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Font(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Font()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Font, get=getFont, set=setFont)

        ParagraphFormat* getParagraphFormat();
        %MethodCode
            wpsapi::ParagraphFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_ParagraphFormat(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ParagraphFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setParagraphFormat(ParagraphFormat *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ParagraphFormat(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ParagraphFormat()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ParagraphFormat, get=getParagraphFormat, set=setParagraphFormat)

        VARIANT getStyle();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Style(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Style()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setStyle(VARIANT *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Style(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Style()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Style, get=getStyle, set=setStyle)

        BSTR getText();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Text(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Text()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setText(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Text(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Text()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Text, get=getText, set=setText)

        WdLanguageID getLanguageID();
        %MethodCode
            wpsapi::WdLanguageID prop = (wpsapi::WdLanguageID)0;
            HRESULT hr = sipCpp->get_LanguageID(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LanguageID()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLanguageID(WdLanguageID prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LanguageID(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LanguageID()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LanguageID, get=getLanguageID, set=setLanguageID)

        long getHighlight();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Highlight(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Highlight()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHighlight(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Highlight(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Highlight()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Highlight, get=getHighlight, set=setHighlight)

        Frame* getFrame();
        %MethodCode
            wpsapi::Frame *prop = nullptr;
            HRESULT hr = sipCpp->get_Frame(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Frame()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Frame, get=getFrame)

        WdLanguageID getLanguageIDFarEast();
        %MethodCode
            wpsapi::WdLanguageID prop = (wpsapi::WdLanguageID)0;
            HRESULT hr = sipCpp->get_LanguageIDFarEast(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LanguageIDFarEast()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLanguageIDFarEast(WdLanguageID prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LanguageIDFarEast(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LanguageIDFarEast()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LanguageIDFarEast, get=getLanguageIDFarEast, set=setLanguageIDFarEast)

        long getNoProofing();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_NoProofing(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NoProofing()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNoProofing(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NoProofing(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NoProofing()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NoProofing, get=getNoProofing, set=setNoProofing)
    };
};
