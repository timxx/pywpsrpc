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
    struct _Workbook : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_AcceptLabelsInFormulas(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AcceptLabelsInFormulas(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT Activate(
            long lcid) = 0;

        virtual HRESULT get_ActiveChart(
            Chart **RHS /Out/) = 0;

        virtual HRESULT get_ActiveSheet(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Author(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Author(
            long lcid,
            BSTR RHS) = 0;

        virtual HRESULT get_AutoUpdateFrequency(
            long *RHS /Out/) = 0;

        virtual HRESULT put_AutoUpdateFrequency(
            long RHS) = 0;

        virtual HRESULT get_AutoUpdateSaveChanges(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AutoUpdateSaveChanges(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ChangeHistoryDuration(
            long *RHS /Out/) = 0;

        virtual HRESULT put_ChangeHistoryDuration(
            long RHS) = 0;

        virtual HRESULT get_BuiltinDocumentProperties(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT ChangeFileAccess(
            XlFileAccess Mode,
            VARIANT WritePassword,
            VARIANT Notify,
            long lcid) = 0;

        virtual HRESULT ChangeLink(
            BSTR Name,
            BSTR NewName,
            XlLinkType Type,
            long lcid) = 0;

        virtual HRESULT get_Charts(
            Sheets **RHS /Out/) = 0;

        virtual HRESULT Close(
            VARIANT SaveChanges = argMissing2(),
            VARIANT Filename = argMissing2(),
            VARIANT RouteWorkbook = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT get_CodeName(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get__CodeName(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put__CodeName(
            BSTR RHS) = 0;

        virtual HRESULT get_Colors(
            VARIANT Index,
            long lcid,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Colors(
            VARIANT Index,
            long lcid,
            VARIANT RHS) = 0;

        virtual HRESULT get_CommandBars(
            ksoapi::CommandBars **RHS /Out/) = 0;

        virtual HRESULT get_Comments(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Comments(
            long lcid,
            BSTR RHS) = 0;

        virtual HRESULT get_ConflictResolution(
            XlSaveConflictResolution *RHS /Out/) = 0;

        virtual HRESULT put_ConflictResolution(
            XlSaveConflictResolution RHS) = 0;

        virtual HRESULT get_Container(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_CreateBackup(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_CustomDocumentProperties(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Date1904(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Date1904(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT DeleteNumberFormat(
            BSTR NumberFormat,
            long lcid) = 0;

        virtual HRESULT get_DialogSheets(
            Sheets **RHS /Out/) = 0;

        virtual HRESULT get_DisplayDrawingObjects(
            long lcid,
            XlDisplayDrawingObjects *RHS /Out/) = 0;

        virtual HRESULT put_DisplayDrawingObjects(
            long lcid,
            XlDisplayDrawingObjects RHS) = 0;

        virtual HRESULT ExclusiveAccess(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_FileFormat(
            long lcid,
            XlFileFormat *RHS /Out/) = 0;

        virtual HRESULT ForwardMailer(
            long lcid) = 0;

        virtual HRESULT get_FullName(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_HasMailer(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_HasMailer(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_HasPassword(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_HasRoutingSlip(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_HasRoutingSlip(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_IsAddin(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_IsAddin(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Keywords(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Keywords(
            long lcid,
            BSTR RHS) = 0;

        virtual HRESULT LinkInfo(
            BSTR Name,
            XlLinkInfo LinkInfo,
            VARIANT Type,
            VARIANT EditionRef,
            long lcid,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT LinkSources(
            VARIANT Type,
            long lcid,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Mailer(
            Mailer **RHS /Out/) = 0;

        virtual HRESULT MergeWorkbook(
            VARIANT Filename) = 0;

        virtual HRESULT get_Modules(
            Sheets **RHS /Out/) = 0;

        virtual HRESULT get_MultiUserEditing(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Names(
            Names **RHS /Out/) = 0;

        virtual HRESULT NewWindow(
            long lcid,
            Window **RHS /Out/) = 0;

        virtual HRESULT get_OnSave(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_OnSave(
            long lcid,
            BSTR RHS) = 0;

        virtual HRESULT get_OnSheetActivate(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_OnSheetActivate(
            long lcid,
            BSTR RHS) = 0;

        virtual HRESULT get_OnSheetDeactivate(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_OnSheetDeactivate(
            long lcid,
            BSTR RHS) = 0;

        virtual HRESULT OpenLinks(
            BSTR Name,
            VARIANT ReadOnly,
            VARIANT Type,
            long lcid) = 0;

        virtual HRESULT get_Path(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_PersonalViewListSettings(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_PersonalViewListSettings(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_PersonalViewPrintSettings(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_PersonalViewPrintSettings(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT PivotCaches(
            PivotCaches **RHS /Out/) = 0;

        virtual HRESULT Post(
            VARIANT DestName,
            long lcid) = 0;

        virtual HRESULT get_PrecisionAsDisplayed(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_PrecisionAsDisplayed(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT __PrintOut(
            VARIANT From,
            VARIANT To,
            VARIANT Copies,
            VARIANT Preview,
            VARIANT ActivePrinter,
            VARIANT PrintToFile,
            VARIANT Collate,
            long lcid) = 0;

        virtual HRESULT PrintPreview(
            VARIANT EnableChanges,
            long lcid) = 0;

        virtual HRESULT _Protect(
            VARIANT Password,
            VARIANT Structure,
            VARIANT Windows) = 0;

        virtual HRESULT _ProtectSharing(
            VARIANT Filename,
            VARIANT Password,
            VARIANT WriteResPassword,
            VARIANT ReadOnlyRecommended,
            VARIANT CreateBackup,
            VARIANT SharingPassword) = 0;

        virtual HRESULT get_ProtectStructure(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_ProtectWindows(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_ReadOnly(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get__ReadOnlyRecommended(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT RefreshAll() = 0;

        virtual HRESULT Reply(
            long lcid) = 0;

        virtual HRESULT ReplyAll(
            long lcid) = 0;

        virtual HRESULT RemoveUser(
            long Index) = 0;

        virtual HRESULT get_RevisionNumber(
            long lcid,
            long *RHS /Out/) = 0;

        virtual HRESULT Route(
            long lcid) = 0;

        virtual HRESULT get_Routed(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_RoutingSlip(
            RoutingSlip **RHS /Out/) = 0;

        virtual HRESULT RunAutoMacros(
            XlRunAutoMacro Which,
            long lcid) = 0;

        virtual HRESULT Save(
            long lcid) = 0;

        virtual HRESULT _SaveAs(
            VARIANT Filename,
            VARIANT FileFormat,
            VARIANT Password,
            VARIANT WriteResPassword,
            VARIANT ReadOnlyRecommended,
            VARIANT CreateBackup,
            XlSaveAsAccessMode AccessMode,
            VARIANT ConflictResolution,
            VARIANT AddToMru,
            VARIANT TextCodepage,
            VARIANT TextVisualLayout,
            long lcid) = 0;

        virtual HRESULT SaveCopyAs(
            VARIANT Filename,
            long lcid) = 0;

        virtual HRESULT get_Saved(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Saved(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_SaveLinkValues(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_SaveLinkValues(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT SendMail(
            VARIANT Recipients,
            VARIANT Subject,
            VARIANT ReturnReceipt,
            long lcid) = 0;

        virtual HRESULT SendMailer(
            VARIANT FileFormat,
            XlPriority Priority,
            long lcid) = 0;

        virtual HRESULT SetLinkOnData(
            BSTR Name,
            VARIANT Procedure,
            long lcid) = 0;

        virtual HRESULT get_Sheets(
            Sheets **RHS /Out/) = 0;

        virtual HRESULT get_ShowConflictHistory(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowConflictHistory(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Styles(
            Styles **RHS /Out/) = 0;

        virtual HRESULT get_Subject(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Subject(
            long lcid,
            BSTR RHS) = 0;

        virtual HRESULT get_Title(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Title(
            long lcid,
            BSTR RHS) = 0;

        virtual HRESULT Unprotect(
            VARIANT Password,
            long lcid) = 0;

        virtual HRESULT UnprotectSharing(
            VARIANT SharingPassword) = 0;

        virtual HRESULT UpdateFromFile(
            long lcid) = 0;

        virtual HRESULT UpdateLink(
            VARIANT Name,
            VARIANT Type,
            long lcid) = 0;

        virtual HRESULT get_UpdateRemoteReferences(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_UpdateRemoteReferences(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_UserControl(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_UserControl(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_UserStatus(
            long lcid,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_CustomViews(
            CustomViews **RHS /Out/) = 0;

        virtual HRESULT get_Windows(
            Windows **RHS /Out/) = 0;

        virtual HRESULT get_Worksheets(
            Sheets **RHS /Out/) = 0;

        virtual HRESULT get_WriteReserved(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_WriteReservedBy(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Excel4IntlMacroSheets(
            Sheets **RHS /Out/) = 0;

        virtual HRESULT get_Excel4MacroSheets(
            Sheets **RHS /Out/) = 0;

        virtual HRESULT get_TemplateRemoveExtData(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_TemplateRemoveExtData(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT HighlightChangesOptions(
            VARIANT When,
            VARIANT Who,
            VARIANT Where) = 0;

        virtual HRESULT get_HighlightChangesOnScreen(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_HighlightChangesOnScreen(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_KeepChangeHistory(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_KeepChangeHistory(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ListChangesOnNewSheet(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ListChangesOnNewSheet(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT PurgeChangeHistoryNow(
            long Days,
            VARIANT SharingPassword) = 0;

        virtual HRESULT AcceptAllChanges(
            VARIANT When,
            VARIANT Who,
            VARIANT Where) = 0;

        virtual HRESULT RejectAllChanges(
            VARIANT When,
            VARIANT Who,
            VARIANT Where) = 0;

        virtual HRESULT PivotTableWizard(
            VARIANT SourceType,
            VARIANT SourceData,
            VARIANT TableDestination,
            VARIANT TableName,
            VARIANT RowGrand,
            VARIANT ColumnGrand,
            VARIANT SaveData,
            VARIANT HasAutoFormat,
            VARIANT AutoPage,
            VARIANT Reserved,
            VARIANT BackgroundQuery,
            VARIANT OptimizeCache,
            VARIANT PageFieldOrder,
            VARIANT PageFieldWrapCount,
            VARIANT ReadData,
            VARIANT Connection,
            long lcid) = 0;

        virtual HRESULT ResetColors() = 0;

        virtual HRESULT get_VBProject(
            VBProject **RHS /Out/) = 0;

        virtual HRESULT FollowHyperlink(
            BSTR Address,
            VARIANT SubAddress,
            VARIANT NewWindow,
            VARIANT AddHistory,
            VARIANT ExtraInfo,
            VARIANT Method,
            VARIANT HeaderInfo) = 0;

        virtual HRESULT AddToFavorites() = 0;

        virtual HRESULT get_IsInplace(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT _PrintOut(
            VARIANT From,
            VARIANT To,
            VARIANT Copies,
            VARIANT Preview,
            VARIANT ActivePrinter,
            VARIANT PrintToFile,
            VARIANT Collate,
            VARIANT PrToFileName,
            long lcid) = 0;

        virtual HRESULT WebPagePreview() = 0;

        virtual HRESULT get_PublishObjects(
            PublishObjects **RHS /Out/) = 0;

        virtual HRESULT get_WebOptions(
            WebOptions **RHS /Out/) = 0;

        virtual HRESULT ReloadAs(
            MsoEncoding Encoding) = 0;

        virtual HRESULT get_HTMLProject(
            ksoapi::HTMLProject **RHS /Out/) = 0;

        virtual HRESULT get_EnvelopeVisible(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnvelopeVisible(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_CalculationVersion(
            long *RHS /Out/) = 0;

        virtual HRESULT Dummy17(
            long calcid) = 0;

        virtual HRESULT sblt(
            BSTR s) = 0;

        virtual HRESULT get_VBASigned(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_ShowPivotTableFieldList(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowPivotTableFieldList(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_UpdateLinks(
            XlUpdateLinks *RHS /Out/) = 0;

        virtual HRESULT put_UpdateLinks(
            XlUpdateLinks RHS) = 0;

        virtual HRESULT BreakLink(
            BSTR Name,
            XlLinkType Type) = 0;

        virtual HRESULT Dummy16() = 0;

        virtual HRESULT SaveAs(
            VARIANT Filename,
            VARIANT FileFormat,
            VARIANT Password,
            VARIANT WriteResPassword,
            VARIANT ReadOnlyRecommended,
            VARIANT CreateBackup,
            XlSaveAsAccessMode AccessMode,
            VARIANT ConflictResolution,
            VARIANT AddToMru,
            VARIANT TextCodepage,
            VARIANT TextVisualLayout,
            VARIANT Local,
            long lcid) = 0;

        virtual HRESULT get_EnableAutoRecover(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EnableAutoRecover(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_RemovePersonalInformation(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_RemovePersonalInformation(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_FullNameURLEncoded(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT CheckIn(
            VARIANT SaveChanges,
            VARIANT Comments,
            VARIANT MakePublic) = 0;

        virtual HRESULT CanCheckIn(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT SendForReview(
            VARIANT Recipients,
            VARIANT Subject,
            VARIANT ShowMessage,
            VARIANT IncludeAttachment) = 0;

        virtual HRESULT ReplyWithChanges(
            VARIANT ShowMessage) = 0;

        virtual HRESULT EndReview() = 0;

        virtual HRESULT get_Password(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Password(
            BSTR RHS) = 0;

        virtual HRESULT get_WritePassword(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_WritePassword(
            BSTR RHS) = 0;

        virtual HRESULT get_PasswordEncryptionProvider(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_PasswordEncryptionAlgorithm(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_PasswordEncryptionKeyLength(
            long *RHS /Out/) = 0;

        virtual HRESULT SetPasswordEncryptionOptions(
            VARIANT PasswordEncryptionProvider,
            VARIANT PasswordEncryptionAlgorithm,
            VARIANT PasswordEncryptionKeyLength,
            VARIANT PasswordEncryptionFileProperties) = 0;

        virtual HRESULT get_PasswordEncryptionFileProperties(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_ReadOnlyRecommended(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ReadOnlyRecommended(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT Protect(
            VARIANT Password,
            VARIANT Structure,
            VARIANT Windows) = 0;

        virtual HRESULT get_SmartTagOptions(
            SmartTagOptions **RHS /Out/) = 0;

        virtual HRESULT RecheckSmartTags() = 0;

        virtual HRESULT get_Permission(
            ksoapi::Permission **RHS /Out/) = 0;

        virtual HRESULT get_SharedWorkspace(
            ksoapi::SharedWorkspace **RHS /Out/) = 0;

        virtual HRESULT get_Sync(
            ksoapi::Sync **RHS /Out/) = 0;

        virtual HRESULT SendFaxOverInternet(
            VARIANT Recipients,
            VARIANT Subject,
            VARIANT ShowMessage) = 0;

        virtual HRESULT get_XmlNamespaces(
            XmlNamespaces **RHS /Out/) = 0;

        virtual HRESULT get_XmlMaps(
            XmlMaps **RHS /Out/) = 0;

        virtual HRESULT XmlImport(
            BSTR Url,
            XmlMap **ImportMap /Out/,
            VARIANT Overwrite,
            VARIANT Destination,
            XlXmlImportResult *RHS /Out/) = 0;

        virtual HRESULT get_SmartDocument(
            ksoapi::SmartDocument **RHS /Out/) = 0;

        virtual HRESULT get_DocumentLibraryVersions(
            ksoapi::DocumentLibraryVersions **RHS /Out/) = 0;

        virtual HRESULT get_InactiveListBorderVisible(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_InactiveListBorderVisible(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DisplayInkComments(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayInkComments(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT XmlImportXml(
            BSTR Data,
            XmlMap **ImportMap /Out/,
            VARIANT Overwrite,
            VARIANT Destination,
            XlXmlImportResult *RHS /Out/) = 0;

        virtual HRESULT SaveAsXMLData(
            BSTR Filename,
            XmlMap *Map) = 0;

        virtual HRESULT ToggleFormsDesign() = 0;

        virtual HRESULT get_ContentTypeProperties(
            ksoapi::MetaProperties **RHS /Out/) = 0;

        virtual HRESULT get_Connections(
            Connections **RHS /Out/) = 0;

        virtual HRESULT RemoveDocumentInformation(
            XlRemoveDocInfoType RemoveDocInfoType) = 0;

        virtual HRESULT get_Signatures(
            ksoapi::SignatureSet **RHS /Out/) = 0;

        virtual HRESULT CheckInWithVersion(
            VARIANT SaveChanges,
            VARIANT Comments,
            VARIANT MakePublic,
            VARIANT VersionType) = 0;

        virtual HRESULT get_ServerPolicy(
            ksoapi::ServerPolicy **RHS /Out/) = 0;

        virtual HRESULT LockServerFile() = 0;

        virtual HRESULT get_DocumentInspectors(
            ksoapi::DocumentInspectors **RHS /Out/) = 0;

        virtual HRESULT GetWorkflowTasks(
            ksoapi::WorkflowTasks **RHS /Out/) = 0;

        virtual HRESULT GetWorkflowTemplates(
            ksoapi::WorkflowTemplates **RHS /Out/) = 0;

        virtual HRESULT PrintOut(
            VARIANT From,
            VARIANT To,
            VARIANT Copies,
            VARIANT Preview,
            VARIANT ActivePrinter,
            VARIANT PrintToFile,
            VARIANT Collate,
            VARIANT PrToFileName,
            VARIANT IgnorePrintAreas,
            long lcid) = 0;

        virtual HRESULT get_ServerViewableItems(
            ServerViewableItems **RHS /Out/) = 0;

        virtual HRESULT get_TableStyles(
            TableStyles **RHS /Out/) = 0;

        virtual HRESULT get_DefaultTableStyle(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_DefaultTableStyle(
            VARIANT RHS) = 0;

        virtual HRESULT get_DefaultPivotTableStyle(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_DefaultPivotTableStyle(
            VARIANT RHS) = 0;

        virtual HRESULT get_CheckCompatibility(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_CheckCompatibility(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_HasVBProject(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_CustomXMLParts(
            ksoapi::CustomXMLParts **RHS /Out/) = 0;

        virtual HRESULT get_Final(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Final(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Research(
            Research **RHS /Out/) = 0;

        virtual HRESULT get_Theme(
            ksoapi::OfficeTheme **RHS /Out/) = 0;

        virtual HRESULT ApplyTheme(
            BSTR Filename) = 0;

        virtual HRESULT get_Excel8CompatibilityMode(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_ConnectionsDisabled(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT EnableConnections() = 0;

        virtual HRESULT get_ShowPivotChartActiveFields(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowPivotChartActiveFields(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT ExportAsFixedFormat(
            XlFixedFormatType Type,
            VARIANT Filename,
            VARIANT Quality,
            VARIANT IncludeDocProperties,
            VARIANT IgnorePrintAreas,
            VARIANT From,
            VARIANT To,
            VARIANT OpenAfterPublish,
            VARIANT FixedFormatExtClassPtr) = 0;

        virtual HRESULT get_IconSets(
            IconSets **RHS /Out/) = 0;

        virtual HRESULT get_EncryptionProvider(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_EncryptionProvider(
            BSTR RHS) = 0;

        virtual HRESULT get_DoNotPromptForConvert(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DoNotPromptForConvert(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ForceFullCalculation(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ForceFullCalculation(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT ProtectSharing(
            VARIANT Filename,
            VARIANT Password,
            VARIANT WriteResPassword,
            VARIANT ReadOnlyRecommended,
            VARIANT CreateBackup,
            VARIANT SharingPassword,
            VARIANT FileFormat) = 0;

        virtual HRESULT get_SlicerCaches(
            SlicerCaches **RHS /Out/) = 0;

        virtual HRESULT get_ActiveSlicer(
            Slicer **RHS /Out/) = 0;

        virtual HRESULT get_DefaultSlicerStyle(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_DefaultSlicerStyle(
            VARIANT RHS) = 0;

        virtual HRESULT Dummy26() = 0;

        virtual HRESULT Dummy27() = 0;

        virtual HRESULT get_AccuracyVersion(
            long *RHS /Out/) = 0;

        virtual HRESULT put_AccuracyVersion(
            long RHS) = 0;

        virtual HRESULT get_CaseSensitive(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_UseWholeCellCriteria(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_UseWildcards(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_PivotTables(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Model(
            Model **RHS /Out/) = 0;

        virtual HRESULT get_ChartDataPointTrack(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ChartDataPointTrack(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DefaultTimelineStyle(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_DefaultTimelineStyle(
            VARIANT RHS) = 0;

    };
};
