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

        VARIANT_BOOL getAllowAccentedUppercase();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AllowAccentedUppercase(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AllowAccentedUppercase()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAllowAccentedUppercase(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AllowAccentedUppercase(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AllowAccentedUppercase()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AllowAccentedUppercase, get=getAllowAccentedUppercase, set=setAllowAccentedUppercase)

        VARIANT_BOOL getWPHelp();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_WPHelp(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WPHelp()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWPHelp(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_WPHelp(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_WPHelp()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=WPHelp, get=getWPHelp, set=setWPHelp)

        VARIANT_BOOL getWPDocNavKeys();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_WPDocNavKeys(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WPDocNavKeys()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWPDocNavKeys(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_WPDocNavKeys(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_WPDocNavKeys()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=WPDocNavKeys, get=getWPDocNavKeys, set=setWPDocNavKeys)

        VARIANT_BOOL getPagination();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Pagination(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Pagination()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPagination(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Pagination(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Pagination()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Pagination, get=getPagination, set=setPagination)

        VARIANT_BOOL getBlueScreen();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_BlueScreen(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BlueScreen()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBlueScreen(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BlueScreen(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BlueScreen()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BlueScreen, get=getBlueScreen, set=setBlueScreen)

        VARIANT_BOOL getEnableSound();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EnableSound(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EnableSound()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnableSound(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EnableSound(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EnableSound()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EnableSound, get=getEnableSound, set=setEnableSound)

        VARIANT_BOOL getConfirmConversions();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ConfirmConversions(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ConfirmConversions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setConfirmConversions(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ConfirmConversions(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ConfirmConversions()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ConfirmConversions, get=getConfirmConversions, set=setConfirmConversions)

        VARIANT_BOOL getUpdateLinksAtOpen();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_UpdateLinksAtOpen(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UpdateLinksAtOpen()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUpdateLinksAtOpen(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_UpdateLinksAtOpen(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_UpdateLinksAtOpen()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=UpdateLinksAtOpen, get=getUpdateLinksAtOpen, set=setUpdateLinksAtOpen)

        VARIANT_BOOL getSendMailAttach();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_SendMailAttach(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SendMailAttach()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSendMailAttach(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SendMailAttach(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SendMailAttach()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SendMailAttach, get=getSendMailAttach, set=setSendMailAttach)

        WdMeasurementUnits getMeasurementUnit();
        %MethodCode
            wpsapi::WdMeasurementUnits prop = (wpsapi::WdMeasurementUnits)0;
            HRESULT hr = sipCpp->get_MeasurementUnit(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MeasurementUnit()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMeasurementUnit(WdMeasurementUnits prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MeasurementUnit(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MeasurementUnit()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MeasurementUnit, get=getMeasurementUnit, set=setMeasurementUnit)

        long getButtonFieldClicks();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_ButtonFieldClicks(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ButtonFieldClicks()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setButtonFieldClicks(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ButtonFieldClicks(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ButtonFieldClicks()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ButtonFieldClicks, get=getButtonFieldClicks, set=setButtonFieldClicks)

        VARIANT_BOOL getShortMenuNames();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShortMenuNames(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShortMenuNames()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShortMenuNames(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShortMenuNames(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShortMenuNames()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShortMenuNames, get=getShortMenuNames, set=setShortMenuNames)

        VARIANT_BOOL getRTFInClipboard();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_RTFInClipboard(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RTFInClipboard()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRTFInClipboard(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RTFInClipboard(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RTFInClipboard()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RTFInClipboard, get=getRTFInClipboard, set=setRTFInClipboard)

        VARIANT_BOOL getUpdateFieldsAtPrint();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_UpdateFieldsAtPrint(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UpdateFieldsAtPrint()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUpdateFieldsAtPrint(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_UpdateFieldsAtPrint(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_UpdateFieldsAtPrint()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=UpdateFieldsAtPrint, get=getUpdateFieldsAtPrint, set=setUpdateFieldsAtPrint)

        VARIANT_BOOL getPrintProperties();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PrintProperties(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PrintProperties()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPrintProperties(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PrintProperties(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PrintProperties()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PrintProperties, get=getPrintProperties, set=setPrintProperties)

        VARIANT_BOOL getPrintFieldCodes();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PrintFieldCodes(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PrintFieldCodes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPrintFieldCodes(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PrintFieldCodes(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PrintFieldCodes()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PrintFieldCodes, get=getPrintFieldCodes, set=setPrintFieldCodes)

        VARIANT_BOOL getPrintComments();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PrintComments(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PrintComments()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPrintComments(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PrintComments(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PrintComments()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PrintComments, get=getPrintComments, set=setPrintComments)

        VARIANT_BOOL getPrintHiddenText();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PrintHiddenText(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PrintHiddenText()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPrintHiddenText(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PrintHiddenText(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PrintHiddenText()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PrintHiddenText, get=getPrintHiddenText, set=setPrintHiddenText)

        VARIANT_BOOL getEnvelopeFeederInstalled();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EnvelopeFeederInstalled(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EnvelopeFeederInstalled()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=EnvelopeFeederInstalled, get=getEnvelopeFeederInstalled)

        VARIANT_BOOL getUpdateLinksAtPrint();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_UpdateLinksAtPrint(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UpdateLinksAtPrint()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUpdateLinksAtPrint(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_UpdateLinksAtPrint(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_UpdateLinksAtPrint()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=UpdateLinksAtPrint, get=getUpdateLinksAtPrint, set=setUpdateLinksAtPrint)

        VARIANT_BOOL getPrintBackground();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PrintBackground(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PrintBackground()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPrintBackground(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PrintBackground(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PrintBackground()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PrintBackground, get=getPrintBackground, set=setPrintBackground)

        VARIANT_BOOL getPrintDrawingObjects();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PrintDrawingObjects(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PrintDrawingObjects()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPrintDrawingObjects(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PrintDrawingObjects(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PrintDrawingObjects()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PrintDrawingObjects, get=getPrintDrawingObjects, set=setPrintDrawingObjects)

        BSTR getDefaultTray();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_DefaultTray(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DefaultTray()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDefaultTray(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DefaultTray(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DefaultTray()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DefaultTray, get=getDefaultTray, set=setDefaultTray)

        long getDefaultTrayID();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_DefaultTrayID(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DefaultTrayID()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDefaultTrayID(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DefaultTrayID(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DefaultTrayID()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DefaultTrayID, get=getDefaultTrayID, set=setDefaultTrayID)

        VARIANT_BOOL getCreateBackup();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_CreateBackup(prop);
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

        PyObject* setCreateBackup(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CreateBackup(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CreateBackup()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CreateBackup, get=getCreateBackup, set=setCreateBackup)

        VARIANT_BOOL getAllowFastSave();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AllowFastSave(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AllowFastSave()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAllowFastSave(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AllowFastSave(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AllowFastSave()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AllowFastSave, get=getAllowFastSave, set=setAllowFastSave)

        VARIANT_BOOL getSavePropertiesPrompt();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_SavePropertiesPrompt(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SavePropertiesPrompt()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSavePropertiesPrompt(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SavePropertiesPrompt(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SavePropertiesPrompt()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SavePropertiesPrompt, get=getSavePropertiesPrompt, set=setSavePropertiesPrompt)

        VARIANT_BOOL getSaveNormalPrompt();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_SaveNormalPrompt(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SaveNormalPrompt()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSaveNormalPrompt(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SaveNormalPrompt(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SaveNormalPrompt()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SaveNormalPrompt, get=getSaveNormalPrompt, set=setSaveNormalPrompt)

        long getSaveInterval();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_SaveInterval(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SaveInterval()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSaveInterval(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SaveInterval(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SaveInterval()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SaveInterval, get=getSaveInterval, set=setSaveInterval)

        VARIANT_BOOL getBackgroundSave();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_BackgroundSave(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BackgroundSave()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBackgroundSave(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BackgroundSave(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BackgroundSave()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BackgroundSave, get=getBackgroundSave, set=setBackgroundSave)

        WdInsertedTextMark getInsertedTextMark();
        %MethodCode
            wpsapi::WdInsertedTextMark prop = (wpsapi::WdInsertedTextMark)0;
            HRESULT hr = sipCpp->get_InsertedTextMark(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InsertedTextMark()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setInsertedTextMark(WdInsertedTextMark prop);
        %MethodCode
            HRESULT hr = sipCpp->put_InsertedTextMark(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_InsertedTextMark()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=InsertedTextMark, get=getInsertedTextMark, set=setInsertedTextMark)

        WdDeletedTextMark getDeletedTextMark();
        %MethodCode
            wpsapi::WdDeletedTextMark prop = (wpsapi::WdDeletedTextMark)0;
            HRESULT hr = sipCpp->get_DeletedTextMark(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DeletedTextMark()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDeletedTextMark(WdDeletedTextMark prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DeletedTextMark(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DeletedTextMark()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DeletedTextMark, get=getDeletedTextMark, set=setDeletedTextMark)

        WdRevisedLinesMark getRevisedLinesMark();
        %MethodCode
            wpsapi::WdRevisedLinesMark prop = (wpsapi::WdRevisedLinesMark)0;
            HRESULT hr = sipCpp->get_RevisedLinesMark(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RevisedLinesMark()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRevisedLinesMark(WdRevisedLinesMark prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RevisedLinesMark(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RevisedLinesMark()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RevisedLinesMark, get=getRevisedLinesMark, set=setRevisedLinesMark)

        WdColorIndex getInsertedTextColor();
        %MethodCode
            wpsapi::WdColorIndex prop = (wpsapi::WdColorIndex)0;
            HRESULT hr = sipCpp->get_InsertedTextColor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InsertedTextColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setInsertedTextColor(WdColorIndex prop);
        %MethodCode
            HRESULT hr = sipCpp->put_InsertedTextColor(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_InsertedTextColor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=InsertedTextColor, get=getInsertedTextColor, set=setInsertedTextColor)

        WdColorIndex getDeletedTextColor();
        %MethodCode
            wpsapi::WdColorIndex prop = (wpsapi::WdColorIndex)0;
            HRESULT hr = sipCpp->get_DeletedTextColor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DeletedTextColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDeletedTextColor(WdColorIndex prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DeletedTextColor(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DeletedTextColor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DeletedTextColor, get=getDeletedTextColor, set=setDeletedTextColor)

        WdColorIndex getRevisedLinesColor();
        %MethodCode
            wpsapi::WdColorIndex prop = (wpsapi::WdColorIndex)0;
            HRESULT hr = sipCpp->get_RevisedLinesColor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RevisedLinesColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRevisedLinesColor(WdColorIndex prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RevisedLinesColor(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RevisedLinesColor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RevisedLinesColor, get=getRevisedLinesColor, set=setRevisedLinesColor)

        VARIANT_BOOL getOvertype();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Overtype(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Overtype()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOvertype(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Overtype(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Overtype()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Overtype, get=getOvertype, set=setOvertype)

        VARIANT_BOOL getReplaceSelection();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ReplaceSelection(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ReplaceSelection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setReplaceSelection(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ReplaceSelection(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ReplaceSelection()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ReplaceSelection, get=getReplaceSelection, set=setReplaceSelection)

        VARIANT_BOOL getAllowDragAndDrop();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AllowDragAndDrop(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AllowDragAndDrop()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAllowDragAndDrop(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AllowDragAndDrop(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AllowDragAndDrop()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AllowDragAndDrop, get=getAllowDragAndDrop, set=setAllowDragAndDrop)

        VARIANT_BOOL getAutoWordSelection();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoWordSelection(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoWordSelection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoWordSelection(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoWordSelection(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoWordSelection()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoWordSelection, get=getAutoWordSelection, set=setAutoWordSelection)

        VARIANT_BOOL getINSKeyForPaste();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_INSKeyForPaste(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_INSKeyForPaste()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setINSKeyForPaste(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_INSKeyForPaste(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_INSKeyForPaste()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=INSKeyForPaste, get=getINSKeyForPaste, set=setINSKeyForPaste)

        VARIANT_BOOL getSmartCutPaste();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_SmartCutPaste(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SmartCutPaste()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSmartCutPaste(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SmartCutPaste(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SmartCutPaste()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SmartCutPaste, get=getSmartCutPaste, set=setSmartCutPaste)

        VARIANT_BOOL getTabIndentKey();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_TabIndentKey(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TabIndentKey()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTabIndentKey(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TabIndentKey(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TabIndentKey()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TabIndentKey, get=getTabIndentKey, set=setTabIndentKey)

        BSTR getPictureEditor();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_PictureEditor(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PictureEditor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPictureEditor(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PictureEditor(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PictureEditor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PictureEditor, get=getPictureEditor, set=setPictureEditor)

        VARIANT_BOOL getAnimateScreenMovements();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AnimateScreenMovements(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AnimateScreenMovements()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAnimateScreenMovements(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AnimateScreenMovements(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AnimateScreenMovements()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AnimateScreenMovements, get=getAnimateScreenMovements, set=setAnimateScreenMovements)

        VARIANT_BOOL getVirusProtection();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_VirusProtection(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_VirusProtection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setVirusProtection(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_VirusProtection(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_VirusProtection()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=VirusProtection, get=getVirusProtection, set=setVirusProtection)

        WdRevisedPropertiesMark getRevisedPropertiesMark();
        %MethodCode
            wpsapi::WdRevisedPropertiesMark prop = (wpsapi::WdRevisedPropertiesMark)0;
            HRESULT hr = sipCpp->get_RevisedPropertiesMark(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RevisedPropertiesMark()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRevisedPropertiesMark(WdRevisedPropertiesMark prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RevisedPropertiesMark(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RevisedPropertiesMark()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RevisedPropertiesMark, get=getRevisedPropertiesMark, set=setRevisedPropertiesMark)

        WdColorIndex getRevisedPropertiesColor();
        %MethodCode
            wpsapi::WdColorIndex prop = (wpsapi::WdColorIndex)0;
            HRESULT hr = sipCpp->get_RevisedPropertiesColor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RevisedPropertiesColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRevisedPropertiesColor(WdColorIndex prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RevisedPropertiesColor(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RevisedPropertiesColor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RevisedPropertiesColor, get=getRevisedPropertiesColor, set=setRevisedPropertiesColor)

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

        VARIANT_BOOL getInlineConversion();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_InlineConversion(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InlineConversion()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setInlineConversion(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_InlineConversion(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_InlineConversion()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=InlineConversion, get=getInlineConversion, set=setInlineConversion)

        VARIANT_BOOL getIMEAutomaticControl();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IMEAutomaticControl(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IMEAutomaticControl()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setIMEAutomaticControl(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_IMEAutomaticControl(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_IMEAutomaticControl()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=IMEAutomaticControl, get=getIMEAutomaticControl, set=setIMEAutomaticControl)

        VARIANT_BOOL getAutoFormatApplyHeadings();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatApplyHeadings(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatApplyHeadings()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatApplyHeadings(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatApplyHeadings(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatApplyHeadings()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatApplyHeadings, get=getAutoFormatApplyHeadings, set=setAutoFormatApplyHeadings)

        VARIANT_BOOL getAutoFormatApplyLists();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatApplyLists(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatApplyLists()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatApplyLists(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatApplyLists(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatApplyLists()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatApplyLists, get=getAutoFormatApplyLists, set=setAutoFormatApplyLists)

        VARIANT_BOOL getAutoFormatApplyBulletedLists();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatApplyBulletedLists(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatApplyBulletedLists()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatApplyBulletedLists(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatApplyBulletedLists(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatApplyBulletedLists()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatApplyBulletedLists, get=getAutoFormatApplyBulletedLists, set=setAutoFormatApplyBulletedLists)

        VARIANT_BOOL getAutoFormatApplyOtherParas();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatApplyOtherParas(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatApplyOtherParas()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatApplyOtherParas(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatApplyOtherParas(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatApplyOtherParas()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatApplyOtherParas, get=getAutoFormatApplyOtherParas, set=setAutoFormatApplyOtherParas)

        VARIANT_BOOL getAutoFormatReplaceQuotes();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatReplaceQuotes(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatReplaceQuotes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatReplaceQuotes(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatReplaceQuotes(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatReplaceQuotes()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatReplaceQuotes, get=getAutoFormatReplaceQuotes, set=setAutoFormatReplaceQuotes)

        VARIANT_BOOL getAutoFormatReplaceSymbols();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatReplaceSymbols(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatReplaceSymbols()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatReplaceSymbols(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatReplaceSymbols(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatReplaceSymbols()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatReplaceSymbols, get=getAutoFormatReplaceSymbols, set=setAutoFormatReplaceSymbols)

        VARIANT_BOOL getAutoFormatReplaceOrdinals();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatReplaceOrdinals(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatReplaceOrdinals()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatReplaceOrdinals(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatReplaceOrdinals(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatReplaceOrdinals()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatReplaceOrdinals, get=getAutoFormatReplaceOrdinals, set=setAutoFormatReplaceOrdinals)

        VARIANT_BOOL getAutoFormatReplaceFractions();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatReplaceFractions(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatReplaceFractions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatReplaceFractions(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatReplaceFractions(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatReplaceFractions()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatReplaceFractions, get=getAutoFormatReplaceFractions, set=setAutoFormatReplaceFractions)

        VARIANT_BOOL getAutoFormatReplacePlainTextEmphasis();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatReplacePlainTextEmphasis(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatReplacePlainTextEmphasis()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatReplacePlainTextEmphasis(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatReplacePlainTextEmphasis(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatReplacePlainTextEmphasis()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatReplacePlainTextEmphasis, get=getAutoFormatReplacePlainTextEmphasis, set=setAutoFormatReplacePlainTextEmphasis)

        VARIANT_BOOL getAutoFormatPreserveStyles();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatPreserveStyles(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatPreserveStyles()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatPreserveStyles(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatPreserveStyles(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatPreserveStyles()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatPreserveStyles, get=getAutoFormatPreserveStyles, set=setAutoFormatPreserveStyles)

        VARIANT_BOOL getAutoFormatAsYouTypeApplyHeadings();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatAsYouTypeApplyHeadings(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatAsYouTypeApplyHeadings()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatAsYouTypeApplyHeadings(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatAsYouTypeApplyHeadings(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatAsYouTypeApplyHeadings()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatAsYouTypeApplyHeadings, get=getAutoFormatAsYouTypeApplyHeadings, set=setAutoFormatAsYouTypeApplyHeadings)

        VARIANT_BOOL getAutoFormatAsYouTypeApplyBorders();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatAsYouTypeApplyBorders(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatAsYouTypeApplyBorders()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatAsYouTypeApplyBorders(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatAsYouTypeApplyBorders(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatAsYouTypeApplyBorders()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatAsYouTypeApplyBorders, get=getAutoFormatAsYouTypeApplyBorders, set=setAutoFormatAsYouTypeApplyBorders)

        VARIANT_BOOL getAutoFormatAsYouTypeApplyBulletedLists();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatAsYouTypeApplyBulletedLists(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatAsYouTypeApplyBulletedLists()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatAsYouTypeApplyBulletedLists(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatAsYouTypeApplyBulletedLists(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatAsYouTypeApplyBulletedLists()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatAsYouTypeApplyBulletedLists, get=getAutoFormatAsYouTypeApplyBulletedLists, set=setAutoFormatAsYouTypeApplyBulletedLists)

        VARIANT_BOOL getAutoFormatAsYouTypeApplyNumberedLists();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatAsYouTypeApplyNumberedLists(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatAsYouTypeApplyNumberedLists()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatAsYouTypeApplyNumberedLists(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatAsYouTypeApplyNumberedLists(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatAsYouTypeApplyNumberedLists()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatAsYouTypeApplyNumberedLists, get=getAutoFormatAsYouTypeApplyNumberedLists, set=setAutoFormatAsYouTypeApplyNumberedLists)

        VARIANT_BOOL getAutoFormatAsYouTypeReplaceQuotes();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatAsYouTypeReplaceQuotes(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatAsYouTypeReplaceQuotes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatAsYouTypeReplaceQuotes(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatAsYouTypeReplaceQuotes(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatAsYouTypeReplaceQuotes()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatAsYouTypeReplaceQuotes, get=getAutoFormatAsYouTypeReplaceQuotes, set=setAutoFormatAsYouTypeReplaceQuotes)

        VARIANT_BOOL getAutoFormatAsYouTypeReplaceSymbols();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatAsYouTypeReplaceSymbols(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatAsYouTypeReplaceSymbols()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatAsYouTypeReplaceSymbols(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatAsYouTypeReplaceSymbols(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatAsYouTypeReplaceSymbols()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatAsYouTypeReplaceSymbols, get=getAutoFormatAsYouTypeReplaceSymbols, set=setAutoFormatAsYouTypeReplaceSymbols)

        VARIANT_BOOL getAutoFormatAsYouTypeReplaceOrdinals();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatAsYouTypeReplaceOrdinals(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatAsYouTypeReplaceOrdinals()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatAsYouTypeReplaceOrdinals(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatAsYouTypeReplaceOrdinals(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatAsYouTypeReplaceOrdinals()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatAsYouTypeReplaceOrdinals, get=getAutoFormatAsYouTypeReplaceOrdinals, set=setAutoFormatAsYouTypeReplaceOrdinals)

        VARIANT_BOOL getAutoFormatAsYouTypeReplaceFractions();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatAsYouTypeReplaceFractions(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatAsYouTypeReplaceFractions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatAsYouTypeReplaceFractions(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatAsYouTypeReplaceFractions(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatAsYouTypeReplaceFractions()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatAsYouTypeReplaceFractions, get=getAutoFormatAsYouTypeReplaceFractions, set=setAutoFormatAsYouTypeReplaceFractions)

        VARIANT_BOOL getAutoFormatAsYouTypeReplacePlainTextEmphasis();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatAsYouTypeReplacePlainTextEmphasis(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatAsYouTypeReplacePlainTextEmphasis()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatAsYouTypeReplacePlainTextEmphasis(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatAsYouTypeReplacePlainTextEmphasis(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatAsYouTypeReplacePlainTextEmphasis()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatAsYouTypeReplacePlainTextEmphasis, get=getAutoFormatAsYouTypeReplacePlainTextEmphasis, set=setAutoFormatAsYouTypeReplacePlainTextEmphasis)

        VARIANT_BOOL getAutoFormatAsYouTypeFormatListItemBeginning();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatAsYouTypeFormatListItemBeginning(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatAsYouTypeFormatListItemBeginning()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatAsYouTypeFormatListItemBeginning(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatAsYouTypeFormatListItemBeginning(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatAsYouTypeFormatListItemBeginning()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatAsYouTypeFormatListItemBeginning, get=getAutoFormatAsYouTypeFormatListItemBeginning, set=setAutoFormatAsYouTypeFormatListItemBeginning)

        VARIANT_BOOL getAutoFormatAsYouTypeDefineStyles();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatAsYouTypeDefineStyles(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatAsYouTypeDefineStyles()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatAsYouTypeDefineStyles(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatAsYouTypeDefineStyles(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatAsYouTypeDefineStyles()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatAsYouTypeDefineStyles, get=getAutoFormatAsYouTypeDefineStyles, set=setAutoFormatAsYouTypeDefineStyles)

        VARIANT_BOOL getAutoFormatPlainTextWordMail();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatPlainTextWordMail(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatPlainTextWordMail()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatPlainTextWordMail(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatPlainTextWordMail(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatPlainTextWordMail()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatPlainTextWordMail, get=getAutoFormatPlainTextWordMail, set=setAutoFormatPlainTextWordMail)

        VARIANT_BOOL getAutoFormatAsYouTypeReplaceHyperlinks();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatAsYouTypeReplaceHyperlinks(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatAsYouTypeReplaceHyperlinks()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatAsYouTypeReplaceHyperlinks(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatAsYouTypeReplaceHyperlinks(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatAsYouTypeReplaceHyperlinks()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatAsYouTypeReplaceHyperlinks, get=getAutoFormatAsYouTypeReplaceHyperlinks, set=setAutoFormatAsYouTypeReplaceHyperlinks)

        VARIANT_BOOL getAutoFormatReplaceHyperlinks();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatReplaceHyperlinks(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatReplaceHyperlinks()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatReplaceHyperlinks(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatReplaceHyperlinks(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatReplaceHyperlinks()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatReplaceHyperlinks, get=getAutoFormatReplaceHyperlinks, set=setAutoFormatReplaceHyperlinks)

        WdColorIndex getDefaultHighlightColorIndex();
        %MethodCode
            wpsapi::WdColorIndex prop = (wpsapi::WdColorIndex)0;
            HRESULT hr = sipCpp->get_DefaultHighlightColorIndex(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DefaultHighlightColorIndex()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDefaultHighlightColorIndex(WdColorIndex prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DefaultHighlightColorIndex(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DefaultHighlightColorIndex()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DefaultHighlightColorIndex, get=getDefaultHighlightColorIndex, set=setDefaultHighlightColorIndex)

        WdLineStyle getDefaultBorderLineStyle();
        %MethodCode
            wpsapi::WdLineStyle prop = (wpsapi::WdLineStyle)0;
            HRESULT hr = sipCpp->get_DefaultBorderLineStyle(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DefaultBorderLineStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDefaultBorderLineStyle(WdLineStyle prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DefaultBorderLineStyle(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DefaultBorderLineStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DefaultBorderLineStyle, get=getDefaultBorderLineStyle, set=setDefaultBorderLineStyle)

        VARIANT_BOOL getCheckSpellingAsYouType();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_CheckSpellingAsYouType(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CheckSpellingAsYouType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCheckSpellingAsYouType(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CheckSpellingAsYouType(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CheckSpellingAsYouType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CheckSpellingAsYouType, get=getCheckSpellingAsYouType, set=setCheckSpellingAsYouType)

        VARIANT_BOOL getCheckGrammarAsYouType();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_CheckGrammarAsYouType(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CheckGrammarAsYouType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCheckGrammarAsYouType(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CheckGrammarAsYouType(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CheckGrammarAsYouType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CheckGrammarAsYouType, get=getCheckGrammarAsYouType, set=setCheckGrammarAsYouType)

        VARIANT_BOOL getIgnoreInternetAndFileAddresses();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IgnoreInternetAndFileAddresses(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IgnoreInternetAndFileAddresses()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setIgnoreInternetAndFileAddresses(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_IgnoreInternetAndFileAddresses(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_IgnoreInternetAndFileAddresses()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=IgnoreInternetAndFileAddresses, get=getIgnoreInternetAndFileAddresses, set=setIgnoreInternetAndFileAddresses)

        VARIANT_BOOL getShowReadabilityStatistics();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowReadabilityStatistics(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowReadabilityStatistics()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowReadabilityStatistics(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowReadabilityStatistics(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowReadabilityStatistics()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowReadabilityStatistics, get=getShowReadabilityStatistics, set=setShowReadabilityStatistics)

        VARIANT_BOOL getIgnoreUppercase();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IgnoreUppercase(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IgnoreUppercase()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setIgnoreUppercase(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_IgnoreUppercase(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_IgnoreUppercase()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=IgnoreUppercase, get=getIgnoreUppercase, set=setIgnoreUppercase)

        VARIANT_BOOL getIgnoreMixedDigits();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IgnoreMixedDigits(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IgnoreMixedDigits()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setIgnoreMixedDigits(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_IgnoreMixedDigits(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_IgnoreMixedDigits()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=IgnoreMixedDigits, get=getIgnoreMixedDigits, set=setIgnoreMixedDigits)

        VARIANT_BOOL getSuggestFromMainDictionaryOnly();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_SuggestFromMainDictionaryOnly(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SuggestFromMainDictionaryOnly()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSuggestFromMainDictionaryOnly(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SuggestFromMainDictionaryOnly(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SuggestFromMainDictionaryOnly()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SuggestFromMainDictionaryOnly, get=getSuggestFromMainDictionaryOnly, set=setSuggestFromMainDictionaryOnly)

        VARIANT_BOOL getSuggestSpellingCorrections();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_SuggestSpellingCorrections(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SuggestSpellingCorrections()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSuggestSpellingCorrections(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SuggestSpellingCorrections(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SuggestSpellingCorrections()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SuggestSpellingCorrections, get=getSuggestSpellingCorrections, set=setSuggestSpellingCorrections)

        WdLineWidth getDefaultBorderLineWidth();
        %MethodCode
            wpsapi::WdLineWidth prop = (wpsapi::WdLineWidth)0;
            HRESULT hr = sipCpp->get_DefaultBorderLineWidth(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DefaultBorderLineWidth()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDefaultBorderLineWidth(WdLineWidth prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DefaultBorderLineWidth(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DefaultBorderLineWidth()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DefaultBorderLineWidth, get=getDefaultBorderLineWidth, set=setDefaultBorderLineWidth)

        VARIANT_BOOL getCheckGrammarWithSpelling();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_CheckGrammarWithSpelling(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CheckGrammarWithSpelling()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCheckGrammarWithSpelling(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CheckGrammarWithSpelling(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CheckGrammarWithSpelling()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CheckGrammarWithSpelling, get=getCheckGrammarWithSpelling, set=setCheckGrammarWithSpelling)

        WdOpenFormat getDefaultOpenFormat();
        %MethodCode
            wpsapi::WdOpenFormat prop = (wpsapi::WdOpenFormat)0;
            HRESULT hr = sipCpp->get_DefaultOpenFormat(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DefaultOpenFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDefaultOpenFormat(WdOpenFormat prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DefaultOpenFormat(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DefaultOpenFormat()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DefaultOpenFormat, get=getDefaultOpenFormat, set=setDefaultOpenFormat)

        VARIANT_BOOL getPrintDraft();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PrintDraft(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PrintDraft()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPrintDraft(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PrintDraft(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PrintDraft()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PrintDraft, get=getPrintDraft, set=setPrintDraft)

        VARIANT_BOOL getPrintReverse();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PrintReverse(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PrintReverse()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPrintReverse(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PrintReverse(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PrintReverse()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PrintReverse, get=getPrintReverse, set=setPrintReverse)

        VARIANT_BOOL getMapPaperSize();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MapPaperSize(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MapPaperSize()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMapPaperSize(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MapPaperSize(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MapPaperSize()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MapPaperSize, get=getMapPaperSize, set=setMapPaperSize)

        VARIANT_BOOL getAutoFormatAsYouTypeApplyTables();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatAsYouTypeApplyTables(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatAsYouTypeApplyTables()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatAsYouTypeApplyTables(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatAsYouTypeApplyTables(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatAsYouTypeApplyTables()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatAsYouTypeApplyTables, get=getAutoFormatAsYouTypeApplyTables, set=setAutoFormatAsYouTypeApplyTables)

        VARIANT_BOOL getAutoFormatApplyFirstIndents();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatApplyFirstIndents(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatApplyFirstIndents()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatApplyFirstIndents(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatApplyFirstIndents(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatApplyFirstIndents()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatApplyFirstIndents, get=getAutoFormatApplyFirstIndents, set=setAutoFormatApplyFirstIndents)

        VARIANT_BOOL getAutoFormatMatchParentheses();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatMatchParentheses(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatMatchParentheses()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatMatchParentheses(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatMatchParentheses(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatMatchParentheses()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatMatchParentheses, get=getAutoFormatMatchParentheses, set=setAutoFormatMatchParentheses)

        VARIANT_BOOL getAutoFormatReplaceFarEastDashes();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatReplaceFarEastDashes(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatReplaceFarEastDashes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatReplaceFarEastDashes(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatReplaceFarEastDashes(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatReplaceFarEastDashes()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatReplaceFarEastDashes, get=getAutoFormatReplaceFarEastDashes, set=setAutoFormatReplaceFarEastDashes)

        VARIANT_BOOL getAutoFormatDeleteAutoSpaces();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatDeleteAutoSpaces(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatDeleteAutoSpaces()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatDeleteAutoSpaces(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatDeleteAutoSpaces(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatDeleteAutoSpaces()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatDeleteAutoSpaces, get=getAutoFormatDeleteAutoSpaces, set=setAutoFormatDeleteAutoSpaces)

        VARIANT_BOOL getAutoFormatAsYouTypeApplyFirstIndents();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatAsYouTypeApplyFirstIndents(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatAsYouTypeApplyFirstIndents()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatAsYouTypeApplyFirstIndents(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatAsYouTypeApplyFirstIndents(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatAsYouTypeApplyFirstIndents()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatAsYouTypeApplyFirstIndents, get=getAutoFormatAsYouTypeApplyFirstIndents, set=setAutoFormatAsYouTypeApplyFirstIndents)

        VARIANT_BOOL getAutoFormatAsYouTypeApplyDates();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatAsYouTypeApplyDates(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatAsYouTypeApplyDates()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatAsYouTypeApplyDates(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatAsYouTypeApplyDates(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatAsYouTypeApplyDates()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatAsYouTypeApplyDates, get=getAutoFormatAsYouTypeApplyDates, set=setAutoFormatAsYouTypeApplyDates)

        VARIANT_BOOL getAutoFormatAsYouTypeApplyClosings();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatAsYouTypeApplyClosings(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatAsYouTypeApplyClosings()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatAsYouTypeApplyClosings(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatAsYouTypeApplyClosings(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatAsYouTypeApplyClosings()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatAsYouTypeApplyClosings, get=getAutoFormatAsYouTypeApplyClosings, set=setAutoFormatAsYouTypeApplyClosings)

        VARIANT_BOOL getAutoFormatAsYouTypeMatchParentheses();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatAsYouTypeMatchParentheses(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatAsYouTypeMatchParentheses()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatAsYouTypeMatchParentheses(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatAsYouTypeMatchParentheses(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatAsYouTypeMatchParentheses()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatAsYouTypeMatchParentheses, get=getAutoFormatAsYouTypeMatchParentheses, set=setAutoFormatAsYouTypeMatchParentheses)

        VARIANT_BOOL getAutoFormatAsYouTypeReplaceFarEastDashes();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatAsYouTypeReplaceFarEastDashes(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatAsYouTypeReplaceFarEastDashes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatAsYouTypeReplaceFarEastDashes(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatAsYouTypeReplaceFarEastDashes(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatAsYouTypeReplaceFarEastDashes()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatAsYouTypeReplaceFarEastDashes, get=getAutoFormatAsYouTypeReplaceFarEastDashes, set=setAutoFormatAsYouTypeReplaceFarEastDashes)

        VARIANT_BOOL getAutoFormatAsYouTypeDeleteAutoSpaces();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatAsYouTypeDeleteAutoSpaces(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatAsYouTypeDeleteAutoSpaces()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatAsYouTypeDeleteAutoSpaces(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatAsYouTypeDeleteAutoSpaces(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatAsYouTypeDeleteAutoSpaces()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatAsYouTypeDeleteAutoSpaces, get=getAutoFormatAsYouTypeDeleteAutoSpaces, set=setAutoFormatAsYouTypeDeleteAutoSpaces)

        VARIANT_BOOL getAutoFormatAsYouTypeInsertClosings();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatAsYouTypeInsertClosings(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatAsYouTypeInsertClosings()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatAsYouTypeInsertClosings(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatAsYouTypeInsertClosings(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatAsYouTypeInsertClosings()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatAsYouTypeInsertClosings, get=getAutoFormatAsYouTypeInsertClosings, set=setAutoFormatAsYouTypeInsertClosings)

        VARIANT_BOOL getAutoFormatAsYouTypeAutoLetterWizard();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatAsYouTypeAutoLetterWizard(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatAsYouTypeAutoLetterWizard()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatAsYouTypeAutoLetterWizard(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatAsYouTypeAutoLetterWizard(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatAsYouTypeAutoLetterWizard()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatAsYouTypeAutoLetterWizard, get=getAutoFormatAsYouTypeAutoLetterWizard, set=setAutoFormatAsYouTypeAutoLetterWizard)

        VARIANT_BOOL getAutoFormatAsYouTypeInsertOvers();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoFormatAsYouTypeInsertOvers(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormatAsYouTypeInsertOvers()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormatAsYouTypeInsertOvers(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormatAsYouTypeInsertOvers(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormatAsYouTypeInsertOvers()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormatAsYouTypeInsertOvers, get=getAutoFormatAsYouTypeInsertOvers, set=setAutoFormatAsYouTypeInsertOvers)

        VARIANT_BOOL getDisplayGridLines();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayGridLines(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayGridLines()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayGridLines(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayGridLines(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayGridLines()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayGridLines, get=getDisplayGridLines, set=setDisplayGridLines)

        VARIANT_BOOL getMatchFuzzyCase();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MatchFuzzyCase(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MatchFuzzyCase()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMatchFuzzyCase(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MatchFuzzyCase(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MatchFuzzyCase()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MatchFuzzyCase, get=getMatchFuzzyCase, set=setMatchFuzzyCase)

        VARIANT_BOOL getMatchFuzzyByte();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MatchFuzzyByte(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MatchFuzzyByte()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMatchFuzzyByte(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MatchFuzzyByte(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MatchFuzzyByte()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MatchFuzzyByte, get=getMatchFuzzyByte, set=setMatchFuzzyByte)

        VARIANT_BOOL getMatchFuzzyHiragana();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MatchFuzzyHiragana(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MatchFuzzyHiragana()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMatchFuzzyHiragana(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MatchFuzzyHiragana(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MatchFuzzyHiragana()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MatchFuzzyHiragana, get=getMatchFuzzyHiragana, set=setMatchFuzzyHiragana)

        VARIANT_BOOL getMatchFuzzySmallKana();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MatchFuzzySmallKana(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MatchFuzzySmallKana()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMatchFuzzySmallKana(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MatchFuzzySmallKana(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MatchFuzzySmallKana()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MatchFuzzySmallKana, get=getMatchFuzzySmallKana, set=setMatchFuzzySmallKana)

        VARIANT_BOOL getMatchFuzzyDash();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MatchFuzzyDash(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MatchFuzzyDash()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMatchFuzzyDash(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MatchFuzzyDash(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MatchFuzzyDash()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MatchFuzzyDash, get=getMatchFuzzyDash, set=setMatchFuzzyDash)

        VARIANT_BOOL getMatchFuzzyIterationMark();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MatchFuzzyIterationMark(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MatchFuzzyIterationMark()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMatchFuzzyIterationMark(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MatchFuzzyIterationMark(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MatchFuzzyIterationMark()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MatchFuzzyIterationMark, get=getMatchFuzzyIterationMark, set=setMatchFuzzyIterationMark)

        VARIANT_BOOL getMatchFuzzyKanji();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MatchFuzzyKanji(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MatchFuzzyKanji()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMatchFuzzyKanji(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MatchFuzzyKanji(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MatchFuzzyKanji()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MatchFuzzyKanji, get=getMatchFuzzyKanji, set=setMatchFuzzyKanji)

        VARIANT_BOOL getMatchFuzzyOldKana();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MatchFuzzyOldKana(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MatchFuzzyOldKana()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMatchFuzzyOldKana(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MatchFuzzyOldKana(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MatchFuzzyOldKana()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MatchFuzzyOldKana, get=getMatchFuzzyOldKana, set=setMatchFuzzyOldKana)

        VARIANT_BOOL getMatchFuzzyProlongedSoundMark();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MatchFuzzyProlongedSoundMark(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MatchFuzzyProlongedSoundMark()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMatchFuzzyProlongedSoundMark(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MatchFuzzyProlongedSoundMark(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MatchFuzzyProlongedSoundMark()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MatchFuzzyProlongedSoundMark, get=getMatchFuzzyProlongedSoundMark, set=setMatchFuzzyProlongedSoundMark)

        VARIANT_BOOL getMatchFuzzyDZ();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MatchFuzzyDZ(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MatchFuzzyDZ()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMatchFuzzyDZ(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MatchFuzzyDZ(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MatchFuzzyDZ()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MatchFuzzyDZ, get=getMatchFuzzyDZ, set=setMatchFuzzyDZ)

        VARIANT_BOOL getMatchFuzzyBV();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MatchFuzzyBV(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MatchFuzzyBV()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMatchFuzzyBV(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MatchFuzzyBV(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MatchFuzzyBV()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MatchFuzzyBV, get=getMatchFuzzyBV, set=setMatchFuzzyBV)

        VARIANT_BOOL getMatchFuzzyTC();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MatchFuzzyTC(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MatchFuzzyTC()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMatchFuzzyTC(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MatchFuzzyTC(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MatchFuzzyTC()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MatchFuzzyTC, get=getMatchFuzzyTC, set=setMatchFuzzyTC)

        VARIANT_BOOL getMatchFuzzyHF();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MatchFuzzyHF(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MatchFuzzyHF()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMatchFuzzyHF(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MatchFuzzyHF(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MatchFuzzyHF()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MatchFuzzyHF, get=getMatchFuzzyHF, set=setMatchFuzzyHF)

        VARIANT_BOOL getMatchFuzzyZJ();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MatchFuzzyZJ(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MatchFuzzyZJ()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMatchFuzzyZJ(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MatchFuzzyZJ(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MatchFuzzyZJ()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MatchFuzzyZJ, get=getMatchFuzzyZJ, set=setMatchFuzzyZJ)

        VARIANT_BOOL getMatchFuzzyAY();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MatchFuzzyAY(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MatchFuzzyAY()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMatchFuzzyAY(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MatchFuzzyAY(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MatchFuzzyAY()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MatchFuzzyAY, get=getMatchFuzzyAY, set=setMatchFuzzyAY)

        VARIANT_BOOL getMatchFuzzyKiKu();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MatchFuzzyKiKu(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MatchFuzzyKiKu()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMatchFuzzyKiKu(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MatchFuzzyKiKu(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MatchFuzzyKiKu()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MatchFuzzyKiKu, get=getMatchFuzzyKiKu, set=setMatchFuzzyKiKu)

        VARIANT_BOOL getMatchFuzzyPunctuation();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MatchFuzzyPunctuation(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MatchFuzzyPunctuation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMatchFuzzyPunctuation(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MatchFuzzyPunctuation(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MatchFuzzyPunctuation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MatchFuzzyPunctuation, get=getMatchFuzzyPunctuation, set=setMatchFuzzyPunctuation)

        VARIANT_BOOL getMatchFuzzySpace();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MatchFuzzySpace(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MatchFuzzySpace()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMatchFuzzySpace(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MatchFuzzySpace(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MatchFuzzySpace()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MatchFuzzySpace, get=getMatchFuzzySpace, set=setMatchFuzzySpace)

        VARIANT_BOOL getApplyFarEastFontsToAscii();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ApplyFarEastFontsToAscii(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ApplyFarEastFontsToAscii()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setApplyFarEastFontsToAscii(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ApplyFarEastFontsToAscii(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ApplyFarEastFontsToAscii()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ApplyFarEastFontsToAscii, get=getApplyFarEastFontsToAscii, set=setApplyFarEastFontsToAscii)

        VARIANT_BOOL getConvertHighAnsiToFarEast();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ConvertHighAnsiToFarEast(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ConvertHighAnsiToFarEast()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setConvertHighAnsiToFarEast(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ConvertHighAnsiToFarEast(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ConvertHighAnsiToFarEast()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ConvertHighAnsiToFarEast, get=getConvertHighAnsiToFarEast, set=setConvertHighAnsiToFarEast)

        VARIANT_BOOL getPrintOddPagesInAscendingOrder();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PrintOddPagesInAscendingOrder(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PrintOddPagesInAscendingOrder()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPrintOddPagesInAscendingOrder(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PrintOddPagesInAscendingOrder(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PrintOddPagesInAscendingOrder()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PrintOddPagesInAscendingOrder, get=getPrintOddPagesInAscendingOrder, set=setPrintOddPagesInAscendingOrder)

        VARIANT_BOOL getPrintEvenPagesInAscendingOrder();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PrintEvenPagesInAscendingOrder(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PrintEvenPagesInAscendingOrder()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPrintEvenPagesInAscendingOrder(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PrintEvenPagesInAscendingOrder(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PrintEvenPagesInAscendingOrder()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PrintEvenPagesInAscendingOrder, get=getPrintEvenPagesInAscendingOrder, set=setPrintEvenPagesInAscendingOrder)

        WdColorIndex getDefaultBorderColorIndex();
        %MethodCode
            wpsapi::WdColorIndex prop = (wpsapi::WdColorIndex)0;
            HRESULT hr = sipCpp->get_DefaultBorderColorIndex(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DefaultBorderColorIndex()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDefaultBorderColorIndex(WdColorIndex prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DefaultBorderColorIndex(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DefaultBorderColorIndex()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DefaultBorderColorIndex, get=getDefaultBorderColorIndex, set=setDefaultBorderColorIndex)

        VARIANT_BOOL getEnableMisusedWordsDictionary();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EnableMisusedWordsDictionary(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EnableMisusedWordsDictionary()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnableMisusedWordsDictionary(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EnableMisusedWordsDictionary(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EnableMisusedWordsDictionary()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EnableMisusedWordsDictionary, get=getEnableMisusedWordsDictionary, set=setEnableMisusedWordsDictionary)

        VARIANT_BOOL getAllowCombinedAuxiliaryForms();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AllowCombinedAuxiliaryForms(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AllowCombinedAuxiliaryForms()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAllowCombinedAuxiliaryForms(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AllowCombinedAuxiliaryForms(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AllowCombinedAuxiliaryForms()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AllowCombinedAuxiliaryForms, get=getAllowCombinedAuxiliaryForms, set=setAllowCombinedAuxiliaryForms)

        VARIANT_BOOL getHangulHanjaFastConversion();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HangulHanjaFastConversion(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HangulHanjaFastConversion()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHangulHanjaFastConversion(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HangulHanjaFastConversion(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HangulHanjaFastConversion()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HangulHanjaFastConversion, get=getHangulHanjaFastConversion, set=setHangulHanjaFastConversion)

        VARIANT_BOOL getCheckHangulEndings();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_CheckHangulEndings(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CheckHangulEndings()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCheckHangulEndings(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CheckHangulEndings(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CheckHangulEndings()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CheckHangulEndings, get=getCheckHangulEndings, set=setCheckHangulEndings)

        VARIANT_BOOL getEnableHangulHanjaRecentOrdering();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EnableHangulHanjaRecentOrdering(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EnableHangulHanjaRecentOrdering()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnableHangulHanjaRecentOrdering(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EnableHangulHanjaRecentOrdering(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EnableHangulHanjaRecentOrdering()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EnableHangulHanjaRecentOrdering, get=getEnableHangulHanjaRecentOrdering, set=setEnableHangulHanjaRecentOrdering)

        WdMultipleWordConversionsMode getMultipleWordConversionsMode();
        %MethodCode
            wpsapi::WdMultipleWordConversionsMode prop = (wpsapi::WdMultipleWordConversionsMode)0;
            HRESULT hr = sipCpp->get_MultipleWordConversionsMode(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MultipleWordConversionsMode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMultipleWordConversionsMode(WdMultipleWordConversionsMode prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MultipleWordConversionsMode(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MultipleWordConversionsMode()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MultipleWordConversionsMode, get=getMultipleWordConversionsMode, set=setMultipleWordConversionsMode)

        WdColor getDefaultBorderColor();
        %MethodCode
            wpsapi::WdColor prop = (wpsapi::WdColor)0;
            HRESULT hr = sipCpp->get_DefaultBorderColor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DefaultBorderColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDefaultBorderColor(WdColor prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DefaultBorderColor(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DefaultBorderColor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DefaultBorderColor, get=getDefaultBorderColor, set=setDefaultBorderColor)

        VARIANT_BOOL getAllowPixelUnits();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AllowPixelUnits(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AllowPixelUnits()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAllowPixelUnits(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AllowPixelUnits(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AllowPixelUnits()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AllowPixelUnits, get=getAllowPixelUnits, set=setAllowPixelUnits)

        VARIANT_BOOL getUseCharacterUnit();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_UseCharacterUnit(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UseCharacterUnit()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUseCharacterUnit(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_UseCharacterUnit(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_UseCharacterUnit()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=UseCharacterUnit, get=getUseCharacterUnit, set=setUseCharacterUnit)

        VARIANT_BOOL getAllowCompoundNounProcessing();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AllowCompoundNounProcessing(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AllowCompoundNounProcessing()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAllowCompoundNounProcessing(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AllowCompoundNounProcessing(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AllowCompoundNounProcessing()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AllowCompoundNounProcessing, get=getAllowCompoundNounProcessing, set=setAllowCompoundNounProcessing)

        VARIANT_BOOL getAutoKeyboardSwitching();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoKeyboardSwitching(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoKeyboardSwitching()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoKeyboardSwitching(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoKeyboardSwitching(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoKeyboardSwitching()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoKeyboardSwitching, get=getAutoKeyboardSwitching, set=setAutoKeyboardSwitching)

        WdDocumentViewDirection getDocumentViewDirection();
        %MethodCode
            wpsapi::WdDocumentViewDirection prop = (wpsapi::WdDocumentViewDirection)0;
            HRESULT hr = sipCpp->get_DocumentViewDirection(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DocumentViewDirection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDocumentViewDirection(WdDocumentViewDirection prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DocumentViewDirection(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DocumentViewDirection()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DocumentViewDirection, get=getDocumentViewDirection, set=setDocumentViewDirection)

        WdArabicNumeral getArabicNumeral();
        %MethodCode
            wpsapi::WdArabicNumeral prop = (wpsapi::WdArabicNumeral)0;
            HRESULT hr = sipCpp->get_ArabicNumeral(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ArabicNumeral()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setArabicNumeral(WdArabicNumeral prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ArabicNumeral(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ArabicNumeral()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ArabicNumeral, get=getArabicNumeral, set=setArabicNumeral)

        WdMonthNames getMonthNames();
        %MethodCode
            wpsapi::WdMonthNames prop = (wpsapi::WdMonthNames)0;
            HRESULT hr = sipCpp->get_MonthNames(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MonthNames()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMonthNames(WdMonthNames prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MonthNames(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MonthNames()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MonthNames, get=getMonthNames, set=setMonthNames)

        WdCursorMovement getCursorMovement();
        %MethodCode
            wpsapi::WdCursorMovement prop = (wpsapi::WdCursorMovement)0;
            HRESULT hr = sipCpp->get_CursorMovement(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CursorMovement()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCursorMovement(WdCursorMovement prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CursorMovement(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CursorMovement()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CursorMovement, get=getCursorMovement, set=setCursorMovement)

        WdVisualSelection getVisualSelection();
        %MethodCode
            wpsapi::WdVisualSelection prop = (wpsapi::WdVisualSelection)0;
            HRESULT hr = sipCpp->get_VisualSelection(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_VisualSelection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setVisualSelection(WdVisualSelection prop);
        %MethodCode
            HRESULT hr = sipCpp->put_VisualSelection(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_VisualSelection()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=VisualSelection, get=getVisualSelection, set=setVisualSelection)

        VARIANT_BOOL getShowDiacritics();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowDiacritics(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowDiacritics()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowDiacritics(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowDiacritics(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowDiacritics()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowDiacritics, get=getShowDiacritics, set=setShowDiacritics)

        VARIANT_BOOL getShowControlCharacters();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowControlCharacters(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowControlCharacters()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowControlCharacters(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowControlCharacters(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowControlCharacters()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowControlCharacters, get=getShowControlCharacters, set=setShowControlCharacters)

        VARIANT_BOOL getAddControlCharacters();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AddControlCharacters(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AddControlCharacters()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAddControlCharacters(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AddControlCharacters(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AddControlCharacters()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AddControlCharacters, get=getAddControlCharacters, set=setAddControlCharacters)

        VARIANT_BOOL getAddBiDirectionalMarksWhenSavingTextFile();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AddBiDirectionalMarksWhenSavingTextFile(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AddBiDirectionalMarksWhenSavingTextFile()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAddBiDirectionalMarksWhenSavingTextFile(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AddBiDirectionalMarksWhenSavingTextFile(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AddBiDirectionalMarksWhenSavingTextFile()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AddBiDirectionalMarksWhenSavingTextFile, get=getAddBiDirectionalMarksWhenSavingTextFile, set=setAddBiDirectionalMarksWhenSavingTextFile)

        VARIANT_BOOL getStrictInitialAlefHamza();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_StrictInitialAlefHamza(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_StrictInitialAlefHamza()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setStrictInitialAlefHamza(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_StrictInitialAlefHamza(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_StrictInitialAlefHamza()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=StrictInitialAlefHamza, get=getStrictInitialAlefHamza, set=setStrictInitialAlefHamza)

        VARIANT_BOOL getStrictFinalYaa();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_StrictFinalYaa(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_StrictFinalYaa()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setStrictFinalYaa(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_StrictFinalYaa(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_StrictFinalYaa()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=StrictFinalYaa, get=getStrictFinalYaa, set=setStrictFinalYaa)

        WdHebSpellStart getHebrewMode();
        %MethodCode
            wpsapi::WdHebSpellStart prop = (wpsapi::WdHebSpellStart)0;
            HRESULT hr = sipCpp->get_HebrewMode(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HebrewMode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHebrewMode(WdHebSpellStart prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HebrewMode(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HebrewMode()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HebrewMode, get=getHebrewMode, set=setHebrewMode)

        WdAraSpeller getArabicMode();
        %MethodCode
            wpsapi::WdAraSpeller prop = (wpsapi::WdAraSpeller)0;
            HRESULT hr = sipCpp->get_ArabicMode(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ArabicMode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setArabicMode(WdAraSpeller prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ArabicMode(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ArabicMode()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ArabicMode, get=getArabicMode, set=setArabicMode)

        VARIANT_BOOL getAllowClickAndTypeMouse();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AllowClickAndTypeMouse(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AllowClickAndTypeMouse()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAllowClickAndTypeMouse(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AllowClickAndTypeMouse(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AllowClickAndTypeMouse()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AllowClickAndTypeMouse, get=getAllowClickAndTypeMouse, set=setAllowClickAndTypeMouse)

        VARIANT_BOOL getUseGermanSpellingReform();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_UseGermanSpellingReform(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UseGermanSpellingReform()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUseGermanSpellingReform(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_UseGermanSpellingReform(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_UseGermanSpellingReform()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=UseGermanSpellingReform, get=getUseGermanSpellingReform, set=setUseGermanSpellingReform)

        WdHighAnsiText getInterpretHighAnsi();
        %MethodCode
            wpsapi::WdHighAnsiText prop = (wpsapi::WdHighAnsiText)0;
            HRESULT hr = sipCpp->get_InterpretHighAnsi(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InterpretHighAnsi()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setInterpretHighAnsi(WdHighAnsiText prop);
        %MethodCode
            HRESULT hr = sipCpp->put_InterpretHighAnsi(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_InterpretHighAnsi()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=InterpretHighAnsi, get=getInterpretHighAnsi, set=setInterpretHighAnsi)

        VARIANT_BOOL getAddHebDoubleQuote();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AddHebDoubleQuote(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AddHebDoubleQuote()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAddHebDoubleQuote(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AddHebDoubleQuote(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AddHebDoubleQuote()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AddHebDoubleQuote, get=getAddHebDoubleQuote, set=setAddHebDoubleQuote)

        VARIANT_BOOL getUseDiffDiacColor();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_UseDiffDiacColor(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UseDiffDiacColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUseDiffDiacColor(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_UseDiffDiacColor(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_UseDiffDiacColor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=UseDiffDiacColor, get=getUseDiffDiacColor, set=setUseDiffDiacColor)

        WdColor getDiacriticColorVal();
        %MethodCode
            wpsapi::WdColor prop = (wpsapi::WdColor)0;
            HRESULT hr = sipCpp->get_DiacriticColorVal(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DiacriticColorVal()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDiacriticColorVal(WdColor prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DiacriticColorVal(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DiacriticColorVal()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DiacriticColorVal, get=getDiacriticColorVal, set=setDiacriticColorVal)

        VARIANT_BOOL getOptimizeForWord97byDefault();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_OptimizeForWord97byDefault(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OptimizeForWord97byDefault()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOptimizeForWord97byDefault(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OptimizeForWord97byDefault(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OptimizeForWord97byDefault()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OptimizeForWord97byDefault, get=getOptimizeForWord97byDefault, set=setOptimizeForWord97byDefault)

        VARIANT_BOOL getLocalNetworkFile();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_LocalNetworkFile(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LocalNetworkFile()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLocalNetworkFile(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LocalNetworkFile(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LocalNetworkFile()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LocalNetworkFile, get=getLocalNetworkFile, set=setLocalNetworkFile)

        VARIANT_BOOL getTypeNReplace();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_TypeNReplace(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TypeNReplace()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTypeNReplace(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TypeNReplace(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TypeNReplace()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TypeNReplace, get=getTypeNReplace, set=setTypeNReplace)

        VARIANT_BOOL getSequenceCheck();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_SequenceCheck(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SequenceCheck()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSequenceCheck(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SequenceCheck(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SequenceCheck()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SequenceCheck, get=getSequenceCheck, set=setSequenceCheck)

        VARIANT_BOOL getBackgroundOpen();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_BackgroundOpen(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BackgroundOpen()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBackgroundOpen(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BackgroundOpen(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BackgroundOpen()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BackgroundOpen, get=getBackgroundOpen, set=setBackgroundOpen)

        VARIANT_BOOL getDisableFeaturesbyDefault();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisableFeaturesbyDefault(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisableFeaturesbyDefault()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisableFeaturesbyDefault(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisableFeaturesbyDefault(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisableFeaturesbyDefault()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisableFeaturesbyDefault, get=getDisableFeaturesbyDefault, set=setDisableFeaturesbyDefault)

        VARIANT_BOOL getPasteAdjustWordSpacing();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PasteAdjustWordSpacing(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PasteAdjustWordSpacing()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPasteAdjustWordSpacing(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PasteAdjustWordSpacing(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PasteAdjustWordSpacing()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PasteAdjustWordSpacing, get=getPasteAdjustWordSpacing, set=setPasteAdjustWordSpacing)

        VARIANT_BOOL getPasteAdjustParagraphSpacing();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PasteAdjustParagraphSpacing(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PasteAdjustParagraphSpacing()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPasteAdjustParagraphSpacing(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PasteAdjustParagraphSpacing(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PasteAdjustParagraphSpacing()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PasteAdjustParagraphSpacing, get=getPasteAdjustParagraphSpacing, set=setPasteAdjustParagraphSpacing)

        VARIANT_BOOL getPasteAdjustTableFormatting();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PasteAdjustTableFormatting(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PasteAdjustTableFormatting()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPasteAdjustTableFormatting(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PasteAdjustTableFormatting(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PasteAdjustTableFormatting()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PasteAdjustTableFormatting, get=getPasteAdjustTableFormatting, set=setPasteAdjustTableFormatting)

        VARIANT_BOOL getPasteSmartStyleBehavior();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PasteSmartStyleBehavior(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PasteSmartStyleBehavior()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPasteSmartStyleBehavior(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PasteSmartStyleBehavior(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PasteSmartStyleBehavior()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PasteSmartStyleBehavior, get=getPasteSmartStyleBehavior, set=setPasteSmartStyleBehavior)

        VARIANT_BOOL getPasteMergeFromPPT();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PasteMergeFromPPT(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PasteMergeFromPPT()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPasteMergeFromPPT(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PasteMergeFromPPT(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PasteMergeFromPPT()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PasteMergeFromPPT, get=getPasteMergeFromPPT, set=setPasteMergeFromPPT)

        VARIANT_BOOL getPasteMergeFromXL();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PasteMergeFromXL(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PasteMergeFromXL()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPasteMergeFromXL(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PasteMergeFromXL(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PasteMergeFromXL()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PasteMergeFromXL, get=getPasteMergeFromXL, set=setPasteMergeFromXL)

        VARIANT_BOOL getCtrlClickHyperlinkToOpen();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_CtrlClickHyperlinkToOpen(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CtrlClickHyperlinkToOpen()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCtrlClickHyperlinkToOpen(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CtrlClickHyperlinkToOpen(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CtrlClickHyperlinkToOpen()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CtrlClickHyperlinkToOpen, get=getCtrlClickHyperlinkToOpen, set=setCtrlClickHyperlinkToOpen)

        WdWrapTypeMerged getPictureWrapType();
        %MethodCode
            wpsapi::WdWrapTypeMerged prop = (wpsapi::WdWrapTypeMerged)0;
            HRESULT hr = sipCpp->get_PictureWrapType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PictureWrapType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPictureWrapType(WdWrapTypeMerged prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PictureWrapType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PictureWrapType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PictureWrapType, get=getPictureWrapType, set=setPictureWrapType)

        WdDisableFeaturesIntroducedAfter getDisableFeaturesIntroducedAfterbyDefault();
        %MethodCode
            wpsapi::WdDisableFeaturesIntroducedAfter prop = (wpsapi::WdDisableFeaturesIntroducedAfter)0;
            HRESULT hr = sipCpp->get_DisableFeaturesIntroducedAfterbyDefault(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisableFeaturesIntroducedAfterbyDefault()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisableFeaturesIntroducedAfterbyDefault(WdDisableFeaturesIntroducedAfter prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisableFeaturesIntroducedAfterbyDefault(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisableFeaturesIntroducedAfterbyDefault()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisableFeaturesIntroducedAfterbyDefault, get=getDisableFeaturesIntroducedAfterbyDefault, set=setDisableFeaturesIntroducedAfterbyDefault)

        VARIANT_BOOL getPasteSmartCutPaste();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PasteSmartCutPaste(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PasteSmartCutPaste()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPasteSmartCutPaste(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PasteSmartCutPaste(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PasteSmartCutPaste()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PasteSmartCutPaste, get=getPasteSmartCutPaste, set=setPasteSmartCutPaste)

        VARIANT_BOOL getDisplayPasteOptions();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayPasteOptions(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayPasteOptions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayPasteOptions(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayPasteOptions(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayPasteOptions()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayPasteOptions, get=getDisplayPasteOptions, set=setDisplayPasteOptions)

        VARIANT_BOOL getPromptUpdateStyle();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PromptUpdateStyle(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PromptUpdateStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPromptUpdateStyle(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PromptUpdateStyle(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PromptUpdateStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PromptUpdateStyle, get=getPromptUpdateStyle, set=setPromptUpdateStyle)

        BSTR getDefaultEPostageApp();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_DefaultEPostageApp(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DefaultEPostageApp()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDefaultEPostageApp(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DefaultEPostageApp(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DefaultEPostageApp()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DefaultEPostageApp, get=getDefaultEPostageApp, set=setDefaultEPostageApp)

        MsoEncoding getDefaultTextEncoding();
        %MethodCode
            wpsapi::MsoEncoding prop = (wpsapi::MsoEncoding)0;
            HRESULT hr = sipCpp->get_DefaultTextEncoding(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DefaultTextEncoding()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDefaultTextEncoding(MsoEncoding prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DefaultTextEncoding(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DefaultTextEncoding()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DefaultTextEncoding, get=getDefaultTextEncoding, set=setDefaultTextEncoding)

        VARIANT_BOOL getLabelSmartTags();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_LabelSmartTags(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LabelSmartTags()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLabelSmartTags(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LabelSmartTags(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LabelSmartTags()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LabelSmartTags, get=getLabelSmartTags, set=setLabelSmartTags)

        VARIANT_BOOL getDisplaySmartTagButtons();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplaySmartTagButtons(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplaySmartTagButtons()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplaySmartTagButtons(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplaySmartTagButtons(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplaySmartTagButtons()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplaySmartTagButtons, get=getDisplaySmartTagButtons, set=setDisplaySmartTagButtons)

        VARIANT_BOOL getWarnBeforeSavingPrintingSendingMarkup();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_WarnBeforeSavingPrintingSendingMarkup(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WarnBeforeSavingPrintingSendingMarkup()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWarnBeforeSavingPrintingSendingMarkup(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_WarnBeforeSavingPrintingSendingMarkup(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_WarnBeforeSavingPrintingSendingMarkup()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=WarnBeforeSavingPrintingSendingMarkup, get=getWarnBeforeSavingPrintingSendingMarkup, set=setWarnBeforeSavingPrintingSendingMarkup)

        VARIANT_BOOL getStoreRSIDOnSave();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_StoreRSIDOnSave(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_StoreRSIDOnSave()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setStoreRSIDOnSave(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_StoreRSIDOnSave(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_StoreRSIDOnSave()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=StoreRSIDOnSave, get=getStoreRSIDOnSave, set=setStoreRSIDOnSave)

        VARIANT_BOOL getShowFormatError();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowFormatError(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowFormatError()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowFormatError(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowFormatError(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowFormatError()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowFormatError, get=getShowFormatError, set=setShowFormatError)

        VARIANT_BOOL getFormatScanning();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_FormatScanning(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FormatScanning()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFormatScanning(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FormatScanning(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FormatScanning()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FormatScanning, get=getFormatScanning, set=setFormatScanning)

        VARIANT_BOOL getPasteMergeLists();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PasteMergeLists(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PasteMergeLists()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPasteMergeLists(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PasteMergeLists(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PasteMergeLists()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PasteMergeLists, get=getPasteMergeLists, set=setPasteMergeLists)

        VARIANT_BOOL getAutoCreateNewDrawings();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoCreateNewDrawings(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoCreateNewDrawings()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoCreateNewDrawings(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoCreateNewDrawings(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoCreateNewDrawings()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoCreateNewDrawings, get=getAutoCreateNewDrawings, set=setAutoCreateNewDrawings)

        VARIANT_BOOL getSmartParaSelection();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_SmartParaSelection(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SmartParaSelection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSmartParaSelection(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SmartParaSelection(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SmartParaSelection()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SmartParaSelection, get=getSmartParaSelection, set=setSmartParaSelection)

        WdRevisionsBalloonPrintOrientation getRevisionsBalloonPrintOrientation();
        %MethodCode
            wpsapi::WdRevisionsBalloonPrintOrientation prop = (wpsapi::WdRevisionsBalloonPrintOrientation)0;
            HRESULT hr = sipCpp->get_RevisionsBalloonPrintOrientation(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RevisionsBalloonPrintOrientation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRevisionsBalloonPrintOrientation(WdRevisionsBalloonPrintOrientation prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RevisionsBalloonPrintOrientation(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RevisionsBalloonPrintOrientation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RevisionsBalloonPrintOrientation, get=getRevisionsBalloonPrintOrientation, set=setRevisionsBalloonPrintOrientation)

        WdColorIndex getCommentsColor();
        %MethodCode
            wpsapi::WdColorIndex prop = (wpsapi::WdColorIndex)0;
            HRESULT hr = sipCpp->get_CommentsColor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CommentsColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCommentsColor(WdColorIndex prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CommentsColor(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CommentsColor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CommentsColor, get=getCommentsColor, set=setCommentsColor)

        VARIANT_BOOL getPrintXMLTag();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PrintXMLTag(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PrintXMLTag()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPrintXMLTag(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PrintXMLTag(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PrintXMLTag()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PrintXMLTag, get=getPrintXMLTag, set=setPrintXMLTag)

        VARIANT_BOOL getPrintBackgrounds();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PrintBackgrounds(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PrintBackgrounds()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPrintBackgrounds(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PrintBackgrounds(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PrintBackgrounds()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PrintBackgrounds, get=getPrintBackgrounds, set=setPrintBackgrounds)

        VARIANT_BOOL getAllowReadingMode();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AllowReadingMode(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AllowReadingMode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAllowReadingMode(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AllowReadingMode(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AllowReadingMode()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AllowReadingMode, get=getAllowReadingMode, set=setAllowReadingMode)

        VARIANT_BOOL getShowMarkupOpenSave();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowMarkupOpenSave(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowMarkupOpenSave()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowMarkupOpenSave(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowMarkupOpenSave(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowMarkupOpenSave()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowMarkupOpenSave, get=getShowMarkupOpenSave, set=setShowMarkupOpenSave)

        VARIANT_BOOL getSmartCursoring();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_SmartCursoring(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SmartCursoring()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSmartCursoring(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SmartCursoring(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SmartCursoring()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SmartCursoring, get=getSmartCursoring, set=setSmartCursoring)

        WdMoveToTextMark getMoveToTextMark();
        %MethodCode
            wpsapi::WdMoveToTextMark prop = (wpsapi::WdMoveToTextMark)0;
            HRESULT hr = sipCpp->get_MoveToTextMark(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MoveToTextMark()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMoveToTextMark(WdMoveToTextMark prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MoveToTextMark(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MoveToTextMark()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MoveToTextMark, get=getMoveToTextMark, set=setMoveToTextMark)

        WdMoveFromTextMark getMoveFromTextMark();
        %MethodCode
            wpsapi::WdMoveFromTextMark prop = (wpsapi::WdMoveFromTextMark)0;
            HRESULT hr = sipCpp->get_MoveFromTextMark(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MoveFromTextMark()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMoveFromTextMark(WdMoveFromTextMark prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MoveFromTextMark(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MoveFromTextMark()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MoveFromTextMark, get=getMoveFromTextMark, set=setMoveFromTextMark)

        BSTR getBibliographyStyle();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_BibliographyStyle(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BibliographyStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBibliographyStyle(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BibliographyStyle(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BibliographyStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BibliographyStyle, get=getBibliographyStyle, set=setBibliographyStyle)

        BSTR getBibliographySort();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_BibliographySort(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BibliographySort()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBibliographySort(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BibliographySort(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BibliographySort()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BibliographySort, get=getBibliographySort, set=setBibliographySort)

        WdCellColor getInsertedCellColor();
        %MethodCode
            wpsapi::WdCellColor prop = (wpsapi::WdCellColor)0;
            HRESULT hr = sipCpp->get_InsertedCellColor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InsertedCellColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setInsertedCellColor(WdCellColor prop);
        %MethodCode
            HRESULT hr = sipCpp->put_InsertedCellColor(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_InsertedCellColor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=InsertedCellColor, get=getInsertedCellColor, set=setInsertedCellColor)

        WdCellColor getDeletedCellColor();
        %MethodCode
            wpsapi::WdCellColor prop = (wpsapi::WdCellColor)0;
            HRESULT hr = sipCpp->get_DeletedCellColor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DeletedCellColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDeletedCellColor(WdCellColor prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DeletedCellColor(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DeletedCellColor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DeletedCellColor, get=getDeletedCellColor, set=setDeletedCellColor)

        WdCellColor getMergedCellColor();
        %MethodCode
            wpsapi::WdCellColor prop = (wpsapi::WdCellColor)0;
            HRESULT hr = sipCpp->get_MergedCellColor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MergedCellColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMergedCellColor(WdCellColor prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MergedCellColor(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MergedCellColor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MergedCellColor, get=getMergedCellColor, set=setMergedCellColor)

        WdCellColor getSplitCellColor();
        %MethodCode
            wpsapi::WdCellColor prop = (wpsapi::WdCellColor)0;
            HRESULT hr = sipCpp->get_SplitCellColor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SplitCellColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSplitCellColor(WdCellColor prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SplitCellColor(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SplitCellColor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SplitCellColor, get=getSplitCellColor, set=setSplitCellColor)

        VARIANT_BOOL getShowSelectionFloaties();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowSelectionFloaties(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowSelectionFloaties()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowSelectionFloaties(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowSelectionFloaties(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowSelectionFloaties()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowSelectionFloaties, get=getShowSelectionFloaties, set=setShowSelectionFloaties)

        VARIANT_BOOL getShowMenuFloaties();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowMenuFloaties(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowMenuFloaties()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowMenuFloaties(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowMenuFloaties(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowMenuFloaties()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowMenuFloaties, get=getShowMenuFloaties, set=setShowMenuFloaties)

        VARIANT_BOOL getShowDevTools();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowDevTools(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowDevTools()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowDevTools(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowDevTools(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowDevTools()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowDevTools, get=getShowDevTools, set=setShowDevTools)

        VARIANT_BOOL getEnableLivePreview();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EnableLivePreview(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EnableLivePreview()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnableLivePreview(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EnableLivePreview(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EnableLivePreview()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EnableLivePreview, get=getEnableLivePreview, set=setEnableLivePreview)

        VARIANT_BOOL getOMathAutoBuildUp();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_OMathAutoBuildUp(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OMathAutoBuildUp()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOMathAutoBuildUp(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OMathAutoBuildUp(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OMathAutoBuildUp()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OMathAutoBuildUp, get=getOMathAutoBuildUp, set=setOMathAutoBuildUp)

        VARIANT_BOOL getAlwaysUseClearType();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AlwaysUseClearType(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AlwaysUseClearType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAlwaysUseClearType(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AlwaysUseClearType(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AlwaysUseClearType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AlwaysUseClearType, get=getAlwaysUseClearType, set=setAlwaysUseClearType)

        WdPasteOptions getPasteFormatWithinDocument();
        %MethodCode
            wpsapi::WdPasteOptions prop = (wpsapi::WdPasteOptions)0;
            HRESULT hr = sipCpp->get_PasteFormatWithinDocument(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PasteFormatWithinDocument()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPasteFormatWithinDocument(WdPasteOptions prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PasteFormatWithinDocument(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PasteFormatWithinDocument()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PasteFormatWithinDocument, get=getPasteFormatWithinDocument, set=setPasteFormatWithinDocument)

        WdPasteOptions getPasteFormatBetweenDocuments();
        %MethodCode
            wpsapi::WdPasteOptions prop = (wpsapi::WdPasteOptions)0;
            HRESULT hr = sipCpp->get_PasteFormatBetweenDocuments(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PasteFormatBetweenDocuments()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPasteFormatBetweenDocuments(WdPasteOptions prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PasteFormatBetweenDocuments(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PasteFormatBetweenDocuments()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PasteFormatBetweenDocuments, get=getPasteFormatBetweenDocuments, set=setPasteFormatBetweenDocuments)

        WdPasteOptions getPasteFormatBetweenStyledDocuments();
        %MethodCode
            wpsapi::WdPasteOptions prop = (wpsapi::WdPasteOptions)0;
            HRESULT hr = sipCpp->get_PasteFormatBetweenStyledDocuments(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PasteFormatBetweenStyledDocuments()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPasteFormatBetweenStyledDocuments(WdPasteOptions prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PasteFormatBetweenStyledDocuments(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PasteFormatBetweenStyledDocuments()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PasteFormatBetweenStyledDocuments, get=getPasteFormatBetweenStyledDocuments, set=setPasteFormatBetweenStyledDocuments)

        WdPasteOptions getPasteFormatFromExternalSource();
        %MethodCode
            wpsapi::WdPasteOptions prop = (wpsapi::WdPasteOptions)0;
            HRESULT hr = sipCpp->get_PasteFormatFromExternalSource(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PasteFormatFromExternalSource()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPasteFormatFromExternalSource(WdPasteOptions prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PasteFormatFromExternalSource(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PasteFormatFromExternalSource()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PasteFormatFromExternalSource, get=getPasteFormatFromExternalSource, set=setPasteFormatFromExternalSource)

        VARIANT_BOOL getPasteOptionKeepBulletsAndNumbers();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PasteOptionKeepBulletsAndNumbers(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PasteOptionKeepBulletsAndNumbers()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPasteOptionKeepBulletsAndNumbers(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PasteOptionKeepBulletsAndNumbers(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PasteOptionKeepBulletsAndNumbers()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PasteOptionKeepBulletsAndNumbers, get=getPasteOptionKeepBulletsAndNumbers, set=setPasteOptionKeepBulletsAndNumbers)

        VARIANT_BOOL getINSKeyForOvertype();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_INSKeyForOvertype(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_INSKeyForOvertype()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setINSKeyForOvertype(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_INSKeyForOvertype(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_INSKeyForOvertype()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=INSKeyForOvertype, get=getINSKeyForOvertype, set=setINSKeyForOvertype)

        VARIANT_BOOL getRepeatWord();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_RepeatWord(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RepeatWord()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRepeatWord(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RepeatWord(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RepeatWord()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RepeatWord, get=getRepeatWord, set=setRepeatWord)

        WdFrenchSpeller getFrenchReform();
        %MethodCode
            wpsapi::WdFrenchSpeller prop = (wpsapi::WdFrenchSpeller)0;
            HRESULT hr = sipCpp->get_FrenchReform(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FrenchReform()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFrenchReform(WdFrenchSpeller prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FrenchReform(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FrenchReform()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FrenchReform, get=getFrenchReform, set=setFrenchReform)

        VARIANT_BOOL getContextualSpeller();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ContextualSpeller(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ContextualSpeller()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setContextualSpeller(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ContextualSpeller(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ContextualSpeller()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ContextualSpeller, get=getContextualSpeller, set=setContextualSpeller)

        WdColorIndex getMoveToTextColor();
        %MethodCode
            wpsapi::WdColorIndex prop = (wpsapi::WdColorIndex)0;
            HRESULT hr = sipCpp->get_MoveToTextColor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MoveToTextColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMoveToTextColor(WdColorIndex prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MoveToTextColor(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MoveToTextColor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MoveToTextColor, get=getMoveToTextColor, set=setMoveToTextColor)

        WdColorIndex getMoveFromTextColor();
        %MethodCode
            wpsapi::WdColorIndex prop = (wpsapi::WdColorIndex)0;
            HRESULT hr = sipCpp->get_MoveFromTextColor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MoveFromTextColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMoveFromTextColor(WdColorIndex prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MoveFromTextColor(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MoveFromTextColor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MoveFromTextColor, get=getMoveFromTextColor, set=setMoveFromTextColor)

        VARIANT_BOOL getOMathCopyLF();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_OMathCopyLF(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OMathCopyLF()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOMathCopyLF(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OMathCopyLF(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OMathCopyLF()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OMathCopyLF, get=getOMathCopyLF, set=setOMathCopyLF)

        VARIANT_BOOL getUseNormalStyleForList();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_UseNormalStyleForList(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UseNormalStyleForList()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUseNormalStyleForList(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_UseNormalStyleForList(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_UseNormalStyleForList()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=UseNormalStyleForList, get=getUseNormalStyleForList, set=setUseNormalStyleForList)

        VARIANT_BOOL getAllowOpenInDraftView();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AllowOpenInDraftView(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AllowOpenInDraftView()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAllowOpenInDraftView(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AllowOpenInDraftView(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AllowOpenInDraftView()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AllowOpenInDraftView, get=getAllowOpenInDraftView, set=setAllowOpenInDraftView)

        VARIANT_BOOL getEnableLegacyIMEMode();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EnableLegacyIMEMode(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EnableLegacyIMEMode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnableLegacyIMEMode(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EnableLegacyIMEMode(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EnableLegacyIMEMode()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EnableLegacyIMEMode, get=getEnableLegacyIMEMode, set=setEnableLegacyIMEMode)

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

        VARIANT_BOOL getPrecisePositioning();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PrecisePositioning(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PrecisePositioning()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPrecisePositioning(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PrecisePositioning(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PrecisePositioning()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PrecisePositioning, get=getPrecisePositioning, set=setPrecisePositioning)

        WdUpdateStyleListBehavior getUpdateStyleListBehavior();
        %MethodCode
            wpsapi::WdUpdateStyleListBehavior prop = (wpsapi::WdUpdateStyleListBehavior)0;
            HRESULT hr = sipCpp->get_UpdateStyleListBehavior(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UpdateStyleListBehavior()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUpdateStyleListBehavior(WdUpdateStyleListBehavior prop);
        %MethodCode
            HRESULT hr = sipCpp->put_UpdateStyleListBehavior(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_UpdateStyleListBehavior()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=UpdateStyleListBehavior, get=getUpdateStyleListBehavior, set=setUpdateStyleListBehavior)

        VARIANT_BOOL getStrictTaaMarboota();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_StrictTaaMarboota(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_StrictTaaMarboota()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setStrictTaaMarboota(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_StrictTaaMarboota(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_StrictTaaMarboota()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=StrictTaaMarboota, get=getStrictTaaMarboota, set=setStrictTaaMarboota)

        VARIANT_BOOL getStrictRussianE();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_StrictRussianE(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_StrictRussianE()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setStrictRussianE(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_StrictRussianE(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_StrictRussianE()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=StrictRussianE, get=getStrictRussianE, set=setStrictRussianE)

        WdSpanishSpeller getSpanishMode();
        %MethodCode
            wpsapi::WdSpanishSpeller prop = (wpsapi::WdSpanishSpeller)0;
            HRESULT hr = sipCpp->get_SpanishMode(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SpanishMode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSpanishMode(WdSpanishSpeller prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SpanishMode(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SpanishMode()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SpanishMode, get=getSpanishMode, set=setSpanishMode)

        WdPortugueseReform getPortugalReform();
        %MethodCode
            wpsapi::WdPortugueseReform prop = (wpsapi::WdPortugueseReform)0;
            HRESULT hr = sipCpp->get_PortugalReform(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PortugalReform()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPortugalReform(WdPortugueseReform prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PortugalReform(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PortugalReform()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PortugalReform, get=getPortugalReform, set=setPortugalReform)

        WdPortugueseReform getBrazilReform();
        %MethodCode
            wpsapi::WdPortugueseReform prop = (wpsapi::WdPortugueseReform)0;
            HRESULT hr = sipCpp->get_BrazilReform(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BrazilReform()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBrazilReform(WdPortugueseReform prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BrazilReform(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BrazilReform()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BrazilReform, get=getBrazilReform, set=setBrazilReform)

        VARIANT_BOOL getUpdateFieldsWithTrackedChangesAtPrint();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_UpdateFieldsWithTrackedChangesAtPrint(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UpdateFieldsWithTrackedChangesAtPrint()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUpdateFieldsWithTrackedChangesAtPrint(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_UpdateFieldsWithTrackedChangesAtPrint(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_UpdateFieldsWithTrackedChangesAtPrint()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=UpdateFieldsWithTrackedChangesAtPrint, get=getUpdateFieldsWithTrackedChangesAtPrint, set=setUpdateFieldsWithTrackedChangesAtPrint)

        VARIANT_BOOL getDisplayAlignmentGuides();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayAlignmentGuides(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayAlignmentGuides()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayAlignmentGuides(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayAlignmentGuides(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayAlignmentGuides()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayAlignmentGuides, get=getDisplayAlignmentGuides, set=setDisplayAlignmentGuides)

        VARIANT_BOOL getPageAlignmentGuides();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PageAlignmentGuides(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PageAlignmentGuides()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPageAlignmentGuides(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PageAlignmentGuides(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PageAlignmentGuides()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PageAlignmentGuides, get=getPageAlignmentGuides, set=setPageAlignmentGuides)

        VARIANT_BOOL getMarginAlignmentGuides();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MarginAlignmentGuides(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MarginAlignmentGuides()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMarginAlignmentGuides(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MarginAlignmentGuides(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MarginAlignmentGuides()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MarginAlignmentGuides, get=getMarginAlignmentGuides, set=setMarginAlignmentGuides)

        VARIANT_BOOL getParagraphAlignmentGuides();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ParagraphAlignmentGuides(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ParagraphAlignmentGuides()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setParagraphAlignmentGuides(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ParagraphAlignmentGuides(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ParagraphAlignmentGuides()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ParagraphAlignmentGuides, get=getParagraphAlignmentGuides, set=setParagraphAlignmentGuides)

        VARIANT_BOOL getEnableLiveDrag();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EnableLiveDrag(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EnableLiveDrag()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnableLiveDrag(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EnableLiveDrag(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EnableLiveDrag()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EnableLiveDrag, get=getEnableLiveDrag, set=setEnableLiveDrag)

        VARIANT_BOOL getUseSubPixelPositioning();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_UseSubPixelPositioning(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UseSubPixelPositioning()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUseSubPixelPositioning(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_UseSubPixelPositioning(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_UseSubPixelPositioning()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=UseSubPixelPositioning, get=getUseSubPixelPositioning, set=setUseSubPixelPositioning)

        VARIANT_BOOL getAlertIfNotDefault();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AlertIfNotDefault(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AlertIfNotDefault()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAlertIfNotDefault(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AlertIfNotDefault(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AlertIfNotDefault()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AlertIfNotDefault, get=getAlertIfNotDefault, set=setAlertIfNotDefault)

        VARIANT_BOOL getEnableProofingToolsAdvertisement();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EnableProofingToolsAdvertisement(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EnableProofingToolsAdvertisement()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnableProofingToolsAdvertisement(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EnableProofingToolsAdvertisement(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EnableProofingToolsAdvertisement()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EnableProofingToolsAdvertisement, get=getEnableProofingToolsAdvertisement, set=setEnableProofingToolsAdvertisement)

        VARIANT_BOOL getPreferCloudSaveLocations();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PreferCloudSaveLocations(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PreferCloudSaveLocations()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPreferCloudSaveLocations(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PreferCloudSaveLocations(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PreferCloudSaveLocations()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PreferCloudSaveLocations, get=getPreferCloudSaveLocations, set=setPreferCloudSaveLocations)

        VARIANT_BOOL getSkyDriveSignInOption();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_SkyDriveSignInOption(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SkyDriveSignInOption()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSkyDriveSignInOption(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SkyDriveSignInOption(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SkyDriveSignInOption()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SkyDriveSignInOption, get=getSkyDriveSignInOption, set=setSkyDriveSignInOption)

        VARIANT_BOOL getExpandHeadingsOnOpen();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ExpandHeadingsOnOpen(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ExpandHeadingsOnOpen()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setExpandHeadingsOnOpen(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ExpandHeadingsOnOpen(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ExpandHeadingsOnOpen()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ExpandHeadingsOnOpen, get=getExpandHeadingsOnOpen, set=setExpandHeadingsOnOpen)

        VARIANT_BOOL getUseLocalUserInfo();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_UseLocalUserInfo(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UseLocalUserInfo()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUseLocalUserInfo(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_UseLocalUserInfo(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_UseLocalUserInfo()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=UseLocalUserInfo, get=getUseLocalUserInfo, set=setUseLocalUserInfo)
    };
};
