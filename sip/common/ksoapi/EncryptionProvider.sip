/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace ksoapi
{
    struct EncryptionProvider : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT GetProviderDetail(
            EncryptionProviderDetail encprovdet,
            VARIANT *pvar /Out/) = 0;

        virtual HRESULT NewSession(
            IUnknown *ParentWindow,
            int *SessionHandle /Out/) = 0;

        virtual HRESULT Authenticate(
            IUnknown *ParentWindow,
            IUnknown *EncryptionData,
            unsigned int *PermissionsMask /Out/,
            int *SessionHandle /Out/) = 0;

        virtual HRESULT CloneSession(
            int SessionHandle,
            int *SessionHandleClone /Out/) = 0;

        virtual HRESULT EndSession(
            int SessionHandle) = 0;

        virtual HRESULT Save(
            int SessionHandle,
            IUnknown *EncryptionData,
            int *EncryptionDataSize /Out/) = 0;

        virtual HRESULT EncryptStream(
            int SessionHandle,
            BSTR StreamName,
            IUnknown *UnencryptedStream,
            IUnknown *EncryptedStream) = 0;

        virtual HRESULT DecryptStream(
            int SessionHandle,
            BSTR StreamName,
            IUnknown *EncryptedStream,
            IUnknown *UnencryptedStream) = 0;

        virtual HRESULT ShowSettings(
            int SessionHandle,
            IUnknown *ParentWindow,
            VARIANT_BOOL ReadOnly,
            VARIANT_BOOL *Remove /Out/) = 0;

    };
};
