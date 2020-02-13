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
    struct CaptionLabel : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_BuiltIn(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_ID(
            WdCaptionLabelID *prop /Out/) = 0;

        virtual HRESULT get_IncludeChapterNumber(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_IncludeChapterNumber(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_NumberStyle(
            WdCaptionNumberStyle *prop /Out/) = 0;

        virtual HRESULT put_NumberStyle(
            WdCaptionNumberStyle prop) = 0;

        virtual HRESULT get_ChapterStyleLevel(
            long *prop /Out/) = 0;

        virtual HRESULT put_ChapterStyleLevel(
            long prop) = 0;

        virtual HRESULT get_Separator(
            WdSeparatorType *prop /Out/) = 0;

        virtual HRESULT put_Separator(
            WdSeparatorType prop) = 0;

        virtual HRESULT get_Position(
            WdCaptionPosition *prop /Out/) = 0;

        virtual HRESULT put_Position(
            WdCaptionPosition prop) = 0;

        virtual HRESULT Delete() = 0;

    };
};
