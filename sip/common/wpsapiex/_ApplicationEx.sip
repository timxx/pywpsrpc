/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wpsapiex
{
    struct _ApplicationEx : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_WpsCloudService(
            WpsCloudService **prop /Out/) = 0;

        virtual HRESULT get_SaveRememberStatus(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_SaveRememberStatus(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT CreateCustomTaskPane(
            long wid,
            BSTR title,
            IDispatch **prop /Out/) = 0;
        virtual HRESULT put_ForceBackupEnable(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ForceBackupEnable(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_EmbedWid(
            unsigned long *wid /Out/) = 0;
    };
};
