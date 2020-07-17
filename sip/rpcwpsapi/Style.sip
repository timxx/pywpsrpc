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
    struct Style : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_NameLocal(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_NameLocal(
            BSTR prop) = 0;

        virtual HRESULT get_BaseStyle(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_BaseStyle(
            VARIANT *prop) = 0;

        virtual HRESULT get_Description(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Type(
            WdStyleType *prop /Out/) = 0;

        virtual HRESULT get_BuiltIn(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_NextParagraphStyle(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_NextParagraphStyle(
            VARIANT *prop) = 0;

        virtual HRESULT get_InUse(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_Shading(
            Shading **prop /Out/) = 0;

        virtual HRESULT get_Borders(
            Borders **prop /Out/) = 0;

        virtual HRESULT put_Borders(
            Borders *prop) = 0;

        virtual HRESULT get_ParagraphFormat(
            ParagraphFormat **prop /Out/) = 0;

        virtual HRESULT put_ParagraphFormat(
            ParagraphFormat *prop) = 0;

        virtual HRESULT get_Font(
            Font **prop /Out/) = 0;

        virtual HRESULT put_Font(
            Font *prop) = 0;

        virtual HRESULT get_Frame(
            Frame **prop /Out/) = 0;

        virtual HRESULT get_LanguageID(
            WdLanguageID *prop /Out/) = 0;

        virtual HRESULT put_LanguageID(
            WdLanguageID prop) = 0;

        virtual HRESULT get_AutomaticallyUpdate(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutomaticallyUpdate(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ListTemplate(
            ListTemplate **prop /Out/) = 0;

        virtual HRESULT get_ListLevelNumber(
            long *prop /Out/) = 0;

        virtual HRESULT get_LanguageIDFarEast(
            WdLanguageID *prop /Out/) = 0;

        virtual HRESULT put_LanguageIDFarEast(
            WdLanguageID prop) = 0;

        virtual HRESULT get_Hidden(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Hidden(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT LinkToListTemplate(
            ListTemplate *ListTemplate,
            VARIANT *ListLevelNumber = argMissing()) = 0;

        virtual HRESULT get_NoProofing(
            long *prop /Out/) = 0;

        virtual HRESULT put_NoProofing(
            long prop) = 0;

        virtual HRESULT get_LinkStyle(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_LinkStyle(
            VARIANT *prop) = 0;

        virtual HRESULT get_Visibility(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Visibility(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_NoSpaceBetweenParagraphsOfSameStyle(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_NoSpaceBetweenParagraphsOfSameStyle(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Table(
            TableStyle **prop /Out/) = 0;

        virtual HRESULT get_Locked(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Locked(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Priority(
            long *prop /Out/) = 0;

        virtual HRESULT put_Priority(
            long prop) = 0;

        virtual HRESULT get_UnhideWhenUsed(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_UnhideWhenUsed(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_QuickStyle(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_QuickStyle(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Linked(
            VARIANT_BOOL *prop /Out/) = 0;

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

        BSTR getNameLocal();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_NameLocal(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NameLocal()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNameLocal(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NameLocal(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NameLocal()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NameLocal, get=getNameLocal, set=setNameLocal)

        VARIANT getBaseStyle();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_BaseStyle(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BaseStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBaseStyle(VARIANT *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BaseStyle(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BaseStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BaseStyle, get=getBaseStyle, set=setBaseStyle)

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

        %Property(name=Description, get=getDescription)

        WdStyleType getType();
        %MethodCode
            wpsapi::WdStyleType prop = (wpsapi::WdStyleType)0;
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

        VARIANT_BOOL getBuiltIn();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_BuiltIn(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BuiltIn()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=BuiltIn, get=getBuiltIn)

        VARIANT getNextParagraphStyle();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_NextParagraphStyle(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NextParagraphStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNextParagraphStyle(VARIANT *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NextParagraphStyle(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NextParagraphStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NextParagraphStyle, get=getNextParagraphStyle, set=setNextParagraphStyle)

        VARIANT_BOOL getInUse();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_InUse(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InUse()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=InUse, get=getInUse)

        Shading* getShading();
        %MethodCode
            wpsapi::Shading *prop = nullptr;
            HRESULT hr = sipCpp->get_Shading(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Shading()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Shading, get=getShading)

        Borders* getBorders();
        %MethodCode
            wpsapi::Borders *prop = nullptr;
            HRESULT hr = sipCpp->get_Borders(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Borders()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBorders(Borders *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Borders(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Borders()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Borders, get=getBorders, set=setBorders)

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

        VARIANT_BOOL getAutomaticallyUpdate();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutomaticallyUpdate(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutomaticallyUpdate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutomaticallyUpdate(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutomaticallyUpdate(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutomaticallyUpdate()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutomaticallyUpdate, get=getAutomaticallyUpdate, set=setAutomaticallyUpdate)

        ListTemplate* getListTemplate();
        %MethodCode
            wpsapi::ListTemplate *prop = nullptr;
            HRESULT hr = sipCpp->get_ListTemplate(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ListTemplate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ListTemplate, get=getListTemplate)

        long getListLevelNumber();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_ListLevelNumber(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ListLevelNumber()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ListLevelNumber, get=getListLevelNumber)

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

        VARIANT_BOOL getHidden();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Hidden(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Hidden()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHidden(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Hidden(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Hidden()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Hidden, get=getHidden, set=setHidden)

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

        VARIANT getLinkStyle();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_LinkStyle(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LinkStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLinkStyle(VARIANT *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LinkStyle(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LinkStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LinkStyle, get=getLinkStyle, set=setLinkStyle)

        VARIANT_BOOL getVisibility();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Visibility(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Visibility()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setVisibility(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Visibility(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Visibility()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Visibility, get=getVisibility, set=setVisibility)

        VARIANT_BOOL getNoSpaceBetweenParagraphsOfSameStyle();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_NoSpaceBetweenParagraphsOfSameStyle(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NoSpaceBetweenParagraphsOfSameStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNoSpaceBetweenParagraphsOfSameStyle(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NoSpaceBetweenParagraphsOfSameStyle(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NoSpaceBetweenParagraphsOfSameStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NoSpaceBetweenParagraphsOfSameStyle, get=getNoSpaceBetweenParagraphsOfSameStyle, set=setNoSpaceBetweenParagraphsOfSameStyle)

        TableStyle* getTable();
        %MethodCode
            wpsapi::TableStyle *prop = nullptr;
            HRESULT hr = sipCpp->get_Table(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Table()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Table, get=getTable)

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

        long getPriority();
        %MethodCode
            long prop = 0;
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

        PyObject* setPriority(long prop);
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

        VARIANT_BOOL getUnhideWhenUsed();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_UnhideWhenUsed(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UnhideWhenUsed()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUnhideWhenUsed(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_UnhideWhenUsed(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_UnhideWhenUsed()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=UnhideWhenUsed, get=getUnhideWhenUsed, set=setUnhideWhenUsed)

        VARIANT_BOOL getQuickStyle();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_QuickStyle(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_QuickStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setQuickStyle(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_QuickStyle(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_QuickStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=QuickStyle, get=getQuickStyle, set=setQuickStyle)

        VARIANT_BOOL getLinked();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Linked(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Linked()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Linked, get=getLinked)
    };
};
