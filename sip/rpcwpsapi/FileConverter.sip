/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wpsapi
{
    struct FileConverter : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_FormatName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_ClassName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_SaveFormat(
            long *prop /Out/) = 0;

        virtual HRESULT get_OpenFormat(
            long *prop /Out/) = 0;

        virtual HRESULT get_CanSave(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_CanOpen(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_Path(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Extensions(
            BSTR *prop /Out/) = 0;

    };
};
