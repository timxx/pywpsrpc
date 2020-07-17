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

        WdViewType getType();
        %MethodCode
            wpsapi::WdViewType prop = (wpsapi::WdViewType)0;
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

        PyObject* setType(WdViewType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Type(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Type()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Type, get=getType, set=setType)

        VARIANT_BOOL getFullScreen();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_FullScreen(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FullScreen()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFullScreen(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FullScreen(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FullScreen()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FullScreen, get=getFullScreen, set=setFullScreen)

        VARIANT_BOOL getDraft();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Draft(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Draft()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDraft(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Draft(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Draft()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Draft, get=getDraft, set=setDraft)

        VARIANT_BOOL getShowAll();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowAll(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowAll()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowAll(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowAll(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowAll()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowAll, get=getShowAll, set=setShowAll)

        VARIANT_BOOL getShowFieldCodes();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowFieldCodes(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowFieldCodes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowFieldCodes(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowFieldCodes(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowFieldCodes()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowFieldCodes, get=getShowFieldCodes, set=setShowFieldCodes)

        VARIANT_BOOL getMailMergeDataView();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MailMergeDataView(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MailMergeDataView()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMailMergeDataView(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MailMergeDataView(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MailMergeDataView()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MailMergeDataView, get=getMailMergeDataView, set=setMailMergeDataView)

        VARIANT_BOOL getMagnifier();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Magnifier(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Magnifier()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMagnifier(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Magnifier(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Magnifier()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Magnifier, get=getMagnifier, set=setMagnifier)

        VARIANT_BOOL getShowFirstLineOnly();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowFirstLineOnly(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowFirstLineOnly()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowFirstLineOnly(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowFirstLineOnly(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowFirstLineOnly()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowFirstLineOnly, get=getShowFirstLineOnly, set=setShowFirstLineOnly)

        VARIANT_BOOL getShowFormat();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowFormat(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowFormat(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowFormat(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowFormat()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowFormat, get=getShowFormat, set=setShowFormat)

        Zoom* getZoom();
        %MethodCode
            wpsapi::Zoom *prop = nullptr;
            HRESULT hr = sipCpp->get_Zoom(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Zoom()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Zoom, get=getZoom)

        VARIANT_BOOL getShowObjectAnchors();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowObjectAnchors(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowObjectAnchors()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowObjectAnchors(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowObjectAnchors(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowObjectAnchors()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowObjectAnchors, get=getShowObjectAnchors, set=setShowObjectAnchors)

        VARIANT_BOOL getShowTextBoundaries();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowTextBoundaries(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowTextBoundaries()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowTextBoundaries(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowTextBoundaries(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowTextBoundaries()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowTextBoundaries, get=getShowTextBoundaries, set=setShowTextBoundaries)

        VARIANT_BOOL getShowHighlight();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowHighlight(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowHighlight()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowHighlight(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowHighlight(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowHighlight()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowHighlight, get=getShowHighlight, set=setShowHighlight)

        VARIANT_BOOL getShowDrawings();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowDrawings(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowDrawings()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowDrawings(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowDrawings(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowDrawings()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowDrawings, get=getShowDrawings, set=setShowDrawings)

        VARIANT_BOOL getShowTabs();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowTabs(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowTabs()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowTabs(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowTabs(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowTabs()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowTabs, get=getShowTabs, set=setShowTabs)

        VARIANT_BOOL getShowSpaces();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowSpaces(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowSpaces()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowSpaces(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowSpaces(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowSpaces()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowSpaces, get=getShowSpaces, set=setShowSpaces)

        VARIANT_BOOL getShowParagraphs();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowParagraphs(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowParagraphs()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowParagraphs(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowParagraphs(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowParagraphs()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowParagraphs, get=getShowParagraphs, set=setShowParagraphs)

        VARIANT_BOOL getShowHyphens();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowHyphens(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowHyphens()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowHyphens(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowHyphens(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowHyphens()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowHyphens, get=getShowHyphens, set=setShowHyphens)

        VARIANT_BOOL getShowHiddenText();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowHiddenText(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowHiddenText()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowHiddenText(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowHiddenText(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowHiddenText()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowHiddenText, get=getShowHiddenText, set=setShowHiddenText)

        VARIANT_BOOL getWrapToWindow();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_WrapToWindow(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WrapToWindow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWrapToWindow(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_WrapToWindow(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_WrapToWindow()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=WrapToWindow, get=getWrapToWindow, set=setWrapToWindow)

        VARIANT_BOOL getShowPicturePlaceHolders();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowPicturePlaceHolders(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowPicturePlaceHolders()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowPicturePlaceHolders(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowPicturePlaceHolders(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowPicturePlaceHolders()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowPicturePlaceHolders, get=getShowPicturePlaceHolders, set=setShowPicturePlaceHolders)

        VARIANT_BOOL getShowBookmarks();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowBookmarks(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowBookmarks()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowBookmarks(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowBookmarks(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowBookmarks()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowBookmarks, get=getShowBookmarks, set=setShowBookmarks)

        WdFieldShading getFieldShading();
        %MethodCode
            wpsapi::WdFieldShading prop = (wpsapi::WdFieldShading)0;
            HRESULT hr = sipCpp->get_FieldShading(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FieldShading()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFieldShading(WdFieldShading prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FieldShading(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FieldShading()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FieldShading, get=getFieldShading, set=setFieldShading)

        VARIANT_BOOL getShowAnimation();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowAnimation(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowAnimation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowAnimation(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowAnimation(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowAnimation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowAnimation, get=getShowAnimation, set=setShowAnimation)

        VARIANT_BOOL getTableGridlines();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_TableGridlines(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TableGridlines()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTableGridlines(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TableGridlines(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TableGridlines()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TableGridlines, get=getTableGridlines, set=setTableGridlines)

        long getEnlargeFontsLessThan();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_EnlargeFontsLessThan(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EnlargeFontsLessThan()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnlargeFontsLessThan(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EnlargeFontsLessThan(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EnlargeFontsLessThan()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EnlargeFontsLessThan, get=getEnlargeFontsLessThan, set=setEnlargeFontsLessThan)

        VARIANT_BOOL getShowMainTextLayer();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowMainTextLayer(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowMainTextLayer()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowMainTextLayer(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowMainTextLayer(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowMainTextLayer()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowMainTextLayer, get=getShowMainTextLayer, set=setShowMainTextLayer)

        WdSeekView getSeekView();
        %MethodCode
            wpsapi::WdSeekView prop = (wpsapi::WdSeekView)0;
            HRESULT hr = sipCpp->get_SeekView(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SeekView()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSeekView(WdSeekView prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SeekView(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SeekView()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SeekView, get=getSeekView, set=setSeekView)

        WdSpecialPane getSplitSpecial();
        %MethodCode
            wpsapi::WdSpecialPane prop = (wpsapi::WdSpecialPane)0;
            HRESULT hr = sipCpp->get_SplitSpecial(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SplitSpecial()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSplitSpecial(WdSpecialPane prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SplitSpecial(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SplitSpecial()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SplitSpecial, get=getSplitSpecial, set=setSplitSpecial)

        long getBrowseToWindow();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_BrowseToWindow(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BrowseToWindow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBrowseToWindow(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BrowseToWindow(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BrowseToWindow()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BrowseToWindow, get=getBrowseToWindow, set=setBrowseToWindow)

        VARIANT_BOOL getShowOptionalBreaks();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowOptionalBreaks(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowOptionalBreaks()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowOptionalBreaks(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowOptionalBreaks(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowOptionalBreaks()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowOptionalBreaks, get=getShowOptionalBreaks, set=setShowOptionalBreaks)

        VARIANT_BOOL getDisplayPageBoundaries();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayPageBoundaries(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayPageBoundaries()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayPageBoundaries(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayPageBoundaries(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayPageBoundaries()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayPageBoundaries, get=getDisplayPageBoundaries, set=setDisplayPageBoundaries)

        VARIANT_BOOL getDisplaySmartTags();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplaySmartTags(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplaySmartTags()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplaySmartTags(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplaySmartTags(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplaySmartTags()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplaySmartTags, get=getDisplaySmartTags, set=setDisplaySmartTags)

        VARIANT_BOOL getShowRevisionsAndComments();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowRevisionsAndComments(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowRevisionsAndComments()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowRevisionsAndComments(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowRevisionsAndComments(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowRevisionsAndComments()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowRevisionsAndComments, get=getShowRevisionsAndComments, set=setShowRevisionsAndComments)

        VARIANT_BOOL getShowComments();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowComments(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowComments()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowComments(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowComments(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowComments()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowComments, get=getShowComments, set=setShowComments)

        VARIANT_BOOL getShowInsertionsAndDeletions();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowInsertionsAndDeletions(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowInsertionsAndDeletions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowInsertionsAndDeletions(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowInsertionsAndDeletions(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowInsertionsAndDeletions()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowInsertionsAndDeletions, get=getShowInsertionsAndDeletions, set=setShowInsertionsAndDeletions)

        VARIANT_BOOL getShowFormatChanges();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowFormatChanges(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowFormatChanges()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowFormatChanges(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowFormatChanges(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowFormatChanges()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowFormatChanges, get=getShowFormatChanges, set=setShowFormatChanges)

        WdRevisionsView getRevisionsView();
        %MethodCode
            wpsapi::WdRevisionsView prop = (wpsapi::WdRevisionsView)0;
            HRESULT hr = sipCpp->get_RevisionsView(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RevisionsView()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRevisionsView(WdRevisionsView prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RevisionsView(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RevisionsView()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RevisionsView, get=getRevisionsView, set=setRevisionsView)

        WdRevisionsMode getRevisionsMode();
        %MethodCode
            wpsapi::WdRevisionsMode prop = (wpsapi::WdRevisionsMode)0;
            HRESULT hr = sipCpp->get_RevisionsMode(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RevisionsMode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRevisionsMode(WdRevisionsMode prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RevisionsMode(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RevisionsMode()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RevisionsMode, get=getRevisionsMode, set=setRevisionsMode)

        single getRevisionsBalloonWidth();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_RevisionsBalloonWidth(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RevisionsBalloonWidth()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRevisionsBalloonWidth(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RevisionsBalloonWidth(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RevisionsBalloonWidth()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RevisionsBalloonWidth, get=getRevisionsBalloonWidth, set=setRevisionsBalloonWidth)

        WdRevisionsBalloonWidthType getRevisionsBalloonWidthType();
        %MethodCode
            wpsapi::WdRevisionsBalloonWidthType prop = (wpsapi::WdRevisionsBalloonWidthType)0;
            HRESULT hr = sipCpp->get_RevisionsBalloonWidthType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RevisionsBalloonWidthType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRevisionsBalloonWidthType(WdRevisionsBalloonWidthType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RevisionsBalloonWidthType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RevisionsBalloonWidthType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RevisionsBalloonWidthType, get=getRevisionsBalloonWidthType, set=setRevisionsBalloonWidthType)

        WdRevisionsBalloonMargin getRevisionsBalloonSide();
        %MethodCode
            wpsapi::WdRevisionsBalloonMargin prop = (wpsapi::WdRevisionsBalloonMargin)0;
            HRESULT hr = sipCpp->get_RevisionsBalloonSide(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RevisionsBalloonSide()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRevisionsBalloonSide(WdRevisionsBalloonMargin prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RevisionsBalloonSide(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RevisionsBalloonSide()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RevisionsBalloonSide, get=getRevisionsBalloonSide, set=setRevisionsBalloonSide)

        Reviewers* getReviewers();
        %MethodCode
            wpsapi::Reviewers *prop = nullptr;
            HRESULT hr = sipCpp->get_Reviewers(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Reviewers()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Reviewers, get=getReviewers)

        VARIANT_BOOL getRevisionsBalloonShowConnectingLines();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_RevisionsBalloonShowConnectingLines(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RevisionsBalloonShowConnectingLines()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRevisionsBalloonShowConnectingLines(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RevisionsBalloonShowConnectingLines(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RevisionsBalloonShowConnectingLines()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RevisionsBalloonShowConnectingLines, get=getRevisionsBalloonShowConnectingLines, set=setRevisionsBalloonShowConnectingLines)

        VARIANT_BOOL getReadingLayout();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ReadingLayout(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ReadingLayout()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setReadingLayout(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ReadingLayout(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ReadingLayout()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ReadingLayout, get=getReadingLayout, set=setReadingLayout)

        long getShowXMLMarkup();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_ShowXMLMarkup(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowXMLMarkup()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowXMLMarkup(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowXMLMarkup(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowXMLMarkup()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowXMLMarkup, get=getShowXMLMarkup, set=setShowXMLMarkup)

        long getShadeEditableRanges();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_ShadeEditableRanges(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShadeEditableRanges()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShadeEditableRanges(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShadeEditableRanges(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShadeEditableRanges()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShadeEditableRanges, get=getShadeEditableRanges, set=setShadeEditableRanges)

        VARIANT_BOOL getShowInkAnnotations();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowInkAnnotations(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowInkAnnotations()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowInkAnnotations(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowInkAnnotations(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowInkAnnotations()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowInkAnnotations, get=getShowInkAnnotations, set=setShowInkAnnotations)

        VARIANT_BOOL getDisplayBackgrounds();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayBackgrounds(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayBackgrounds()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayBackgrounds(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayBackgrounds(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayBackgrounds()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayBackgrounds, get=getDisplayBackgrounds, set=setDisplayBackgrounds)

        VARIANT_BOOL getReadingLayoutActualView();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ReadingLayoutActualView(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ReadingLayoutActualView()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setReadingLayoutActualView(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ReadingLayoutActualView(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ReadingLayoutActualView()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ReadingLayoutActualView, get=getReadingLayoutActualView, set=setReadingLayoutActualView)

        VARIANT_BOOL getReadingLayoutAllowMultiplePages();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ReadingLayoutAllowMultiplePages(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ReadingLayoutAllowMultiplePages()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setReadingLayoutAllowMultiplePages(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ReadingLayoutAllowMultiplePages(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ReadingLayoutAllowMultiplePages()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ReadingLayoutAllowMultiplePages, get=getReadingLayoutAllowMultiplePages, set=setReadingLayoutAllowMultiplePages)

        VARIANT_BOOL getReadingLayoutAllowEditing();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ReadingLayoutAllowEditing(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ReadingLayoutAllowEditing()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setReadingLayoutAllowEditing(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ReadingLayoutAllowEditing(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ReadingLayoutAllowEditing()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ReadingLayoutAllowEditing, get=getReadingLayoutAllowEditing, set=setReadingLayoutAllowEditing)

        WdReadingLayoutMargin getReadingLayoutTruncateMargins();
        %MethodCode
            wpsapi::WdReadingLayoutMargin prop = (wpsapi::WdReadingLayoutMargin)0;
            HRESULT hr = sipCpp->get_ReadingLayoutTruncateMargins(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ReadingLayoutTruncateMargins()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setReadingLayoutTruncateMargins(WdReadingLayoutMargin prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ReadingLayoutTruncateMargins(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ReadingLayoutTruncateMargins()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ReadingLayoutTruncateMargins, get=getReadingLayoutTruncateMargins, set=setReadingLayoutTruncateMargins)

        VARIANT_BOOL getShowMarkupAreaHighlight();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowMarkupAreaHighlight(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowMarkupAreaHighlight()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowMarkupAreaHighlight(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowMarkupAreaHighlight(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowMarkupAreaHighlight()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowMarkupAreaHighlight, get=getShowMarkupAreaHighlight, set=setShowMarkupAreaHighlight)

        VARIANT_BOOL getPanning();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Panning(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Panning()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPanning(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Panning(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Panning()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Panning, get=getPanning, set=setPanning)

        VARIANT_BOOL getShowCropMarks();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowCropMarks(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowCropMarks()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowCropMarks(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowCropMarks(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowCropMarks()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowCropMarks, get=getShowCropMarks, set=setShowCropMarks)

        WdRevisionsMode getMarkupMode();
        %MethodCode
            wpsapi::WdRevisionsMode prop = (wpsapi::WdRevisionsMode)0;
            HRESULT hr = sipCpp->get_MarkupMode(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MarkupMode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMarkupMode(WdRevisionsMode prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MarkupMode(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MarkupMode()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MarkupMode, get=getMarkupMode, set=setMarkupMode)

        VARIANT_BOOL getConflictMode();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ConflictMode(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ConflictMode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setConflictMode(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ConflictMode(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ConflictMode()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ConflictMode, get=getConflictMode, set=setConflictMode)

        VARIANT_BOOL getShowOtherAuthors();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowOtherAuthors(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowOtherAuthors()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowOtherAuthors(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowOtherAuthors(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowOtherAuthors()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowOtherAuthors, get=getShowOtherAuthors, set=setShowOtherAuthors)

        RevisionsFilter* getRevisionsFilter();
        %MethodCode
            wpsapi::RevisionsFilter *prop = nullptr;
            HRESULT hr = sipCpp->get_RevisionsFilter(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RevisionsFilter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=RevisionsFilter, get=getRevisionsFilter)

        WdPageColor getPageColor();
        %MethodCode
            wpsapi::WdPageColor prop = (wpsapi::WdPageColor)0;
            HRESULT hr = sipCpp->get_PageColor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PageColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPageColor(WdPageColor prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PageColor(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PageColor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PageColor, get=getPageColor, set=setPageColor)

        WdColumnWidth getColumnWidth();
        %MethodCode
            wpsapi::WdColumnWidth prop = (wpsapi::WdColumnWidth)0;
            HRESULT hr = sipCpp->get_ColumnWidth(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ColumnWidth()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setColumnWidth(WdColumnWidth prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ColumnWidth(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ColumnWidth()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ColumnWidth, get=getColumnWidth, set=setColumnWidth)
    };
};
