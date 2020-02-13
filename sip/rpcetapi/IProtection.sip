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
    struct IProtection : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_AllowFormattingCells(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_AllowFormattingColumns(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_AllowFormattingRows(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_AllowInsertingColumns(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_AllowInsertingRows(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_AllowInsertingHyperlinks(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_AllowDeletingColumns(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_AllowDeletingRows(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_AllowSorting(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_AllowFiltering(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_AllowUsingPivotTables(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_AllowEditRanges(
            AllowEditRanges **RHS /Out/) = 0;

    };
};
