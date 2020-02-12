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
    struct Revisions : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT Item(
            long Index,
            Revision **prop /Out/) = 0;

        virtual HRESULT AcceptAll() = 0;
        virtual HRESULT RejectAll() = 0;
    };

    struct Revision : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Author(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Date(
            DATE *prop /Out/) = 0;

        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT get_Type(
            WdRevisionType *prop /Out/) = 0;

        virtual HRESULT get_Index(
            long *prop /Out/) = 0;

        virtual HRESULT Accept() = 0;
        virtual HRESULT Reject() = 0;

        virtual HRESULT get_Style(
            Style **prop /Out/) = 0;

        virtual HRESULT get_FormatDescription(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_MovedRange(
            Range **prop /Out/) = 0;

        virtual HRESULT get_Cells(
            Cells **prop /Out/) = 0;
    };

    struct RevisionsFilter : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_View(
            WdRevisionsView *prop /Out/) = 0;

        virtual HRESULT put_View(
            WdRevisionsView prop) = 0;

        virtual HRESULT get_Markup(
            WdRevisionsMarkup *prop /Out/) = 0;

        virtual HRESULT put_Markup(
            WdRevisionsMarkup prop) = 0;

        virtual HRESULT get_Reviewers(
            Reviewers **prop /Out/) = 0;

        virtual HRESULT ToggleShowAllReviewers() = 0;
    };

    struct Reviewers : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT Item(
            VARIANT *Index,
            Reviewer **prop /Out/) = 0;
    };

    struct Reviewer : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Visible(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Visible(
            VARIANT_BOOL prop) = 0;
    };
};