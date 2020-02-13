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
    struct OLEFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_ClassType(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_ClassType(
            BSTR prop) = 0;

        virtual HRESULT get_DisplayAsIcon(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DisplayAsIcon(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_IconName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_IconName(
            BSTR prop) = 0;

        virtual HRESULT get_IconPath(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_IconIndex(
            long *prop /Out/) = 0;

        virtual HRESULT put_IconIndex(
            long prop) = 0;

        virtual HRESULT get_IconLabel(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_IconLabel(
            BSTR prop) = 0;

        virtual HRESULT get_Label(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Object(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_ProgID(
            BSTR *prop /Out/) = 0;

        virtual HRESULT Activate() = 0;

        virtual HRESULT Edit() = 0;

        virtual HRESULT Open() = 0;

        virtual HRESULT DoVerb(
            VARIANT *VerbIndex = argMissing()) = 0;

        virtual HRESULT ConvertTo(
            VARIANT *ClassType = argMissing(),
            VARIANT *DisplayAsIcon = argMissing(),
            VARIANT *IconFileName = argMissing(),
            VARIANT *IconIndex = argMissing(),
            VARIANT *IconLabel = argMissing()) = 0;

        virtual HRESULT ActivateAs(
            BSTR ClassType) = 0;

        virtual HRESULT get_PreserveFormattingOnUpdate(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_PreserveFormattingOnUpdate(
            VARIANT_BOOL prop) = 0;

    };
};
