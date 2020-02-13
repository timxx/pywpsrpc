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
    struct LinkFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_AutoUpdate(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoUpdate(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SourceName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_SourcePath(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Locked(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Locked(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Type(
            WdLinkType *prop /Out/) = 0;

        virtual HRESULT get_SourceFullName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_SourceFullName(
            BSTR prop) = 0;

        virtual HRESULT get_SavePictureWithDocument(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_SavePictureWithDocument(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT BreakLink() = 0;

        virtual HRESULT Update() = 0;

    };
};
