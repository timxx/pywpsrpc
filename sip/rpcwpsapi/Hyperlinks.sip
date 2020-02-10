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
    struct Hyperlinks : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT Item(
            VARIANT *Index,
            Hyperlink **prop /Out/) = 0;

        virtual HRESULT _Add(
            IDispatch *Anchor,
            VARIANT *Address = argMissing(),
            VARIANT *SubAddress = argMissing(),
            Hyperlink **prop /Out/ = 0) = 0;

        virtual HRESULT Add(
            IDispatch *Anchor,
            VARIANT *Address = argMissing(),
            VARIANT *SubAddress = argMissing(),
            VARIANT *ScreenTip = argMissing(),
            VARIANT *TextToDisplay = argMissing(),
            VARIANT *Target = argMissing(),
            Hyperlink **prop /Out/ = 0) = 0;
    };

    struct Hyperlink : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_AddressOld(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Type(
            MsoHyperlinkType *prop /Out/) = 0;

        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT get_Shape(
            Shape **prop /Out/) = 0;

        virtual HRESULT get_SubAddressOld(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_ExtraInfoRequired(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Follow(
            VARIANT *NewWindow = argMissing(),
            VARIANT *AddHistory = argMissing(),
            VARIANT *ExtraInfo = argMissing(),
            VARIANT *Method = argMissing(),
            VARIANT *HeaderInfo = argMissing()) = 0;

        virtual HRESULT AddToFavorites() = 0;

        virtual HRESULT CreateNewDocument(
            BSTR FileName,
            VARIANT_BOOL EditNow,
            VARIANT_BOOL Overwrite) = 0;

        virtual HRESULT get_Address(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Address(
            BSTR prop) = 0;

        virtual HRESULT get_SubAddress(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_SubAddress(
            BSTR prop) = 0;

        virtual HRESULT get_EmailSubject(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_EmailSubject(
            BSTR prop) = 0;

        virtual HRESULT get_ScreenTip(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_ScreenTip(
            BSTR prop) = 0;

        virtual HRESULT get_TextToDisplay(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_TextToDisplay(
            BSTR prop) = 0;

        virtual HRESULT get_Target(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Target(
            BSTR prop) = 0;
    };
};