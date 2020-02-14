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
    struct IOutline : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_AutomaticStyles(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AutomaticStyles(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT ShowLevels(
            VARIANT RowLevels = argMissing2(),
            VARIANT ColumnLevels = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_SummaryColumn(
            XlSummaryColumn *RHS /Out/) = 0;

        virtual HRESULT put_SummaryColumn(
            XlSummaryColumn RHS) = 0;

        virtual HRESULT get_SummaryRow(
            XlSummaryRow *RHS /Out/) = 0;

        virtual HRESULT put_SummaryRow(
            XlSummaryRow RHS) = 0;

    };
};
