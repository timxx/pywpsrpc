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
    struct Hyperlink : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Type(
            MsoHyperlinkType *Type /Out/) = 0;

        virtual HRESULT get_Address(
            BSTR *Address /Out/) = 0;

        virtual HRESULT put_Address(
            BSTR Address) = 0;

        virtual HRESULT get_SubAddress(
            BSTR *SubAddress /Out/) = 0;

        virtual HRESULT put_SubAddress(
            BSTR SubAddress) = 0;

        virtual HRESULT AddToFavorites() = 0;

        virtual HRESULT get_EmailSubject(
            BSTR *EmailSubject /Out/) = 0;

        virtual HRESULT put_EmailSubject(
            BSTR EmailSubject) = 0;

        virtual HRESULT get_ScreenTip(
            BSTR *ScreenTip /Out/) = 0;

        virtual HRESULT put_ScreenTip(
            BSTR ScreenTip) = 0;

        virtual HRESULT get_TextToDisplay(
            BSTR *TextToDisplay /Out/) = 0;

        virtual HRESULT put_TextToDisplay(
            BSTR TextToDisplay) = 0;

        virtual HRESULT get_ShowAndReturn(
            MsoTriState *ShowAndReturn /Out/) = 0;

        virtual HRESULT put_ShowAndReturn(
            MsoTriState ShowAndReturn) = 0;

        virtual HRESULT Follow() = 0;

        virtual HRESULT CreateNewDocument(
            BSTR FileName,
            MsoTriState EditNow,
            MsoTriState Overwrite) = 0;

        virtual HRESULT Delete() = 0;

    };
};
