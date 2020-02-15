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
    struct _WorkbookEx : public wpsapiex::KsoDocumentEx /Abstract/
    {
    public:
        virtual HRESULT SaveAsShm(
            VARIANT *FileFormat = argMissing(),
            VARIANT *Password = argMissing(),
            VARIANT *WriteResPassword = argMissing(),
            VARIANT *ReadOnlyRecommended = argMissing(),
            VARIANT *CreateBackup = argMissing(),
            VARIANT *AccessMode = argMissing(),
            VARIANT *ConflictResolution = argMissing(),
            VARIANT *AddToMru = argMissing(),
            VARIANT *TextCodepage = argMissing(),
            VARIANT *TextVisualLayout = argMissing(),
            VARIANT *Local = argMissing(),
            VARIANT *lcid = argMissing(),
            BSTR *ShmID /Out/ = 0) = 0;

        virtual HRESULT get_CellText(long nIdx, VARIANT* pArrayData) = 0;
    };
};
