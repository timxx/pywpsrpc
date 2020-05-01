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
    struct PageNumbers : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        int __len__() const;
        %MethodCode
            long count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT get_NumberStyle(
            WdPageNumberStyle *prop /Out/) = 0;

        virtual HRESULT put_NumberStyle(
            WdPageNumberStyle prop) = 0;

        virtual HRESULT get_IncludeChapterNumber(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_IncludeChapterNumber(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HeadingLevelForChapter(
            long *prop /Out/) = 0;

        virtual HRESULT put_HeadingLevelForChapter(
            long prop) = 0;

        virtual HRESULT get_ChapterPageSeparator(
            WdSeparatorType *prop /Out/) = 0;

        virtual HRESULT put_ChapterPageSeparator(
            WdSeparatorType prop) = 0;

        virtual HRESULT get_RestartNumberingAtSection(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_RestartNumberingAtSection(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_StartingNumber(
            long *prop /Out/) = 0;

        virtual HRESULT put_StartingNumber(
            long prop) = 0;

        virtual HRESULT get_ShowFirstPageNumber(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowFirstPageNumber(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT Item(
            long Index,
            PageNumber **prop /Out/) = 0;

        PageNumber* __getitem__(long index) const;
        %MethodCode
            wpsapi::PageNumber *prop = nullptr;
            if (sipCpp->Item(a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT Add(
            VARIANT *PageNumberAlignment = argMissing(),
            VARIANT *FirstPage = argMissing(),
            PageNumber **prop /Out/ = 0) = 0;

        virtual HRESULT get_DoubleQuote(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DoubleQuote(
            VARIANT_BOOL prop) = 0;

    };
};
