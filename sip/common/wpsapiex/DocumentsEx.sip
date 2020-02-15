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
    struct DocumentsEx : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT OpenFromShm(
            VARIANT *ShmID,
            VARIANT *ConfirmConversions = argMissing(),
            VARIANT *ReadOnly = argMissing(),
            VARIANT *AddToRecentFiles = argMissing(),
            VARIANT *PasswordDocument = argMissing(),
            VARIANT *PasswordTemplate = argMissing(),
            VARIANT *Revert = argMissing(),
            VARIANT *WritePasswordDocument = argMissing(),
            VARIANT *WritePasswordTemplate = argMissing(),
            VARIANT *Format = argMissing(),
            VARIANT *Encoding = argMissing(),
            VARIANT *Visible = argMissing(),
            VARIANT *OpenAndRepair = argMissing(),
            VARIANT *DocumentDirection = argMissing(),
            VARIANT *NoEncodingDialog = argMissing(),
            VARIANT *XMLTransform = argMissing(),
            DocumentEx **prop /Out/ = 0) = 0;

    };
};
