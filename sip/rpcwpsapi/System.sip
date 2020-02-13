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
    struct System : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_OperatingSystem(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_ProcessorType(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Version(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_FreeDiskSpace(
            long *prop /Out/) = 0;

        virtual HRESULT get_Country(
            WdCountry *prop /Out/) = 0;

        virtual HRESULT get_LanguageDesignation(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_HorizontalResolution(
            long *prop /Out/) = 0;

        virtual HRESULT get_VerticalResolution(
            long *prop /Out/) = 0;

        virtual HRESULT get_ProfileString(
            BSTR Section,
            BSTR Key,
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_ProfileString(
            BSTR Section,
            BSTR Key,
            BSTR prop) = 0;

        virtual HRESULT get_PrivateProfileString(
            BSTR FileName,
            BSTR Section,
            BSTR Key,
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_PrivateProfileString(
            BSTR FileName,
            BSTR Section,
            BSTR Key,
            BSTR prop) = 0;

        virtual HRESULT get_MathCoprocessorInstalled(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_ComputerType(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_MacintoshName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_QuickDrawInstalled(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_Cursor(
            WdCursorType *prop /Out/) = 0;

        virtual HRESULT put_Cursor(
            WdCursorType prop) = 0;

        virtual HRESULT MSInfo() = 0;

        virtual HRESULT Connect(
            BSTR Path,
            VARIANT *Drive = argMissing(),
            VARIANT *Password = argMissing()) = 0;

        virtual HRESULT get_CountryRegion(
            WdCountry *prop /Out/) = 0;

    };
};
