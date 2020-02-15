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
    struct WorkbooksEx : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT OpenFromShm(
            BSTR ShmID,
            VARIANT UpdateLinks = argMissing2(),
            VARIANT ReadOnly = argMissing2(),
            VARIANT Format = argMissing2(),
            VARIANT Password = argMissing2(),
            VARIANT WriteResPassword = argMissing2(),
            VARIANT IgnoreReadOnlyRecommended = argMissing2(),
            VARIANT Origin = argMissing2(),
            VARIANT Delimiter = argMissing2(),
            VARIANT Editable = argMissing2(),
            VARIANT Notify = argMissing2(),
            VARIANT Converter = argMissing2(),
            VARIANT AddToMru = argMissing2(),
            VARIANT Local = argMissing2(),
            VARIANT CorruptLoad = argMissing2(),
            long lcid = 0,
            WorkbookEx **RHS /Out/ = 0) = 0;

        virtual HRESULT Open(
            BSTR Filename,
            VARIANT UpdateLinks = argMissing2(),
            VARIANT ReadOnly = argMissing2(),
            VARIANT Format = argMissing2(),
            VARIANT Password = argMissing2(),
            VARIANT WriteResPassword = argMissing2(),
            VARIANT IgnoreReadOnlyRecommended = argMissing2(),
            VARIANT Origin = argMissing2(),
            VARIANT Delimiter = argMissing2(),
            VARIANT Editable = argMissing2(),
            VARIANT Notify = argMissing2(),
            VARIANT Converter = argMissing2(),
            VARIANT AddToMru = argMissing2(),
            VARIANT Local = argMissing2(),
            VARIANT CorruptLoad = argMissing2(),
            long lcid = 0,
            VARIANT Visible = argMissing2(),
            WorkbookEx **RHS /Out/ = 0) = 0;

    };
};
