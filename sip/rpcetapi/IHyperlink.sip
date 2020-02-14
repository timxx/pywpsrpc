/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace etapi
{
    struct IHyperlink : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Range(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_Shape(
            Shape **RHS /Out/) = 0;

        virtual HRESULT get_SubAddress(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_SubAddress(
            BSTR RHS) = 0;

        virtual HRESULT get_Address(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Address(
            BSTR RHS) = 0;

        virtual HRESULT get_Type(
            long *RHS /Out/) = 0;

        virtual HRESULT AddToFavorites() = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Follow(
            VARIANT NewWindow = argMissing2(),
            VARIANT AddHistory = argMissing2(),
            VARIANT ExtraInfo = argMissing2(),
            VARIANT Method = argMissing2(),
            VARIANT HeaderInfo = argMissing2()) = 0;

        virtual HRESULT get_EmailSubject(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_EmailSubject(
            BSTR RHS) = 0;

        virtual HRESULT get_ScreenTip(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_ScreenTip(
            BSTR RHS) = 0;

        virtual HRESULT get_TextToDisplay(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_TextToDisplay(
            BSTR RHS) = 0;

        virtual HRESULT CreateNewDocument(
            BSTR Filename,
            VARIANT_BOOL EditNow,
            VARIANT_BOOL Overwrite) = 0;

    };
};
