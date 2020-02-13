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
    struct ListLevel : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Index(
            long *prop /Out/) = 0;

        virtual HRESULT get_NumberFormat(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_NumberFormat(
            BSTR prop) = 0;

        virtual HRESULT get_TrailingCharacter(
            WdTrailingCharacter *prop /Out/) = 0;

        virtual HRESULT put_TrailingCharacter(
            WdTrailingCharacter prop) = 0;

        virtual HRESULT get_NumberStyle(
            WdListNumberStyle *prop /Out/) = 0;

        virtual HRESULT put_NumberStyle(
            WdListNumberStyle prop) = 0;

        virtual HRESULT get_NumberPosition(
            single *prop /Out/) = 0;

        virtual HRESULT put_NumberPosition(
            single prop) = 0;

        virtual HRESULT get_Alignment(
            WdListLevelAlignment *prop /Out/) = 0;

        virtual HRESULT put_Alignment(
            WdListLevelAlignment prop) = 0;

        virtual HRESULT get_TextPosition(
            single *prop /Out/) = 0;

        virtual HRESULT put_TextPosition(
            single prop) = 0;

        virtual HRESULT get_TabPosition(
            single *prop /Out/) = 0;

        virtual HRESULT put_TabPosition(
            single prop) = 0;

        virtual HRESULT get_ResetOnHigherOld(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ResetOnHigherOld(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_StartAt(
            long *prop /Out/) = 0;

        virtual HRESULT put_StartAt(
            long prop) = 0;

        virtual HRESULT get_LinkedStyle(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_LinkedStyle(
            BSTR prop) = 0;

        virtual HRESULT get_Font(
            Font **prop /Out/) = 0;

        virtual HRESULT put_Font(
            Font *prop) = 0;

        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_ResetOnHigher(
            long *prop /Out/) = 0;

        virtual HRESULT put_ResetOnHigher(
            long prop) = 0;

        virtual HRESULT get_PictureBullet(
            InlineShape **prop /Out/) = 0;

        virtual HRESULT ApplyPictureBullet(
            BSTR FileName,
            InlineShape **prop /Out/) = 0;

    };
};
