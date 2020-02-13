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
    struct View : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Type(
            WdViewType *prop /Out/) = 0;

        virtual HRESULT put_Type(
            WdViewType prop) = 0;

        virtual HRESULT get_FullScreen(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_FullScreen(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Draft(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Draft(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowAll(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowAll(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowFieldCodes(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowFieldCodes(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MailMergeDataView(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MailMergeDataView(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Magnifier(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Magnifier(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowFirstLineOnly(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowFirstLineOnly(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowFormat(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowFormat(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Zoom(
            Zoom **prop /Out/) = 0;

        virtual HRESULT get_ShowObjectAnchors(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowObjectAnchors(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowTextBoundaries(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowTextBoundaries(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowHighlight(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowHighlight(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowDrawings(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowDrawings(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowTabs(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowTabs(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowSpaces(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowSpaces(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowParagraphs(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowParagraphs(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowHyphens(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowHyphens(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowHiddenText(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowHiddenText(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_WrapToWindow(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_WrapToWindow(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowPicturePlaceHolders(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowPicturePlaceHolders(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowBookmarks(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowBookmarks(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_FieldShading(
            WdFieldShading *prop /Out/) = 0;

        virtual HRESULT put_FieldShading(
            WdFieldShading prop) = 0;

        virtual HRESULT get_ShowAnimation(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowAnimation(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_TableGridlines(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_TableGridlines(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_EnlargeFontsLessThan(
            long *prop /Out/) = 0;

        virtual HRESULT put_EnlargeFontsLessThan(
            long prop) = 0;

        virtual HRESULT get_ShowMainTextLayer(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowMainTextLayer(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SeekView(
            WdSeekView *prop /Out/) = 0;

        virtual HRESULT put_SeekView(
            WdSeekView prop) = 0;

        virtual HRESULT get_SplitSpecial(
            WdSpecialPane *prop /Out/) = 0;

        virtual HRESULT put_SplitSpecial(
            WdSpecialPane prop) = 0;

        virtual HRESULT get_BrowseToWindow(
            long *prop /Out/) = 0;

        virtual HRESULT put_BrowseToWindow(
            long prop) = 0;

        virtual HRESULT get_ShowOptionalBreaks(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowOptionalBreaks(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT CollapseOutline(
            VARIANT *Range = argMissing()) = 0;

        virtual HRESULT ExpandOutline(
            VARIANT *Range = argMissing()) = 0;

        virtual HRESULT ShowAllHeadings() = 0;

        virtual HRESULT ShowHeading(
            long Level) = 0;

        virtual HRESULT PreviousHeaderFooter() = 0;

        virtual HRESULT NextHeaderFooter() = 0;

        virtual HRESULT get_DisplayPageBoundaries(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DisplayPageBoundaries(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_DisplaySmartTags(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DisplaySmartTags(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowRevisionsAndComments(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowRevisionsAndComments(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowComments(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowComments(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowInsertionsAndDeletions(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowInsertionsAndDeletions(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowFormatChanges(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowFormatChanges(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_RevisionsView(
            WdRevisionsView *prop /Out/) = 0;

        virtual HRESULT put_RevisionsView(
            WdRevisionsView prop) = 0;

        virtual HRESULT get_RevisionsMode(
            WdRevisionsMode *prop /Out/) = 0;

        virtual HRESULT put_RevisionsMode(
            WdRevisionsMode prop) = 0;

        virtual HRESULT get_RevisionsBalloonWidth(
            single *prop /Out/) = 0;

        virtual HRESULT put_RevisionsBalloonWidth(
            single prop) = 0;

        virtual HRESULT get_RevisionsBalloonWidthType(
            WdRevisionsBalloonWidthType *prop /Out/) = 0;

        virtual HRESULT put_RevisionsBalloonWidthType(
            WdRevisionsBalloonWidthType prop) = 0;

        virtual HRESULT get_RevisionsBalloonSide(
            WdRevisionsBalloonMargin *prop /Out/) = 0;

        virtual HRESULT put_RevisionsBalloonSide(
            WdRevisionsBalloonMargin prop) = 0;

        virtual HRESULT get_Reviewers(
            Reviewers **prop /Out/) = 0;

        virtual HRESULT get_RevisionsBalloonShowConnectingLines(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_RevisionsBalloonShowConnectingLines(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ReadingLayout(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ReadingLayout(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowXMLMarkup(
            long *prop /Out/) = 0;

        virtual HRESULT put_ShowXMLMarkup(
            long prop) = 0;

        virtual HRESULT get_ShadeEditableRanges(
            long *prop /Out/) = 0;

        virtual HRESULT put_ShadeEditableRanges(
            long prop) = 0;

        virtual HRESULT get_ShowInkAnnotations(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowInkAnnotations(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_DisplayBackgrounds(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DisplayBackgrounds(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ReadingLayoutActualView(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ReadingLayoutActualView(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ReadingLayoutAllowMultiplePages(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ReadingLayoutAllowMultiplePages(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ReadingLayoutAllowEditing(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ReadingLayoutAllowEditing(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ReadingLayoutTruncateMargins(
            WdReadingLayoutMargin *prop /Out/) = 0;

        virtual HRESULT put_ReadingLayoutTruncateMargins(
            WdReadingLayoutMargin prop) = 0;

        virtual HRESULT get_ShowMarkupAreaHighlight(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowMarkupAreaHighlight(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Panning(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Panning(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowCropMarks(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowCropMarks(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_MarkupMode(
            WdRevisionsMode *prop /Out/) = 0;

        virtual HRESULT put_MarkupMode(
            WdRevisionsMode prop) = 0;

        virtual HRESULT get_ConflictMode(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ConflictMode(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowOtherAuthors(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowOtherAuthors(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT ExpandAllHeadings() = 0;

        virtual HRESULT CollapseAllHeadings() = 0;

        virtual HRESULT get_RevisionsFilter(
            RevisionsFilter **prop /Out/) = 0;

        virtual HRESULT get_PageColor(
            WdPageColor *prop /Out/) = 0;

        virtual HRESULT put_PageColor(
            WdPageColor prop) = 0;

        virtual HRESULT get_ColumnWidth(
            WdColumnWidth *prop /Out/) = 0;

        virtual HRESULT put_ColumnWidth(
            WdColumnWidth prop) = 0;

    };
};
