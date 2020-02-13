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
    struct Bookmarks : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT get_DefaultSorting(
            WdBookmarkSortBy *prop /Out/) = 0;

        virtual HRESULT put_DefaultSorting(
            WdBookmarkSortBy prop) = 0;

        virtual HRESULT get_ShowHidden(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowHidden(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT Item(
            VARIANT *Index,
            Bookmark **prop /Out/) = 0;

        virtual HRESULT Add(
            BSTR Name,
            VARIANT *Range = argMissing(),
            Bookmark **prop /Out/ = 0) = 0;

        virtual HRESULT Exists(
            BSTR Name,
            VARIANT_BOOL *prop /Out/) = 0;

    };
};
