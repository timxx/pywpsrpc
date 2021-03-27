/**
 * Copyright (c) 2020-2021 Weitian Leung
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

        virtual HRESULT get_AcceptLabelsInFormulas(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AcceptLabelsInFormulas(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT Activate(
            long lcid) = 0;

        virtual HRESULT get_ActiveChart(
            Chart **RHS /Out/) = 0;

        virtual HRESULT get_ActiveSheet(
            _Worksheet **RHS /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_ActiveSheet((IDispatch**)&a0);
        %End

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
            ksoapi::DocumentProperties **RHS /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_BuiltinDocumentProperties((IDispatch **)&a0);
        %End

        virtual HRESULT ChangeFileAccess(
            XlFileAccess Mode,
            VARIANT WritePassword = argMissing2(),
            VARIANT Notify = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT ChangeLink(
            BSTR Name,
            BSTR NewName,
            XlLinkType Type = etapi::xlLinkTypeExcelLinks,
            long lcid = 0) = 0;

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
            VARIANT Index = argMissing2(),
            long lcid = 0,
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT put_Colors(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            VARIANT RHS = argMissing2()) = 0;

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
            ksoapi::DocumentProperties **RHS /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_CustomDocumentProperties((IDispatch **)&a0);
        %End

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
            VARIANT Type = argMissing2(),
            VARIANT EditionRef = argMissing2(),
            long lcid = 0,
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT LinkSources(
            VARIANT Type = argMissing2(),
            long lcid = 0,
            VARIANT *RHS /Out/ = 0) = 0;

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
            VARIANT ReadOnly = argMissing2(),
            VARIANT Type = argMissing2(),
            long lcid = 0) = 0;

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
            VARIANT DestName = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT get_PrecisionAsDisplayed(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_PrecisionAsDisplayed(
            long lcid,
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT __PrintOut(
            VARIANT From = argMissing2(),
            VARIANT To = argMissing2(),
            VARIANT Copies = argMissing2(),
            VARIANT Preview = argMissing2(),
            VARIANT ActivePrinter = argMissing2(),
            VARIANT PrintToFile = argMissing2(),
            VARIANT Collate = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT PrintPreview(
            VARIANT EnableChanges = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT _Protect(
            VARIANT Password = argMissing2(),
            VARIANT Structure = argMissing2(),
            VARIANT Windows = argMissing2()) = 0;

        virtual HRESULT _ProtectSharing(
            VARIANT Filename = argMissing2(),
            VARIANT Password = argMissing2(),
            VARIANT WriteResPassword = argMissing2(),
            VARIANT ReadOnlyRecommended = argMissing2(),
            VARIANT CreateBackup = argMissing2(),
            VARIANT SharingPassword = argMissing2()) = 0;

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
            long lcid = 0) = 0;

        virtual HRESULT ReplyAll(
            long lcid = 0) = 0;

        virtual HRESULT RemoveUser(
            long Index) = 0;

        virtual HRESULT get_RevisionNumber(
            long lcid,
            long *RHS /Out/) = 0;

        virtual HRESULT Route(
            long lcid = 0) = 0;

        virtual HRESULT get_Routed(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_RoutingSlip(
            RoutingSlip **RHS /Out/) = 0;

        virtual HRESULT RunAutoMacros(
            XlRunAutoMacro Which,
            long lcid) = 0;

        virtual HRESULT Save(
            long lcid = 0) = 0;

        virtual HRESULT _SaveAs(
            VARIANT Filename = argMissing2(),
            VARIANT FileFormat = argMissing2(),
            VARIANT Password = argMissing2(),
            VARIANT WriteResPassword = argMissing2(),
            VARIANT ReadOnlyRecommended = argMissing2(),
            VARIANT CreateBackup = argMissing2(),
            XlSaveAsAccessMode AccessMode = etapi::xlNoChange,
            VARIANT ConflictResolution = argMissing2(),
            VARIANT AddToMru = argMissing2(),
            VARIANT TextCodepage = argMissing2(),
            VARIANT TextVisualLayout = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT SaveCopyAs(
            VARIANT Filename = argMissing2(),
            long lcid = 0) = 0;

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
            VARIANT Subject = argMissing2(),
            VARIANT ReturnReceipt = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT SendMailer(
            VARIANT FileFormat = argMissing2(),
            XlPriority Priority = etapi::xlPriorityNormal,
            long lcid = 0) = 0;

        virtual HRESULT SetLinkOnData(
            BSTR Name,
            VARIANT Procedure = argMissing2(),
            long lcid = 0) = 0;

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
            VARIANT Password = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT UnprotectSharing(
            VARIANT SharingPassword = argMissing2()) = 0;

        virtual HRESULT UpdateFromFile(
            long lcid = 0) = 0;

        virtual HRESULT UpdateLink(
            VARIANT Name = argMissing2(),
            VARIANT Type = argMissing2(),
            long lcid = 0) = 0;

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
            VARIANT When = argMissing2(),
            VARIANT Who = argMissing2(),
            VARIANT Where = argMissing2()) = 0;

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
            VARIANT SharingPassword = argMissing2()) = 0;

        virtual HRESULT AcceptAllChanges(
            VARIANT When = argMissing2(),
            VARIANT Who = argMissing2(),
            VARIANT Where = argMissing2()) = 0;

        virtual HRESULT RejectAllChanges(
            VARIANT When = argMissing2(),
            VARIANT Who = argMissing2(),
            VARIANT Where = argMissing2()) = 0;

        virtual HRESULT PivotTableWizard(
            VARIANT SourceType = argMissing2(),
            VARIANT SourceData = argMissing2(),
            VARIANT TableDestination = argMissing2(),
            VARIANT TableName = argMissing2(),
            VARIANT RowGrand = argMissing2(),
            VARIANT ColumnGrand = argMissing2(),
            VARIANT SaveData = argMissing2(),
            VARIANT HasAutoFormat = argMissing2(),
            VARIANT AutoPage = argMissing2(),
            VARIANT Reserved = argMissing2(),
            VARIANT BackgroundQuery = argMissing2(),
            VARIANT OptimizeCache = argMissing2(),
            VARIANT PageFieldOrder = argMissing2(),
            VARIANT PageFieldWrapCount = argMissing2(),
            VARIANT ReadData = argMissing2(),
            VARIANT Connection = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT ResetColors() = 0;

        virtual HRESULT get_VBProject(
            VBProject **RHS /Out/) = 0;

        virtual HRESULT FollowHyperlink(
            BSTR Address,
            VARIANT SubAddress = argMissing2(),
            VARIANT NewWindow = argMissing2(),
            VARIANT AddHistory = argMissing2(),
            VARIANT ExtraInfo = argMissing2(),
            VARIANT Method = argMissing2(),
            VARIANT HeaderInfo = argMissing2()) = 0;

        virtual HRESULT AddToFavorites() = 0;

        virtual HRESULT get_IsInplace(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT _PrintOut(
            VARIANT From = argMissing2(),
            VARIANT To = argMissing2(),
            VARIANT Copies = argMissing2(),
            VARIANT Preview = argMissing2(),
            VARIANT ActivePrinter = argMissing2(),
            VARIANT PrintToFile = argMissing2(),
            VARIANT Collate = argMissing2(),
            VARIANT PrToFileName = argMissing2(),
            long lcid = 0) = 0;

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
            VARIANT Filename = argMissing2(),
            VARIANT FileFormat = argMissing2(),
            VARIANT Password = argMissing2(),
            VARIANT WriteResPassword = argMissing2(),
            VARIANT ReadOnlyRecommended = argMissing2(),
            VARIANT CreateBackup = argMissing2(),
            XlSaveAsAccessMode AccessMode = etapi::xlNoChange,
            VARIANT ConflictResolution = argMissing2(),
            VARIANT AddToMru = argMissing2(),
            VARIANT TextCodepage = argMissing2(),
            VARIANT TextVisualLayout = argMissing2(),
            VARIANT Local = argMissing2(),
            long lcid = 0) = 0;

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
            VARIANT SaveChanges = argMissing2(),
            VARIANT Comments = argMissing2(),
            VARIANT MakePublic = argMissing2()) = 0;

        virtual HRESULT CanCheckIn(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT SendForReview(
            VARIANT Recipients = argMissing2(),
            VARIANT Subject = argMissing2(),
            VARIANT ShowMessage = argMissing2(),
            VARIANT IncludeAttachment = argMissing2()) = 0;

        virtual HRESULT ReplyWithChanges(
            VARIANT ShowMessage = argMissing2()) = 0;

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
            VARIANT PasswordEncryptionProvider = argMissing2(),
            VARIANT PasswordEncryptionAlgorithm = argMissing2(),
            VARIANT PasswordEncryptionKeyLength = argMissing2(),
            VARIANT PasswordEncryptionFileProperties = argMissing2()) = 0;

        virtual HRESULT get_PasswordEncryptionFileProperties(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_ReadOnlyRecommended(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ReadOnlyRecommended(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT Protect(
            VARIANT Password = argMissing2(),
            VARIANT Structure = argMissing2(),
            VARIANT Windows = argMissing2()) = 0;

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
            VARIANT Recipients = argMissing2(),
            VARIANT Subject = argMissing2(),
            VARIANT ShowMessage = argMissing2()) = 0;

        virtual HRESULT get_XmlNamespaces(
            XmlNamespaces **RHS /Out/) = 0;

        virtual HRESULT get_XmlMaps(
            XmlMaps **RHS /Out/) = 0;

        virtual HRESULT XmlImport(
            BSTR Url,
            XmlMap **ImportMap /Out/,
            VARIANT Overwrite = argMissing2(),
            VARIANT Destination = argMissing2(),
            XlXmlImportResult *RHS /Out/ = 0) = 0;

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
            VARIANT Overwrite = argMissing2(),
            VARIANT Destination = argMissing2(),
            XlXmlImportResult *RHS /Out/ = 0) = 0;

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
            VARIANT SaveChanges = argMissing2(),
            VARIANT Comments = argMissing2(),
            VARIANT MakePublic = argMissing2(),
            VARIANT VersionType = argMissing2()) = 0;

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
            VARIANT From = argMissing2(),
            VARIANT To = argMissing2(),
            VARIANT Copies = argMissing2(),
            VARIANT Preview = argMissing2(),
            VARIANT ActivePrinter = argMissing2(),
            VARIANT PrintToFile = argMissing2(),
            VARIANT Collate = argMissing2(),
            VARIANT PrToFileName = argMissing2(),
            VARIANT IgnorePrintAreas = argMissing2(),
            long lcid = 0) = 0;

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
            VARIANT Filename = argMissing2(),
            VARIANT Quality = argMissing2(),
            VARIANT IncludeDocProperties = argMissing2(),
            VARIANT IgnorePrintAreas = argMissing2(),
            VARIANT From = argMissing2(),
            VARIANT To = argMissing2(),
            VARIANT OpenAfterPublish = argMissing2(),
            VARIANT FixedFormatExtClassPtr = argMissing2()) = 0;

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
            VARIANT Filename = argMissing2(),
            VARIANT Password = argMissing2(),
            VARIANT WriteResPassword = argMissing2(),
            VARIANT ReadOnlyRecommended = argMissing2(),
            VARIANT CreateBackup = argMissing2(),
            VARIANT SharingPassword = argMissing2(),
            VARIANT FileFormat = argMissing2()) = 0;

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

        VARIANT_BOOL getAcceptLabelsInFormulas();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AcceptLabelsInFormulas(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AcceptLabelsInFormulas()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAcceptLabelsInFormulas(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AcceptLabelsInFormulas(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AcceptLabelsInFormulas()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AcceptLabelsInFormulas, get=getAcceptLabelsInFormulas, set=setAcceptLabelsInFormulas)

        Chart* getActiveChart();
        %MethodCode
            etapi::Chart *prop = nullptr;
            HRESULT hr = sipCpp->get_ActiveChart(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ActiveChart()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ActiveChart, get=getActiveChart)

        _Worksheet* getActiveSheet();
        %MethodCode
            etapi::_Worksheet *prop = nullptr;
            HRESULT hr = sipCpp->get_ActiveSheet((IDispatch**)&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ActiveSheet()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ActiveSheet, get=getActiveSheet)

        BSTR getAuthor();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Author(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Author()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAuthor(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Author(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Author()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Author, get=getAuthor, set=setAuthor)

        long getAutoUpdateFrequency();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_AutoUpdateFrequency(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoUpdateFrequency()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoUpdateFrequency(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoUpdateFrequency(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoUpdateFrequency()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoUpdateFrequency, get=getAutoUpdateFrequency, set=setAutoUpdateFrequency)

        VARIANT_BOOL getAutoUpdateSaveChanges();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoUpdateSaveChanges(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoUpdateSaveChanges()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoUpdateSaveChanges(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoUpdateSaveChanges(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoUpdateSaveChanges()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoUpdateSaveChanges, get=getAutoUpdateSaveChanges, set=setAutoUpdateSaveChanges)

        long getChangeHistoryDuration();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_ChangeHistoryDuration(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ChangeHistoryDuration()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setChangeHistoryDuration(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ChangeHistoryDuration(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ChangeHistoryDuration()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ChangeHistoryDuration, get=getChangeHistoryDuration, set=setChangeHistoryDuration)

        ksoapi::DocumentProperties* getBuiltinDocumentProperties();
        %MethodCode
            ksoapi::DocumentProperties *prop = nullptr;
            HRESULT hr = sipCpp->get_BuiltinDocumentProperties((IDispatch **)&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BuiltinDocumentProperties()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=BuiltinDocumentProperties, get=getBuiltinDocumentProperties)

        Sheets* getCharts();
        %MethodCode
            etapi::Sheets *prop = nullptr;
            HRESULT hr = sipCpp->get_Charts(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Charts()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Charts, get=getCharts)

        BSTR getCodeName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_CodeName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CodeName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CodeName, get=getCodeName)

        BSTR get_CodeName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get__CodeName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get__CodeName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* set_CodeName(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put__CodeName(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put__CodeName()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=_CodeName, get=get_CodeName, set=set_CodeName)

        ksoapi::CommandBars* getCommandBars();
        %MethodCode
            ksoapi::CommandBars *prop = nullptr;
            HRESULT hr = sipCpp->get_CommandBars(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CommandBars()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CommandBars, get=getCommandBars)

        BSTR getComments();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Comments(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Comments()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setComments(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Comments(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Comments()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Comments, get=getComments, set=setComments)

        XlSaveConflictResolution getConflictResolution();
        %MethodCode
            etapi::XlSaveConflictResolution prop = (etapi::XlSaveConflictResolution)0;
            HRESULT hr = sipCpp->get_ConflictResolution(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ConflictResolution()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setConflictResolution(XlSaveConflictResolution prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ConflictResolution(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ConflictResolution()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ConflictResolution, get=getConflictResolution, set=setConflictResolution)

        IDispatch* getContainer();
        %MethodCode
            IDispatch *prop = nullptr;
            HRESULT hr = sipCpp->get_Container(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Container()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Container, get=getContainer)

        VARIANT_BOOL getCreateBackup();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_CreateBackup(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CreateBackup()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CreateBackup, get=getCreateBackup)

        ksoapi::DocumentProperties* getCustomDocumentProperties();
        %MethodCode
            ksoapi::DocumentProperties *prop = nullptr;
            HRESULT hr = sipCpp->get_CustomDocumentProperties((IDispatch **)&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CustomDocumentProperties()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CustomDocumentProperties, get=getCustomDocumentProperties)

        VARIANT_BOOL getDate1904();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Date1904(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Date1904()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDate1904(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Date1904(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Date1904()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Date1904, get=getDate1904, set=setDate1904)

        Sheets* getDialogSheets();
        %MethodCode
            etapi::Sheets *prop = nullptr;
            HRESULT hr = sipCpp->get_DialogSheets(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DialogSheets()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DialogSheets, get=getDialogSheets)

        XlDisplayDrawingObjects getDisplayDrawingObjects();
        %MethodCode
            etapi::XlDisplayDrawingObjects prop = (etapi::XlDisplayDrawingObjects)0;
            HRESULT hr = sipCpp->get_DisplayDrawingObjects(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayDrawingObjects()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayDrawingObjects(XlDisplayDrawingObjects prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayDrawingObjects(0, a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayDrawingObjects()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayDrawingObjects, get=getDisplayDrawingObjects, set=setDisplayDrawingObjects)

        XlFileFormat getFileFormat();
        %MethodCode
            etapi::XlFileFormat prop = (etapi::XlFileFormat)0;
            HRESULT hr = sipCpp->get_FileFormat(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FileFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=FileFormat, get=getFileFormat)

        BSTR getFullName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_FullName(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FullName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=FullName, get=getFullName)

        VARIANT_BOOL getHasMailer();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HasMailer(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasMailer()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHasMailer(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HasMailer(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HasMailer()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HasMailer, get=getHasMailer, set=setHasMailer)

        VARIANT_BOOL getHasPassword();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HasPassword(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasPassword()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HasPassword, get=getHasPassword)

        VARIANT_BOOL getHasRoutingSlip();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HasRoutingSlip(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasRoutingSlip()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHasRoutingSlip(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HasRoutingSlip(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HasRoutingSlip()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HasRoutingSlip, get=getHasRoutingSlip, set=setHasRoutingSlip)

        VARIANT_BOOL getIsAddin();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IsAddin(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IsAddin()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setIsAddin(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_IsAddin(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_IsAddin()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=IsAddin, get=getIsAddin, set=setIsAddin)

        BSTR getKeywords();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Keywords(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Keywords()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setKeywords(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Keywords(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Keywords()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Keywords, get=getKeywords, set=setKeywords)

        Mailer* getMailer();
        %MethodCode
            etapi::Mailer *prop = nullptr;
            HRESULT hr = sipCpp->get_Mailer(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Mailer()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Mailer, get=getMailer)

        Sheets* getModules();
        %MethodCode
            etapi::Sheets *prop = nullptr;
            HRESULT hr = sipCpp->get_Modules(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Modules()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Modules, get=getModules)

        VARIANT_BOOL getMultiUserEditing();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MultiUserEditing(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MultiUserEditing()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MultiUserEditing, get=getMultiUserEditing)

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

        Names* getNames();
        %MethodCode
            etapi::Names *prop = nullptr;
            HRESULT hr = sipCpp->get_Names(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Names()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Names, get=getNames)

        BSTR getOnSave();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_OnSave(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OnSave()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOnSave(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OnSave(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OnSave()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OnSave, get=getOnSave, set=setOnSave)

        BSTR getOnSheetActivate();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_OnSheetActivate(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OnSheetActivate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOnSheetActivate(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OnSheetActivate(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OnSheetActivate()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OnSheetActivate, get=getOnSheetActivate, set=setOnSheetActivate)

        BSTR getOnSheetDeactivate();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_OnSheetDeactivate(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OnSheetDeactivate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOnSheetDeactivate(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OnSheetDeactivate(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OnSheetDeactivate()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OnSheetDeactivate, get=getOnSheetDeactivate, set=setOnSheetDeactivate)

        BSTR getPath();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Path(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Path()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Path, get=getPath)

        VARIANT_BOOL getPersonalViewListSettings();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PersonalViewListSettings(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PersonalViewListSettings()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPersonalViewListSettings(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PersonalViewListSettings(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PersonalViewListSettings()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PersonalViewListSettings, get=getPersonalViewListSettings, set=setPersonalViewListSettings)

        VARIANT_BOOL getPersonalViewPrintSettings();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PersonalViewPrintSettings(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PersonalViewPrintSettings()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPersonalViewPrintSettings(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PersonalViewPrintSettings(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PersonalViewPrintSettings()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PersonalViewPrintSettings, get=getPersonalViewPrintSettings, set=setPersonalViewPrintSettings)

        VARIANT_BOOL getPrecisionAsDisplayed();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PrecisionAsDisplayed(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PrecisionAsDisplayed()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPrecisionAsDisplayed(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PrecisionAsDisplayed(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PrecisionAsDisplayed()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PrecisionAsDisplayed, get=getPrecisionAsDisplayed, set=setPrecisionAsDisplayed)

        VARIANT_BOOL getProtectStructure();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ProtectStructure(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ProtectStructure()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ProtectStructure, get=getProtectStructure)

        VARIANT_BOOL getProtectWindows();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ProtectWindows(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ProtectWindows()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ProtectWindows, get=getProtectWindows)

        VARIANT_BOOL getReadOnly();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ReadOnly(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ReadOnly()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ReadOnly, get=getReadOnly)

        VARIANT_BOOL get_ReadOnlyRecommended();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get__ReadOnlyRecommended(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get__ReadOnlyRecommended()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=_ReadOnlyRecommended, get=get_ReadOnlyRecommended)

        long getRevisionNumber();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_RevisionNumber(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RevisionNumber()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=RevisionNumber, get=getRevisionNumber)

        VARIANT_BOOL getRouted();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Routed(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Routed()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Routed, get=getRouted)

        RoutingSlip* getRoutingSlip();
        %MethodCode
            etapi::RoutingSlip *prop = nullptr;
            HRESULT hr = sipCpp->get_RoutingSlip(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RoutingSlip()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=RoutingSlip, get=getRoutingSlip)

        VARIANT_BOOL getSaved();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Saved(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Saved()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSaved(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Saved(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Saved()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Saved, get=getSaved, set=setSaved)

        VARIANT_BOOL getSaveLinkValues();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_SaveLinkValues(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SaveLinkValues()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSaveLinkValues(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SaveLinkValues(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SaveLinkValues()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SaveLinkValues, get=getSaveLinkValues, set=setSaveLinkValues)

        Sheets* getSheets();
        %MethodCode
            etapi::Sheets *prop = nullptr;
            HRESULT hr = sipCpp->get_Sheets(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Sheets()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Sheets, get=getSheets)

        VARIANT_BOOL getShowConflictHistory();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowConflictHistory(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowConflictHistory()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowConflictHistory(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowConflictHistory(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowConflictHistory()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowConflictHistory, get=getShowConflictHistory, set=setShowConflictHistory)

        Styles* getStyles();
        %MethodCode
            etapi::Styles *prop = nullptr;
            HRESULT hr = sipCpp->get_Styles(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Styles()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Styles, get=getStyles)

        BSTR getSubject();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Subject(0, prop);
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
            HRESULT hr = sipCpp->put_Subject(0, *a0);
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

        BSTR getTitle();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Title(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Title()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTitle(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Title(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Title()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Title, get=getTitle, set=setTitle)

        VARIANT_BOOL getUpdateRemoteReferences();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_UpdateRemoteReferences(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UpdateRemoteReferences()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUpdateRemoteReferences(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_UpdateRemoteReferences(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_UpdateRemoteReferences()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=UpdateRemoteReferences, get=getUpdateRemoteReferences, set=setUpdateRemoteReferences)

        VARIANT_BOOL getUserControl();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_UserControl(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UserControl()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUserControl(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_UserControl(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_UserControl()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=UserControl, get=getUserControl, set=setUserControl)

        VARIANT getUserStatus();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_UserStatus(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UserStatus()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=UserStatus, get=getUserStatus)

        CustomViews* getCustomViews();
        %MethodCode
            etapi::CustomViews *prop = nullptr;
            HRESULT hr = sipCpp->get_CustomViews(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CustomViews()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CustomViews, get=getCustomViews)

        Windows* getWindows();
        %MethodCode
            etapi::Windows *prop = nullptr;
            HRESULT hr = sipCpp->get_Windows(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Windows()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Windows, get=getWindows)

        Sheets* getWorksheets();
        %MethodCode
            etapi::Sheets *prop = nullptr;
            HRESULT hr = sipCpp->get_Worksheets(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Worksheets()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Worksheets, get=getWorksheets)

        VARIANT_BOOL getWriteReserved();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_WriteReserved(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WriteReserved()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=WriteReserved, get=getWriteReserved)

        BSTR getWriteReservedBy();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_WriteReservedBy(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WriteReservedBy()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=WriteReservedBy, get=getWriteReservedBy)

        Sheets* getExcel4IntlMacroSheets();
        %MethodCode
            etapi::Sheets *prop = nullptr;
            HRESULT hr = sipCpp->get_Excel4IntlMacroSheets(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Excel4IntlMacroSheets()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Excel4IntlMacroSheets, get=getExcel4IntlMacroSheets)

        Sheets* getExcel4MacroSheets();
        %MethodCode
            etapi::Sheets *prop = nullptr;
            HRESULT hr = sipCpp->get_Excel4MacroSheets(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Excel4MacroSheets()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Excel4MacroSheets, get=getExcel4MacroSheets)

        VARIANT_BOOL getTemplateRemoveExtData();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_TemplateRemoveExtData(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TemplateRemoveExtData()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTemplateRemoveExtData(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TemplateRemoveExtData(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TemplateRemoveExtData()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TemplateRemoveExtData, get=getTemplateRemoveExtData, set=setTemplateRemoveExtData)

        VARIANT_BOOL getHighlightChangesOnScreen();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HighlightChangesOnScreen(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HighlightChangesOnScreen()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHighlightChangesOnScreen(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HighlightChangesOnScreen(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HighlightChangesOnScreen()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HighlightChangesOnScreen, get=getHighlightChangesOnScreen, set=setHighlightChangesOnScreen)

        VARIANT_BOOL getKeepChangeHistory();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_KeepChangeHistory(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_KeepChangeHistory()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setKeepChangeHistory(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_KeepChangeHistory(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_KeepChangeHistory()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=KeepChangeHistory, get=getKeepChangeHistory, set=setKeepChangeHistory)

        VARIANT_BOOL getListChangesOnNewSheet();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ListChangesOnNewSheet(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ListChangesOnNewSheet()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setListChangesOnNewSheet(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ListChangesOnNewSheet(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ListChangesOnNewSheet()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ListChangesOnNewSheet, get=getListChangesOnNewSheet, set=setListChangesOnNewSheet)

        VBProject* getVBProject();
        %MethodCode
            etapi::VBProject *prop = nullptr;
            HRESULT hr = sipCpp->get_VBProject(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_VBProject()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=VBProject, get=getVBProject)

        VARIANT_BOOL getIsInplace();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IsInplace(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IsInplace()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=IsInplace, get=getIsInplace)

        PublishObjects* getPublishObjects();
        %MethodCode
            etapi::PublishObjects *prop = nullptr;
            HRESULT hr = sipCpp->get_PublishObjects(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PublishObjects()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PublishObjects, get=getPublishObjects)

        WebOptions* getWebOptions();
        %MethodCode
            etapi::WebOptions *prop = nullptr;
            HRESULT hr = sipCpp->get_WebOptions(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WebOptions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=WebOptions, get=getWebOptions)

        ksoapi::HTMLProject* getHTMLProject();
        %MethodCode
            ksoapi::HTMLProject *prop = nullptr;
            HRESULT hr = sipCpp->get_HTMLProject(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HTMLProject()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HTMLProject, get=getHTMLProject)

        VARIANT_BOOL getEnvelopeVisible();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EnvelopeVisible(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EnvelopeVisible()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnvelopeVisible(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EnvelopeVisible(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EnvelopeVisible()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EnvelopeVisible, get=getEnvelopeVisible, set=setEnvelopeVisible)

        long getCalculationVersion();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_CalculationVersion(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CalculationVersion()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CalculationVersion, get=getCalculationVersion)

        VARIANT_BOOL getVBASigned();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_VBASigned(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_VBASigned()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=VBASigned, get=getVBASigned)

        VARIANT_BOOL getShowPivotTableFieldList();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowPivotTableFieldList(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowPivotTableFieldList()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowPivotTableFieldList(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowPivotTableFieldList(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowPivotTableFieldList()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowPivotTableFieldList, get=getShowPivotTableFieldList, set=setShowPivotTableFieldList)

        XlUpdateLinks getUpdateLinks();
        %MethodCode
            etapi::XlUpdateLinks prop = (etapi::XlUpdateLinks)0;
            HRESULT hr = sipCpp->get_UpdateLinks(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UpdateLinks()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUpdateLinks(XlUpdateLinks prop);
        %MethodCode
            HRESULT hr = sipCpp->put_UpdateLinks(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_UpdateLinks()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=UpdateLinks, get=getUpdateLinks, set=setUpdateLinks)

        VARIANT_BOOL getEnableAutoRecover();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EnableAutoRecover(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EnableAutoRecover()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnableAutoRecover(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EnableAutoRecover(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EnableAutoRecover()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EnableAutoRecover, get=getEnableAutoRecover, set=setEnableAutoRecover)

        VARIANT_BOOL getRemovePersonalInformation();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_RemovePersonalInformation(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RemovePersonalInformation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRemovePersonalInformation(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RemovePersonalInformation(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RemovePersonalInformation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RemovePersonalInformation, get=getRemovePersonalInformation, set=setRemovePersonalInformation)

        BSTR getFullNameURLEncoded();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_FullNameURLEncoded(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FullNameURLEncoded()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=FullNameURLEncoded, get=getFullNameURLEncoded)

        BSTR getPassword();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Password(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Password()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPassword(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Password(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Password()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Password, get=getPassword, set=setPassword)

        BSTR getWritePassword();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_WritePassword(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WritePassword()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWritePassword(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_WritePassword(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_WritePassword()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=WritePassword, get=getWritePassword, set=setWritePassword)

        BSTR getPasswordEncryptionProvider();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_PasswordEncryptionProvider(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PasswordEncryptionProvider()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PasswordEncryptionProvider, get=getPasswordEncryptionProvider)

        BSTR getPasswordEncryptionAlgorithm();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_PasswordEncryptionAlgorithm(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PasswordEncryptionAlgorithm()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PasswordEncryptionAlgorithm, get=getPasswordEncryptionAlgorithm)

        long getPasswordEncryptionKeyLength();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_PasswordEncryptionKeyLength(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PasswordEncryptionKeyLength()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PasswordEncryptionKeyLength, get=getPasswordEncryptionKeyLength)

        VARIANT_BOOL getPasswordEncryptionFileProperties();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PasswordEncryptionFileProperties(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PasswordEncryptionFileProperties()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PasswordEncryptionFileProperties, get=getPasswordEncryptionFileProperties)

        VARIANT_BOOL getReadOnlyRecommended();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ReadOnlyRecommended(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ReadOnlyRecommended()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setReadOnlyRecommended(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ReadOnlyRecommended(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ReadOnlyRecommended()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ReadOnlyRecommended, get=getReadOnlyRecommended, set=setReadOnlyRecommended)

        SmartTagOptions* getSmartTagOptions();
        %MethodCode
            etapi::SmartTagOptions *prop = nullptr;
            HRESULT hr = sipCpp->get_SmartTagOptions(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SmartTagOptions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SmartTagOptions, get=getSmartTagOptions)

        ksoapi::Permission* getPermission();
        %MethodCode
            ksoapi::Permission *prop = nullptr;
            HRESULT hr = sipCpp->get_Permission(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Permission()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Permission, get=getPermission)

        ksoapi::SharedWorkspace* getSharedWorkspace();
        %MethodCode
            ksoapi::SharedWorkspace *prop = nullptr;
            HRESULT hr = sipCpp->get_SharedWorkspace(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SharedWorkspace()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SharedWorkspace, get=getSharedWorkspace)

        ksoapi::Sync* getSync();
        %MethodCode
            ksoapi::Sync *prop = nullptr;
            HRESULT hr = sipCpp->get_Sync(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Sync()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Sync, get=getSync)

        XmlNamespaces* getXmlNamespaces();
        %MethodCode
            etapi::XmlNamespaces *prop = nullptr;
            HRESULT hr = sipCpp->get_XmlNamespaces(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_XmlNamespaces()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=XmlNamespaces, get=getXmlNamespaces)

        XmlMaps* getXmlMaps();
        %MethodCode
            etapi::XmlMaps *prop = nullptr;
            HRESULT hr = sipCpp->get_XmlMaps(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_XmlMaps()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=XmlMaps, get=getXmlMaps)

        ksoapi::SmartDocument* getSmartDocument();
        %MethodCode
            ksoapi::SmartDocument *prop = nullptr;
            HRESULT hr = sipCpp->get_SmartDocument(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SmartDocument()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SmartDocument, get=getSmartDocument)

        ksoapi::DocumentLibraryVersions* getDocumentLibraryVersions();
        %MethodCode
            ksoapi::DocumentLibraryVersions *prop = nullptr;
            HRESULT hr = sipCpp->get_DocumentLibraryVersions(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DocumentLibraryVersions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DocumentLibraryVersions, get=getDocumentLibraryVersions)

        VARIANT_BOOL getInactiveListBorderVisible();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_InactiveListBorderVisible(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InactiveListBorderVisible()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setInactiveListBorderVisible(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_InactiveListBorderVisible(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_InactiveListBorderVisible()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=InactiveListBorderVisible, get=getInactiveListBorderVisible, set=setInactiveListBorderVisible)

        VARIANT_BOOL getDisplayInkComments();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayInkComments(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayInkComments()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayInkComments(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayInkComments(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayInkComments()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayInkComments, get=getDisplayInkComments, set=setDisplayInkComments)

        ksoapi::MetaProperties* getContentTypeProperties();
        %MethodCode
            ksoapi::MetaProperties *prop = nullptr;
            HRESULT hr = sipCpp->get_ContentTypeProperties(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ContentTypeProperties()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ContentTypeProperties, get=getContentTypeProperties)

        Connections* getConnections();
        %MethodCode
            etapi::Connections *prop = nullptr;
            HRESULT hr = sipCpp->get_Connections(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Connections()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Connections, get=getConnections)

        ksoapi::SignatureSet* getSignatures();
        %MethodCode
            ksoapi::SignatureSet *prop = nullptr;
            HRESULT hr = sipCpp->get_Signatures(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Signatures()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Signatures, get=getSignatures)

        ksoapi::ServerPolicy* getServerPolicy();
        %MethodCode
            ksoapi::ServerPolicy *prop = nullptr;
            HRESULT hr = sipCpp->get_ServerPolicy(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ServerPolicy()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ServerPolicy, get=getServerPolicy)

        ksoapi::DocumentInspectors* getDocumentInspectors();
        %MethodCode
            ksoapi::DocumentInspectors *prop = nullptr;
            HRESULT hr = sipCpp->get_DocumentInspectors(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DocumentInspectors()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DocumentInspectors, get=getDocumentInspectors)

        ServerViewableItems* getServerViewableItems();
        %MethodCode
            etapi::ServerViewableItems *prop = nullptr;
            HRESULT hr = sipCpp->get_ServerViewableItems(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ServerViewableItems()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ServerViewableItems, get=getServerViewableItems)

        TableStyles* getTableStyles();
        %MethodCode
            etapi::TableStyles *prop = nullptr;
            HRESULT hr = sipCpp->get_TableStyles(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TableStyles()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TableStyles, get=getTableStyles)

        VARIANT getDefaultTableStyle();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_DefaultTableStyle(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DefaultTableStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDefaultTableStyle(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DefaultTableStyle(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DefaultTableStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DefaultTableStyle, get=getDefaultTableStyle, set=setDefaultTableStyle)

        VARIANT getDefaultPivotTableStyle();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_DefaultPivotTableStyle(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DefaultPivotTableStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDefaultPivotTableStyle(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DefaultPivotTableStyle(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DefaultPivotTableStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DefaultPivotTableStyle, get=getDefaultPivotTableStyle, set=setDefaultPivotTableStyle)

        VARIANT_BOOL getCheckCompatibility();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_CheckCompatibility(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CheckCompatibility()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCheckCompatibility(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CheckCompatibility(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CheckCompatibility()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CheckCompatibility, get=getCheckCompatibility, set=setCheckCompatibility)

        VARIANT_BOOL getHasVBProject();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HasVBProject(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasVBProject()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HasVBProject, get=getHasVBProject)

        ksoapi::CustomXMLParts* getCustomXMLParts();
        %MethodCode
            ksoapi::CustomXMLParts *prop = nullptr;
            HRESULT hr = sipCpp->get_CustomXMLParts(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CustomXMLParts()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CustomXMLParts, get=getCustomXMLParts)

        VARIANT_BOOL getFinal();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Final(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Final()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFinal(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Final(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Final()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Final, get=getFinal, set=setFinal)

        Research* getResearch();
        %MethodCode
            etapi::Research *prop = nullptr;
            HRESULT hr = sipCpp->get_Research(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Research()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Research, get=getResearch)

        ksoapi::OfficeTheme* getTheme();
        %MethodCode
            ksoapi::OfficeTheme *prop = nullptr;
            HRESULT hr = sipCpp->get_Theme(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Theme()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Theme, get=getTheme)

        VARIANT_BOOL getExcel8CompatibilityMode();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Excel8CompatibilityMode(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Excel8CompatibilityMode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Excel8CompatibilityMode, get=getExcel8CompatibilityMode)

        VARIANT_BOOL getConnectionsDisabled();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ConnectionsDisabled(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ConnectionsDisabled()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ConnectionsDisabled, get=getConnectionsDisabled)

        VARIANT_BOOL getShowPivotChartActiveFields();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowPivotChartActiveFields(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowPivotChartActiveFields()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowPivotChartActiveFields(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowPivotChartActiveFields(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowPivotChartActiveFields()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowPivotChartActiveFields, get=getShowPivotChartActiveFields, set=setShowPivotChartActiveFields)

        IconSets* getIconSets();
        %MethodCode
            etapi::IconSets *prop = nullptr;
            HRESULT hr = sipCpp->get_IconSets(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IconSets()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=IconSets, get=getIconSets)

        BSTR getEncryptionProvider();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_EncryptionProvider(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EncryptionProvider()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEncryptionProvider(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EncryptionProvider(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EncryptionProvider()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EncryptionProvider, get=getEncryptionProvider, set=setEncryptionProvider)

        VARIANT_BOOL getDoNotPromptForConvert();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DoNotPromptForConvert(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DoNotPromptForConvert()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDoNotPromptForConvert(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DoNotPromptForConvert(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DoNotPromptForConvert()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DoNotPromptForConvert, get=getDoNotPromptForConvert, set=setDoNotPromptForConvert)

        VARIANT_BOOL getForceFullCalculation();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ForceFullCalculation(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ForceFullCalculation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setForceFullCalculation(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ForceFullCalculation(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ForceFullCalculation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ForceFullCalculation, get=getForceFullCalculation, set=setForceFullCalculation)

        SlicerCaches* getSlicerCaches();
        %MethodCode
            etapi::SlicerCaches *prop = nullptr;
            HRESULT hr = sipCpp->get_SlicerCaches(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SlicerCaches()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SlicerCaches, get=getSlicerCaches)

        Slicer* getActiveSlicer();
        %MethodCode
            etapi::Slicer *prop = nullptr;
            HRESULT hr = sipCpp->get_ActiveSlicer(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ActiveSlicer()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ActiveSlicer, get=getActiveSlicer)

        VARIANT getDefaultSlicerStyle();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_DefaultSlicerStyle(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DefaultSlicerStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDefaultSlicerStyle(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DefaultSlicerStyle(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DefaultSlicerStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DefaultSlicerStyle, get=getDefaultSlicerStyle, set=setDefaultSlicerStyle)

        long getAccuracyVersion();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_AccuracyVersion(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AccuracyVersion()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAccuracyVersion(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AccuracyVersion(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AccuracyVersion()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AccuracyVersion, get=getAccuracyVersion, set=setAccuracyVersion)

        VARIANT_BOOL getCaseSensitive();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_CaseSensitive(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CaseSensitive()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CaseSensitive, get=getCaseSensitive)

        VARIANT_BOOL getUseWholeCellCriteria();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_UseWholeCellCriteria(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UseWholeCellCriteria()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=UseWholeCellCriteria, get=getUseWholeCellCriteria)

        VARIANT_BOOL getUseWildcards();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_UseWildcards(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UseWildcards()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=UseWildcards, get=getUseWildcards)

        IDispatch* getPivotTables();
        %MethodCode
            IDispatch *prop = nullptr;
            HRESULT hr = sipCpp->get_PivotTables(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PivotTables()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PivotTables, get=getPivotTables)

        Model* getModel();
        %MethodCode
            etapi::Model *prop = nullptr;
            HRESULT hr = sipCpp->get_Model(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Model()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Model, get=getModel)

        VARIANT_BOOL getChartDataPointTrack();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ChartDataPointTrack(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ChartDataPointTrack()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setChartDataPointTrack(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ChartDataPointTrack(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ChartDataPointTrack()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ChartDataPointTrack, get=getChartDataPointTrack, set=setChartDataPointTrack)

        VARIANT getDefaultTimelineStyle();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_DefaultTimelineStyle(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DefaultTimelineStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDefaultTimelineStyle(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DefaultTimelineStyle(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DefaultTimelineStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DefaultTimelineStyle, get=getDefaultTimelineStyle, set=setDefaultTimelineStyle)
    };
};
