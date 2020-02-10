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
    struct DocumentFields : public IDispatch /Abstract/
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

        virtual HRESULT get_DefaultSorting(
            WdDocumentFieldSortBy *prop /Out/) = 0;

        virtual HRESULT put_DefaultSorting(
            WdDocumentFieldSortBy prop) = 0;

        virtual HRESULT Item(
            VARIANT *Index,
            DocumentField **prop /Out/) = 0;

        virtual HRESULT Add(
            BSTR Name,
            VARIANT *Range = argMissing(),
            VARIANT *Hidden = argMissing(),
            VARIANT *PrintOut = argMissing(),
            VARIANT *ReadOnly = argMissing(),
            DocumentField **prop /Out/ = 0) = 0;

        virtual HRESULT Exists(
            BSTR Name,
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_InsertionMode(
            VARIANT_BOOL *insertIntoItem /Out/) = 0;

        virtual HRESULT put_InsertionMode(
            VARIANT_BOOL insertIntoItem) = 0;
    };

    struct DocumentField : public IDispatch /Abstract/
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

        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR prop) = 0;

        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT get_Value(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Value(
            BSTR prop) = 0;

        virtual HRESULT get_Hidden(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Hidden(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_PrintOut(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_PrintOut(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ReadOnly(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ReadOnly(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_StoryType(
            WdStoryType *prop /Out/) = 0;

        virtual HRESULT InsertDocument(
            BSTR prop) = 0;

        virtual HRESULT Select() = 0;

        virtual HRESULT Delete(
            VARIANT_BOOL DeleteWithContent = 0) = 0;
    };
};