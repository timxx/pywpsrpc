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
    struct _Document : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Name(BSTR *prop /Out/) = 0;
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(long *prop /Out/) = 0;
        virtual HRESULT get_Parent(IDispatch **prop /Out/) = 0;
        virtual HRESULT get_BuiltInDocumentProperties(IDispatch **prop /Out/) = 0;
        virtual HRESULT get_CustomDocumentProperties(IDispatch **prop /Out/) = 0;
        virtual HRESULT get_Path(BSTR *prop /Out/) = 0;

        virtual HRESULT get_Bookmarks(Bookmarks **prop /Out/) = 0;
        virtual HRESULT get_Tables(Tables **prop /Out/) = 0;

        virtual HRESULT get_Footnotes(Footnotes **prop /Out/) = 0;
        virtual HRESULT get_Endnotes(Endnotes **prop /Out/) = 0;
        virtual HRESULT get_Comments(Comments **prop /Out/) = 0;

        virtual HRESULT get_Type(WdDocumentType *prop /Out/) = 0;

        virtual HRESULT get_AutoHyphenation(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_AutoHyphenation(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HyphenateCaps(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_HyphenateCaps(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HyphenationZone(long *prop /Out/) = 0;
        virtual HRESULT put_HyphenationZone(long prop) = 0;

        virtual HRESULT get_ConsecutiveHyphensLimit(long *prop /Out/) = 0;
        virtual HRESULT put_ConsecutiveHyphensLimit(long prop) = 0;

        virtual HRESULT get_Sections(Sections **prop /Out/) = 0;
        virtual HRESULT get_Paragraphs(Paragraphs **prop /Out/) = 0;

        virtual HRESULT get_Words(Words **prop /Out/) = 0;
        virtual HRESULT get_Sentences(Sentences **prop /Out/) = 0;
        virtual HRESULT get_Characters(Characters **prop /Out/) = 0;

        virtual HRESULT get_Fields(Fields **prop /Out/) = 0;
        virtual HRESULT get_FormFields(FormFields **prop /Out/) = 0;
        virtual HRESULT get_Styles(Styles **prop /Out/) = 0;
        virtual HRESULT get_Frames(Frames **prop /Out/) = 0;

        virtual HRESULT get_TablesOfFigures(TablesOfFigures **prop /Out/) = 0;

        virtual HRESULT get_Variables(Variables **prop /Out/) = 0;

        virtual HRESULT get_MailMerge(MailMerge **prop /Out/) = 0;
        virtual HRESULT get_Envelope(Envelope **prop /Out/) = 0;

        virtual HRESULT get_FullName(BSTR *prop /Out/) = 0;

        virtual HRESULT get_Revisions(Revisions **prop /Out/) = 0;

        virtual HRESULT get_TablesOfContents(TablesOfContents **prop /Out/) = 0;
        virtual HRESULT get_TablesOfAuthorities(TablesOfAuthorities **prop /Out/) = 0;

        virtual HRESULT get_PageSetup(PageSetup **prop /Out/) = 0;
        virtual HRESULT put_PageSetup(PageSetup *prop) = 0;

        virtual HRESULT get_Windows(Windows **prop /Out/) = 0;

        virtual HRESULT get_HasRoutingSlip(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_HasRoutingSlip(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_RoutingSlip(RoutingSlip **prop /Out/) = 0;

        virtual HRESULT get_Routed(VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_TablesOfAuthoritiesCategories(TablesOfAuthoritiesCategories **prop /Out/) = 0;
        virtual HRESULT get_Indexes(Indexes **prop /Out/) = 0;

        virtual HRESULT get_Saved(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_Saved(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Content(Range **prop /Out/) = 0;
        virtual HRESULT get_ActiveWindow(Window **prop /Out/) = 0;

        virtual HRESULT get_Kind(WdDocumentKind *prop /Out/) = 0;
        virtual HRESULT put_Kind(WdDocumentKind prop) = 0;

        virtual HRESULT get_ReadOnly(VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_Subdocuments(Subdocuments **prop /Out/) = 0;

        virtual HRESULT get_IsMasterDocument(VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_DefaultTabStop(single *prop /Out/) = 0;
        virtual HRESULT put_DefaultTabStop(single prop) = 0;

        virtual HRESULT get_EmbedTrueTypeFonts(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_EmbedTrueTypeFonts(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SaveFormsData(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_SaveFormsData(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ReadOnlyRecommended(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_ReadOnlyRecommended(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SaveSubsetFonts(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_SaveSubsetFonts(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Compatibility(WdCompatibility Type, VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_Compatibility(WdCompatibility Type, VARIANT_BOOL prop) = 0;

        virtual HRESULT get_StoryRanges(StoryRanges **prop) = 0;
        virtual HRESULT get_CommandBars(ksoapi::_CommandBars **prop) = 0;
        %MethodCode
            sipRes = sipCpp->get_CommandBars((ksoapi::CommandBars**)&a0);
        %End

        virtual HRESULT get_IsSubdocument(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT get_SaveFormat(long *prop /Out/) = 0;
        virtual HRESULT get_ProtectionType(WdProtectionType *prop /Out/) = 0;

        virtual HRESULT get_Hyperlinks(Hyperlinks **prop) = 0;
        virtual HRESULT get_Shapes(Shapes **prop) = 0;
        virtual HRESULT get_ListTemplates(ListTemplates **prop) = 0;
        virtual HRESULT get_Lists(Lists **prop) = 0;

        virtual HRESULT get_UpdateStylesOnOpen(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_UpdateStylesOnOpen(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AttachedTemplate(VARIANT *prop /Out/) = 0;
        virtual HRESULT put_AttachedTemplate(VARIANT *prop) = 0;

        virtual HRESULT get_InlineShapes(InlineShapes **prop /Out/) = 0;
        virtual HRESULT get_Background(Shape **prop) = 0;
        virtual HRESULT put_Background(Shape *prop) = 0;

        virtual HRESULT get_GrammarChecked(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_GrammarChecked(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SpellingChecked(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_SpellingChecked(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowGrammaticalErrors(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_ShowGrammaticalErrors(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowSpellingErrors(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_ShowSpellingErrors(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Versions(Versions **prop /Out/) = 0;

        virtual HRESULT get_ShowSummary(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_ShowSummary(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SummaryViewMode(WdSummaryMode *prop /Out/) = 0;
        virtual HRESULT put_SummaryViewMode(WdSummaryMode prop) = 0;

        virtual HRESULT get_SummaryLength(long *prop /Out/) = 0;
        virtual HRESULT put_SummaryLength(long prop) = 0;

        virtual HRESULT get_PrintFractionalWidths(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_PrintFractionalWidths(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_PrintPostScriptOverText(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_PrintPostScriptOverText(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Container(IDispatch **prop /Out/) = 0;

        virtual HRESULT get_PrintFormsData(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_PrintFormsData(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ListParagraphs(ListParagraphs **prop /Out/) = 0;

        virtual HRESULT put_Password(BSTR rhs) = 0;
        virtual HRESULT put_WritePassword(BSTR rhs) = 0;

        virtual HRESULT get_HasPassword(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT get_WriteReserved(VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_ActiveWritingStyle(VARIANT *LanguageID, BSTR *prop /Out/) = 0;
        virtual HRESULT put_ActiveWritingStyle(VARIANT *LanguageID, BSTR prop) = 0;

        virtual HRESULT get_UserControl(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_UserControl(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HasMailer(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_HasMailer(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Mailer(Mailer **prop /Out/) = 0;
        virtual HRESULT get_ReadabilityStatistics(ReadabilityStatistics **prop) = 0;

        virtual HRESULT get_GrammaticalErrors(ProofreadingErrors **prop) = 0;
        virtual HRESULT get_SpellingErrors(ProofreadingErrors **prop) = 0;

        // virtual HRESULT get_VBProject(VBProject **prop) = 0;

        virtual HRESULT get_FormsDesign(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT get__CodeName(BSTR *prop /Out/) = 0;
        virtual HRESULT put__CodeName(BSTR prop) = 0;
        virtual HRESULT get_CodeName(BSTR *prop /Out/) = 0;

        virtual HRESULT get_SnapToGrid(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_SnapToGrid(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SnapToShapes(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_SnapToShapes(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_GridDistanceHorizontal(single *prop /Out/) = 0;
        virtual HRESULT put_GridDistanceHorizontal(single prop) = 0;

        virtual HRESULT get_GridDistanceVertical(single *prop /Out/) = 0;
        virtual HRESULT put_GridDistanceVertical(single prop) = 0;

        virtual HRESULT get_GridOriginHorizontal(single *prop /Out/) = 0;
        virtual HRESULT put_GridOriginHorizontal(single prop) = 0;

        virtual HRESULT get_GridOriginVertical(single *prop /Out/) = 0;
        virtual HRESULT put_GridOriginVertical(single prop) = 0;

        virtual HRESULT get_GridSpaceBetweenHorizontalLines(long *prop /Out/) = 0;
        virtual HRESULT put_GridSpaceBetweenHorizontalLines(long prop) = 0;

        virtual HRESULT get_GridSpaceBetweenVerticalLines(long *prop /Out/) = 0;
        virtual HRESULT put_GridSpaceBetweenVerticalLines(long prop) = 0;

        virtual HRESULT get_GridOriginFromMargin(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_GridOriginFromMargin(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_KerningByAlgorithm(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_KerningByAlgorithm(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_JustificationMode(WdJustificationMode *prop /Out/) = 0;
        virtual HRESULT put_JustificationMode(WdJustificationMode prop) = 0;

        virtual HRESULT get_FarEastLineBreakLevel(WdFarEastLineBreakLevel *prop /Out/) = 0;
        virtual HRESULT put_FarEastLineBreakLevel(WdFarEastLineBreakLevel prop) = 0;

        virtual HRESULT get_NoLineBreakBefore(BSTR *prop /Out/) = 0;
        virtual HRESULT put_NoLineBreakBefore(BSTR prop) = 0;

        virtual HRESULT get_NoLineBreakAfter(BSTR *prop /Out/) = 0;
        virtual HRESULT put_NoLineBreakAfter(BSTR prop) = 0;

        virtual HRESULT get_TrackRevisions(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_TrackRevisions(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_PrintRevisions(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_PrintRevisions(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowRevisions(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_ShowRevisions(VARIANT_BOOL prop) = 0;

        virtual HRESULT Close(VARIANT *SaveChanges = argMissing(),
            VARIANT *OriginalFormat = argMissing(),
            VARIANT *RouteDocument = argMissing()) = 0;

        virtual HRESULT SaveAs2000(VARIANT *FileName = argMissing(),
            VARIANT *FileFormat = argMissing(),
            VARIANT *LockComments = argMissing(),
            VARIANT *Password = argMissing(),
            VARIANT *AddToRecentFiles = argMissing(),
            VARIANT *WritePassword = argMissing(),
            VARIANT *ReadOnlyRecommended = argMissing(),
            VARIANT *EmbedTrueTypeFonts = argMissing(),
            VARIANT *SaveNativePictureFormat = argMissing(),
            VARIANT *SaveFormsData = argMissing(),
            VARIANT *SaveAsAOCELetter = argMissing()) = 0;

        virtual HRESULT Repaginate() = 0;
        virtual HRESULT FitToPages() = 0;
        virtual HRESULT ManualHyphenation() = 0;
        virtual HRESULT Select() = 0;
        virtual HRESULT DataForm() = 0;
        virtual HRESULT Route() = 0;
        virtual HRESULT Save() = 0;

        virtual HRESULT PrintOutOld(VARIANT *Background = argMissing(),
            VARIANT *Append = argMissing(),
            VARIANT *Range = argMissing(),
            VARIANT *OutputFileName = argMissing(),
            VARIANT *From = argMissing(),
            VARIANT *To = argMissing(),
            VARIANT *Item = argMissing(),
            VARIANT *Copies = argMissing(),
            VARIANT *Pages = argMissing(),
            VARIANT *PageType = argMissing(),
            VARIANT *PrintToFile = argMissing(),
            VARIANT *Collate = argMissing(),
            VARIANT *ActivePrinterMacGX = argMissing(),
            VARIANT *ManualDuplexPrint = argMissing()) = 0;

        virtual HRESULT SendMail() = 0;

        virtual HRESULT Range(VARIANT *Start = argMissing(),
            VARIANT *End = argMissing(),
            Range **prop /Out/ = 0) = 0;

        virtual HRESULT RunAutoMacro(WdAutoMacros Which) = 0;
        virtual HRESULT Activate() = 0;
        virtual HRESULT PrintPreview() = 0;

        virtual HRESULT GoTo(VARIANT *What = argMissing(),
            VARIANT *Which = argMissing(),
            VARIANT *Count = argMissing(),
            VARIANT *Name = argMissing(),
            Range **prop /Out/ = 0) = 0;

        virtual HRESULT Undo(VARIANT *Times,
            VARIANT_BOOL *prop) = 0;

        virtual HRESULT Redo(VARIANT *Times,
            VARIANT_BOOL *prop) = 0;

        virtual HRESULT ComputeStatistics(WdStatistic Statistic,
            VARIANT *IncludeFootnotesAndEndnotes,
            long *prop /Out/) = 0;

        virtual HRESULT MakeCompatibilityDefault() = 0;

        virtual HRESULT Protect2002(WdProtectionType Type,
            VARIANT *NoReset = argMissing(),
            VARIANT *Password = argMissing()) = 0;

        virtual HRESULT Unprotect(VARIANT *Password = argMissing()) = 0;

        virtual HRESULT EditionOptions(WdEditionType Type,
            WdEditionOption Option,
            BSTR Name,
            VARIANT *Format) = 0;

        virtual HRESULT RunLetterWizard(VARIANT *LetterContent,
            VARIANT *WizardMode) = 0;

        //virtual HRESULT GetLetterContent(LetterContent **prop /Out/) = 0;

        virtual HRESULT SetLetterContent(VARIANT *LetterContent) = 0;

        virtual HRESULT CopyStylesFromTemplate(BSTR Template) = 0;

        virtual HRESULT UpdateStyles() = 0;

        virtual HRESULT CheckGrammar() = 0;

        virtual HRESULT CheckSpelling(VARIANT *CustomDictionary,
            VARIANT *IgnoreUppercase,
            VARIANT *AlwaysSuggest,
            VARIANT *CustomDictionary2,
            VARIANT *CustomDictionary3,
            VARIANT *CustomDictionary4,
            VARIANT *CustomDictionary5,
            VARIANT *CustomDictionary6,
            VARIANT *CustomDictionary7,
            VARIANT *CustomDictionary8,
            VARIANT *CustomDictionary9,
            VARIANT *CustomDictionary10) = 0;

        virtual HRESULT FollowHyperlink(VARIANT *Address,
            VARIANT *SubAddress,
            VARIANT *NewWindow,
            VARIANT *AddHistory,
            VARIANT *ExtraInfo,
            VARIANT *Method,
            VARIANT *HeaderInfo) = 0;

        virtual HRESULT AddToFavorites() = 0;

        virtual HRESULT Reload() = 0;

        virtual HRESULT AutoSummarize(VARIANT *Length = argMissing(),
            VARIANT *Mode = argMissing(),
            VARIANT *UpdateProperties = argMissing(),
            Range **prop /Out/ = 0) = 0;

        virtual HRESULT RemoveNumbers(VARIANT *NumberType) = 0;

        virtual HRESULT ConvertNumbersToText(VARIANT *NumberType) = 0;

        virtual HRESULT CountNumberedItems(VARIANT *NumberType,
            VARIANT *Level,
            long *prop) = 0;

        virtual HRESULT Post() = 0;
        virtual HRESULT ToggleFormsDesign() = 0;
        virtual HRESULT Compare2000(BSTR Name) = 0;
        virtual HRESULT UpdateSummaryProperties() = 0;

        virtual HRESULT GetCrossReferenceItems(VARIANT *ReferenceType,
            VARIANT *prop /Out/) = 0;

        virtual HRESULT AutoFormat() = 0;
        virtual HRESULT ViewCode() = 0;
        virtual HRESULT ViewPropertyBrowser() = 0;
        virtual HRESULT ForwardMailer() = 0;
        virtual HRESULT Reply() = 0;
        virtual HRESULT ReplyAll() = 0;

        virtual HRESULT SendMailer(VARIANT *FileFormat,
            VARIANT *Priority) = 0;

        virtual HRESULT UndoClear() = 0;

        virtual HRESULT PresentIt() = 0;

        virtual HRESULT SendFax(BSTR Address,
            VARIANT *Subject) = 0;

        virtual HRESULT Merge2000(BSTR FileName) = 0;

        virtual HRESULT ClosePrintPreview() = 0;
        virtual HRESULT CheckConsistency() = 0;

/*
        virtual HRESULT CreateLetterContent(BSTR DateFormat,
            VARIANT_BOOL IncludeHeaderFooter,
            BSTR PageDesign,
            WdLetterStyle LetterStyle,
            VARIANT_BOOL Letterhead,
            WdLetterheadLocation LetterheadLocation,
            single LetterheadSize,
            BSTR RecipientName,
            BSTR RecipientAddress,
            BSTR Salutation,
            WdSalutationType SalutationType,
            BSTR RecipientReference,
            BSTR MailingInstructions,
            BSTR AttentionLine,
            BSTR Subject,
            BSTR CCList,
            BSTR ReturnAddress,
            BSTR SenderName,
            BSTR Closing,
            BSTR SenderCompany,
            BSTR SenderJobTitle,
            BSTR SenderInitials,
            long EnclosureNumber,
            VARIANT *InfoBlock,
            VARIANT *RecipientCode,
            VARIANT *RecipientGender,
            VARIANT *ReturnAddressShortForm,
            VARIANT *SenderCity,
            VARIANT *SenderCode,
            VARIANT *SenderGender,
            VARIANT *SenderReference,
            LetterContent **prop /Out/) = 0;
*/

        virtual HRESULT AcceptAllRevisions() = 0;
        virtual HRESULT RejectAllRevisions() = 0;
        virtual HRESULT DetectLanguage() = 0;
        virtual HRESULT ApplyTheme(BSTR Name) = 0;
        virtual HRESULT RemoveTheme() = 0;
        virtual HRESULT WebPagePreview() = 0;
        virtual HRESULT ReloadAs(MsoEncoding Encoding) = 0;

        virtual HRESULT get_ActiveTheme(BSTR *prop /Out/) = 0;
        virtual HRESULT get_ActiveThemeDisplayName(BSTR *prop /Out/) = 0;

        virtual HRESULT get_Email(Email **prop /Out/) = 0;
        virtual HRESULT get_Scripts(ksoapi::Scripts **prop /Out/) = 0;

        virtual HRESULT get_LanguageDetected(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_LanguageDetected(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_FarEastLineBreakLanguage(WdFarEastLineBreakLanguageID *prop /Out/) = 0;
        virtual HRESULT put_FarEastLineBreakLanguage(WdFarEastLineBreakLanguageID prop) = 0;

        virtual HRESULT get_Frameset(Frameset **prop) = 0;

        virtual HRESULT get_ClickAndTypeParagraphStyle(VARIANT *prop /Out/) = 0;
        virtual HRESULT put_ClickAndTypeParagraphStyle(VARIANT *prop) = 0;

        // virtual HRESULT get_HTMLProject(HTMLProject **prop /Out/) = 0;
        // virtual HRESULT get_WebOptions(WebOptions **prop) = 0;

        virtual HRESULT get_OpenEncoding(MsoEncoding *prop /Out/) = 0;
        virtual HRESULT get_SaveEncoding(MsoEncoding *prop /Out/) = 0;

        virtual HRESULT put_SaveEncoding(MsoEncoding prop) = 0;

        virtual HRESULT get_OptimizeForWord97(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_OptimizeForWord97(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_VBASigned(VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT PrintOut2000(VARIANT *Background = argMissing(),
            VARIANT *Append = argMissing(),
            VARIANT *Range = argMissing(),
            VARIANT *OutputFileName = argMissing(),
            VARIANT *From = argMissing(),
            VARIANT *To = argMissing(),
            VARIANT *Item = argMissing(),
            VARIANT *Copies = argMissing(),
            VARIANT *Pages = argMissing(),
            VARIANT *PageType = argMissing(),
            VARIANT *PrintToFile = argMissing(),
            VARIANT *Collate = argMissing(),
            VARIANT *ActivePrinterMacGX = argMissing(),
            VARIANT *ManualDuplexPrint = argMissing(),
            VARIANT *PrintZoomColumn = argMissing(),
            VARIANT *PrintZoomRow = argMissing(),
            VARIANT *PrintZoomPaperWidth = argMissing(),
            VARIANT *PrintZoomPaperHeight = argMissing()) = 0;

        virtual HRESULT sblt(BSTR s) = 0;

        virtual HRESULT ConvertVietDoc(long CodePageOrigin) = 0;

        virtual HRESULT PrintOut(VARIANT *Background = argMissing(),
            VARIANT *Append = argMissing(),
            VARIANT *Range = argMissing(),
            VARIANT *OutputFileName = argMissing(),
            VARIANT *From = argMissing(),
            VARIANT *To = argMissing(),
            VARIANT *Item = argMissing(),
            VARIANT *Copies = argMissing(),
            VARIANT *Pages = argMissing(),
            VARIANT *PageType = argMissing(),
            VARIANT *PrintToFile = argMissing(),
            VARIANT *Collate = argMissing(),
            VARIANT *ActivePrinterMacGX = argMissing(),
            VARIANT *ManualDuplexPrint = argMissing(),
            VARIANT *PrintZoomColumn = argMissing(),
            VARIANT *PrintZoomRow = argMissing(),
            VARIANT *PrintZoomPaperWidth = argMissing(),
            VARIANT *PrintZoomPaperHeight = argMissing()) = 0;

        // virtual HRESULT get_MailEnvelope(MsoEnvelope **prop /Out/) = 0;

        virtual HRESULT get_DisableFeatures(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_DisableFeatures(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_DoNotEmbedSystemFonts(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_DoNotEmbedSystemFonts(VARIANT_BOOL prop) = 0;

        // virtual HRESULT get_Signatures(SignatureSet **prop /Out/) = 0;

        virtual HRESULT get_DefaultTargetFrame(BSTR *prop /Out/) = 0;
        virtual HRESULT put_DefaultTargetFrame(BSTR prop) = 0;

        virtual HRESULT get_HTMLDivisions(HTMLDivisions **prop /Out/) = 0;

        virtual HRESULT get_DisableFeaturesIntroducedAfter(WdDisableFeaturesIntroducedAfter *prop /Out/) = 0;
        virtual HRESULT put_DisableFeaturesIntroducedAfter(WdDisableFeaturesIntroducedAfter prop) = 0;

        virtual HRESULT get_RemovePersonalInformation(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_RemovePersonalInformation(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SmartTags(SmartTags **prop /Out/) = 0;

        virtual HRESULT Compare2002(BSTR Name,
            VARIANT *AuthorName = argMissing(),
            VARIANT *CompareTarget = argMissing(),
            VARIANT *DetectFormatChanges = argMissing(),
            VARIANT *IgnoreAllComparisonWarnings = argMissing(),
            VARIANT *AddToRecentFiles = argMissing()) = 0;

        virtual HRESULT CheckIn(VARIANT_BOOL SaveChanges,
            VARIANT *Comments,
            VARIANT_BOOL MakePublic = 0) = 0;

        virtual HRESULT CanCheckin(VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT Merge(BSTR FileName,
            VARIANT *MergeTarget = argMissing(),
            VARIANT *DetectFormatChanges = argMissing(),
            VARIANT *UseFormattingFrom = argMissing(),
            VARIANT *AddToRecentFiles = argMissing()) = 0;

        virtual HRESULT get_EmbedSmartTags(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_EmbedSmartTags(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SmartTagsAsXMLProps(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_SmartTagsAsXMLProps(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_TextEncoding(MsoEncoding *prop /Out/) = 0;
        virtual HRESULT put_TextEncoding(MsoEncoding prop) = 0;

        virtual HRESULT get_TextLineEnding(WdLineEndingType *prop /Out/) = 0;
        virtual HRESULT put_TextLineEnding(WdLineEndingType prop) = 0;

        virtual HRESULT SendForReview(VARIANT *Recipients,
            VARIANT *Subject,
            VARIANT *ShowMessage,
            VARIANT *IncludeAttachment) = 0;

        virtual HRESULT ReplyWithChanges(VARIANT *ShowMessage) = 0;

        virtual HRESULT EndReview() = 0;

        // virtual HRESULT get_StyleSheets(StyleSheets **prop /Out/) = 0;
        virtual HRESULT get_DefaultTableStyle(VARIANT *prop /Out/) = 0;

        virtual HRESULT get_PasswordEncryptionProvider(BSTR *prop /Out/) = 0;
        virtual HRESULT get_PasswordEncryptionAlgorithm(BSTR *prop /Out/) = 0;

        virtual HRESULT get_PasswordEncryptionKeyLength(long *prop /Out/) = 0;
        virtual HRESULT get_PasswordEncryptionFileProperties(VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT SetPasswordEncryptionOptions(BSTR PasswordEncryptionProvider,
            BSTR PasswordEncryptionAlgorithm,
            long PasswordEncryptionKeyLength,
            VARIANT *PasswordEncryptionFileProperties) = 0;

        virtual HRESULT RecheckSmartTags() = 0;
        virtual HRESULT RemoveSmartTags() = 0;

        virtual HRESULT SetDefaultTableStyle(VARIANT *Style,
            VARIANT_BOOL SetInTemplate) = 0;

        virtual HRESULT DeleteAllComments() = 0;
        virtual HRESULT AcceptAllRevisionsShown() = 0;
        virtual HRESULT RejectAllRevisionsShown() = 0;
        virtual HRESULT DeleteAllCommentsShown() = 0;
        virtual HRESULT ResetFormFields() = 0;

        virtual HRESULT SaveAs(VARIANT *FileName = argMissing(),
            VARIANT *FileFormat = argMissing(),
            VARIANT *LockComments = argMissing(),
            VARIANT *Password = argMissing(),
            VARIANT *AddToRecentFiles = argMissing(),
            VARIANT *WritePassword = argMissing(),
            VARIANT *ReadOnlyRecommended = argMissing(),
            VARIANT *EmbedTrueTypeFonts = argMissing(),
            VARIANT *SaveNativePictureFormat = argMissing(),
            VARIANT *SaveFormsData = argMissing(),
            VARIANT *SaveAsAOCELetter = argMissing(),
            VARIANT *Encoding = argMissing(),
            VARIANT *InsertLineBreaks = argMissing(),
            VARIANT *AllowSubstitutions = argMissing(),
            VARIANT *LineEnding = argMissing(),
            VARIANT *AddBiDiMarks = argMissing()) = 0;

        virtual HRESULT get_EmbedLinguisticData(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_EmbedLinguisticData(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_FormattingShowFont(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_FormattingShowFont(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_FormattingShowClear(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_FormattingShowClear(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_FormattingShowParagraph(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_FormattingShowParagraph(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_FormattingShowNumbering(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_FormattingShowNumbering(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_FormattingShowFilter(WdShowFilter *prop /Out/) = 0;
        virtual HRESULT put_FormattingShowFilter(WdShowFilter prop) = 0;

        virtual HRESULT CheckNewSmartTags() = 0;


        // virtual HRESULT get_Permission(Permission **prop) = 0;

        virtual HRESULT get_XMLNodes(XMLNodes **prop) = 0;

        virtual HRESULT get_XMLSchemaReferences(XMLSchemaReferences **prop) = 0;
/*
        virtual HRESULT get_SmartDocument(SmartDocument **prop) = 0;

        virtual HRESULT get_SharedWorkspace(SharedWorkspace **prop) = 0;

        virtual HRESULT get_Sync(Sync **prop /Out/) = 0;
*/
        virtual HRESULT get_EnforceStyle(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_EnforceStyle(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatOverride(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_AutoFormatOverride(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_XMLSaveDataOnly(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_XMLSaveDataOnly(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_XMLHideNamespaces(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_XMLHideNamespaces(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_XMLShowAdvancedErrors(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_XMLShowAdvancedErrors(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_XMLUseXSLTWhenSaving(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_XMLUseXSLTWhenSaving(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_XMLSaveThroughXSLT(BSTR *prop /Out/) = 0;
        virtual HRESULT put_XMLSaveThroughXSLT(BSTR prop) = 0;

        // virtual HRESULT get_DocumentLibraryVersions(DocumentLibraryVersions **prop /Out/) = 0;

        virtual HRESULT get_ReadingModeLayoutFrozen(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_ReadingModeLayoutFrozen(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_RemoveDateAndTime(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_RemoveDateAndTime(VARIANT_BOOL prop) = 0;

        virtual HRESULT SendFaxOverInternet(VARIANT *Recipients,
            VARIANT *Subject,
            VARIANT *ShowMessage) = 0;

        virtual HRESULT TransformDocument(BSTR Path, VARIANT_BOOL DataOnly = -1) = 0;

        virtual HRESULT Protect(WdProtectionType Type,
            VARIANT *NoReset = argMissing(),
            VARIANT *Password = argMissing(),
            VARIANT *UseIRM = argMissing(),
            VARIANT *EnforceStyleLock = argMissing()) = 0;

        virtual HRESULT SelectAllEditableRanges(VARIANT *EditorID) = 0;
        virtual HRESULT DeleteAllEditableRanges(VARIANT *EditorID) = 0;
        virtual HRESULT DeleteAllInkAnnotations() = 0;

        virtual HRESULT AddDocumentWorkspaceHeader(VARIANT_BOOL RichFormat,
            BSTR Url,
            BSTR Title,
            BSTR Description,
            BSTR ID) = 0;

        virtual HRESULT RemoveDocumentWorkspaceHeader(BSTR ID) = 0;

        virtual HRESULT Compare(BSTR Name,
            VARIANT *AuthorName,
            VARIANT *CompareTarget,
            VARIANT *DetectFormatChanges,
            VARIANT *IgnoreAllComparisonWarnings,
            VARIANT *AddToRecentFiles,
            VARIANT *RemovePersonalInformation,
            VARIANT *RemoveDateAndTime) = 0;

        virtual HRESULT RemoveLockedStyles() = 0;

        virtual HRESULT get_ChildNodeSuggestions(XMLChildNodeSuggestions **prop /Out/) = 0;

        virtual HRESULT SelectSingleNode(BSTR XPath,
            BSTR PrefixMapping,
            VARIANT_BOOL FastSearchSkippingTextNodes,
            XMLNode **prop /Out/) = 0;

        virtual HRESULT SelectNodes(BSTR XPath,
            BSTR PrefixMapping,
            VARIANT_BOOL FastSearchSkippingTextNodes,
            XMLNodes **prop /Out/) = 0;

        virtual HRESULT get_XMLSchemaViolations(XMLNodes **prop /Out/) = 0;

        virtual HRESULT get_ReadingLayoutSizeX(long *prop /Out/) = 0;
        virtual HRESULT put_ReadingLayoutSizeX(long prop) = 0;

        virtual HRESULT get_ReadingLayoutSizeY(long *prop /Out/) = 0;
        virtual HRESULT put_ReadingLayoutSizeY(long prop) = 0;

        virtual HRESULT get_StyleSortMethod(WdStyleSort *prop /Out/) = 0;
        virtual HRESULT put_StyleSortMethod(WdStyleSort prop) = 0;

        // virtual HRESULT get_ContentTypeProperties(MetaProperties **prop /Out/) = 0;

        virtual HRESULT get_TrackMoves(VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_TrackMoves(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_TrackFormatting(VARIANT_BOOL *prop) = 0;

        virtual HRESULT put_TrackFormatting(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Dummy1() = 0;

        virtual HRESULT get_OMaths(OMaths **prop /Out/) = 0;

        virtual HRESULT RemoveDocumentInformation(WdRemoveDocInfoType RemoveDocInfoType) = 0;

        virtual HRESULT CheckInWithVersion(VARIANT_BOOL SaveChanges,
            VARIANT *Comments,
            VARIANT_BOOL MakePublic,
            VARIANT *VersionType) = 0;

        virtual HRESULT Dummy2() = 0;
        virtual HRESULT get_Dummy3() = 0;

        // virtual HRESULT get_ServerPolicy(ServerPolicy **prop /Out/) = 0;
        virtual HRESULT get_ContentControls(ContentControls **prop /Out/) = 0;
        // virtual HRESULT get_DocumentInspectors(DocumentInspectors **prop /Out/) = 0;

        virtual HRESULT LockServerFile() = 0;

        // virtual HRESULT GetWorkflowTasks(WorkflowTasks **prop /Out/) = 0;
        // virtual HRESULT GetWorkflowTemplates(WorkflowTemplates **prop /Out/) = 0;

        virtual HRESULT Dummy4() = 0;

        virtual HRESULT AddMeetingWorkspaceHeader(VARIANT_BOOL SkipIfAbsent,
            BSTR Url,
            BSTR Title,
            BSTR Description,
            BSTR ID) = 0;

        // virtual HRESULT get_Bibliography(Bibliography **prop /Out/) = 0;

        virtual HRESULT get_LockTheme(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_LockTheme(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_LockQuickStyleSet(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_LockQuickStyleSet(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_OriginalDocumentTitle(BSTR *prop /Out/) = 0;
        virtual HRESULT get_RevisedDocumentTitle(BSTR *prop /Out/) = 0;

        virtual HRESULT get_CustomXMLParts(ksoapi::_CustomXMLParts **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_CustomXMLParts((ksoapi::CustomXMLParts**)&a0);
        %End

        virtual HRESULT get_FormattingShowNextLevel(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_FormattingShowNextLevel(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_FormattingShowUserStyleName(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_FormattingShowUserStyleName(VARIANT_BOOL prop) = 0;

        virtual HRESULT SaveAsQuickStyleSet(BSTR FileName) = 0;

        virtual HRESULT ApplyQuickStyleSet(BSTR Name) = 0;

        // virtual HRESULT get_Research(Research **prop /Out/) = 0;

        virtual HRESULT get_Final(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_Final(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_OMathBreakBin(WdOMathBreakBin *prop /Out/) = 0;
        virtual HRESULT put_OMathBreakBin(WdOMathBreakBin prop) = 0;

        virtual HRESULT get_OMathBreakSub(WdOMathBreakSub *prop /Out/) = 0;
        virtual HRESULT put_OMathBreakSub(WdOMathBreakSub prop) = 0;

        virtual HRESULT get_OMathJc(WdOMathJc *prop /Out/) = 0;
        virtual HRESULT put_OMathJc(WdOMathJc prop) = 0;

        virtual HRESULT get_OMathLeftMargin(single *prop /Out/) = 0;
        virtual HRESULT put_OMathLeftMargin(single prop) = 0;

        virtual HRESULT get_OMathRightMargin(single *prop /Out/) = 0;
        virtual HRESULT put_OMathRightMargin(single prop) = 0;

        virtual HRESULT get_OMathWrap(single *prop) = 0;
        virtual HRESULT put_OMathWrap(single prop) = 0;

        virtual HRESULT get_OMathIntSubSupLim(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_OMathIntSubSupLim(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_OMathNarySupSubLim(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_OMathNarySupSubLim(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_OMathSmallFrac(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_OMathSmallFrac(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_WordOpenXML(BSTR *prop /Out/) = 0;

        //virtual HRESULT get_DocumentTheme(OfficeTheme **prop /Out/) = 0;

        virtual HRESULT ApplyDocumentTheme(BSTR FileName) = 0;

        virtual HRESULT get_HasVBProject(VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT SelectLinkedControls(ksoapi::CustomXMLNode *Node, ContentControls **prop) = 0;

        virtual HRESULT SelectUnlinkedControls(ksoapi::_CustomXMLPart *Stream, ContentControls **prop) = 0;
        %MethodCode
            sipRes = sipCpp->SelectUnlinkedControls((ksoapi::CustomXMLPart*)a0, &a1);
        %End

        virtual HRESULT SelectContentControlsByTitle(BSTR Title, ContentControls **prop /Out/) = 0;

        virtual HRESULT ExportAsFixedFormat(BSTR OutputFileName,
            WdExportFormat ExportFormat,
            VARIANT_BOOL OpenAfterExport,
            WdExportOptimizeFor OptimizeFor,
            WdExportRange Range,
            long From,
            long To,
            WdExportItem Item,
            VARIANT_BOOL IncludeDocProps,
            VARIANT_BOOL KeepIRM,
            WdExportCreateBookmarks CreateBookmarks,
            VARIANT_BOOL DocStructureTags,
            VARIANT_BOOL BitmapMissingFonts,
            VARIANT_BOOL UseISO19005_1,
            VARIANT *FixedFormatExtClassPtr) = 0;

        virtual HRESULT FreezeLayout() = 0;
        virtual HRESULT UnfreezeLayout() = 0;

        virtual HRESULT get_OMathFontName(BSTR *prop /Out/) = 0;
        virtual HRESULT put_OMathFontName(BSTR prop) = 0;

        virtual HRESULT DowngradeDocument() = 0;

        virtual HRESULT get_EncryptionProvider(BSTR *prop /Out/) = 0;
        virtual HRESULT put_EncryptionProvider(BSTR prop) = 0;

        virtual HRESULT get_UseMathDefaults(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_UseMathDefaults(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_CurrentRsid(long *prop /Out/) = 0;

        virtual HRESULT Convert() = 0;

        virtual HRESULT SelectContentControlsByTag(BSTR Tag, ContentControls **prop /Out/) = 0;

        virtual HRESULT ConvertAutoHyphens() = 0;
        virtual HRESULT get_DocID(long *prop /Out/) = 0;

        virtual HRESULT ApplyQuickStyleSet2(VARIANT *Style) = 0;

        virtual HRESULT get_CompatibilityMode(long *prop /Out/) = 0;

        virtual HRESULT SaveAs2(VARIANT *FileName = argMissing(),
            VARIANT *FileFormat = argMissing(),
            VARIANT *LockComments = argMissing(),
            VARIANT *Password = argMissing(),
            VARIANT *AddToRecentFiles = argMissing(),
            VARIANT *WritePassword = argMissing(),
            VARIANT *ReadOnlyRecommended = argMissing(),
            VARIANT *EmbedTrueTypeFonts = argMissing(),
            VARIANT *SaveNativePictureFormat = argMissing(),
            VARIANT *SaveFormsData = argMissing(),
            VARIANT *SaveAsAOCELetter = argMissing(),
            VARIANT *Encoding = argMissing(),
            VARIANT *InsertLineBreaks = argMissing(),
            VARIANT *AllowSubstitutions = argMissing(),
            VARIANT *LineEnding = argMissing(),
            VARIANT *AddBiDiMarks = argMissing(),
            VARIANT *CompatibilityMode = argMissing()) = 0;

        virtual HRESULT get_CoAuthoring(CoAuthoring **prop /Out/) = 0;

        virtual HRESULT SetCompatibilityMode(long Mode) = 0;

        // virtual HRESULT get_Broadcast(Broadcast **prop /Out/) = 0;

        virtual HRESULT ReturnToLastReadPosition(long *prop /Out/) = 0;

        virtual HRESULT get_ChartDataPointTrack(VARIANT_BOOL *prop /Out/) = 0;
        virtual HRESULT put_ChartDataPointTrack(VARIANT_BOOL prop) = 0;

        virtual HRESULT get_IsInAutosave(VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT SaveCopyAs(VARIANT *FileName = argMissing(),
            VARIANT *FileFormat = argMissing(),
            VARIANT *LockComments = argMissing(),
            VARIANT *Password = argMissing(),
            VARIANT *AddToRecentFiles = argMissing(),
            VARIANT *WritePassword = argMissing(),
            VARIANT *ReadOnlyRecommended = argMissing(),
            VARIANT *EmbedTrueTypeFonts = argMissing(),
            VARIANT *SaveNativePictureFormat = argMissing(),
            VARIANT *SaveFormsData = argMissing(),
            VARIANT *SaveAsAOCELetter = argMissing(),
            VARIANT *Encoding = argMissing(),
            VARIANT *InsertLineBreaks = argMissing(),
            VARIANT *AllowSubstitutions = argMissing(),
            VARIANT *LineEnding = argMissing(),
            VARIANT *AddBiDiMarks = argMissing(),
            VARIANT *CompatibilityMode = argMissing()) = 0;

        virtual HRESULT get_DocumentFields(DocumentFields **prop /Out/) = 0;
    };
};