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

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

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

    };
};
