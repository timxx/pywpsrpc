/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wppapi
{
    struct Comment : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Author(
            BSTR *Author /Out/) = 0;

        virtual HRESULT get_AuthorInitials(
            BSTR *AuthorInitials /Out/) = 0;

        virtual HRESULT get_Text(
            BSTR *Text /Out/) = 0;

        virtual HRESULT get_DateTime(
            DATE *DateTime /Out/) = 0;

        virtual HRESULT get_AuthorIndex(
            int *AuthorIndex /Out/) = 0;

        virtual HRESULT get_Left(
            single *Left /Out/) = 0;

        virtual HRESULT get_Top(
            single *Top /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_ProviderID(
            BSTR *ProviderID /Out/) = 0;

        virtual HRESULT get_UserID(
            BSTR *UserID /Out/) = 0;

        virtual HRESULT get_TimeZoneBias(
            int *TimeZoneBias /Out/) = 0;

        virtual HRESULT get_Replies(
            Comments **Comments /Out/) = 0;

        virtual HRESULT get_Collapsed(
            VARIANT_BOOL *Comments /Out/) = 0;

    };
};
