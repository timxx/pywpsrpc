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
    struct Options : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_AllowAccentedUppercase(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AllowAccentedUppercase(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_WPHelp(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_WPHelp(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_WPDocNavKeys(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_WPDocNavKeys(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Pagination(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Pagination(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_BlueScreen(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_BlueScreen(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_EnableSound(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_EnableSound(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ConfirmConversions(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ConfirmConversions(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_UpdateLinksAtOpen(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_UpdateLinksAtOpen(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SendMailAttach(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_SendMailAttach(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MeasurementUnit(
            WdMeasurementUnits *prop /Out/) = 0;

        virtual HRESULT put_MeasurementUnit(
            WdMeasurementUnits prop) = 0;

        virtual HRESULT get_ButtonFieldClicks(
            long *prop /Out/) = 0;

        virtual HRESULT put_ButtonFieldClicks(
            long prop) = 0;

        virtual HRESULT get_ShortMenuNames(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShortMenuNames(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_RTFInClipboard(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_RTFInClipboard(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_UpdateFieldsAtPrint(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_UpdateFieldsAtPrint(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_PrintProperties(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_PrintProperties(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_PrintFieldCodes(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_PrintFieldCodes(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_PrintComments(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_PrintComments(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_PrintHiddenText(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_PrintHiddenText(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_EnvelopeFeederInstalled(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_UpdateLinksAtPrint(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_UpdateLinksAtPrint(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_PrintBackground(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_PrintBackground(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_PrintDrawingObjects(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_PrintDrawingObjects(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_DefaultTray(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_DefaultTray(
            BSTR prop) = 0;

        virtual HRESULT get_DefaultTrayID(
            long *prop /Out/) = 0;

        virtual HRESULT put_DefaultTrayID(
            long prop) = 0;

        virtual HRESULT get_CreateBackup(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_CreateBackup(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AllowFastSave(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AllowFastSave(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SavePropertiesPrompt(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_SavePropertiesPrompt(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SaveNormalPrompt(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_SaveNormalPrompt(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SaveInterval(
            long *prop /Out/) = 0;

        virtual HRESULT put_SaveInterval(
            long prop) = 0;

        virtual HRESULT get_BackgroundSave(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_BackgroundSave(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_InsertedTextMark(
            WdInsertedTextMark *prop /Out/) = 0;

        virtual HRESULT put_InsertedTextMark(
            WdInsertedTextMark prop) = 0;

        virtual HRESULT get_DeletedTextMark(
            WdDeletedTextMark *prop /Out/) = 0;

        virtual HRESULT put_DeletedTextMark(
            WdDeletedTextMark prop) = 0;

        virtual HRESULT get_RevisedLinesMark(
            WdRevisedLinesMark *prop /Out/) = 0;

        virtual HRESULT put_RevisedLinesMark(
            WdRevisedLinesMark prop) = 0;

        virtual HRESULT get_InsertedTextColor(
            WdColorIndex *prop /Out/) = 0;

        virtual HRESULT put_InsertedTextColor(
            WdColorIndex prop) = 0;

        virtual HRESULT get_DeletedTextColor(
            WdColorIndex *prop /Out/) = 0;

        virtual HRESULT put_DeletedTextColor(
            WdColorIndex prop) = 0;

        virtual HRESULT get_RevisedLinesColor(
            WdColorIndex *prop /Out/) = 0;

        virtual HRESULT put_RevisedLinesColor(
            WdColorIndex prop) = 0;

        virtual HRESULT get_DefaultFilePath(
            WdDefaultFilePath Path,
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_DefaultFilePath(
            WdDefaultFilePath Path,
            BSTR prop) = 0;

        virtual HRESULT get_Overtype(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Overtype(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ReplaceSelection(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ReplaceSelection(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AllowDragAndDrop(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AllowDragAndDrop(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoWordSelection(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoWordSelection(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_INSKeyForPaste(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_INSKeyForPaste(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SmartCutPaste(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_SmartCutPaste(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_TabIndentKey(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_TabIndentKey(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_PictureEditor(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_PictureEditor(
            BSTR prop) = 0;

        virtual HRESULT get_AnimateScreenMovements(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AnimateScreenMovements(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_VirusProtection(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_VirusProtection(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_RevisedPropertiesMark(
            WdRevisedPropertiesMark *prop /Out/) = 0;

        virtual HRESULT put_RevisedPropertiesMark(
            WdRevisedPropertiesMark prop) = 0;

        virtual HRESULT get_RevisedPropertiesColor(
            WdColorIndex *prop /Out/) = 0;

        virtual HRESULT put_RevisedPropertiesColor(
            WdColorIndex prop) = 0;

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

        virtual HRESULT get_InlineConversion(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_InlineConversion(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_IMEAutomaticControl(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_IMEAutomaticControl(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatApplyHeadings(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatApplyHeadings(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatApplyLists(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatApplyLists(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatApplyBulletedLists(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatApplyBulletedLists(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatApplyOtherParas(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatApplyOtherParas(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatReplaceQuotes(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatReplaceQuotes(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatReplaceSymbols(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatReplaceSymbols(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatReplaceOrdinals(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatReplaceOrdinals(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatReplaceFractions(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatReplaceFractions(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatReplacePlainTextEmphasis(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatReplacePlainTextEmphasis(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatPreserveStyles(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatPreserveStyles(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeApplyHeadings(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeApplyHeadings(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeApplyBorders(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeApplyBorders(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeApplyBulletedLists(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeApplyBulletedLists(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeApplyNumberedLists(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeApplyNumberedLists(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeReplaceQuotes(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeReplaceQuotes(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeReplaceSymbols(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeReplaceSymbols(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeReplaceOrdinals(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeReplaceOrdinals(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeReplaceFractions(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeReplaceFractions(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeReplacePlainTextEmphasis(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeReplacePlainTextEmphasis(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeFormatListItemBeginning(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeFormatListItemBeginning(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeDefineStyles(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeDefineStyles(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatPlainTextWordMail(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatPlainTextWordMail(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeReplaceHyperlinks(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeReplaceHyperlinks(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatReplaceHyperlinks(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatReplaceHyperlinks(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_DefaultHighlightColorIndex(
            WdColorIndex *prop /Out/) = 0;

        virtual HRESULT put_DefaultHighlightColorIndex(
            WdColorIndex prop) = 0;

        virtual HRESULT get_DefaultBorderLineStyle(
            WdLineStyle *prop /Out/) = 0;

        virtual HRESULT put_DefaultBorderLineStyle(
            WdLineStyle prop) = 0;

        virtual HRESULT get_CheckSpellingAsYouType(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_CheckSpellingAsYouType(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_CheckGrammarAsYouType(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_CheckGrammarAsYouType(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_IgnoreInternetAndFileAddresses(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_IgnoreInternetAndFileAddresses(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowReadabilityStatistics(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowReadabilityStatistics(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_IgnoreUppercase(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_IgnoreUppercase(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_IgnoreMixedDigits(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_IgnoreMixedDigits(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SuggestFromMainDictionaryOnly(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_SuggestFromMainDictionaryOnly(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SuggestSpellingCorrections(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_SuggestSpellingCorrections(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_DefaultBorderLineWidth(
            WdLineWidth *prop /Out/) = 0;

        virtual HRESULT put_DefaultBorderLineWidth(
            WdLineWidth prop) = 0;

        virtual HRESULT get_CheckGrammarWithSpelling(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_CheckGrammarWithSpelling(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_DefaultOpenFormat(
            WdOpenFormat *prop /Out/) = 0;

        virtual HRESULT put_DefaultOpenFormat(
            WdOpenFormat prop) = 0;

        virtual HRESULT get_PrintDraft(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_PrintDraft(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_PrintReverse(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_PrintReverse(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MapPaperSize(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MapPaperSize(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeApplyTables(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeApplyTables(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatApplyFirstIndents(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatApplyFirstIndents(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatMatchParentheses(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatMatchParentheses(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatReplaceFarEastDashes(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatReplaceFarEastDashes(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatDeleteAutoSpaces(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatDeleteAutoSpaces(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeApplyFirstIndents(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeApplyFirstIndents(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeApplyDates(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeApplyDates(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeApplyClosings(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeApplyClosings(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeMatchParentheses(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeMatchParentheses(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeReplaceFarEastDashes(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeReplaceFarEastDashes(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeDeleteAutoSpaces(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeDeleteAutoSpaces(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeInsertClosings(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeInsertClosings(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeAutoLetterWizard(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeAutoLetterWizard(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoFormatAsYouTypeInsertOvers(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoFormatAsYouTypeInsertOvers(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_DisplayGridLines(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DisplayGridLines(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MatchFuzzyCase(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MatchFuzzyCase(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MatchFuzzyByte(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MatchFuzzyByte(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MatchFuzzyHiragana(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MatchFuzzyHiragana(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MatchFuzzySmallKana(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MatchFuzzySmallKana(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MatchFuzzyDash(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MatchFuzzyDash(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MatchFuzzyIterationMark(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MatchFuzzyIterationMark(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MatchFuzzyKanji(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MatchFuzzyKanji(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MatchFuzzyOldKana(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MatchFuzzyOldKana(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MatchFuzzyProlongedSoundMark(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MatchFuzzyProlongedSoundMark(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MatchFuzzyDZ(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MatchFuzzyDZ(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MatchFuzzyBV(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MatchFuzzyBV(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MatchFuzzyTC(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MatchFuzzyTC(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MatchFuzzyHF(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MatchFuzzyHF(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MatchFuzzyZJ(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MatchFuzzyZJ(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MatchFuzzyAY(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MatchFuzzyAY(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MatchFuzzyKiKu(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MatchFuzzyKiKu(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MatchFuzzyPunctuation(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MatchFuzzyPunctuation(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MatchFuzzySpace(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MatchFuzzySpace(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ApplyFarEastFontsToAscii(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ApplyFarEastFontsToAscii(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ConvertHighAnsiToFarEast(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ConvertHighAnsiToFarEast(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_PrintOddPagesInAscendingOrder(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_PrintOddPagesInAscendingOrder(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_PrintEvenPagesInAscendingOrder(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_PrintEvenPagesInAscendingOrder(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_DefaultBorderColorIndex(
            WdColorIndex *prop /Out/) = 0;

        virtual HRESULT put_DefaultBorderColorIndex(
            WdColorIndex prop) = 0;

        virtual HRESULT get_EnableMisusedWordsDictionary(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_EnableMisusedWordsDictionary(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AllowCombinedAuxiliaryForms(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AllowCombinedAuxiliaryForms(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HangulHanjaFastConversion(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HangulHanjaFastConversion(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_CheckHangulEndings(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_CheckHangulEndings(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_EnableHangulHanjaRecentOrdering(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_EnableHangulHanjaRecentOrdering(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MultipleWordConversionsMode(
            WdMultipleWordConversionsMode *prop /Out/) = 0;

        virtual HRESULT put_MultipleWordConversionsMode(
            WdMultipleWordConversionsMode prop) = 0;

        virtual HRESULT SetWPHelpOptions(
            VARIANT *CommandKeyHelp = argMissing(),
            VARIANT *DocNavigationKeys = argMissing(),
            VARIANT *MouseSimulation = argMissing(),
            VARIANT *DemoGuidance = argMissing(),
            VARIANT *DemoSpeed = argMissing(),
            VARIANT *HelpType = argMissing()) = 0;

        virtual HRESULT get_DefaultBorderColor(
            WdColor *prop /Out/) = 0;

        virtual HRESULT put_DefaultBorderColor(
            WdColor prop) = 0;

        virtual HRESULT get_AllowPixelUnits(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AllowPixelUnits(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_UseCharacterUnit(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_UseCharacterUnit(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AllowCompoundNounProcessing(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AllowCompoundNounProcessing(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoKeyboardSwitching(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoKeyboardSwitching(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_DocumentViewDirection(
            WdDocumentViewDirection *prop /Out/) = 0;

        virtual HRESULT put_DocumentViewDirection(
            WdDocumentViewDirection prop) = 0;

        virtual HRESULT get_ArabicNumeral(
            WdArabicNumeral *prop /Out/) = 0;

        virtual HRESULT put_ArabicNumeral(
            WdArabicNumeral prop) = 0;

        virtual HRESULT get_MonthNames(
            WdMonthNames *prop /Out/) = 0;

        virtual HRESULT put_MonthNames(
            WdMonthNames prop) = 0;

        virtual HRESULT get_CursorMovement(
            WdCursorMovement *prop /Out/) = 0;

        virtual HRESULT put_CursorMovement(
            WdCursorMovement prop) = 0;

        virtual HRESULT get_VisualSelection(
            WdVisualSelection *prop /Out/) = 0;

        virtual HRESULT put_VisualSelection(
            WdVisualSelection prop) = 0;

        virtual HRESULT get_ShowDiacritics(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowDiacritics(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowControlCharacters(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowControlCharacters(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AddControlCharacters(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AddControlCharacters(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AddBiDirectionalMarksWhenSavingTextFile(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AddBiDirectionalMarksWhenSavingTextFile(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_StrictInitialAlefHamza(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_StrictInitialAlefHamza(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_StrictFinalYaa(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_StrictFinalYaa(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HebrewMode(
            WdHebSpellStart *prop /Out/) = 0;

        virtual HRESULT put_HebrewMode(
            WdHebSpellStart prop) = 0;

        virtual HRESULT get_ArabicMode(
            WdAraSpeller *prop /Out/) = 0;

        virtual HRESULT put_ArabicMode(
            WdAraSpeller prop) = 0;

        virtual HRESULT get_AllowClickAndTypeMouse(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AllowClickAndTypeMouse(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_UseGermanSpellingReform(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_UseGermanSpellingReform(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_InterpretHighAnsi(
            WdHighAnsiText *prop /Out/) = 0;

        virtual HRESULT put_InterpretHighAnsi(
            WdHighAnsiText prop) = 0;

        virtual HRESULT get_AddHebDoubleQuote(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AddHebDoubleQuote(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_UseDiffDiacColor(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_UseDiffDiacColor(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_DiacriticColorVal(
            WdColor *prop /Out/) = 0;

        virtual HRESULT put_DiacriticColorVal(
            WdColor prop) = 0;

        virtual HRESULT get_OptimizeForWord97byDefault(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_OptimizeForWord97byDefault(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_LocalNetworkFile(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_LocalNetworkFile(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_TypeNReplace(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_TypeNReplace(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SequenceCheck(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_SequenceCheck(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_BackgroundOpen(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_BackgroundOpen(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_DisableFeaturesbyDefault(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DisableFeaturesbyDefault(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_PasteAdjustWordSpacing(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_PasteAdjustWordSpacing(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_PasteAdjustParagraphSpacing(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_PasteAdjustParagraphSpacing(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_PasteAdjustTableFormatting(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_PasteAdjustTableFormatting(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_PasteSmartStyleBehavior(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_PasteSmartStyleBehavior(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_PasteMergeFromPPT(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_PasteMergeFromPPT(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_PasteMergeFromXL(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_PasteMergeFromXL(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_CtrlClickHyperlinkToOpen(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_CtrlClickHyperlinkToOpen(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_PictureWrapType(
            WdWrapTypeMerged *prop /Out/) = 0;

        virtual HRESULT put_PictureWrapType(
            WdWrapTypeMerged prop) = 0;

        virtual HRESULT get_DisableFeaturesIntroducedAfterbyDefault(
            WdDisableFeaturesIntroducedAfter *prop /Out/) = 0;

        virtual HRESULT put_DisableFeaturesIntroducedAfterbyDefault(
            WdDisableFeaturesIntroducedAfter prop) = 0;

        virtual HRESULT get_PasteSmartCutPaste(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_PasteSmartCutPaste(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_DisplayPasteOptions(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DisplayPasteOptions(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_PromptUpdateStyle(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_PromptUpdateStyle(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_DefaultEPostageApp(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_DefaultEPostageApp(
            BSTR prop) = 0;

        virtual HRESULT get_DefaultTextEncoding(
            MsoEncoding *prop /Out/) = 0;

        virtual HRESULT put_DefaultTextEncoding(
            MsoEncoding prop) = 0;

        virtual HRESULT get_LabelSmartTags(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_LabelSmartTags(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_DisplaySmartTagButtons(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DisplaySmartTagButtons(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_WarnBeforeSavingPrintingSendingMarkup(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_WarnBeforeSavingPrintingSendingMarkup(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_StoreRSIDOnSave(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_StoreRSIDOnSave(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowFormatError(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowFormatError(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_FormatScanning(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_FormatScanning(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_PasteMergeLists(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_PasteMergeLists(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AutoCreateNewDrawings(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoCreateNewDrawings(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SmartParaSelection(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_SmartParaSelection(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_RevisionsBalloonPrintOrientation(
            WdRevisionsBalloonPrintOrientation *prop /Out/) = 0;

        virtual HRESULT put_RevisionsBalloonPrintOrientation(
            WdRevisionsBalloonPrintOrientation prop) = 0;

        virtual HRESULT get_CommentsColor(
            WdColorIndex *prop /Out/) = 0;

        virtual HRESULT put_CommentsColor(
            WdColorIndex prop) = 0;

        virtual HRESULT get_PrintXMLTag(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_PrintXMLTag(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_PrintBackgrounds(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_PrintBackgrounds(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AllowReadingMode(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AllowReadingMode(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowMarkupOpenSave(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowMarkupOpenSave(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SmartCursoring(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_SmartCursoring(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MoveToTextMark(
            WdMoveToTextMark *prop /Out/) = 0;

        virtual HRESULT put_MoveToTextMark(
            WdMoveToTextMark prop) = 0;

        virtual HRESULT get_MoveFromTextMark(
            WdMoveFromTextMark *prop /Out/) = 0;

        virtual HRESULT put_MoveFromTextMark(
            WdMoveFromTextMark prop) = 0;

        virtual HRESULT get_BibliographyStyle(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_BibliographyStyle(
            BSTR prop) = 0;

        virtual HRESULT get_BibliographySort(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_BibliographySort(
            BSTR prop) = 0;

        virtual HRESULT get_InsertedCellColor(
            WdCellColor *prop /Out/) = 0;

        virtual HRESULT put_InsertedCellColor(
            WdCellColor prop) = 0;

        virtual HRESULT get_DeletedCellColor(
            WdCellColor *prop /Out/) = 0;

        virtual HRESULT put_DeletedCellColor(
            WdCellColor prop) = 0;

        virtual HRESULT get_MergedCellColor(
            WdCellColor *prop /Out/) = 0;

        virtual HRESULT put_MergedCellColor(
            WdCellColor prop) = 0;

        virtual HRESULT get_SplitCellColor(
            WdCellColor *prop /Out/) = 0;

        virtual HRESULT put_SplitCellColor(
            WdCellColor prop) = 0;

        virtual HRESULT get_ShowSelectionFloaties(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowSelectionFloaties(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowMenuFloaties(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowMenuFloaties(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowDevTools(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowDevTools(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_EnableLivePreview(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_EnableLivePreview(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_OMathAutoBuildUp(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_OMathAutoBuildUp(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AlwaysUseClearType(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AlwaysUseClearType(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_PasteFormatWithinDocument(
            WdPasteOptions *prop /Out/) = 0;

        virtual HRESULT put_PasteFormatWithinDocument(
            WdPasteOptions prop) = 0;

        virtual HRESULT get_PasteFormatBetweenDocuments(
            WdPasteOptions *prop /Out/) = 0;

        virtual HRESULT put_PasteFormatBetweenDocuments(
            WdPasteOptions prop) = 0;

        virtual HRESULT get_PasteFormatBetweenStyledDocuments(
            WdPasteOptions *prop /Out/) = 0;

        virtual HRESULT put_PasteFormatBetweenStyledDocuments(
            WdPasteOptions prop) = 0;

        virtual HRESULT get_PasteFormatFromExternalSource(
            WdPasteOptions *prop /Out/) = 0;

        virtual HRESULT put_PasteFormatFromExternalSource(
            WdPasteOptions prop) = 0;

        virtual HRESULT get_PasteOptionKeepBulletsAndNumbers(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_PasteOptionKeepBulletsAndNumbers(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_INSKeyForOvertype(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_INSKeyForOvertype(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_RepeatWord(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_RepeatWord(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_FrenchReform(
            WdFrenchSpeller *prop /Out/) = 0;

        virtual HRESULT put_FrenchReform(
            WdFrenchSpeller prop) = 0;

        virtual HRESULT get_ContextualSpeller(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ContextualSpeller(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MoveToTextColor(
            WdColorIndex *prop /Out/) = 0;

        virtual HRESULT put_MoveToTextColor(
            WdColorIndex prop) = 0;

        virtual HRESULT get_MoveFromTextColor(
            WdColorIndex *prop /Out/) = 0;

        virtual HRESULT put_MoveFromTextColor(
            WdColorIndex prop) = 0;

        virtual HRESULT get_OMathCopyLF(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_OMathCopyLF(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_UseNormalStyleForList(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_UseNormalStyleForList(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AllowOpenInDraftView(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AllowOpenInDraftView(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_EnableLegacyIMEMode(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_EnableLegacyIMEMode(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_DoNotPromptForConvert(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DoNotPromptForConvert(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_PrecisePositioning(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_PrecisePositioning(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_UpdateStyleListBehavior(
            WdUpdateStyleListBehavior *prop /Out/) = 0;

        virtual HRESULT put_UpdateStyleListBehavior(
            WdUpdateStyleListBehavior prop) = 0;

        virtual HRESULT get_StrictTaaMarboota(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_StrictTaaMarboota(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_StrictRussianE(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_StrictRussianE(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SpanishMode(
            WdSpanishSpeller *prop /Out/) = 0;

        virtual HRESULT put_SpanishMode(
            WdSpanishSpeller prop) = 0;

        virtual HRESULT get_PortugalReform(
            WdPortugueseReform *prop /Out/) = 0;

        virtual HRESULT put_PortugalReform(
            WdPortugueseReform prop) = 0;

        virtual HRESULT get_BrazilReform(
            WdPortugueseReform *prop /Out/) = 0;

        virtual HRESULT put_BrazilReform(
            WdPortugueseReform prop) = 0;

        virtual HRESULT get_UpdateFieldsWithTrackedChangesAtPrint(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_UpdateFieldsWithTrackedChangesAtPrint(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_DisplayAlignmentGuides(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DisplayAlignmentGuides(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_PageAlignmentGuides(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_PageAlignmentGuides(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MarginAlignmentGuides(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MarginAlignmentGuides(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ParagraphAlignmentGuides(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ParagraphAlignmentGuides(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_EnableLiveDrag(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_EnableLiveDrag(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_UseSubPixelPositioning(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_UseSubPixelPositioning(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AlertIfNotDefault(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AlertIfNotDefault(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_EnableProofingToolsAdvertisement(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_EnableProofingToolsAdvertisement(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_PreferCloudSaveLocations(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_PreferCloudSaveLocations(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SkyDriveSignInOption(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_SkyDriveSignInOption(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ExpandHeadingsOnOpen(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ExpandHeadingsOnOpen(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_UseLocalUserInfo(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_UseLocalUserInfo(
            VARIANT_BOOL prop) = 0;

    };
};
