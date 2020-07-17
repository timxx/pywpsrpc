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
    struct MailMerge : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_MainDocumentType(
            WdMailMergeMainDocType *prop /Out/) = 0;

        virtual HRESULT put_MainDocumentType(
            WdMailMergeMainDocType prop) = 0;

        virtual HRESULT get_State(
            WdMailMergeState *prop /Out/) = 0;

        virtual HRESULT get_Destination(
            WdMailMergeDestination *prop /Out/) = 0;

        virtual HRESULT put_Destination(
            WdMailMergeDestination prop) = 0;

        virtual HRESULT get_DataSource(
            MailMergeDataSource **prop /Out/) = 0;

        virtual HRESULT get_Fields(
            MailMergeFields **prop /Out/) = 0;

        virtual HRESULT get_ViewMailMergeFieldCodes(
            long *prop /Out/) = 0;

        virtual HRESULT put_ViewMailMergeFieldCodes(
            long prop) = 0;

        virtual HRESULT get_SuppressBlankLines(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_SuppressBlankLines(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MailAsAttachment(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MailAsAttachment(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MailAddressFieldName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_MailAddressFieldName(
            BSTR prop) = 0;

        virtual HRESULT get_MailSubject(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_MailSubject(
            BSTR prop) = 0;

        virtual HRESULT CreateDataSource(
            VARIANT *Name = argMissing(),
            VARIANT *PasswordDocument = argMissing(),
            VARIANT *WritePasswordDocument = argMissing(),
            VARIANT *HeaderRecord = argMissing(),
            VARIANT *MSQuery = argMissing(),
            VARIANT *SQLStatement = argMissing(),
            VARIANT *SQLStatement1 = argMissing(),
            VARIANT *Connection = argMissing(),
            VARIANT *LinkToSource = argMissing()) = 0;

        virtual HRESULT CreateHeaderSource(
            BSTR Name,
            VARIANT *PasswordDocument = argMissing(),
            VARIANT *WritePasswordDocument = argMissing(),
            VARIANT *HeaderRecord = argMissing()) = 0;

        virtual HRESULT OpenDataSource2000(
            BSTR Name,
            VARIANT *Format = argMissing(),
            VARIANT *ConfirmConversions = argMissing(),
            VARIANT *ReadOnly = argMissing(),
            VARIANT *LinkToSource = argMissing(),
            VARIANT *AddToRecentFiles = argMissing(),
            VARIANT *PasswordDocument = argMissing(),
            VARIANT *PasswordTemplate = argMissing(),
            VARIANT *Revert = argMissing(),
            VARIANT *WritePasswordDocument = argMissing(),
            VARIANT *WritePasswordTemplate = argMissing(),
            VARIANT *Connection = argMissing(),
            VARIANT *SQLStatement = argMissing(),
            VARIANT *SQLStatement1 = argMissing()) = 0;

        virtual HRESULT OpenHeaderSource2000(
            BSTR Name,
            VARIANT *Format = argMissing(),
            VARIANT *ConfirmConversions = argMissing(),
            VARIANT *ReadOnly = argMissing(),
            VARIANT *AddToRecentFiles = argMissing(),
            VARIANT *PasswordDocument = argMissing(),
            VARIANT *PasswordTemplate = argMissing(),
            VARIANT *Revert = argMissing(),
            VARIANT *WritePasswordDocument = argMissing(),
            VARIANT *WritePasswordTemplate = argMissing()) = 0;

        virtual HRESULT Execute(
            VARIANT *Pause = argMissing()) = 0;

        virtual HRESULT Check() = 0;

        virtual HRESULT EditDataSource() = 0;

        virtual HRESULT EditHeaderSource() = 0;

        virtual HRESULT EditMainDocument() = 0;

        virtual HRESULT UseAddressBook(
            BSTR Type) = 0;

        virtual HRESULT get_HighlightMergeFields(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HighlightMergeFields(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MailFormat(
            WdMailMergeMailFormat *prop /Out/) = 0;

        virtual HRESULT put_MailFormat(
            WdMailMergeMailFormat prop) = 0;

        virtual HRESULT get_ShowSendToCustom(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_ShowSendToCustom(
            BSTR prop) = 0;

        virtual HRESULT get_WizardState(
            long *prop /Out/) = 0;

        virtual HRESULT put_WizardState(
            long prop) = 0;

        virtual HRESULT OpenDataSource(
            BSTR Name,
            VARIANT *Format = argMissing(),
            VARIANT *ConfirmConversions = argMissing(),
            VARIANT *ReadOnly = argMissing(),
            VARIANT *LinkToSource = argMissing(),
            VARIANT *AddToRecentFiles = argMissing(),
            VARIANT *PasswordDocument = argMissing(),
            VARIANT *PasswordTemplate = argMissing(),
            VARIANT *Revert = argMissing(),
            VARIANT *WritePasswordDocument = argMissing(),
            VARIANT *WritePasswordTemplate = argMissing(),
            VARIANT *Connection = argMissing(),
            VARIANT *SQLStatement = argMissing(),
            VARIANT *SQLStatement1 = argMissing(),
            VARIANT *OpenExclusive = argMissing(),
            VARIANT *SubType = argMissing()) = 0;

        virtual HRESULT OpenHeaderSource(
            BSTR Name,
            VARIANT *Format = argMissing(),
            VARIANT *ConfirmConversions = argMissing(),
            VARIANT *ReadOnly = argMissing(),
            VARIANT *AddToRecentFiles = argMissing(),
            VARIANT *PasswordDocument = argMissing(),
            VARIANT *PasswordTemplate = argMissing(),
            VARIANT *Revert = argMissing(),
            VARIANT *WritePasswordDocument = argMissing(),
            VARIANT *WritePasswordTemplate = argMissing(),
            VARIANT *OpenExclusive = argMissing()) = 0;

        virtual HRESULT ShowWizard(
            VARIANT *InitialState,
            VARIANT *ShowDocumentStep = argMissing(),
            VARIANT *ShowTemplateStep = argMissing(),
            VARIANT *ShowDataStep = argMissing(),
            VARIANT *ShowWriteStep = argMissing(),
            VARIANT *ShowPreviewStep = argMissing(),
            VARIANT *ShowMergeStep = argMissing()) = 0;

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

        WdMailMergeMainDocType getMainDocumentType();
        %MethodCode
            wpsapi::WdMailMergeMainDocType prop = (wpsapi::WdMailMergeMainDocType)0;
            HRESULT hr = sipCpp->get_MainDocumentType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MainDocumentType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMainDocumentType(WdMailMergeMainDocType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MainDocumentType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MainDocumentType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MainDocumentType, get=getMainDocumentType, set=setMainDocumentType)

        WdMailMergeState getState();
        %MethodCode
            wpsapi::WdMailMergeState prop = (wpsapi::WdMailMergeState)0;
            HRESULT hr = sipCpp->get_State(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_State()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=State, get=getState)

        WdMailMergeDestination getDestination();
        %MethodCode
            wpsapi::WdMailMergeDestination prop = (wpsapi::WdMailMergeDestination)0;
            HRESULT hr = sipCpp->get_Destination(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Destination()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDestination(WdMailMergeDestination prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Destination(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Destination()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Destination, get=getDestination, set=setDestination)

        MailMergeDataSource* getDataSource();
        %MethodCode
            wpsapi::MailMergeDataSource *prop = nullptr;
            HRESULT hr = sipCpp->get_DataSource(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DataSource()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DataSource, get=getDataSource)

        MailMergeFields* getFields();
        %MethodCode
            wpsapi::MailMergeFields *prop = nullptr;
            HRESULT hr = sipCpp->get_Fields(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Fields()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Fields, get=getFields)

        long getViewMailMergeFieldCodes();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_ViewMailMergeFieldCodes(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ViewMailMergeFieldCodes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setViewMailMergeFieldCodes(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ViewMailMergeFieldCodes(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ViewMailMergeFieldCodes()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ViewMailMergeFieldCodes, get=getViewMailMergeFieldCodes, set=setViewMailMergeFieldCodes)

        VARIANT_BOOL getSuppressBlankLines();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_SuppressBlankLines(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SuppressBlankLines()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSuppressBlankLines(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SuppressBlankLines(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SuppressBlankLines()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SuppressBlankLines, get=getSuppressBlankLines, set=setSuppressBlankLines)

        VARIANT_BOOL getMailAsAttachment();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MailAsAttachment(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MailAsAttachment()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMailAsAttachment(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MailAsAttachment(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MailAsAttachment()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MailAsAttachment, get=getMailAsAttachment, set=setMailAsAttachment)

        BSTR getMailAddressFieldName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_MailAddressFieldName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MailAddressFieldName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMailAddressFieldName(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MailAddressFieldName(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MailAddressFieldName()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MailAddressFieldName, get=getMailAddressFieldName, set=setMailAddressFieldName)

        BSTR getMailSubject();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_MailSubject(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MailSubject()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMailSubject(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MailSubject(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MailSubject()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MailSubject, get=getMailSubject, set=setMailSubject)

        VARIANT_BOOL getHighlightMergeFields();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HighlightMergeFields(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HighlightMergeFields()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHighlightMergeFields(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HighlightMergeFields(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HighlightMergeFields()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HighlightMergeFields, get=getHighlightMergeFields, set=setHighlightMergeFields)

        WdMailMergeMailFormat getMailFormat();
        %MethodCode
            wpsapi::WdMailMergeMailFormat prop = (wpsapi::WdMailMergeMailFormat)0;
            HRESULT hr = sipCpp->get_MailFormat(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MailFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMailFormat(WdMailMergeMailFormat prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MailFormat(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MailFormat()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MailFormat, get=getMailFormat, set=setMailFormat)

        BSTR getShowSendToCustom();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ShowSendToCustom(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowSendToCustom()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowSendToCustom(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowSendToCustom(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowSendToCustom()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowSendToCustom, get=getShowSendToCustom, set=setShowSendToCustom)

        long getWizardState();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_WizardState(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WizardState()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWizardState(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_WizardState(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_WizardState()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=WizardState, get=getWizardState, set=setWizardState)
    };
};
