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
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

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

    struct MailMergeDataSource : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_HeaderSourceName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Type(
            WdMailMergeDataSource *prop /Out/) = 0;

        virtual HRESULT get_HeaderSourceType(
            WdMailMergeDataSource *prop /Out/) = 0;

        virtual HRESULT get_ConnectString(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_QueryString(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_QueryString(
            BSTR prop) = 0;

        virtual HRESULT get_ActiveRecord(
            WdMailMergeActiveRecord *prop /Out/) = 0;

        virtual HRESULT put_ActiveRecord(
            WdMailMergeActiveRecord prop) = 0;

        virtual HRESULT get_FirstRecord(
            long *prop /Out/) = 0;

        virtual HRESULT put_FirstRecord(
            long prop) = 0;

        virtual HRESULT get_LastRecord(
            long *prop /Out/) = 0;

        virtual HRESULT put_LastRecord(
            long prop) = 0;

        virtual HRESULT get_FieldNames(
            MailMergeFieldNames **prop /Out/) = 0;

        virtual HRESULT get_DataFields(
            MailMergeDataFields **prop /Out/) = 0;

        virtual HRESULT FindRecord2000(
            BSTR FindText,
            BSTR Field,
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_RecordCount(
            long *prop /Out/) = 0;

        virtual HRESULT get_Included(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Included(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_InvalidAddress(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_InvalidAddress(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_InvalidComments(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_InvalidComments(
            BSTR prop) = 0;

        virtual HRESULT get_MappedDataFields(
            MappedDataFields **prop /Out/) = 0;

        virtual HRESULT get_TableName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT FindRecord(
            BSTR FindText,
            VARIANT *Field = argMissing(),
            VARIANT_BOOL *prop /Out/ = 0) = 0;

        virtual HRESULT SetAllIncludedFlags(
            VARIANT_BOOL Included) = 0;

        virtual HRESULT SetAllErrorFlags(
            VARIANT_BOOL Invalid,
            BSTR InvalidComment) = 0;

        virtual HRESULT Close() = 0;
    };

    struct MailMergeFields : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT Item(
            long Index,
            MailMergeField **prop /Out/) = 0;

        virtual HRESULT Add(
            Range *Range,
            BSTR Name,
            MailMergeField **prop /Out/) = 0;

        virtual HRESULT AddAsk(
            Range *Range,
            BSTR Name,
            VARIANT *Prompt = argMissing(),
            VARIANT *DefaultAskText = argMissing(),
            VARIANT *AskOnce = argMissing(),
            MailMergeField **prop /Out/ = 0) = 0;

        virtual HRESULT AddFillIn(
            Range *Range,
            VARIANT *Prompt = argMissing(),
            VARIANT *DefaultFillInText = argMissing(),
            VARIANT *AskOnce = argMissing(),
            MailMergeField **prop /Out/ = 0) = 0;

        virtual HRESULT AddIf(
            Range *Range,
            BSTR MergeField,
            WdMailMergeComparison Comparison,
            VARIANT *CompareTo = argMissing(),
            VARIANT *TrueAutoText = argMissing(),
            VARIANT *TrueText = argMissing(),
            VARIANT *FalseAutoText = argMissing(),
            VARIANT *FalseText = argMissing(),
            MailMergeField **prop /Out/ = 0) = 0;

        virtual HRESULT AddMergeRec(
            Range *Range,
            MailMergeField **prop /Out/) = 0;

        virtual HRESULT AddMergeSeq(
            Range *Range,
            MailMergeField **prop /Out/) = 0;

        virtual HRESULT AddNext(
            Range *Range,
            MailMergeField **prop /Out/) = 0;

        virtual HRESULT AddNextIf(
            Range *Range,
            BSTR MergeField,
            WdMailMergeComparison Comparison,
            VARIANT *CompareTo = argMissing(),
            MailMergeField **prop /Out/ = 0) = 0;

        virtual HRESULT AddSet(
            Range *Range,
            BSTR Name,
            VARIANT *ValueText = argMissing(),
            VARIANT *ValueAutoText = argMissing(),
            MailMergeField **prop /Out/ = 0) = 0;

        virtual HRESULT AddSkipIf(
            Range *Range,
            BSTR MergeField,
            WdMailMergeComparison Comparison,
            VARIANT *CompareTo = argMissing(),
            MailMergeField **prop /Out/ = 0) = 0;
    };

    struct MailMergeField : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

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
    };

    struct MailMergeFieldNames : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT Item(
            VARIANT *Index,
            MailMergeFieldName **prop /Out/) = 0;
    };

    struct MailMergeFieldName : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Index(
            long *prop /Out/) = 0;
    };

    struct MailMergeDataFields : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT Item(
            VARIANT *Index,
            MailMergeDataField **prop /Out/) = 0;
    };

    struct MailMergeDataField : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Value(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Index(
            long *prop /Out/) = 0;
    };

    struct MappedDataFields : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT Item(
            WdMappedDataFields Index,
            MappedDataField **prop /Out/) = 0;
    };

    struct MappedDataField : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Index(
            long *prop /Out/) = 0;

        virtual HRESULT get_DataFieldName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Value(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_DataFieldIndex(
            long *prop /Out/) = 0;

        virtual HRESULT put_DataFieldIndex(
            long prop) = 0;
    };
};