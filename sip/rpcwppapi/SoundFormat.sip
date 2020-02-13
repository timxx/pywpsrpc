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
    struct SoundFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT Play() = 0;

        virtual HRESULT Import(
            BSTR FileName) = 0;

        virtual HRESULT Export(
            BSTR FileName,
            PpSoundFormatType *Export /Out/) = 0;

        virtual HRESULT get_Type(
            PpSoundFormatType *Type /Out/) = 0;

        virtual HRESULT get_SourceFullName(
            BSTR *SourceFullName /Out/) = 0;

    };
};
