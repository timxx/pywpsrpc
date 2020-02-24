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
    struct SeriesCollection : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT Add(
            VARIANT Source,
            XlRowCol Rowcol = wpsapi::xlColumns,
            VARIANT SeriesLabels = argMissing2(),
            VARIANT CategoryLabels = argMissing2(),
            VARIANT Replace = argMissing2(),
            Series **prop /Out/ = 0) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT Extend(
            VARIANT Source,
            VARIANT Rowcol = argMissing2(),
            VARIANT CategoryLabels = argMissing2(),
            VARIANT *prop /Out/ = 0) = 0;

        virtual HRESULT Item(
            VARIANT Index,
            Series **prop /Out/) = 0;

        virtual HRESULT _NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT NewSeries(
            Series **prop /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT _Default(
            VARIANT Index,
            Series **prop /Out/) = 0;

    };
};
