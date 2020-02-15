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
    struct WpsCloudService : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_LoginToken(
            BSTR *prop /Out/) = 0;

        virtual HRESULT DownloadCloudFile(
            BSTR VolumeID,
            BSTR FileID,
            BSTR Path,
            VARIANT_BOOL IsAsync,
            BSTR *OutputPath /Out/) = 0;

        virtual HRESULT UploadCloudFile(
            BSTR VolumeID,
            BSTR FileID,
            BSTR FilePath,
            VARIANT_BOOL IsAsync = -1) = 0;

    };
};
