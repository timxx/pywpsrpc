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
    struct IDocEvents : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT SelectionChange(
            Range *Target) = 0;

        virtual HRESULT BeforeDoubleClick(
            Range *Target,
            VARIANT_BOOL *Cancel /In,Out/) = 0;

        virtual HRESULT BeforeRightClick(
            Range *Target,
            VARIANT_BOOL *Cancel /In,Out/) = 0;

        virtual HRESULT Activate() = 0;

        virtual HRESULT Deactivate() = 0;

        virtual HRESULT Calculate() = 0;

        virtual HRESULT Change(
            Range *Target) = 0;

        virtual HRESULT FollowHyperlink(
            Hyperlink *Target) = 0;

        virtual HRESULT PivotTableUpdate(
            PivotTable *Target) = 0;

        virtual HRESULT PivotTableAfterValueChange(
            PivotTable *TargetPivotTable,
            Range *TargetRange) = 0;

        virtual HRESULT PivotTableBeforeAllocateChanges(
            PivotTable *TargetPivotTable,
            long ValueChangeStart,
            long ValueChangeEnd,
            VARIANT_BOOL *Cancel /In,Out/) = 0;

        virtual HRESULT PivotTableBeforeCommitChanges(
            PivotTable *TargetPivotTable,
            long ValueChangeStart,
            long ValueChangeEnd,
            VARIANT_BOOL *Cancel /In,Out/) = 0;

        virtual HRESULT PivotTableBeforeDiscardChanges(
            PivotTable *TargetPivotTable,
            long ValueChangeStart,
            long ValueChangeEnd) = 0;

        virtual HRESULT PivotTableChangeSync(
            PivotTable *Target) = 0;

        virtual HRESULT LensGalleryRenderComplete() = 0;

        virtual HRESULT TableUpdate(
            TableObject *Target) = 0;

        virtual HRESULT BeforeDelete() = 0;

    };
};
