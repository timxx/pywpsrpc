/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace ksoapi
{
    struct SeriesCollection : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT Add(
            VARIANT Source,
            XlRowCol Rowcol = ksoapi::xlColumns,
            VARIANT SeriesLabels = argMissing2(),
            VARIANT CategoryLabels = argMissing2(),
            VARIANT Replace = argMissing2(),
            IMsoSeries **RHS /Out/ = 0) = 0;

        virtual HRESULT get_Count(
            long *RHS /Out/) = 0;

        virtual HRESULT Extend(
            VARIANT Source,
            VARIANT Rowcol = argMissing2(),
            VARIANT CategoryLabels = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT Item(
            VARIANT Index,
            IMsoSeries **RHS /Out/) = 0;

        virtual HRESULT _NewEnum(
            IUnknown **RHS /Out/) = 0;

        virtual HRESULT Paste(
            XlRowCol Rowcol = ksoapi::xlColumns,
            VARIANT SeriesLabels = argMissing2(),
            VARIANT CategoryLabels = argMissing2(),
            VARIANT Replace = argMissing2(),
            VARIANT NewSeries = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT NewSeries(
            IMsoSeries **RHS /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **ppval /Out/) = 0;

        virtual HRESULT get_Creator(
            long *pval /Out/) = 0;

        virtual HRESULT get__Default(
            VARIANT Index,
            IMsoSeries **RHS /Out/) = 0;

    };
};
