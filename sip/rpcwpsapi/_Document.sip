/**
 * Copyright (c) 2020-2023 Weitian Leung
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
        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_BuiltInDocumentProperties(
            ksoapi::DocumentProperties **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_BuiltInDocumentProperties((IDispatch **)&a0);
        %End

        virtual HRESULT get_CustomDocumentProperties(
            ksoapi::DocumentProperties **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_CustomDocumentProperties((IDispatch **)&a0);
        %End

        virtual HRESULT get_Path(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Bookmarks(
            Bookmarks **prop /Out/) = 0;

        virtual HRESULT get_Tables(
            Tables **prop /Out/) = 0;

        virtual HRESULT get_Footnotes(
            Footnotes **prop /Out/) = 0;

        virtual HRESULT get_Endnotes(
            Endnotes **prop /Out/) = 0;

        virtual HRESULT get_Comments(
            Comments **prop /Out/) = 0;

        virtual HRESULT get_Type(
            WdDocumentType *prop /Out/) = 0;

        virtual HRESULT get_AutoHyphenation(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoHyphenation(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HyphenateCaps(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HyphenateCaps(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HyphenationZone(
            long *prop /Out/) = 0;

        virtual HRESULT put_HyphenationZone(
            long prop) = 0;

        virtual HRESULT get_ConsecutiveHyphensLimit(
            long *prop /Out/) = 0;

        virtual HRESULT put_ConsecutiveHyphensLimit(
            long prop) = 0;

        virtual HRESULT get_Sections(
            Sections **prop /Out/) = 0;

        virtual HRESULT get_Paragraphs(
            Paragraphs **prop /Out/) = 0;

        virtual HRESULT get_Words(
            Words **prop /Out/) = 0;

        virtual HRESULT get_Sentences(
            Sentences **prop /Out/) = 0;

        virtual HRESULT get_Characters(
            Characters **prop /Out/) = 0;

        virtual HRESULT get_Fields(
            Fields **prop /Out/) = 0;

        virtual HRESULT get_FormFields(
            FormFields **prop /Out/) = 0;

        virtual HRESULT get_Styles(
            Styles **prop /Out/) = 0;

        virtual HRESULT get_Frames(
            Frames **prop /Out/) = 0;

        virtual HRESULT get_TablesOfFigures(
            TablesOfFigures **prop /Out/) = 0;

        virtual HRESULT get_Variables(
            Variables **prop /Out/) = 0;

        virtual HRESULT get_MailMerge(
            MailMerge **prop /Out/) = 0;

        virtual HRESULT get_Envelope(
            Envelope **prop /Out/) = 0;

        virtual HRESULT get_FullName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Revisions(
            Revisions **prop /Out/) = 0;

        virtual HRESULT get_TablesOfContents(
            TablesOfContents **prop /Out/) = 0;

        virtual HRESULT get_TablesOfAuthorities(
            TablesOfAuthorities **prop /Out/) = 0;

        virtual HRESULT get_PageSetup(
            PageSetup **prop /Out/) = 0;

        virtual HRESULT put_PageSetup(
            PageSetup *prop) = 0;

        virtual HRESULT get_Windows(
            Windows **prop /Out/) = 0;

        virtual HRESULT get_HasRoutingSlip(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HasRoutingSlip(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_RoutingSlip(
            RoutingSlip **prop /Out/) = 0;

        virtual HRESULT get_Routed(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_TablesOfAuthoritiesCategories(
            TablesOfAuthoritiesCategories **prop /Out/) = 0;

        virtual HRESULT get_Indexes(
            Indexes **prop /Out/) = 0;

        virtual HRESULT get_Saved(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Saved(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Content(
            Range **prop /Out/) = 0;

        virtual HRESULT get_ActiveWindow(
            Window **prop /Out/) = 0;

        virtual HRESULT get_Kind(
            WdDocumentKind *prop /Out/) = 0;

        virtual HRESULT put_Kind(
            WdDocumentKind prop) = 0;

        virtual HRESULT get_ReadOnly(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_Subdocuments(
            Subdocuments **prop /Out/) = 0;

        virtual HRESULT get_IsMasterDocument(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_DefaultTabStop(
            single *prop /Out/) = 0;

        virtual HRESULT put_DefaultTabStop(
            single prop) = 0;

        virtual HRESULT get_EmbedTrueTypeFonts(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_EmbedTrueTypeFonts(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SaveFormsData(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_SaveFormsData(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ReadOnlyRecommended(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ReadOnlyRecommended(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SaveSubsetFonts(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_SaveSubsetFonts(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Compatibility(
            WdCompatibility Type,
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Compatibility(
            WdCompatibility Type,
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_StoryRanges(
            StoryRanges **prop /Out/) = 0;

        virtual HRESULT get_CommandBars(
            ksoapi::CommandBars **prop /Out/) = 0;

        virtual HRESULT get_IsSubdocument(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_SaveFormat(
            long *prop /Out/) = 0;

        virtual HRESULT get_ProtectionType(
            WdProtectionType *prop /Out/) = 0;

        virtual HRESULT get_Hyperlinks(
            Hyperlinks **prop /Out/) = 0;

        virtual HRESULT get_Shapes(
            Shapes **prop /Out/) = 0;

        virtual HRESULT get_ListTemplates(
            ListTemplates **prop /Out/) = 0;

        virtual HRESULT get_Lists(
            Lists **prop /Out/) = 0;

        virtual HRESULT get_UpdateStylesOnOpen(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_UpdateStylesOnOpen(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AttachedTemplate(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_AttachedTemplate(
            VARIANT *prop) = 0;

        virtual HRESULT get_InlineShapes(
            InlineShapes **prop /Out/) = 0;

        virtual HRESULT get_Background(
            Shape **prop /Out/) = 0;

        virtual HRESULT put_Background(
            Shape *prop) = 0;

        virtual HRESULT get_GrammarChecked(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_GrammarChecked(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SpellingChecked(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_SpellingChecked(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowGrammaticalErrors(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowGrammaticalErrors(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowSpellingErrors(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowSpellingErrors(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Versions(
            Versions **prop /Out/) = 0;

        virtual HRESULT get_ShowSummary(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowSummary(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SummaryViewMode(
            WdSummaryMode *prop /Out/) = 0;

        virtual HRESULT put_SummaryViewMode(
            WdSummaryMode prop) = 0;

        virtual HRESULT get_SummaryLength(
            long *prop /Out/) = 0;

        virtual HRESULT put_SummaryLength(
            long prop) = 0;

        virtual HRESULT get_PrintFractionalWidths(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_PrintFractionalWidths(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_PrintPostScriptOverText(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_PrintPostScriptOverText(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Container(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_PrintFormsData(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_PrintFormsData(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ListParagraphs(
            ListParagraphs **prop /Out/) = 0;

        virtual HRESULT put_Password(
            BSTR rhs) = 0;

        virtual HRESULT put_WritePassword(
            BSTR rhs) = 0;

        virtual HRESULT get_HasPassword(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_WriteReserved(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_ActiveWritingStyle(
            VARIANT *LanguageID,
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_ActiveWritingStyle(
            VARIANT *LanguageID,
            BSTR prop) = 0;

        virtual HRESULT get_UserControl(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_UserControl(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HasMailer(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HasMailer(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Mailer(
            Mailer **prop /Out/) = 0;

        virtual HRESULT get_ReadabilityStatistics(
            ReadabilityStatistics **prop /Out/) = 0;

        virtual HRESULT get_GrammaticalErrors(
            ProofreadingErrors **prop /Out/) = 0;

        virtual HRESULT get_SpellingErrors(
            ProofreadingErrors **prop /Out/) = 0;

        virtual HRESULT get_VBProject(
            VBProject **prop /Out/) = 0;

        virtual HRESULT get_FormsDesign(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get__CodeName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put__CodeName(
            BSTR prop) = 0;

        virtual HRESULT get_CodeName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_SnapToGrid(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_SnapToGrid(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SnapToShapes(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_SnapToShapes(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_GridDistanceHorizontal(
            single *prop /Out/) = 0;

        virtual HRESULT put_GridDistanceHorizontal(
            single prop) = 0;

        virtual HRESULT get_GridDistanceVertical(
            single *prop /Out/) = 0;

        virtual HRESULT put_GridDistanceVertical(
            single prop) = 0;

        virtual HRESULT get_GridOriginHorizontal(
            single *prop /Out/) = 0;

        virtual HRESULT put_GridOriginHorizontal(
            single prop) = 0;

        virtual HRESULT get_GridOriginVertical(
            single *prop /Out/) = 0;

        virtual HRESULT put_GridOriginVertical(
            single prop) = 0;

        virtual HRESULT get_GridSpaceBetweenHorizontalLines(
            long *prop /Out/) = 0;

        virtual HRESULT put_GridSpaceBetweenHorizontalLines(
            long prop) = 0;

        virtual HRESULT get_GridSpaceBetweenVerticalLines(
            long *prop /Out/) = 0;

        virtual HRESULT put_GridSpaceBetweenVerticalLines(
            long prop) = 0;

        virtual HRESULT get_GridOriginFromMargin(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_GridOriginFromMargin(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_KerningByAlgorithm(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_KerningByAlgorithm(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_JustificationMode(
            WdJustificationMode *prop /Out/) = 0;

        virtual HRESULT put_JustificationMode(
            WdJustificationMode prop) = 0;

        virtual HRESULT get_FarEastLineBreakLevel(
            WdFarEastLineBreakLevel *prop /Out/) = 0;

        virtual HRESULT put_FarEastLineBreakLevel(
            WdFarEastLineBreakLevel prop) = 0;

        virtual HRESULT get_NoLineBreakBefore(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_NoLineBreakBefore(
            BSTR prop) = 0;

        virtual HRESULT get_NoLineBreakAfter(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_NoLineBreakAfter(
            BSTR prop) = 0;

        virtual HRESULT get_TrackRevisions(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_TrackRevisions(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_PrintRevisions(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_PrintRevisions(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowRevisions(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowRevisions(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT Close(
            VARIANT *SaveChanges = argMissing(),
            VARIANT *OriginalFormat = argMissing(),
            VARIANT *RouteDocument = argMissing()) = 0;

        virtual HRESULT SaveAs2000(
            VARIANT *FileName = argMissing(),
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

        virtual HRESULT PrintOutOld(
            VARIANT *Background = argMissing(),
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

        virtual HRESULT Range(
            VARIANT *Start = argMissing(),
            VARIANT *End = argMissing(),
            Range **prop /Out/ = 0) = 0;

        virtual HRESULT RunAutoMacro(
            WdAutoMacros Which) = 0;

        virtual HRESULT Activate() = 0;

        virtual HRESULT PrintPreview() = 0;

        virtual HRESULT GoTo(
            VARIANT *What = argMissing(),
            VARIANT *Which = argMissing(),
            VARIANT *Count = argMissing(),
            VARIANT *Name = argMissing(),
            Range **prop /Out/ = 0) = 0;

        virtual HRESULT Undo(
            VARIANT *Times = argMissing(),
            VARIANT_BOOL *prop /Out/ = 0) = 0;

        virtual HRESULT Redo(
            VARIANT *Times = argMissing(),
            VARIANT_BOOL *prop /Out/ = 0) = 0;

        virtual HRESULT ComputeStatistics(
            WdStatistic Statistic,
            VARIANT *IncludeFootnotesAndEndnotes = argMissing(),
            long *prop /Out/ = 0) = 0;

        virtual HRESULT MakeCompatibilityDefault() = 0;

        virtual HRESULT Protect2002(
            WdProtectionType Type,
            VARIANT *NoReset = argMissing(),
            VARIANT *Password = argMissing()) = 0;

        virtual HRESULT Unprotect(
            VARIANT *Password = argMissing()) = 0;

        virtual HRESULT EditionOptions(
            WdEditionType Type,
            WdEditionOption Option,
            BSTR Name,
            VARIANT *Format = argMissing()) = 0;

        virtual HRESULT RunLetterWizard(
            VARIANT *LetterContent = argMissing(),
            VARIANT *WizardMode = argMissing()) = 0;

        virtual HRESULT GetLetterContent(
            LetterContent **prop /Out/) = 0;

        virtual HRESULT SetLetterContent(
            VARIANT *LetterContent) = 0;

        virtual HRESULT CopyStylesFromTemplate(
            BSTR Template) = 0;

        virtual HRESULT UpdateStyles() = 0;

        virtual HRESULT CheckGrammar() = 0;

        virtual HRESULT CheckSpelling(
            VARIANT *CustomDictionary = argMissing(),
            VARIANT *IgnoreUppercase = argMissing(),
            VARIANT *AlwaysSuggest = argMissing(),
            VARIANT *CustomDictionary2 = argMissing(),
            VARIANT *CustomDictionary3 = argMissing(),
            VARIANT *CustomDictionary4 = argMissing(),
            VARIANT *CustomDictionary5 = argMissing(),
            VARIANT *CustomDictionary6 = argMissing(),
            VARIANT *CustomDictionary7 = argMissing(),
            VARIANT *CustomDictionary8 = argMissing(),
            VARIANT *CustomDictionary9 = argMissing(),
            VARIANT *CustomDictionary10 = argMissing()) = 0;

        virtual HRESULT FollowHyperlink(
            VARIANT *Address = argMissing(),
            VARIANT *SubAddress = argMissing(),
            VARIANT *NewWindow = argMissing(),
            VARIANT *AddHistory = argMissing(),
            VARIANT *ExtraInfo = argMissing(),
            VARIANT *Method = argMissing(),
            VARIANT *HeaderInfo = argMissing()) = 0;

        virtual HRESULT AddToFavorites() = 0;

        virtual HRESULT Reload() = 0;

        virtual HRESULT AutoSummarize(
            VARIANT *Length = argMissing(),
            VARIANT *Mode = argMissing(),
            VARIANT *UpdateProperties = argMissing(),
            Range **prop /Out/ = 0) = 0;

        virtual HRESULT RemoveNumbers(
            VARIANT *NumberType = argMissing()) = 0;

        virtual HRESULT ConvertNumbersToText(
            VARIANT *NumberType = argMissing()) = 0;

        virtual HRESULT CountNumberedItems(
            VARIANT *NumberType = argMissing(),
            VARIANT *Level = argMissing(),
            long *prop /Out/ = 0) = 0;

        virtual HRESULT Post() = 0;

        virtual HRESULT ToggleFormsDesign() = 0;

        virtual HRESULT Compare2000(
            BSTR Name) = 0;

        virtual HRESULT UpdateSummaryProperties() = 0;

        virtual HRESULT GetCrossReferenceItems(
            VARIANT *ReferenceType,
            VARIANT *prop /Out/) = 0;

        virtual HRESULT AutoFormat() = 0;

        virtual HRESULT ViewCode() = 0;

        virtual HRESULT ViewPropertyBrowser() = 0;

        virtual HRESULT ForwardMailer() = 0;

        virtual HRESULT Reply() = 0;

        virtual HRESULT ReplyAll() = 0;

        virtual HRESULT SendMailer(
            VARIANT *FileFormat = argMissing(),
            VARIANT *Priority = argMissing()) = 0;

        virtual HRESULT UndoClear() = 0;

        virtual HRESULT PresentIt() = 0;

        virtual HRESULT SendFax(
            BSTR Address,
            VARIANT *Subject = argMissing()) = 0;

        virtual HRESULT Merge2000(
            BSTR FileName) = 0;

        virtual HRESULT ClosePrintPreview() = 0;

        virtual HRESULT CheckConsistency() = 0;

        virtual PyObject* CreateLetterContent(
            /*BSTR DateFormat,
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
            VARIANT *InfoBlock = argMissing(),
            VARIANT *RecipientCode = argMissing(),
            VARIANT *RecipientGender = argMissing(),
            VARIANT *ReturnAddressShortForm = argMissing(),
            VARIANT *SenderCity = argMissing(),
            VARIANT *SenderCode = argMissing(),
            VARIANT *SenderGender = argMissing(),
            VARIANT *SenderReference = argMissing(),
            LetterContent **prop /Out/ = 0*/) = 0 /NoArgParser/;
        %Docstring(format="deindented")
            CreateLetterContent(self, str, bool, str, wpsapi.WdLetterStyle, bool, wpsapi.WdLetterheadLocation, float, str, str, str, wpsapi.WdSalutationType, str, str, str, str, str, str, str, str, str, str, str, int, InfoBlock: Any = None, RecipientCode: Any = None, RecipientGender: Any = None, ReturnAddressShortForm: Any = None, SenderCity: Any = None, SenderCode: Any = None, SenderGender: Any = None, SenderReference: Any = None) -> Tuple[int, wpsapi.LetterContent]
        %End
        %MethodCode
            Py_ssize_t posArgsCount = PyTuple_Size(sipArgs);
            if (posArgsCount < 23 || posArgsCount > 31)
            {
                PyErr_Format(PyExc_TypeError,
                    "CreateLetterContent() takes from 23 to 31 positional arguments but %d were given\n",
                    posArgsCount);
                return nullptr;
            }

            auto _toBstr = [&](int i, kfc::ks_bstr &bstr) -> bool
            {
                PyObject *pyArg = PyTuple_GetItem(sipArgs, i);
                if (!PyUnicode_Check(pyArg))
                {
                    PyErr_Format(PyExc_TypeError,
                        "The %d positional argument requires 'str' not '%s'.",
                        i, Py_TYPE(pyArg)->tp_name);
                    return false;
                }

                int state = 0;
                int isError = 0;
                BSTR* pBstr = (BSTR*)sipConvertToType(pyArg, sipType_BSTR, 0, SIP_NO_CONVERTORS, &state, &isError);

                if (!isError && pBstr)
                {
                    bstr.assign(*pBstr, SysStringLen(*pBstr));
                    sipReleaseType(pBstr, sipType_BSTR, state);
                }

                return true;
            };

            auto _toBool = [&](int i, VARIANT_BOOL &var) -> bool
            {
                PyObject *pyArg = PyTuple_GetItem(sipArgs, i);
                if (!PyBool_Check(pyArg))
                {
                    PyErr_Format(PyExc_TypeError,
                        "The %d positional argument requires 'bool' not '%s'.",
                        i, Py_TYPE(pyArg)->tp_name);
                    return false;
                }

                int state = 0;
                int isError = 0;
                VARIANT_BOOL* pBool = (VARIANT_BOOL*)sipConvertToType(pyArg, sipType_VARIANT_BOOL, 0, SIP_NO_CONVERTORS, &state, &isError);

                if (!isError && pBool)
                {
                    var = *pBool;
                    sipReleaseType(pBool, sipType_VARIANT_BOOL, state);
                }

                return true;
            };

            auto _toInt = [&](int i, int &value) -> bool
            {
                PyObject *pyArg = PyTuple_GetItem(sipArgs, i);
                if (!PyLong_Check(pyArg))
                {
                    PyErr_Format(PyExc_TypeError,
                        "The %d positional argument requires 'int' not '%s'.",
                        i, Py_TYPE(pyArg)->tp_name);
                    return false;
                }

                value = PyLong_AsLong(pyArg);

                return true;
            };

            auto _toFloat = [&](int i, float &value) -> bool
            {
                PyObject *pyArg = PyTuple_GetItem(sipArgs, i);
                if (!PyFloat_Check(pyArg))
                {
                    PyErr_Format(PyExc_TypeError,
                        "The %d positional argument requires 'float' not '%s'.",
                        i, Py_TYPE(pyArg)->tp_name);
                    return false;
                }

                value = PyFloat_AsDouble(pyArg);

                return true;
            };

            #define _CHECK_(cond)   do { if (!(cond)) return nullptr; } while(0)
            #define _BSTR_ARG(i, name) kfc::ks_bstr name; _CHECK_(_toBstr(i, name))
            #define _BOOL_ARG(i, name) VARIANT_BOOL name; _CHECK_(_toBool(i, name))
            #define _INT_ARG(i, name) int name; _CHECK_(_toInt(i, name))
            #define _FLOAT_ARG(i, name) float name; _CHECK_(_toFloat(i, name))

            _BSTR_ARG(0, DateFormat);
            _BOOL_ARG(1, IncludeHeaderFooter);
            _BSTR_ARG(2, PageDesign);
            _INT_ARG(3, LetterStyle);
            _BOOL_ARG(4, Letterhead);
            _INT_ARG(5, LetterheadLocation);
            _FLOAT_ARG(6, LetterheadSize);
            _BSTR_ARG(7, RecipientName);
            _BSTR_ARG(8, RecipientAddress);
            _BSTR_ARG(9, Salutation);
            _INT_ARG(10, SalutationType);
            _BSTR_ARG(11, RecipientReference);
            _BSTR_ARG(12, MailingInstructions);
            _BSTR_ARG(13, AttentionLine);
            _BSTR_ARG(14, Subject);
            _BSTR_ARG(15, CCList);
            _BSTR_ARG(16, ReturnAddress);
            _BSTR_ARG(17, SenderName);
            _BSTR_ARG(18, Closing);
            _BSTR_ARG(19, SenderCompany);
            _BSTR_ARG(20, SenderJobTitle);
            _BSTR_ARG(21, SenderInitials);
            _INT_ARG(22, EnclosureNumber);

            VARIANT* args[8];
            for (int i = posArgsCount - 23; i < 8; ++i)
                args[i] = argMissing();

            std::vector<std::pair<int, int>> indexes;
            if (!parseVariantArgs(sipArgs, args, indexes, 23))
                return nullptr;

            static const char * const s_kwds[] =
            {
                "InfoBlock",
                "RecipientCode",
                "RecipientGender",
                "ReturnAddressShortForm",
                "SenderCity",
                "SenderCode",
                "SenderGender",
                "SenderReference",
            };
            const int kwdsCount = sizeof(s_kwds) / sizeof(s_kwds[0]);

            if (!parseVariantKwds(sipKwds, s_kwds, kwdsCount, args, posArgsCount, indexes, 23))
                return nullptr;

            wpsapi::_Document *sipCpp = reinterpret_cast<wpsapi::_Document *>(
                sipGetCppPtr((sipSimpleWrapper *)sipSelf, sipType_wpsapi__Document));

            wpsapi::LetterContent* prop = nullptr;

            HRESULT hr = sipCpp->CreateLetterContent(DateFormat,
                IncludeHeaderFooter, PageDesign,
                (wpsapi::WdLetterStyle)LetterStyle, Letterhead,
                (wpsapi::WdLetterheadLocation)LetterheadLocation,
                LetterheadSize, RecipientName, RecipientAddress, Salutation,
                (wpsapi::WdSalutationType)SalutationType,
                RecipientReference, MailingInstructions, AttentionLine, Subject, CCList,
                ReturnAddress, SenderName, Closing, SenderCompany, SenderJobTitle,
                SenderInitials, EnclosureNumber,
                args[0], args[1], args[2], args[3], args[4],
                args[5], args[6], args[7],
                &prop);

            for (const auto &index : indexes)
                sipReleaseType(args[index.first], sipType_VARIANT, index.second);

            return sipBuildResult(0, "(iD)", hr, prop, sipType_wpsapi__LetterContent, SIP_NULLPTR);
        %End

        virtual HRESULT AcceptAllRevisions() = 0;

        virtual HRESULT RejectAllRevisions() = 0;

        virtual HRESULT DetectLanguage() = 0;

        virtual HRESULT ApplyTheme(
            BSTR Name) = 0;

        virtual HRESULT RemoveTheme() = 0;

        virtual HRESULT WebPagePreview() = 0;

        virtual HRESULT ReloadAs(
            MsoEncoding Encoding) = 0;

        virtual HRESULT get_ActiveTheme(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_ActiveThemeDisplayName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Email(
            Email **prop /Out/) = 0;

        virtual HRESULT get_Scripts(
            ksoapi::Scripts **prop /Out/) = 0;

        virtual HRESULT get_LanguageDetected(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_LanguageDetected(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_FarEastLineBreakLanguage(
            WdFarEastLineBreakLanguageID *prop /Out/) = 0;

        virtual HRESULT put_FarEastLineBreakLanguage(
            WdFarEastLineBreakLanguageID prop) = 0;

        virtual HRESULT get_Frameset(
            Frameset **prop /Out/) = 0;

        virtual HRESULT get_ClickAndTypeParagraphStyle(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_ClickAndTypeParagraphStyle(
            VARIANT *prop) = 0;

        virtual HRESULT get_HTMLProject(
            ksoapi::HTMLProject **prop /Out/) = 0;

        virtual HRESULT get_WebOptions(
            WebOptions **prop /Out/) = 0;

        virtual HRESULT get_OpenEncoding(
            MsoEncoding *prop /Out/) = 0;

        virtual HRESULT get_SaveEncoding(
            MsoEncoding *prop /Out/) = 0;

        virtual HRESULT put_SaveEncoding(
            MsoEncoding prop) = 0;

        virtual HRESULT get_OptimizeForWord97(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_OptimizeForWord97(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_VBASigned(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT PrintOut2000(
            VARIANT *Background = argMissing(),
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

        virtual HRESULT sblt(
            BSTR s) = 0;

        virtual HRESULT ConvertVietDoc(
            long CodePageOrigin) = 0;

        virtual HRESULT PrintOut(
            VARIANT *Background = argMissing(),
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

        virtual HRESULT get_MailEnvelope(
            ksoapi::MsoEnvelope **prop /Out/) = 0;

        virtual HRESULT get_DisableFeatures(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DisableFeatures(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_DoNotEmbedSystemFonts(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DoNotEmbedSystemFonts(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Signatures(
            ksoapi::SignatureSet **prop /Out/) = 0;

        virtual HRESULT get_DefaultTargetFrame(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_DefaultTargetFrame(
            BSTR prop) = 0;

        virtual HRESULT get_HTMLDivisions(
            HTMLDivisions **prop /Out/) = 0;

        virtual HRESULT get_DisableFeaturesIntroducedAfter(
            WdDisableFeaturesIntroducedAfter *prop /Out/) = 0;

        virtual HRESULT put_DisableFeaturesIntroducedAfter(
            WdDisableFeaturesIntroducedAfter prop) = 0;

        virtual HRESULT get_RemovePersonalInformation(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_RemovePersonalInformation(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SmartTags(
            SmartTags **prop /Out/) = 0;

        virtual HRESULT Compare2002(
            BSTR Name,
            VARIANT *AuthorName = argMissing(),
            VARIANT *CompareTarget = argMissing(),
            VARIANT *DetectFormatChanges = argMissing(),
            VARIANT *IgnoreAllComparisonWarnings = argMissing(),
            VARIANT *AddToRecentFiles = argMissing()) = 0;

        virtual HRESULT CheckIn(
            VARIANT_BOOL SaveChanges = VARIANT_FALSE,
            VARIANT *Comments = argMissing(),
            VARIANT_BOOL MakePublic = VARIANT_FALSE) = 0;

        virtual HRESULT CanCheckin(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT Merge(
            BSTR FileName,
            VARIANT *MergeTarget = argMissing(),
            VARIANT *DetectFormatChanges = argMissing(),
            VARIANT *UseFormattingFrom = argMissing(),
            VARIANT *AddToRecentFiles = argMissing()) = 0;

        virtual HRESULT get_EmbedSmartTags(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_EmbedSmartTags(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SmartTagsAsXMLProps(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_SmartTagsAsXMLProps(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_TextEncoding(
            MsoEncoding *prop /Out/) = 0;

        virtual HRESULT put_TextEncoding(
            MsoEncoding prop) = 0;

        virtual HRESULT get_TextLineEnding(
            WdLineEndingType *prop /Out/) = 0;

        virtual HRESULT put_TextLineEnding(
            WdLineEndingType prop) = 0;

        virtual HRESULT SendForReview(
            VARIANT *Recipients = argMissing(),
            VARIANT *Subject = argMissing(),
            VARIANT *ShowMessage = argMissing(),
            VARIANT *IncludeAttachment = argMissing()) = 0;

        virtual HRESULT ReplyWithChanges(
            VARIANT *ShowMessage = argMissing()) = 0;

        virtual HRESULT EndReview() = 0;

        virtual HRESULT get_StyleSheets(
            StyleSheets **prop /Out/) = 0;

        virtual HRESULT get_DefaultTableStyle(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_PasswordEncryptionProvider(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_PasswordEncryptionAlgorithm(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_PasswordEncryptionKeyLength(
            long *prop /Out/) = 0;

        virtual HRESULT get_PasswordEncryptionFileProperties(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT SetPasswordEncryptionOptions(
            BSTR PasswordEncryptionProvider,
            BSTR PasswordEncryptionAlgorithm,
            long PasswordEncryptionKeyLength,
            VARIANT *PasswordEncryptionFileProperties = argMissing()) = 0;

        virtual HRESULT RecheckSmartTags() = 0;

        virtual HRESULT RemoveSmartTags() = 0;

        virtual HRESULT SetDefaultTableStyle(
            VARIANT *Style,
            VARIANT_BOOL SetInTemplate) = 0;

        virtual HRESULT DeleteAllComments() = 0;

        virtual HRESULT AcceptAllRevisionsShown() = 0;

        virtual HRESULT RejectAllRevisionsShown() = 0;

        virtual HRESULT DeleteAllCommentsShown() = 0;

        virtual HRESULT ResetFormFields() = 0;

        virtual HRESULT SaveAs(
            VARIANT *FileName = argMissing(),
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

        virtual HRESULT get_EmbedLinguisticData(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_EmbedLinguisticData(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_FormattingShowFont(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_FormattingShowFont(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_FormattingShowClear(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_FormattingShowClear(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_FormattingShowParagraph(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_FormattingShowParagraph(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_FormattingShowNumbering(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_FormattingShowNumbering(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_FormattingShowFilter(
            WdShowFilter *prop /Out/) = 0;

        virtual HRESULT put_FormattingShowFilter(
            WdShowFilter prop) = 0;

        virtual HRESULT CheckNewSmartTags() = 0;

        virtual HRESULT get_Permission(
            ksoapi::Permission **prop /Out/) = 0;

        virtual HRESULT get_XMLNodes(
            XMLNodes **prop /Out/) = 0;

        virtual HRESULT get_XMLSchemaReferences(
            XMLSchemaReferences **prop /Out/) = 0;

        virtual HRESULT get_SmartDocument(
            ksoapi::SmartDocument **prop /Out/) = 0;

        virtual HRESULT get_SharedWorkspace(
            ksoapi::SharedWorkspace **prop /Out/) = 0;

        virtual HRESULT get_Sync(
            ksoapi::Sync **prop /Out/) = 0;

        virtual HRESULT get_EnforceStyle(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_EnforceStyle(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatOverride(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatOverride(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_XMLSaveDataOnly(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_XMLSaveDataOnly(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_XMLHideNamespaces(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_XMLHideNamespaces(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_XMLShowAdvancedErrors(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_XMLShowAdvancedErrors(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_XMLUseXSLTWhenSaving(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_XMLUseXSLTWhenSaving(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_XMLSaveThroughXSLT(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_XMLSaveThroughXSLT(
            BSTR prop) = 0;

        virtual HRESULT get_DocumentLibraryVersions(
            ksoapi::DocumentLibraryVersions **prop /Out/) = 0;

        virtual HRESULT get_ReadingModeLayoutFrozen(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ReadingModeLayoutFrozen(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_RemoveDateAndTime(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_RemoveDateAndTime(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT SendFaxOverInternet(
            VARIANT *Recipients = argMissing(),
            VARIANT *Subject = argMissing(),
            VARIANT *ShowMessage = argMissing()) = 0;

        virtual HRESULT TransformDocument(
            BSTR Path,
            VARIANT_BOOL DataOnly = -1) = 0;

        virtual HRESULT Protect(
            WdProtectionType Type,
            VARIANT *NoReset = argMissing(),
            VARIANT *Password = argMissing(),
            VARIANT *UseIRM = argMissing(),
            VARIANT *EnforceStyleLock = argMissing()) = 0;

        virtual HRESULT SelectAllEditableRanges(
            VARIANT *EditorID = argMissing()) = 0;

        virtual HRESULT DeleteAllEditableRanges(
            VARIANT *EditorID = argMissing()) = 0;

        virtual HRESULT DeleteAllInkAnnotations() = 0;

        virtual HRESULT AddDocumentWorkspaceHeader(
            VARIANT_BOOL RichFormat,
            BSTR Url,
            BSTR Title,
            BSTR Description,
            BSTR ID) = 0;

        virtual HRESULT RemoveDocumentWorkspaceHeader(
            BSTR ID) = 0;

        virtual HRESULT Compare(
            BSTR Name,
            VARIANT *AuthorName = argMissing(),
            VARIANT *CompareTarget = argMissing(),
            VARIANT *DetectFormatChanges = argMissing(),
            VARIANT *IgnoreAllComparisonWarnings = argMissing(),
            VARIANT *AddToRecentFiles = argMissing(),
            VARIANT *RemovePersonalInformation = argMissing(),
            VARIANT *RemoveDateAndTime = argMissing()) = 0;

        virtual HRESULT RemoveLockedStyles() = 0;

        virtual HRESULT get_ChildNodeSuggestions(
            XMLChildNodeSuggestions **prop /Out/) = 0;

        virtual HRESULT SelectSingleNode(
            BSTR XPath,
            BSTR PrefixMapping = 0,
            VARIANT_BOOL FastSearchSkippingTextNodes = VARIANT_FALSE,
            XMLNode **prop /Out/ = 0) = 0;

        virtual HRESULT SelectNodes(
            BSTR XPath,
            BSTR PrefixMapping = 0,
            VARIANT_BOOL FastSearchSkippingTextNodes = VARIANT_FALSE,
            XMLNodes **prop /Out/ = 0) = 0;

        virtual HRESULT get_XMLSchemaViolations(
            XMLNodes **prop /Out/) = 0;

        virtual HRESULT get_ReadingLayoutSizeX(
            long *prop /Out/) = 0;

        virtual HRESULT put_ReadingLayoutSizeX(
            long prop) = 0;

        virtual HRESULT get_ReadingLayoutSizeY(
            long *prop /Out/) = 0;

        virtual HRESULT put_ReadingLayoutSizeY(
            long prop) = 0;

        virtual HRESULT get_StyleSortMethod(
            WdStyleSort *prop /Out/) = 0;

        virtual HRESULT put_StyleSortMethod(
            WdStyleSort prop) = 0;

        virtual HRESULT get_ContentTypeProperties(
            ksoapi::MetaProperties **prop /Out/) = 0;

        virtual HRESULT get_TrackMoves(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_TrackMoves(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_TrackFormatting(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_TrackFormatting(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Dummy1() = 0;

        virtual HRESULT get_OMaths(
            OMaths **prop /Out/) = 0;

        virtual HRESULT RemoveDocumentInformation(
            WdRemoveDocInfoType RemoveDocInfoType) = 0;

        virtual HRESULT CheckInWithVersion(
            VARIANT_BOOL SaveChanges = VARIANT_FALSE,
            VARIANT *Comments = argMissing(),
            VARIANT_BOOL MakePublic = VARIANT_TRUE,
            VARIANT *VersionType = argMissing()) = 0;

        virtual HRESULT Dummy2() = 0;

        virtual HRESULT get_Dummy3() = 0;

        virtual HRESULT get_ServerPolicy(
            ksoapi::ServerPolicy **prop /Out/) = 0;

        virtual HRESULT get_ContentControls(
            ContentControls **prop /Out/) = 0;

        virtual HRESULT get_DocumentInspectors(
            ksoapi::DocumentInspectors **prop /Out/) = 0;

        virtual HRESULT LockServerFile() = 0;

        virtual HRESULT GetWorkflowTasks(
            ksoapi::WorkflowTasks **prop /Out/) = 0;

        virtual HRESULT GetWorkflowTemplates(
            ksoapi::WorkflowTemplates **prop /Out/) = 0;

        virtual HRESULT Dummy4() = 0;

        virtual HRESULT AddMeetingWorkspaceHeader(
            VARIANT_BOOL SkipIfAbsent,
            BSTR Url,
            BSTR Title,
            BSTR Description,
            BSTR ID) = 0;

        virtual HRESULT get_Bibliography(
            Bibliography **prop /Out/) = 0;

        virtual HRESULT get_LockTheme(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_LockTheme(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_LockQuickStyleSet(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_LockQuickStyleSet(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_OriginalDocumentTitle(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_RevisedDocumentTitle(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_CustomXMLParts(
            ksoapi::CustomXMLParts **prop /Out/) = 0;

        virtual HRESULT get_FormattingShowNextLevel(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_FormattingShowNextLevel(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_FormattingShowUserStyleName(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_FormattingShowUserStyleName(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT SaveAsQuickStyleSet(
            BSTR FileName) = 0;

        virtual HRESULT ApplyQuickStyleSet(
            BSTR Name) = 0;

        virtual HRESULT get_Research(
            Research **prop /Out/) = 0;

        virtual HRESULT get_Final(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Final(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_OMathBreakBin(
            WdOMathBreakBin *prop /Out/) = 0;

        virtual HRESULT put_OMathBreakBin(
            WdOMathBreakBin prop) = 0;

        virtual HRESULT get_OMathBreakSub(
            WdOMathBreakSub *prop /Out/) = 0;

        virtual HRESULT put_OMathBreakSub(
            WdOMathBreakSub prop) = 0;

        virtual HRESULT get_OMathJc(
            WdOMathJc *prop /Out/) = 0;

        virtual HRESULT put_OMathJc(
            WdOMathJc prop) = 0;

        virtual HRESULT get_OMathLeftMargin(
            single *prop /Out/) = 0;

        virtual HRESULT put_OMathLeftMargin(
            single prop) = 0;

        virtual HRESULT get_OMathRightMargin(
            single *prop /Out/) = 0;

        virtual HRESULT put_OMathRightMargin(
            single prop) = 0;

        virtual HRESULT get_OMathWrap(
            single *prop /Out/) = 0;

        virtual HRESULT put_OMathWrap(
            single prop) = 0;

        virtual HRESULT get_OMathIntSubSupLim(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_OMathIntSubSupLim(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_OMathNarySupSubLim(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_OMathNarySupSubLim(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_OMathSmallFrac(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_OMathSmallFrac(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_WordOpenXML(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_DocumentTheme(
            ksoapi::OfficeTheme **prop /Out/) = 0;

        virtual HRESULT ApplyDocumentTheme(
            BSTR FileName) = 0;

        virtual HRESULT get_HasVBProject(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT SelectLinkedControls(
            ksoapi::CustomXMLNode *Node,
            ContentControls **prop /Out/) = 0;

        virtual HRESULT SelectUnlinkedControls(
            ksoapi::CustomXMLPart *Stream,
            ContentControls **prop /Out/) = 0;

        virtual HRESULT SelectContentControlsByTitle(
            BSTR Title,
            ContentControls **prop /Out/) = 0;

        virtual HRESULT ExportAsFixedFormat(
            BSTR OutputFileName,
            WdExportFormat ExportFormat,
            VARIANT_BOOL OpenAfterExport = VARIANT_FALSE,
            WdExportOptimizeFor OptimizeFor = wpsapi::wdExportOptimizeForPrint,
            WdExportRange Range = wpsapi::wdExportAllDocument,
            long From = 0,
            long To = 0,
            WdExportItem Item = wpsapi::wdExportDocumentContent,
            VARIANT_BOOL IncludeDocProps = VARIANT_FALSE,
            VARIANT_BOOL KeepIRM = VARIANT_TRUE,
            WdExportCreateBookmarks CreateBookmarks = wpsapi::wdExportCreateNoBookmarks,
            VARIANT_BOOL DocStructureTags = VARIANT_TRUE,
            VARIANT_BOOL BitmapMissingFonts = VARIANT_TRUE,
            VARIANT_BOOL UseISO19005_1 = VARIANT_FALSE,
            VARIANT *FixedFormatExtClassPtr = argMissing()) = 0;

        virtual HRESULT FreezeLayout() = 0;

        virtual HRESULT UnfreezeLayout() = 0;

        virtual HRESULT get_OMathFontName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_OMathFontName(
            BSTR prop) = 0;

        virtual HRESULT DowngradeDocument() = 0;

        virtual HRESULT get_EncryptionProvider(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_EncryptionProvider(
            BSTR prop) = 0;

        virtual HRESULT get_UseMathDefaults(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_UseMathDefaults(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_CurrentRsid(
            long *prop /Out/) = 0;

        virtual HRESULT Convert() = 0;

        virtual HRESULT SelectContentControlsByTag(
            BSTR Tag,
            ContentControls **prop /Out/) = 0;

        virtual HRESULT ConvertAutoHyphens() = 0;

        virtual HRESULT get_DocID(
            long *prop /Out/) = 0;

        virtual HRESULT ApplyQuickStyleSet2(
            VARIANT *Style) = 0;

        virtual HRESULT get_CompatibilityMode(
            long *prop /Out/) = 0;

        virtual HRESULT SaveAs2(
            VARIANT *FileName = argMissing(),
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

        virtual HRESULT get_CoAuthoring(
            CoAuthoring **prop /Out/) = 0;

        virtual HRESULT SetCompatibilityMode(
            long Mode) = 0;

        virtual HRESULT get_Broadcast(
            Broadcast **prop /Out/) = 0;

        virtual HRESULT ReturnToLastReadPosition(
            long *prop /Out/) = 0;

        virtual HRESULT get_ChartDataPointTrack(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ChartDataPointTrack(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_IsInAutosave(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT SaveCopyAs(
            VARIANT *FileName = argMissing(),
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

        virtual HRESULT get_DocumentFields(
            DocumentFields **prop /Out/) = 0;

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

        ksoapi::DocumentProperties* getBuiltInDocumentProperties();
        %MethodCode
            ksoapi::DocumentProperties *prop = nullptr;
            HRESULT hr = sipCpp->get_BuiltInDocumentProperties((IDispatch **)&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BuiltInDocumentProperties()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=BuiltInDocumentProperties, get=getBuiltInDocumentProperties)

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

        BSTR getPath();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Path(prop);
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

        Bookmarks* getBookmarks();
        %MethodCode
            wpsapi::Bookmarks *prop = nullptr;
            HRESULT hr = sipCpp->get_Bookmarks(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Bookmarks()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Bookmarks, get=getBookmarks)

        Tables* getTables();
        %MethodCode
            wpsapi::Tables *prop = nullptr;
            HRESULT hr = sipCpp->get_Tables(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Tables()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Tables, get=getTables)

        Footnotes* getFootnotes();
        %MethodCode
            wpsapi::Footnotes *prop = nullptr;
            HRESULT hr = sipCpp->get_Footnotes(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Footnotes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Footnotes, get=getFootnotes)

        Endnotes* getEndnotes();
        %MethodCode
            wpsapi::Endnotes *prop = nullptr;
            HRESULT hr = sipCpp->get_Endnotes(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Endnotes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Endnotes, get=getEndnotes)

        Comments* getComments();
        %MethodCode
            wpsapi::Comments *prop = nullptr;
            HRESULT hr = sipCpp->get_Comments(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Comments()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Comments, get=getComments)

        WdDocumentType getType();
        %MethodCode
            wpsapi::WdDocumentType prop = (wpsapi::WdDocumentType)0;
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

        VARIANT_BOOL getAutoHyphenation();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoHyphenation(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoHyphenation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoHyphenation(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoHyphenation(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoHyphenation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoHyphenation, get=getAutoHyphenation, set=setAutoHyphenation)

        VARIANT_BOOL getHyphenateCaps();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HyphenateCaps(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HyphenateCaps()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHyphenateCaps(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HyphenateCaps(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HyphenateCaps()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HyphenateCaps, get=getHyphenateCaps, set=setHyphenateCaps)

        long getHyphenationZone();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_HyphenationZone(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HyphenationZone()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHyphenationZone(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HyphenationZone(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HyphenationZone()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HyphenationZone, get=getHyphenationZone, set=setHyphenationZone)

        long getConsecutiveHyphensLimit();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_ConsecutiveHyphensLimit(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ConsecutiveHyphensLimit()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setConsecutiveHyphensLimit(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ConsecutiveHyphensLimit(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ConsecutiveHyphensLimit()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ConsecutiveHyphensLimit, get=getConsecutiveHyphensLimit, set=setConsecutiveHyphensLimit)

        Sections* getSections();
        %MethodCode
            wpsapi::Sections *prop = nullptr;
            HRESULT hr = sipCpp->get_Sections(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Sections()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Sections, get=getSections)

        Paragraphs* getParagraphs();
        %MethodCode
            wpsapi::Paragraphs *prop = nullptr;
            HRESULT hr = sipCpp->get_Paragraphs(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Paragraphs()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Paragraphs, get=getParagraphs)

        Words* getWords();
        %MethodCode
            wpsapi::Words *prop = nullptr;
            HRESULT hr = sipCpp->get_Words(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Words()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Words, get=getWords)

        Sentences* getSentences();
        %MethodCode
            wpsapi::Sentences *prop = nullptr;
            HRESULT hr = sipCpp->get_Sentences(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Sentences()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Sentences, get=getSentences)

        Characters* getCharacters();
        %MethodCode
            wpsapi::Characters *prop = nullptr;
            HRESULT hr = sipCpp->get_Characters(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Characters()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Characters, get=getCharacters)

        Fields* getFields();
        %MethodCode
            wpsapi::Fields *prop = nullptr;
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

        FormFields* getFormFields();
        %MethodCode
            wpsapi::FormFields *prop = nullptr;
            HRESULT hr = sipCpp->get_FormFields(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FormFields()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=FormFields, get=getFormFields)

        Styles* getStyles();
        %MethodCode
            wpsapi::Styles *prop = nullptr;
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

        Frames* getFrames();
        %MethodCode
            wpsapi::Frames *prop = nullptr;
            HRESULT hr = sipCpp->get_Frames(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Frames()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Frames, get=getFrames)

        TablesOfFigures* getTablesOfFigures();
        %MethodCode
            wpsapi::TablesOfFigures *prop = nullptr;
            HRESULT hr = sipCpp->get_TablesOfFigures(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TablesOfFigures()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TablesOfFigures, get=getTablesOfFigures)

        Variables* getVariables();
        %MethodCode
            wpsapi::Variables *prop = nullptr;
            HRESULT hr = sipCpp->get_Variables(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Variables()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Variables, get=getVariables)

        MailMerge* getMailMerge();
        %MethodCode
            wpsapi::MailMerge *prop = nullptr;
            HRESULT hr = sipCpp->get_MailMerge(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MailMerge()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MailMerge, get=getMailMerge)

        Envelope* getEnvelope();
        %MethodCode
            wpsapi::Envelope *prop = nullptr;
            HRESULT hr = sipCpp->get_Envelope(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Envelope()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Envelope, get=getEnvelope)

        BSTR getFullName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_FullName(prop);
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

        Revisions* getRevisions();
        %MethodCode
            wpsapi::Revisions *prop = nullptr;
            HRESULT hr = sipCpp->get_Revisions(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Revisions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Revisions, get=getRevisions)

        TablesOfContents* getTablesOfContents();
        %MethodCode
            wpsapi::TablesOfContents *prop = nullptr;
            HRESULT hr = sipCpp->get_TablesOfContents(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TablesOfContents()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TablesOfContents, get=getTablesOfContents)

        TablesOfAuthorities* getTablesOfAuthorities();
        %MethodCode
            wpsapi::TablesOfAuthorities *prop = nullptr;
            HRESULT hr = sipCpp->get_TablesOfAuthorities(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TablesOfAuthorities()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TablesOfAuthorities, get=getTablesOfAuthorities)

        PageSetup* getPageSetup();
        %MethodCode
            wpsapi::PageSetup *prop = nullptr;
            HRESULT hr = sipCpp->get_PageSetup(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PageSetup()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPageSetup(PageSetup *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PageSetup(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PageSetup()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PageSetup, get=getPageSetup, set=setPageSetup)

        Windows* getWindows();
        %MethodCode
            wpsapi::Windows *prop = nullptr;
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

        VARIANT_BOOL getHasRoutingSlip();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HasRoutingSlip(prop);
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
            HRESULT hr = sipCpp->put_HasRoutingSlip(*a0);
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

        RoutingSlip* getRoutingSlip();
        %MethodCode
            wpsapi::RoutingSlip *prop = nullptr;
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

        VARIANT_BOOL getRouted();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Routed(prop);
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

        TablesOfAuthoritiesCategories* getTablesOfAuthoritiesCategories();
        %MethodCode
            wpsapi::TablesOfAuthoritiesCategories *prop = nullptr;
            HRESULT hr = sipCpp->get_TablesOfAuthoritiesCategories(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TablesOfAuthoritiesCategories()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TablesOfAuthoritiesCategories, get=getTablesOfAuthoritiesCategories)

        Indexes* getIndexes();
        %MethodCode
            wpsapi::Indexes *prop = nullptr;
            HRESULT hr = sipCpp->get_Indexes(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Indexes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Indexes, get=getIndexes)

        VARIANT_BOOL getSaved();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Saved(prop);
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
            HRESULT hr = sipCpp->put_Saved(*a0);
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

        Range* getContent();
        %MethodCode
            wpsapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_Content(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Content()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Content, get=getContent)

        Window* getActiveWindow();
        %MethodCode
            wpsapi::Window *prop = nullptr;
            HRESULT hr = sipCpp->get_ActiveWindow(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ActiveWindow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ActiveWindow, get=getActiveWindow)

        WdDocumentKind getKind();
        %MethodCode
            wpsapi::WdDocumentKind prop = (wpsapi::WdDocumentKind)0;
            HRESULT hr = sipCpp->get_Kind(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Kind()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setKind(WdDocumentKind prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Kind(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Kind()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Kind, get=getKind, set=setKind)

        VARIANT_BOOL getReadOnly();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ReadOnly(prop);
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

        Subdocuments* getSubdocuments();
        %MethodCode
            wpsapi::Subdocuments *prop = nullptr;
            HRESULT hr = sipCpp->get_Subdocuments(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Subdocuments()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Subdocuments, get=getSubdocuments)

        VARIANT_BOOL getIsMasterDocument();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IsMasterDocument(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IsMasterDocument()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=IsMasterDocument, get=getIsMasterDocument)

        single getDefaultTabStop();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_DefaultTabStop(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DefaultTabStop()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDefaultTabStop(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DefaultTabStop(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DefaultTabStop()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DefaultTabStop, get=getDefaultTabStop, set=setDefaultTabStop)

        VARIANT_BOOL getEmbedTrueTypeFonts();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EmbedTrueTypeFonts(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EmbedTrueTypeFonts()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEmbedTrueTypeFonts(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EmbedTrueTypeFonts(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EmbedTrueTypeFonts()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EmbedTrueTypeFonts, get=getEmbedTrueTypeFonts, set=setEmbedTrueTypeFonts)

        VARIANT_BOOL getSaveFormsData();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_SaveFormsData(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SaveFormsData()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSaveFormsData(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SaveFormsData(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SaveFormsData()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SaveFormsData, get=getSaveFormsData, set=setSaveFormsData)

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

        VARIANT_BOOL getSaveSubsetFonts();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_SaveSubsetFonts(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SaveSubsetFonts()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSaveSubsetFonts(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SaveSubsetFonts(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SaveSubsetFonts()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SaveSubsetFonts, get=getSaveSubsetFonts, set=setSaveSubsetFonts)

        StoryRanges* getStoryRanges();
        %MethodCode
            wpsapi::StoryRanges *prop = nullptr;
            HRESULT hr = sipCpp->get_StoryRanges(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_StoryRanges()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=StoryRanges, get=getStoryRanges)

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

        VARIANT_BOOL getIsSubdocument();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IsSubdocument(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IsSubdocument()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=IsSubdocument, get=getIsSubdocument)

        long getSaveFormat();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_SaveFormat(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SaveFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SaveFormat, get=getSaveFormat)

        WdProtectionType getProtectionType();
        %MethodCode
            wpsapi::WdProtectionType prop = (wpsapi::WdProtectionType)0;
            HRESULT hr = sipCpp->get_ProtectionType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ProtectionType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ProtectionType, get=getProtectionType)

        Hyperlinks* getHyperlinks();
        %MethodCode
            wpsapi::Hyperlinks *prop = nullptr;
            HRESULT hr = sipCpp->get_Hyperlinks(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Hyperlinks()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Hyperlinks, get=getHyperlinks)

        Shapes* getShapes();
        %MethodCode
            wpsapi::Shapes *prop = nullptr;
            HRESULT hr = sipCpp->get_Shapes(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Shapes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Shapes, get=getShapes)

        ListTemplates* getListTemplates();
        %MethodCode
            wpsapi::ListTemplates *prop = nullptr;
            HRESULT hr = sipCpp->get_ListTemplates(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ListTemplates()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ListTemplates, get=getListTemplates)

        Lists* getLists();
        %MethodCode
            wpsapi::Lists *prop = nullptr;
            HRESULT hr = sipCpp->get_Lists(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Lists()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Lists, get=getLists)

        VARIANT_BOOL getUpdateStylesOnOpen();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_UpdateStylesOnOpen(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UpdateStylesOnOpen()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUpdateStylesOnOpen(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_UpdateStylesOnOpen(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_UpdateStylesOnOpen()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=UpdateStylesOnOpen, get=getUpdateStylesOnOpen, set=setUpdateStylesOnOpen)

        VARIANT getAttachedTemplate();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_AttachedTemplate(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AttachedTemplate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAttachedTemplate(VARIANT *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AttachedTemplate(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AttachedTemplate()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AttachedTemplate, get=getAttachedTemplate, set=setAttachedTemplate)

        InlineShapes* getInlineShapes();
        %MethodCode
            wpsapi::InlineShapes *prop = nullptr;
            HRESULT hr = sipCpp->get_InlineShapes(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InlineShapes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=InlineShapes, get=getInlineShapes)

        Shape* getBackground();
        %MethodCode
            wpsapi::Shape *prop = nullptr;
            HRESULT hr = sipCpp->get_Background(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Background()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBackground(Shape *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Background(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Background()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Background, get=getBackground, set=setBackground)

        VARIANT_BOOL getGrammarChecked();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_GrammarChecked(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_GrammarChecked()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setGrammarChecked(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_GrammarChecked(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_GrammarChecked()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=GrammarChecked, get=getGrammarChecked, set=setGrammarChecked)

        VARIANT_BOOL getSpellingChecked();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_SpellingChecked(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SpellingChecked()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSpellingChecked(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SpellingChecked(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SpellingChecked()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SpellingChecked, get=getSpellingChecked, set=setSpellingChecked)

        VARIANT_BOOL getShowGrammaticalErrors();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowGrammaticalErrors(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowGrammaticalErrors()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowGrammaticalErrors(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowGrammaticalErrors(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowGrammaticalErrors()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowGrammaticalErrors, get=getShowGrammaticalErrors, set=setShowGrammaticalErrors)

        VARIANT_BOOL getShowSpellingErrors();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowSpellingErrors(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowSpellingErrors()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowSpellingErrors(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowSpellingErrors(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowSpellingErrors()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowSpellingErrors, get=getShowSpellingErrors, set=setShowSpellingErrors)

        Versions* getVersions();
        %MethodCode
            wpsapi::Versions *prop = nullptr;
            HRESULT hr = sipCpp->get_Versions(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Versions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Versions, get=getVersions)

        VARIANT_BOOL getShowSummary();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowSummary(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowSummary()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowSummary(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowSummary(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowSummary()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowSummary, get=getShowSummary, set=setShowSummary)

        WdSummaryMode getSummaryViewMode();
        %MethodCode
            wpsapi::WdSummaryMode prop = (wpsapi::WdSummaryMode)0;
            HRESULT hr = sipCpp->get_SummaryViewMode(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SummaryViewMode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSummaryViewMode(WdSummaryMode prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SummaryViewMode(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SummaryViewMode()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SummaryViewMode, get=getSummaryViewMode, set=setSummaryViewMode)

        long getSummaryLength();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_SummaryLength(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SummaryLength()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSummaryLength(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SummaryLength(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SummaryLength()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SummaryLength, get=getSummaryLength, set=setSummaryLength)

        VARIANT_BOOL getPrintFractionalWidths();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PrintFractionalWidths(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PrintFractionalWidths()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPrintFractionalWidths(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PrintFractionalWidths(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PrintFractionalWidths()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PrintFractionalWidths, get=getPrintFractionalWidths, set=setPrintFractionalWidths)

        VARIANT_BOOL getPrintPostScriptOverText();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PrintPostScriptOverText(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PrintPostScriptOverText()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPrintPostScriptOverText(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PrintPostScriptOverText(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PrintPostScriptOverText()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PrintPostScriptOverText, get=getPrintPostScriptOverText, set=setPrintPostScriptOverText)

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

        VARIANT_BOOL getPrintFormsData();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PrintFormsData(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PrintFormsData()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPrintFormsData(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PrintFormsData(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PrintFormsData()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PrintFormsData, get=getPrintFormsData, set=setPrintFormsData)

        ListParagraphs* getListParagraphs();
        %MethodCode
            wpsapi::ListParagraphs *prop = nullptr;
            HRESULT hr = sipCpp->get_ListParagraphs(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ListParagraphs()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ListParagraphs, get=getListParagraphs)

        VARIANT_BOOL getHasPassword();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HasPassword(prop);
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

        VARIANT_BOOL getWriteReserved();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_WriteReserved(prop);
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

        VARIANT_BOOL getHasMailer();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HasMailer(prop);
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
            HRESULT hr = sipCpp->put_HasMailer(*a0);
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

        Mailer* getMailer();
        %MethodCode
            wpsapi::Mailer *prop = nullptr;
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

        ReadabilityStatistics* getReadabilityStatistics();
        %MethodCode
            wpsapi::ReadabilityStatistics *prop = nullptr;
            HRESULT hr = sipCpp->get_ReadabilityStatistics(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ReadabilityStatistics()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ReadabilityStatistics, get=getReadabilityStatistics)

        ProofreadingErrors* getGrammaticalErrors();
        %MethodCode
            wpsapi::ProofreadingErrors *prop = nullptr;
            HRESULT hr = sipCpp->get_GrammaticalErrors(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_GrammaticalErrors()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=GrammaticalErrors, get=getGrammaticalErrors)

        ProofreadingErrors* getSpellingErrors();
        %MethodCode
            wpsapi::ProofreadingErrors *prop = nullptr;
            HRESULT hr = sipCpp->get_SpellingErrors(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SpellingErrors()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SpellingErrors, get=getSpellingErrors)

        VBProject* getVBProject();
        %MethodCode
            wpsapi::VBProject *prop = nullptr;
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

        VARIANT_BOOL getFormsDesign();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_FormsDesign(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FormsDesign()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=FormsDesign, get=getFormsDesign)

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

        VARIANT_BOOL getSnapToGrid();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_SnapToGrid(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SnapToGrid()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSnapToGrid(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SnapToGrid(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SnapToGrid()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SnapToGrid, get=getSnapToGrid, set=setSnapToGrid)

        VARIANT_BOOL getSnapToShapes();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_SnapToShapes(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SnapToShapes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSnapToShapes(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SnapToShapes(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SnapToShapes()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SnapToShapes, get=getSnapToShapes, set=setSnapToShapes)

        single getGridDistanceHorizontal();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_GridDistanceHorizontal(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_GridDistanceHorizontal()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setGridDistanceHorizontal(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_GridDistanceHorizontal(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_GridDistanceHorizontal()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=GridDistanceHorizontal, get=getGridDistanceHorizontal, set=setGridDistanceHorizontal)

        single getGridDistanceVertical();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_GridDistanceVertical(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_GridDistanceVertical()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setGridDistanceVertical(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_GridDistanceVertical(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_GridDistanceVertical()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=GridDistanceVertical, get=getGridDistanceVertical, set=setGridDistanceVertical)

        single getGridOriginHorizontal();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_GridOriginHorizontal(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_GridOriginHorizontal()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setGridOriginHorizontal(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_GridOriginHorizontal(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_GridOriginHorizontal()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=GridOriginHorizontal, get=getGridOriginHorizontal, set=setGridOriginHorizontal)

        single getGridOriginVertical();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_GridOriginVertical(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_GridOriginVertical()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setGridOriginVertical(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_GridOriginVertical(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_GridOriginVertical()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=GridOriginVertical, get=getGridOriginVertical, set=setGridOriginVertical)

        long getGridSpaceBetweenHorizontalLines();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_GridSpaceBetweenHorizontalLines(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_GridSpaceBetweenHorizontalLines()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setGridSpaceBetweenHorizontalLines(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_GridSpaceBetweenHorizontalLines(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_GridSpaceBetweenHorizontalLines()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=GridSpaceBetweenHorizontalLines, get=getGridSpaceBetweenHorizontalLines, set=setGridSpaceBetweenHorizontalLines)

        long getGridSpaceBetweenVerticalLines();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_GridSpaceBetweenVerticalLines(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_GridSpaceBetweenVerticalLines()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setGridSpaceBetweenVerticalLines(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_GridSpaceBetweenVerticalLines(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_GridSpaceBetweenVerticalLines()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=GridSpaceBetweenVerticalLines, get=getGridSpaceBetweenVerticalLines, set=setGridSpaceBetweenVerticalLines)

        VARIANT_BOOL getGridOriginFromMargin();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_GridOriginFromMargin(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_GridOriginFromMargin()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setGridOriginFromMargin(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_GridOriginFromMargin(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_GridOriginFromMargin()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=GridOriginFromMargin, get=getGridOriginFromMargin, set=setGridOriginFromMargin)

        VARIANT_BOOL getKerningByAlgorithm();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_KerningByAlgorithm(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_KerningByAlgorithm()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setKerningByAlgorithm(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_KerningByAlgorithm(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_KerningByAlgorithm()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=KerningByAlgorithm, get=getKerningByAlgorithm, set=setKerningByAlgorithm)

        WdJustificationMode getJustificationMode();
        %MethodCode
            wpsapi::WdJustificationMode prop = (wpsapi::WdJustificationMode)0;
            HRESULT hr = sipCpp->get_JustificationMode(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_JustificationMode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setJustificationMode(WdJustificationMode prop);
        %MethodCode
            HRESULT hr = sipCpp->put_JustificationMode(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_JustificationMode()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=JustificationMode, get=getJustificationMode, set=setJustificationMode)

        WdFarEastLineBreakLevel getFarEastLineBreakLevel();
        %MethodCode
            wpsapi::WdFarEastLineBreakLevel prop = (wpsapi::WdFarEastLineBreakLevel)0;
            HRESULT hr = sipCpp->get_FarEastLineBreakLevel(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FarEastLineBreakLevel()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFarEastLineBreakLevel(WdFarEastLineBreakLevel prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FarEastLineBreakLevel(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FarEastLineBreakLevel()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FarEastLineBreakLevel, get=getFarEastLineBreakLevel, set=setFarEastLineBreakLevel)

        BSTR getNoLineBreakBefore();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_NoLineBreakBefore(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NoLineBreakBefore()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNoLineBreakBefore(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NoLineBreakBefore(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NoLineBreakBefore()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NoLineBreakBefore, get=getNoLineBreakBefore, set=setNoLineBreakBefore)

        BSTR getNoLineBreakAfter();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_NoLineBreakAfter(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NoLineBreakAfter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNoLineBreakAfter(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NoLineBreakAfter(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NoLineBreakAfter()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NoLineBreakAfter, get=getNoLineBreakAfter, set=setNoLineBreakAfter)

        VARIANT_BOOL getTrackRevisions();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_TrackRevisions(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TrackRevisions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTrackRevisions(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TrackRevisions(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TrackRevisions()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TrackRevisions, get=getTrackRevisions, set=setTrackRevisions)

        VARIANT_BOOL getPrintRevisions();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PrintRevisions(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PrintRevisions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPrintRevisions(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PrintRevisions(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PrintRevisions()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PrintRevisions, get=getPrintRevisions, set=setPrintRevisions)

        VARIANT_BOOL getShowRevisions();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowRevisions(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowRevisions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowRevisions(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowRevisions(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowRevisions()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowRevisions, get=getShowRevisions, set=setShowRevisions)

        BSTR getActiveTheme();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ActiveTheme(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ActiveTheme()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ActiveTheme, get=getActiveTheme)

        BSTR getActiveThemeDisplayName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ActiveThemeDisplayName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ActiveThemeDisplayName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ActiveThemeDisplayName, get=getActiveThemeDisplayName)

        Email* getEmail();
        %MethodCode
            wpsapi::Email *prop = nullptr;
            HRESULT hr = sipCpp->get_Email(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Email()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Email, get=getEmail)

        ksoapi::Scripts* getScripts();
        %MethodCode
            ksoapi::Scripts *prop = nullptr;
            HRESULT hr = sipCpp->get_Scripts(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Scripts()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Scripts, get=getScripts)

        VARIANT_BOOL getLanguageDetected();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_LanguageDetected(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LanguageDetected()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLanguageDetected(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LanguageDetected(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LanguageDetected()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LanguageDetected, get=getLanguageDetected, set=setLanguageDetected)

        WdFarEastLineBreakLanguageID getFarEastLineBreakLanguage();
        %MethodCode
            wpsapi::WdFarEastLineBreakLanguageID prop = (wpsapi::WdFarEastLineBreakLanguageID)0;
            HRESULT hr = sipCpp->get_FarEastLineBreakLanguage(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FarEastLineBreakLanguage()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFarEastLineBreakLanguage(WdFarEastLineBreakLanguageID prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FarEastLineBreakLanguage(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FarEastLineBreakLanguage()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FarEastLineBreakLanguage, get=getFarEastLineBreakLanguage, set=setFarEastLineBreakLanguage)

        Frameset* getFrameset();
        %MethodCode
            wpsapi::Frameset *prop = nullptr;
            HRESULT hr = sipCpp->get_Frameset(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Frameset()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Frameset, get=getFrameset)

        VARIANT getClickAndTypeParagraphStyle();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_ClickAndTypeParagraphStyle(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ClickAndTypeParagraphStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setClickAndTypeParagraphStyle(VARIANT *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ClickAndTypeParagraphStyle(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ClickAndTypeParagraphStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ClickAndTypeParagraphStyle, get=getClickAndTypeParagraphStyle, set=setClickAndTypeParagraphStyle)

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

        WebOptions* getWebOptions();
        %MethodCode
            wpsapi::WebOptions *prop = nullptr;
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

        MsoEncoding getOpenEncoding();
        %MethodCode
            wpsapi::MsoEncoding prop = (wpsapi::MsoEncoding)0;
            HRESULT hr = sipCpp->get_OpenEncoding(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OpenEncoding()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=OpenEncoding, get=getOpenEncoding)

        MsoEncoding getSaveEncoding();
        %MethodCode
            wpsapi::MsoEncoding prop = (wpsapi::MsoEncoding)0;
            HRESULT hr = sipCpp->get_SaveEncoding(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SaveEncoding()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSaveEncoding(MsoEncoding prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SaveEncoding(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SaveEncoding()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SaveEncoding, get=getSaveEncoding, set=setSaveEncoding)

        VARIANT_BOOL getOptimizeForWord97();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_OptimizeForWord97(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OptimizeForWord97()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOptimizeForWord97(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OptimizeForWord97(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OptimizeForWord97()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OptimizeForWord97, get=getOptimizeForWord97, set=setOptimizeForWord97)

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

        ksoapi::MsoEnvelope* getMailEnvelope();
        %MethodCode
            ksoapi::MsoEnvelope *prop = nullptr;
            HRESULT hr = sipCpp->get_MailEnvelope(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MailEnvelope()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MailEnvelope, get=getMailEnvelope)

        VARIANT_BOOL getDisableFeatures();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisableFeatures(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisableFeatures()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisableFeatures(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisableFeatures(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisableFeatures()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisableFeatures, get=getDisableFeatures, set=setDisableFeatures)

        VARIANT_BOOL getDoNotEmbedSystemFonts();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DoNotEmbedSystemFonts(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DoNotEmbedSystemFonts()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDoNotEmbedSystemFonts(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DoNotEmbedSystemFonts(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DoNotEmbedSystemFonts()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DoNotEmbedSystemFonts, get=getDoNotEmbedSystemFonts, set=setDoNotEmbedSystemFonts)

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

        BSTR getDefaultTargetFrame();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_DefaultTargetFrame(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DefaultTargetFrame()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDefaultTargetFrame(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DefaultTargetFrame(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DefaultTargetFrame()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DefaultTargetFrame, get=getDefaultTargetFrame, set=setDefaultTargetFrame)

        HTMLDivisions* getHTMLDivisions();
        %MethodCode
            wpsapi::HTMLDivisions *prop = nullptr;
            HRESULT hr = sipCpp->get_HTMLDivisions(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HTMLDivisions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HTMLDivisions, get=getHTMLDivisions)

        WdDisableFeaturesIntroducedAfter getDisableFeaturesIntroducedAfter();
        %MethodCode
            wpsapi::WdDisableFeaturesIntroducedAfter prop = (wpsapi::WdDisableFeaturesIntroducedAfter)0;
            HRESULT hr = sipCpp->get_DisableFeaturesIntroducedAfter(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisableFeaturesIntroducedAfter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisableFeaturesIntroducedAfter(WdDisableFeaturesIntroducedAfter prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisableFeaturesIntroducedAfter(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisableFeaturesIntroducedAfter()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisableFeaturesIntroducedAfter, get=getDisableFeaturesIntroducedAfter, set=setDisableFeaturesIntroducedAfter)

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

        SmartTags* getSmartTags();
        %MethodCode
            wpsapi::SmartTags *prop = nullptr;
            HRESULT hr = sipCpp->get_SmartTags(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SmartTags()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SmartTags, get=getSmartTags)

        VARIANT_BOOL getEmbedSmartTags();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EmbedSmartTags(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EmbedSmartTags()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEmbedSmartTags(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EmbedSmartTags(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EmbedSmartTags()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EmbedSmartTags, get=getEmbedSmartTags, set=setEmbedSmartTags)

        VARIANT_BOOL getSmartTagsAsXMLProps();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_SmartTagsAsXMLProps(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SmartTagsAsXMLProps()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSmartTagsAsXMLProps(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SmartTagsAsXMLProps(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SmartTagsAsXMLProps()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SmartTagsAsXMLProps, get=getSmartTagsAsXMLProps, set=setSmartTagsAsXMLProps)

        MsoEncoding getTextEncoding();
        %MethodCode
            wpsapi::MsoEncoding prop = (wpsapi::MsoEncoding)0;
            HRESULT hr = sipCpp->get_TextEncoding(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextEncoding()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextEncoding(MsoEncoding prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextEncoding(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextEncoding()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextEncoding, get=getTextEncoding, set=setTextEncoding)

        WdLineEndingType getTextLineEnding();
        %MethodCode
            wpsapi::WdLineEndingType prop = (wpsapi::WdLineEndingType)0;
            HRESULT hr = sipCpp->get_TextLineEnding(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextLineEnding()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextLineEnding(WdLineEndingType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextLineEnding(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextLineEnding()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextLineEnding, get=getTextLineEnding, set=setTextLineEnding)

        StyleSheets* getStyleSheets();
        %MethodCode
            wpsapi::StyleSheets *prop = nullptr;
            HRESULT hr = sipCpp->get_StyleSheets(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_StyleSheets()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=StyleSheets, get=getStyleSheets)

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

        %Property(name=DefaultTableStyle, get=getDefaultTableStyle)

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

        VARIANT_BOOL getEmbedLinguisticData();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EmbedLinguisticData(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EmbedLinguisticData()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEmbedLinguisticData(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EmbedLinguisticData(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EmbedLinguisticData()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EmbedLinguisticData, get=getEmbedLinguisticData, set=setEmbedLinguisticData)

        VARIANT_BOOL getFormattingShowFont();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_FormattingShowFont(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FormattingShowFont()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFormattingShowFont(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FormattingShowFont(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FormattingShowFont()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FormattingShowFont, get=getFormattingShowFont, set=setFormattingShowFont)

        VARIANT_BOOL getFormattingShowClear();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_FormattingShowClear(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FormattingShowClear()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFormattingShowClear(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FormattingShowClear(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FormattingShowClear()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FormattingShowClear, get=getFormattingShowClear, set=setFormattingShowClear)

        VARIANT_BOOL getFormattingShowParagraph();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_FormattingShowParagraph(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FormattingShowParagraph()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFormattingShowParagraph(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FormattingShowParagraph(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FormattingShowParagraph()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FormattingShowParagraph, get=getFormattingShowParagraph, set=setFormattingShowParagraph)

        VARIANT_BOOL getFormattingShowNumbering();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_FormattingShowNumbering(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FormattingShowNumbering()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFormattingShowNumbering(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FormattingShowNumbering(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FormattingShowNumbering()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FormattingShowNumbering, get=getFormattingShowNumbering, set=setFormattingShowNumbering)

        WdShowFilter getFormattingShowFilter();
        %MethodCode
            wpsapi::WdShowFilter prop = (wpsapi::WdShowFilter)0;
            HRESULT hr = sipCpp->get_FormattingShowFilter(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FormattingShowFilter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFormattingShowFilter(WdShowFilter prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FormattingShowFilter(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FormattingShowFilter()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FormattingShowFilter, get=getFormattingShowFilter, set=setFormattingShowFilter)

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

        XMLNodes* getXMLNodes();
        %MethodCode
            wpsapi::XMLNodes *prop = nullptr;
            HRESULT hr = sipCpp->get_XMLNodes(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_XMLNodes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=XMLNodes, get=getXMLNodes)

        XMLSchemaReferences* getXMLSchemaReferences();
        %MethodCode
            wpsapi::XMLSchemaReferences *prop = nullptr;
            HRESULT hr = sipCpp->get_XMLSchemaReferences(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_XMLSchemaReferences()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=XMLSchemaReferences, get=getXMLSchemaReferences)

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

        VARIANT_BOOL getEnforceStyle();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EnforceStyle(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EnforceStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnforceStyle(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EnforceStyle(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EnforceStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EnforceStyle, get=getEnforceStyle, set=setEnforceStyle)

        VARIANT_BOOL getAutoFormatOverride();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatOverride(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatOverride()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatOverride(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatOverride(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatOverride()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatOverride, get=getAutoFormatOverride, set=setAutoFormatOverride)

        VARIANT_BOOL getXMLSaveDataOnly();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_XMLSaveDataOnly(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_XMLSaveDataOnly()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setXMLSaveDataOnly(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_XMLSaveDataOnly(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_XMLSaveDataOnly()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=XMLSaveDataOnly, get=getXMLSaveDataOnly, set=setXMLSaveDataOnly)

        VARIANT_BOOL getXMLHideNamespaces();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_XMLHideNamespaces(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_XMLHideNamespaces()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setXMLHideNamespaces(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_XMLHideNamespaces(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_XMLHideNamespaces()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=XMLHideNamespaces, get=getXMLHideNamespaces, set=setXMLHideNamespaces)

        VARIANT_BOOL getXMLShowAdvancedErrors();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_XMLShowAdvancedErrors(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_XMLShowAdvancedErrors()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setXMLShowAdvancedErrors(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_XMLShowAdvancedErrors(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_XMLShowAdvancedErrors()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=XMLShowAdvancedErrors, get=getXMLShowAdvancedErrors, set=setXMLShowAdvancedErrors)

        VARIANT_BOOL getXMLUseXSLTWhenSaving();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_XMLUseXSLTWhenSaving(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_XMLUseXSLTWhenSaving()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setXMLUseXSLTWhenSaving(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_XMLUseXSLTWhenSaving(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_XMLUseXSLTWhenSaving()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=XMLUseXSLTWhenSaving, get=getXMLUseXSLTWhenSaving, set=setXMLUseXSLTWhenSaving)

        BSTR getXMLSaveThroughXSLT();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_XMLSaveThroughXSLT(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_XMLSaveThroughXSLT()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setXMLSaveThroughXSLT(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_XMLSaveThroughXSLT(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_XMLSaveThroughXSLT()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=XMLSaveThroughXSLT, get=getXMLSaveThroughXSLT, set=setXMLSaveThroughXSLT)

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

        VARIANT_BOOL getReadingModeLayoutFrozen();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ReadingModeLayoutFrozen(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ReadingModeLayoutFrozen()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setReadingModeLayoutFrozen(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ReadingModeLayoutFrozen(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ReadingModeLayoutFrozen()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ReadingModeLayoutFrozen, get=getReadingModeLayoutFrozen, set=setReadingModeLayoutFrozen)

        VARIANT_BOOL getRemoveDateAndTime();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_RemoveDateAndTime(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RemoveDateAndTime()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRemoveDateAndTime(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RemoveDateAndTime(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RemoveDateAndTime()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RemoveDateAndTime, get=getRemoveDateAndTime, set=setRemoveDateAndTime)

        XMLChildNodeSuggestions* getChildNodeSuggestions();
        %MethodCode
            wpsapi::XMLChildNodeSuggestions *prop = nullptr;
            HRESULT hr = sipCpp->get_ChildNodeSuggestions(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ChildNodeSuggestions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ChildNodeSuggestions, get=getChildNodeSuggestions)

        XMLNodes* getXMLSchemaViolations();
        %MethodCode
            wpsapi::XMLNodes *prop = nullptr;
            HRESULT hr = sipCpp->get_XMLSchemaViolations(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_XMLSchemaViolations()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=XMLSchemaViolations, get=getXMLSchemaViolations)

        long getReadingLayoutSizeX();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_ReadingLayoutSizeX(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ReadingLayoutSizeX()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setReadingLayoutSizeX(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ReadingLayoutSizeX(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ReadingLayoutSizeX()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ReadingLayoutSizeX, get=getReadingLayoutSizeX, set=setReadingLayoutSizeX)

        long getReadingLayoutSizeY();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_ReadingLayoutSizeY(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ReadingLayoutSizeY()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setReadingLayoutSizeY(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ReadingLayoutSizeY(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ReadingLayoutSizeY()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ReadingLayoutSizeY, get=getReadingLayoutSizeY, set=setReadingLayoutSizeY)

        WdStyleSort getStyleSortMethod();
        %MethodCode
            wpsapi::WdStyleSort prop = (wpsapi::WdStyleSort)0;
            HRESULT hr = sipCpp->get_StyleSortMethod(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_StyleSortMethod()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setStyleSortMethod(WdStyleSort prop);
        %MethodCode
            HRESULT hr = sipCpp->put_StyleSortMethod(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_StyleSortMethod()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=StyleSortMethod, get=getStyleSortMethod, set=setStyleSortMethod)

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

        VARIANT_BOOL getTrackMoves();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_TrackMoves(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TrackMoves()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTrackMoves(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TrackMoves(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TrackMoves()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TrackMoves, get=getTrackMoves, set=setTrackMoves)

        VARIANT_BOOL getTrackFormatting();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_TrackFormatting(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TrackFormatting()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTrackFormatting(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TrackFormatting(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TrackFormatting()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TrackFormatting, get=getTrackFormatting, set=setTrackFormatting)

        OMaths* getOMaths();
        %MethodCode
            wpsapi::OMaths *prop = nullptr;
            HRESULT hr = sipCpp->get_OMaths(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OMaths()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=OMaths, get=getOMaths)

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

        ContentControls* getContentControls();
        %MethodCode
            wpsapi::ContentControls *prop = nullptr;
            HRESULT hr = sipCpp->get_ContentControls(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ContentControls()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ContentControls, get=getContentControls)

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

        Bibliography* getBibliography();
        %MethodCode
            wpsapi::Bibliography *prop = nullptr;
            HRESULT hr = sipCpp->get_Bibliography(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Bibliography()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Bibliography, get=getBibliography)

        VARIANT_BOOL getLockTheme();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_LockTheme(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LockTheme()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLockTheme(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LockTheme(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LockTheme()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LockTheme, get=getLockTheme, set=setLockTheme)

        VARIANT_BOOL getLockQuickStyleSet();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_LockQuickStyleSet(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LockQuickStyleSet()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLockQuickStyleSet(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LockQuickStyleSet(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LockQuickStyleSet()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LockQuickStyleSet, get=getLockQuickStyleSet, set=setLockQuickStyleSet)

        BSTR getOriginalDocumentTitle();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_OriginalDocumentTitle(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OriginalDocumentTitle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=OriginalDocumentTitle, get=getOriginalDocumentTitle)

        BSTR getRevisedDocumentTitle();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_RevisedDocumentTitle(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RevisedDocumentTitle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=RevisedDocumentTitle, get=getRevisedDocumentTitle)

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

        VARIANT_BOOL getFormattingShowNextLevel();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_FormattingShowNextLevel(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FormattingShowNextLevel()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFormattingShowNextLevel(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FormattingShowNextLevel(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FormattingShowNextLevel()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FormattingShowNextLevel, get=getFormattingShowNextLevel, set=setFormattingShowNextLevel)

        VARIANT_BOOL getFormattingShowUserStyleName();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_FormattingShowUserStyleName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FormattingShowUserStyleName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFormattingShowUserStyleName(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FormattingShowUserStyleName(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FormattingShowUserStyleName()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FormattingShowUserStyleName, get=getFormattingShowUserStyleName, set=setFormattingShowUserStyleName)

        Research* getResearch();
        %MethodCode
            wpsapi::Research *prop = nullptr;
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

        WdOMathBreakBin getOMathBreakBin();
        %MethodCode
            wpsapi::WdOMathBreakBin prop = (wpsapi::WdOMathBreakBin)0;
            HRESULT hr = sipCpp->get_OMathBreakBin(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OMathBreakBin()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOMathBreakBin(WdOMathBreakBin prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OMathBreakBin(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OMathBreakBin()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OMathBreakBin, get=getOMathBreakBin, set=setOMathBreakBin)

        WdOMathBreakSub getOMathBreakSub();
        %MethodCode
            wpsapi::WdOMathBreakSub prop = (wpsapi::WdOMathBreakSub)0;
            HRESULT hr = sipCpp->get_OMathBreakSub(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OMathBreakSub()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOMathBreakSub(WdOMathBreakSub prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OMathBreakSub(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OMathBreakSub()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OMathBreakSub, get=getOMathBreakSub, set=setOMathBreakSub)

        WdOMathJc getOMathJc();
        %MethodCode
            wpsapi::WdOMathJc prop = (wpsapi::WdOMathJc)0;
            HRESULT hr = sipCpp->get_OMathJc(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OMathJc()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOMathJc(WdOMathJc prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OMathJc(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OMathJc()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OMathJc, get=getOMathJc, set=setOMathJc)

        single getOMathLeftMargin();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_OMathLeftMargin(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OMathLeftMargin()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOMathLeftMargin(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OMathLeftMargin(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OMathLeftMargin()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OMathLeftMargin, get=getOMathLeftMargin, set=setOMathLeftMargin)

        single getOMathRightMargin();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_OMathRightMargin(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OMathRightMargin()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOMathRightMargin(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OMathRightMargin(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OMathRightMargin()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OMathRightMargin, get=getOMathRightMargin, set=setOMathRightMargin)

        single getOMathWrap();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_OMathWrap(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OMathWrap()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOMathWrap(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OMathWrap(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OMathWrap()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OMathWrap, get=getOMathWrap, set=setOMathWrap)

        VARIANT_BOOL getOMathIntSubSupLim();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_OMathIntSubSupLim(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OMathIntSubSupLim()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOMathIntSubSupLim(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OMathIntSubSupLim(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OMathIntSubSupLim()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OMathIntSubSupLim, get=getOMathIntSubSupLim, set=setOMathIntSubSupLim)

        VARIANT_BOOL getOMathNarySupSubLim();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_OMathNarySupSubLim(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OMathNarySupSubLim()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOMathNarySupSubLim(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OMathNarySupSubLim(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OMathNarySupSubLim()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OMathNarySupSubLim, get=getOMathNarySupSubLim, set=setOMathNarySupSubLim)

        VARIANT_BOOL getOMathSmallFrac();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_OMathSmallFrac(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OMathSmallFrac()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOMathSmallFrac(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OMathSmallFrac(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OMathSmallFrac()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OMathSmallFrac, get=getOMathSmallFrac, set=setOMathSmallFrac)

        BSTR getWordOpenXML();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_WordOpenXML(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WordOpenXML()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=WordOpenXML, get=getWordOpenXML)

        ksoapi::OfficeTheme* getDocumentTheme();
        %MethodCode
            ksoapi::OfficeTheme *prop = nullptr;
            HRESULT hr = sipCpp->get_DocumentTheme(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DocumentTheme()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DocumentTheme, get=getDocumentTheme)

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

        BSTR getOMathFontName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_OMathFontName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OMathFontName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOMathFontName(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OMathFontName(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OMathFontName()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OMathFontName, get=getOMathFontName, set=setOMathFontName)

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

        VARIANT_BOOL getUseMathDefaults();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_UseMathDefaults(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UseMathDefaults()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUseMathDefaults(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_UseMathDefaults(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_UseMathDefaults()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=UseMathDefaults, get=getUseMathDefaults, set=setUseMathDefaults)

        long getCurrentRsid();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_CurrentRsid(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CurrentRsid()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CurrentRsid, get=getCurrentRsid)

        long getDocID();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_DocID(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DocID()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DocID, get=getDocID)

        long getCompatibilityMode();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_CompatibilityMode(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CompatibilityMode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CompatibilityMode, get=getCompatibilityMode)

        CoAuthoring* getCoAuthoring();
        %MethodCode
            wpsapi::CoAuthoring *prop = nullptr;
            HRESULT hr = sipCpp->get_CoAuthoring(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CoAuthoring()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CoAuthoring, get=getCoAuthoring)

        Broadcast* getBroadcast();
        %MethodCode
            wpsapi::Broadcast *prop = nullptr;
            HRESULT hr = sipCpp->get_Broadcast(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Broadcast()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Broadcast, get=getBroadcast)

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

        VARIANT_BOOL getIsInAutosave();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IsInAutosave(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IsInAutosave()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=IsInAutosave, get=getIsInAutosave)

        DocumentFields* getDocumentFields();
        %MethodCode
            wpsapi::DocumentFields *prop = nullptr;
            HRESULT hr = sipCpp->get_DocumentFields(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DocumentFields()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DocumentFields, get=getDocumentFields)
    };
};
