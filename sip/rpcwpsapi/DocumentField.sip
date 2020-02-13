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
    struct DocumentField : public IDispatch /Abstract/
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
