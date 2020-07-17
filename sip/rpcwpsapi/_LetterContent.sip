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
    struct _LetterContent : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Duplicate(
            LetterContent **prop /Out/) = 0;

        virtual HRESULT get_DateFormat(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_DateFormat(
            BSTR prop) = 0;

        virtual HRESULT get_IncludeHeaderFooter(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_IncludeHeaderFooter(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_PageDesign(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_PageDesign(
            BSTR prop) = 0;

        virtual HRESULT get_LetterStyle(
            WdLetterStyle *prop /Out/) = 0;

        virtual HRESULT put_LetterStyle(
            WdLetterStyle prop) = 0;

        virtual HRESULT get_Letterhead(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Letterhead(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_LetterheadLocation(
            WdLetterheadLocation *prop /Out/) = 0;

        virtual HRESULT put_LetterheadLocation(
            WdLetterheadLocation prop) = 0;

        virtual HRESULT get_LetterheadSize(
            single *prop /Out/) = 0;

        virtual HRESULT put_LetterheadSize(
            single prop) = 0;

        virtual HRESULT get_RecipientName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_RecipientName(
            BSTR prop) = 0;

        virtual HRESULT get_RecipientAddress(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_RecipientAddress(
            BSTR prop) = 0;

        virtual HRESULT get_Salutation(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Salutation(
            BSTR prop) = 0;

        virtual HRESULT get_SalutationType(
            WdSalutationType *prop /Out/) = 0;

        virtual HRESULT put_SalutationType(
            WdSalutationType prop) = 0;

        virtual HRESULT get_RecipientReference(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_RecipientReference(
            BSTR prop) = 0;

        virtual HRESULT get_MailingInstructions(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_MailingInstructions(
            BSTR prop) = 0;

        virtual HRESULT get_AttentionLine(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_AttentionLine(
            BSTR prop) = 0;

        virtual HRESULT get_Subject(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Subject(
            BSTR prop) = 0;

        virtual HRESULT get_EnclosureNumber(
            long *prop /Out/) = 0;

        virtual HRESULT put_EnclosureNumber(
            long prop) = 0;

        virtual HRESULT get_CCList(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_CCList(
            BSTR prop) = 0;

        virtual HRESULT get_ReturnAddress(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_ReturnAddress(
            BSTR prop) = 0;

        virtual HRESULT get_SenderName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_SenderName(
            BSTR prop) = 0;

        virtual HRESULT get_Closing(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Closing(
            BSTR prop) = 0;

        virtual HRESULT get_SenderCompany(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_SenderCompany(
            BSTR prop) = 0;

        virtual HRESULT get_SenderJobTitle(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_SenderJobTitle(
            BSTR prop) = 0;

        virtual HRESULT get_SenderInitials(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_SenderInitials(
            BSTR prop) = 0;

        virtual HRESULT get_InfoBlock(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_InfoBlock(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_RecipientCode(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_RecipientCode(
            BSTR prop) = 0;

        virtual HRESULT get_RecipientGender(
            WdSalutationGender *prop /Out/) = 0;

        virtual HRESULT put_RecipientGender(
            WdSalutationGender prop) = 0;

        virtual HRESULT get_ReturnAddressShortForm(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_ReturnAddressShortForm(
            BSTR prop) = 0;

        virtual HRESULT get_SenderCity(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_SenderCity(
            BSTR prop) = 0;

        virtual HRESULT get_SenderCode(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_SenderCode(
            BSTR prop) = 0;

        virtual HRESULT get_SenderGender(
            WdSalutationGender *prop /Out/) = 0;

        virtual HRESULT put_SenderGender(
            WdSalutationGender prop) = 0;

        virtual HRESULT get_SenderReference(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_SenderReference(
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

        LetterContent* getDuplicate();
        %MethodCode
            wpsapi::LetterContent *prop = nullptr;
            HRESULT hr = sipCpp->get_Duplicate(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Duplicate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Duplicate, get=getDuplicate)

        BSTR getDateFormat();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_DateFormat(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DateFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDateFormat(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DateFormat(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DateFormat()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DateFormat, get=getDateFormat, set=setDateFormat)

        VARIANT_BOOL getIncludeHeaderFooter();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IncludeHeaderFooter(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IncludeHeaderFooter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setIncludeHeaderFooter(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_IncludeHeaderFooter(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_IncludeHeaderFooter()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=IncludeHeaderFooter, get=getIncludeHeaderFooter, set=setIncludeHeaderFooter)

        BSTR getPageDesign();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_PageDesign(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PageDesign()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPageDesign(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PageDesign(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PageDesign()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PageDesign, get=getPageDesign, set=setPageDesign)

        WdLetterStyle getLetterStyle();
        %MethodCode
            wpsapi::WdLetterStyle prop = (wpsapi::WdLetterStyle)0;
            HRESULT hr = sipCpp->get_LetterStyle(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LetterStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLetterStyle(WdLetterStyle prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LetterStyle(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LetterStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LetterStyle, get=getLetterStyle, set=setLetterStyle)

        VARIANT_BOOL getLetterhead();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Letterhead(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Letterhead()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLetterhead(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Letterhead(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Letterhead()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Letterhead, get=getLetterhead, set=setLetterhead)

        WdLetterheadLocation getLetterheadLocation();
        %MethodCode
            wpsapi::WdLetterheadLocation prop = (wpsapi::WdLetterheadLocation)0;
            HRESULT hr = sipCpp->get_LetterheadLocation(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LetterheadLocation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLetterheadLocation(WdLetterheadLocation prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LetterheadLocation(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LetterheadLocation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LetterheadLocation, get=getLetterheadLocation, set=setLetterheadLocation)

        single getLetterheadSize();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_LetterheadSize(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LetterheadSize()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLetterheadSize(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LetterheadSize(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LetterheadSize()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LetterheadSize, get=getLetterheadSize, set=setLetterheadSize)

        BSTR getRecipientName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_RecipientName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RecipientName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRecipientName(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RecipientName(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RecipientName()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RecipientName, get=getRecipientName, set=setRecipientName)

        BSTR getRecipientAddress();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_RecipientAddress(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RecipientAddress()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRecipientAddress(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RecipientAddress(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RecipientAddress()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RecipientAddress, get=getRecipientAddress, set=setRecipientAddress)

        BSTR getSalutation();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Salutation(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Salutation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSalutation(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Salutation(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Salutation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Salutation, get=getSalutation, set=setSalutation)

        WdSalutationType getSalutationType();
        %MethodCode
            wpsapi::WdSalutationType prop = (wpsapi::WdSalutationType)0;
            HRESULT hr = sipCpp->get_SalutationType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SalutationType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSalutationType(WdSalutationType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SalutationType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SalutationType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SalutationType, get=getSalutationType, set=setSalutationType)

        BSTR getRecipientReference();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_RecipientReference(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RecipientReference()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRecipientReference(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RecipientReference(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RecipientReference()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RecipientReference, get=getRecipientReference, set=setRecipientReference)

        BSTR getMailingInstructions();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_MailingInstructions(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MailingInstructions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMailingInstructions(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MailingInstructions(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MailingInstructions()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MailingInstructions, get=getMailingInstructions, set=setMailingInstructions)

        BSTR getAttentionLine();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_AttentionLine(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AttentionLine()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAttentionLine(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AttentionLine(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AttentionLine()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AttentionLine, get=getAttentionLine, set=setAttentionLine)

        BSTR getSubject();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Subject(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Subject()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSubject(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Subject(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Subject()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Subject, get=getSubject, set=setSubject)

        long getEnclosureNumber();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_EnclosureNumber(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EnclosureNumber()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnclosureNumber(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EnclosureNumber(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EnclosureNumber()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EnclosureNumber, get=getEnclosureNumber, set=setEnclosureNumber)

        BSTR getCCList();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_CCList(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CCList()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCCList(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CCList(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CCList()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CCList, get=getCCList, set=setCCList)

        BSTR getReturnAddress();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ReturnAddress(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ReturnAddress()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setReturnAddress(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ReturnAddress(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ReturnAddress()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ReturnAddress, get=getReturnAddress, set=setReturnAddress)

        BSTR getSenderName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_SenderName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SenderName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSenderName(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SenderName(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SenderName()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SenderName, get=getSenderName, set=setSenderName)

        BSTR getClosing();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Closing(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Closing()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setClosing(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Closing(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Closing()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Closing, get=getClosing, set=setClosing)

        BSTR getSenderCompany();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_SenderCompany(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SenderCompany()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSenderCompany(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SenderCompany(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SenderCompany()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SenderCompany, get=getSenderCompany, set=setSenderCompany)

        BSTR getSenderJobTitle();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_SenderJobTitle(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SenderJobTitle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSenderJobTitle(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SenderJobTitle(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SenderJobTitle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SenderJobTitle, get=getSenderJobTitle, set=setSenderJobTitle)

        BSTR getSenderInitials();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_SenderInitials(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SenderInitials()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSenderInitials(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SenderInitials(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SenderInitials()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SenderInitials, get=getSenderInitials, set=setSenderInitials)

        VARIANT_BOOL getInfoBlock();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_InfoBlock(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InfoBlock()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setInfoBlock(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_InfoBlock(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_InfoBlock()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=InfoBlock, get=getInfoBlock, set=setInfoBlock)

        BSTR getRecipientCode();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_RecipientCode(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RecipientCode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRecipientCode(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RecipientCode(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RecipientCode()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RecipientCode, get=getRecipientCode, set=setRecipientCode)

        WdSalutationGender getRecipientGender();
        %MethodCode
            wpsapi::WdSalutationGender prop = (wpsapi::WdSalutationGender)0;
            HRESULT hr = sipCpp->get_RecipientGender(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RecipientGender()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRecipientGender(WdSalutationGender prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RecipientGender(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RecipientGender()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RecipientGender, get=getRecipientGender, set=setRecipientGender)

        BSTR getReturnAddressShortForm();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ReturnAddressShortForm(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ReturnAddressShortForm()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setReturnAddressShortForm(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ReturnAddressShortForm(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ReturnAddressShortForm()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ReturnAddressShortForm, get=getReturnAddressShortForm, set=setReturnAddressShortForm)

        BSTR getSenderCity();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_SenderCity(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SenderCity()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSenderCity(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SenderCity(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SenderCity()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SenderCity, get=getSenderCity, set=setSenderCity)

        BSTR getSenderCode();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_SenderCode(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SenderCode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSenderCode(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SenderCode(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SenderCode()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SenderCode, get=getSenderCode, set=setSenderCode)

        WdSalutationGender getSenderGender();
        %MethodCode
            wpsapi::WdSalutationGender prop = (wpsapi::WdSalutationGender)0;
            HRESULT hr = sipCpp->get_SenderGender(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SenderGender()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSenderGender(WdSalutationGender prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SenderGender(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SenderGender()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SenderGender, get=getSenderGender, set=setSenderGender)

        BSTR getSenderReference();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_SenderReference(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SenderReference()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSenderReference(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SenderReference(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SenderReference()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SenderReference, get=getSenderReference, set=setSenderReference)
    };
};
