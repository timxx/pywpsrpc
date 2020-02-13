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
    struct Comment : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT get_Reference(
            Range **prop /Out/) = 0;

        virtual HRESULT get_Scope(
            Range **prop /Out/) = 0;

        virtual HRESULT get_Index(
            long *prop /Out/) = 0;

        virtual HRESULT get_Author(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Author(
            BSTR prop) = 0;

        virtual HRESULT get_Initial(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Initial(
            BSTR prop) = 0;

        virtual HRESULT get_ShowTip(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowTip(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Edit() = 0;

        virtual HRESULT get_Date(
            DATE *prop /Out/) = 0;

        virtual HRESULT get_IsInk(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_Done(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Done(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Ancestor(
            Comment **prop /Out/) = 0;

        virtual HRESULT get_Contact(
            CoAuthor **prop /Out/) = 0;

        virtual HRESULT DeleteRecursively() = 0;

        virtual HRESULT get_Replies(
            Comments **prop /Out/) = 0;

    };
};
