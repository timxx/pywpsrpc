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
    struct ColorFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            IDispatch **ppidisp /Out/) = 0;

        virtual HRESULT get_Creator(
            long *plCreator /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_RGB(
            MsoRGBType *RGB /Out/) = 0;

        virtual HRESULT put_RGB(
            MsoRGBType RGB) = 0;

        virtual HRESULT get_Type(
            MsoColorType *Type /Out/) = 0;

        virtual HRESULT get_SchemeColor(
            PpColorSchemeIndex *SchemeColor /Out/) = 0;

        virtual HRESULT put_SchemeColor(
            PpColorSchemeIndex SchemeColor) = 0;

        virtual HRESULT get_TintAndShade(
            single *pValue /Out/) = 0;

        virtual HRESULT put_TintAndShade(
            single pValue) = 0;

        virtual HRESULT get_ObjectThemeColor(
            MsoThemeColorIndex *ObjectThemeColor /Out/) = 0;

        virtual HRESULT put_ObjectThemeColor(
            MsoThemeColorIndex ObjectThemeColor) = 0;

        virtual HRESULT get_Brightness(
            single *Brightness /Out/) = 0;

        virtual HRESULT put_Brightness(
            single Brightness) = 0;

    };
};
