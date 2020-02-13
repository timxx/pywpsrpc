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
    struct IAppEvents : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT NewWorkbook(
            Workbook *Wb) = 0;

        virtual HRESULT SheetSelectionChange(
            IDispatch *Sh,
            Range *Target) = 0;

        virtual HRESULT SheetBeforeDoubleClick(
            IDispatch *Sh,
            Range *Target,
            VARIANT_BOOL *Cancel /In,Out/) = 0;

        virtual HRESULT SheetBeforeRightClick(
            IDispatch *Sh,
            Range *Target,
            VARIANT_BOOL *Cancel /In,Out/) = 0;

        virtual HRESULT SheetActivate(
            IDispatch *Sh) = 0;

        virtual HRESULT SheetDeactivate(
            IDispatch *Sh) = 0;

        virtual HRESULT SheetCalculate(
            IDispatch *Sh) = 0;

        virtual HRESULT SheetChange(
            IDispatch *Sh,
            Range *Target) = 0;

        virtual HRESULT WorkbookOpen(
            Workbook *Wb) = 0;

        virtual HRESULT WorkbookActivate(
            Workbook *Wb) = 0;

        virtual HRESULT WorkbookDeactivate(
            Workbook *Wb) = 0;

        virtual HRESULT WorkbookBeforeClose(
            Workbook *Wb,
            VARIANT_BOOL *Cancel /In,Out/) = 0;

        virtual HRESULT WorkbookBeforeSave(
            Workbook *Wb,
            VARIANT_BOOL SaveAsUI,
            VARIANT_BOOL *Cancel /In,Out/) = 0;

        virtual HRESULT WorkbookBeforePrint(
            Workbook *Wb,
            VARIANT_BOOL *Cancel /In,Out/) = 0;

        virtual HRESULT WorkbookNewSheet(
            Workbook *Wb,
            IDispatch *Sh) = 0;

        virtual HRESULT WorkbookAddinInstall(
            Workbook *Wb) = 0;

        virtual HRESULT WorkbookAddinUninstall(
            Workbook *Wb) = 0;

        virtual HRESULT WindowResize(
            Workbook *Wb,
            Window *Wn) = 0;

        virtual HRESULT WindowActivate(
            Workbook *Wb,
            Window *Wn) = 0;

        virtual HRESULT WindowDeactivate(
            Workbook *Wb,
            Window *Wn) = 0;

        virtual HRESULT SheetFollowHyperlink(
            IDispatch *Sh,
            Hyperlink *Target) = 0;

        virtual HRESULT SheetPivotTableUpdate(
            IDispatch *Sh,
            PivotTable *Target) = 0;

        virtual HRESULT WorkbookPivotTableCloseConnection(
            Workbook *Wb,
            PivotTable *Target) = 0;

        virtual HRESULT WorkbookPivotTableOpenConnection(
            Workbook *Wb,
            PivotTable *Target) = 0;

        virtual HRESULT WorkbookSync(
            Workbook *Wb,
            MsoSyncEventType SyncEventType) = 0;

        virtual HRESULT WorkbookBeforeXmlImport(
            Workbook *Wb,
            XmlMap *Map,
            BSTR Url,
            VARIANT_BOOL IsRefresh,
            VARIANT_BOOL *Cancel /In,Out/) = 0;

        virtual HRESULT WorkbookAfterXmlImport(
            Workbook *Wb,
            XmlMap *Map,
            VARIANT_BOOL IsRefresh,
            XlXmlImportResult Result) = 0;

        virtual HRESULT WorkbookBeforeXmlExport(
            Workbook *Wb,
            XmlMap *Map,
            BSTR Url,
            VARIANT_BOOL *Cancel /In,Out/) = 0;

        virtual HRESULT WorkbookAfterXmlExport(
            Workbook *Wb,
            XmlMap *Map,
            BSTR Url,
            XlXmlExportResult Result) = 0;

        virtual HRESULT WorkbookRowsetComplete(
            Workbook *Wb,
            BSTR Description,
            BSTR Sheet,
            VARIANT_BOOL Success) = 0;

        virtual HRESULT AfterCalculate() = 0;

        virtual HRESULT SheetPivotTableAfterValueChange(
            IDispatch *Sh,
            PivotTable *TargetPivotTable,
            Range *TargetRange) = 0;

        virtual HRESULT SheetPivotTableBeforeAllocateChanges(
            IDispatch *Sh,
            PivotTable *TargetPivotTable,
            long ValueChangeStart,
            long ValueChangeEnd,
            VARIANT_BOOL *Cancel /In,Out/) = 0;

        virtual HRESULT SheetPivotTableBeforeCommitChanges(
            IDispatch *Sh,
            PivotTable *TargetPivotTable,
            long ValueChangeStart,
            long ValueChangeEnd,
            VARIANT_BOOL *Cancel /In,Out/) = 0;

        virtual HRESULT SheetPivotTableBeforeDiscardChanges(
            IDispatch *Sh,
            PivotTable *TargetPivotTable,
            long ValueChangeStart,
            long ValueChangeEnd) = 0;

        virtual HRESULT ProtectedViewWindowOpen(
            ProtectedViewWindow *Pvw) = 0;

        virtual HRESULT ProtectedViewWindowBeforeEdit(
            ProtectedViewWindow *Pvw,
            VARIANT_BOOL *Cancel /In,Out/) = 0;

        virtual HRESULT ProtectedViewWindowBeforeClose(
            ProtectedViewWindow *Pvw,
            XlProtectedViewCloseReason Reason,
            VARIANT_BOOL *Cancel /In,Out/) = 0;

        virtual HRESULT ProtectedViewWindowResize(
            ProtectedViewWindow *Pvw) = 0;

        virtual HRESULT ProtectedViewWindowActivate(
            ProtectedViewWindow *Pvw) = 0;

        virtual HRESULT ProtectedViewWindowDeactivate(
            ProtectedViewWindow *Pvw) = 0;

        virtual HRESULT WorkbookAfterSave(
            Workbook *Wb,
            VARIANT_BOOL Success) = 0;

        virtual HRESULT WorkbookNewChart(
            Workbook *Wb,
            Chart *Ch) = 0;

        virtual HRESULT SheetLensGalleryRenderComplete(
            IDispatch *Sh) = 0;

        virtual HRESULT SheetTableUpdate(
            IDispatch *Sh,
            TableObject *Target) = 0;

        virtual HRESULT WorkbookModelChange(
            Workbook *Wb,
            ModelChanges *Changes) = 0;

        virtual HRESULT SheetBeforeDelete(
            IDispatch *Sh) = 0;

    };
};
