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
    struct ShadowFormat : public IDispatch /Abstract/
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

        virtual HRESULT get_ForeColor(
            ColorFormat **prop /Out/) = 0;

        virtual HRESULT get_Obscured(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_Obscured(
            MsoTriState prop) = 0;

        virtual HRESULT get_OffsetX(
            single *prop /Out/) = 0;

        virtual HRESULT put_OffsetX(
            single prop) = 0;

        virtual HRESULT get_OffsetY(
            single *prop /Out/) = 0;

        virtual HRESULT put_OffsetY(
            single prop) = 0;

        virtual HRESULT get_Transparency(
            single *prop /Out/) = 0;

        virtual HRESULT put_Transparency(
            single prop) = 0;

        virtual HRESULT get_Type(
            MsoShadowType *prop /Out/) = 0;

        virtual HRESULT put_Type(
            MsoShadowType prop) = 0;

        virtual HRESULT get_Visible(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_Visible(
            MsoTriState prop) = 0;

        virtual HRESULT IncrementOffsetX(
            single Increment) = 0;

        virtual HRESULT IncrementOffsetY(
            single Increment) = 0;

        virtual HRESULT get_Style(
            MsoShadowStyle *prop /Out/) = 0;

        virtual HRESULT put_Style(
            MsoShadowStyle prop) = 0;

        virtual HRESULT get_Blur(
            single *prop /Out/) = 0;

        virtual HRESULT put_Blur(
            single prop) = 0;

        virtual HRESULT get_Size(
            single *prop /Out/) = 0;

        virtual HRESULT put_Size(
            single prop) = 0;

        virtual HRESULT get_RotateWithShape(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_RotateWithShape(
            MsoTriState prop) = 0;
    };
};