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
    struct IWorkbookEvents : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT Open() = 0;

        virtual HRESULT Activate() = 0;

        virtual HRESULT Deactivate() = 0;

        virtual HRESULT BeforeClose(
            VARIANT_BOOL *Cancel /In,Out/) = 0;

        virtual HRESULT BeforeSave(
            VARIANT_BOOL SaveAsUI,
            VARIANT_BOOL *Cancel /In,Out/) = 0;

        virtual HRESULT BeforePrint(
            VARIANT_BOOL *Cancel /In,Out/) = 0;

        virtual HRESULT NewSheet(
            IDispatch *Sh) = 0;

        virtual HRESULT AddinInstall() = 0;

        virtual HRESULT AddinUninstall() = 0;

        virtual HRESULT WindowResize(
            Window *Wn) = 0;

        virtual HRESULT WindowActivate(
            Window *Wn) = 0;

        virtual HRESULT WindowDeactivate(
            Window *Wn) = 0;

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

        virtual HRESULT SheetFollowHyperlink(
            IDispatch *Sh,
            Hyperlink *Target) = 0;

        virtual HRESULT SheetPivotTableUpdate(
            IDispatch *Sh,
            PivotTable *Target) = 0;

        virtual HRESULT PivotTableCloseConnection(
            PivotTable *Target) = 0;

        virtual HRESULT PivotTableOpenConnection(
            PivotTable *Target) = 0;

        virtual HRESULT Sync(
            MsoSyncEventType SyncEventType) = 0;

        virtual HRESULT BeforeXmlImport(
            XmlMap *Map,
            BSTR Url,
            VARIANT_BOOL IsRefresh,
            VARIANT_BOOL *Cancel /In,Out/) = 0;

        virtual HRESULT AfterXmlImport(
            XmlMap *Map,
            VARIANT_BOOL IsRefresh,
            XlXmlImportResult Result) = 0;

        virtual HRESULT BeforeXmlExport(
            XmlMap *Map,
            BSTR Url,
            VARIANT_BOOL *Cancel /In,Out/) = 0;

        virtual HRESULT AfterXmlExport(
            XmlMap *Map,
            BSTR Url,
            XlXmlExportResult Result) = 0;

        virtual HRESULT RowsetComplete(
            BSTR Description,
            BSTR Sheet,
            VARIANT_BOOL Success) = 0;

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

        virtual HRESULT SheetPivotTableChangeSync(
            IDispatch *Sh,
            PivotTable *Target) = 0;

        virtual HRESULT AfterSave(
            VARIANT_BOOL Success) = 0;

        virtual HRESULT NewChart(
            Chart *Ch) = 0;

        virtual HRESULT SheetLensGalleryRenderComplete(
            IDispatch *Sh) = 0;

        virtual HRESULT SheetTableUpdate(
            IDispatch *Sh,
            TableObject *Target) = 0;

        virtual HRESULT ModelChange(
            ModelChanges *Changes) = 0;

        virtual HRESULT SheetBeforeDelete(
            IDispatch *Sh) = 0;

    };
};
