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
    struct Font : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Color(
            ColorFormat **Color /Out/) = 0;

        virtual HRESULT get_Bold(
            MsoTriState *Bold /Out/) = 0;

        virtual HRESULT put_Bold(
            MsoTriState Bold) = 0;

        virtual HRESULT get_Italic(
            MsoTriState *Italic /Out/) = 0;

        virtual HRESULT put_Italic(
            MsoTriState Italic) = 0;

        virtual HRESULT get_Shadow(
            MsoTriState *Shadow /Out/) = 0;

        virtual HRESULT put_Shadow(
            MsoTriState Shadow) = 0;

        virtual HRESULT get_Emboss(
            MsoTriState *Emboss /Out/) = 0;

        virtual HRESULT put_Emboss(
            MsoTriState Emboss) = 0;

        virtual HRESULT get_Underline(
            MsoTriState *Underline /Out/) = 0;

        virtual HRESULT put_Underline(
            MsoTriState Underline) = 0;

        virtual HRESULT get_Subscript(
            MsoTriState *Subscript /Out/) = 0;

        virtual HRESULT put_Subscript(
            MsoTriState Subscript) = 0;

        virtual HRESULT get_Superscript(
            MsoTriState *Superscript /Out/) = 0;

        virtual HRESULT put_Superscript(
            MsoTriState Superscript) = 0;

        virtual HRESULT get_BaselineOffset(
            single *BaselineOffset /Out/) = 0;

        virtual HRESULT put_BaselineOffset(
            single BaselineOffset) = 0;

        virtual HRESULT get_Embedded(
            MsoTriState *Embedded /Out/) = 0;

        virtual HRESULT get_Embeddable(
            MsoTriState *Embeddable /Out/) = 0;

        virtual HRESULT get_Size(
            single *Size /Out/) = 0;

        virtual HRESULT put_Size(
            single Size) = 0;

        virtual HRESULT get_Name(
            BSTR *Name /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR Name) = 0;

        virtual HRESULT get_NameFarEast(
            BSTR *NameFarEast /Out/) = 0;

        virtual HRESULT put_NameFarEast(
            BSTR NameFarEast) = 0;

        virtual HRESULT get_NameAscii(
            BSTR *NameAscii /Out/) = 0;

        virtual HRESULT put_NameAscii(
            BSTR NameAscii) = 0;

        virtual HRESULT get_AutoRotateNumbers(
            MsoTriState *AutoRotateNumbers /Out/) = 0;

        virtual HRESULT put_AutoRotateNumbers(
            MsoTriState AutoRotateNumbers) = 0;

        virtual HRESULT get_NameOther(
            BSTR *NameOther /Out/) = 0;

        virtual HRESULT put_NameOther(
            BSTR NameOther) = 0;

        virtual HRESULT get_NameComplexScript(
            BSTR *NameComplexScript /Out/) = 0;

        virtual HRESULT put_NameComplexScript(
            BSTR NameComplexScript) = 0;

    };
};
