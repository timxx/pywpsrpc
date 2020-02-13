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
    struct IBlogExtensibility : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT BlogProviderProperties(
            BSTR *BlogProvider /Out/,
            BSTR *FriendlyName /Out/,
            MsoBlogCategorySupport *CategorySupport /Out/,
            VARIANT_BOOL *Padding /Out/) = 0;

        virtual HRESULT SetupBlogAccount(
            BSTR Account,
            long ParentWindow,
            IDispatch *Document,
            VARIANT_BOOL NewAccount,
            VARIANT_BOOL *ShowPictureUI /Out/) = 0;

        virtual HRESULT GetUserBlogs(
            BSTR Account,
            long ParentWindow,
            IDispatch *Document,
            SAFEARRAY * *BlogNames /Out/,
            SAFEARRAY * *BlogIDs /Out/,
            SAFEARRAY * *BlogURLs /Out/) = 0;

        virtual HRESULT GetRecentPosts(
            BSTR Account,
            long ParentWindow,
            IDispatch *Document,
            SAFEARRAY * *PostTitles /Out/,
            SAFEARRAY * *PostDates /Out/,
            SAFEARRAY * *PostIDs /Out/) = 0;

        virtual HRESULT Open(
            BSTR Account,
            BSTR PostID,
            long ParentWindow,
            BSTR *xHTML /Out/,
            BSTR *Title /Out/,
            BSTR *DatePosted /Out/,
            SAFEARRAY * *Categories /Out/) = 0;

        virtual HRESULT PublishPost(
            BSTR Account,
            long ParentWindow,
            IDispatch *Document,
            BSTR xHTML,
            BSTR Title,
            BSTR DateTime,
            SAFEARRAY * Categories,
            VARIANT_BOOL Draft,
            BSTR *PostID /Out/,
            BSTR *PublishMessage /Out/) = 0;

        virtual HRESULT RepublishPost(
            BSTR Account,
            long ParentWindow,
            IDispatch *Document,
            BSTR PostID,
            BSTR xHTML,
            BSTR Title,
            BSTR DateTime,
            SAFEARRAY * Categories,
            VARIANT_BOOL Draft,
            BSTR *PublishMessage /Out/) = 0;

        virtual HRESULT GetCategories(
            BSTR Account,
            long ParentWindow,
            IDispatch *Document,
            SAFEARRAY * *Categories /Out/) = 0;

    };
};
