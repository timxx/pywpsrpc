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
    struct _PresentationEx : public wpsapiex::KsoDocumentEx /Abstract/
    {
    public:
        virtual HRESULT SaveAsShm(
            VARIANT *FileFormat = argMissing(),
            VARIANT *EmbedTrueTypeFonts = argMissing(),
            BSTR *ShmID /Out/ = 0) = 0;

    };
};
