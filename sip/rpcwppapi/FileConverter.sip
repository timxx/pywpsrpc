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
    struct FileConverter : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_CanOpen(
            VARIANT_BOOL *CanOpen /Out/) = 0;

        virtual HRESULT get_CanSave(
            VARIANT_BOOL *CanSave /Out/) = 0;

        virtual HRESULT get_ClassName(
            BSTR *ClassName /Out/) = 0;

        virtual HRESULT get_Creator(
            FileConverters **Creator /Out/) = 0;

        virtual HRESULT get_Extensions(
            BSTR *Extensions /Out/) = 0;

        virtual HRESULT get_FormatName(
            BSTR *FormatName /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *Name /Out/) = 0;

        virtual HRESULT get_Parent(
            FileConverters **Parent /Out/) = 0;

        virtual HRESULT get_Path(
            BSTR *Path /Out/) = 0;

        virtual HRESULT get_OpenFormat(
            long *OpenFormat /Out/) = 0;

        virtual HRESULT get_SaveFormat(
            long *SaveFormat /Out/) = 0;

    };
};
