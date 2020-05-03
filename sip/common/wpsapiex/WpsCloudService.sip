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

        BSTR getLoginToken();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_LoginToken(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LoginToken()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=LoginToken, get=getLoginToken)
    };
};
