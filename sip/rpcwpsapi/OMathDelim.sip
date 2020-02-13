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
    struct OMathDelim : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_E(
            OMathArgs **prop /Out/) = 0;

        virtual HRESULT get_BegChar(
            short *prop /Out/) = 0;

        virtual HRESULT put_BegChar(
            short prop) = 0;

        virtual HRESULT get_SepChar(
            short *prop /Out/) = 0;

        virtual HRESULT put_SepChar(
            short prop) = 0;

        virtual HRESULT get_EndChar(
            short *prop /Out/) = 0;

        virtual HRESULT put_EndChar(
            short prop) = 0;

        virtual HRESULT get_Grow(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Grow(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Shape(
            WdOMathShapeType *prop /Out/) = 0;

        virtual HRESULT put_Shape(
            WdOMathShapeType prop) = 0;

        virtual HRESULT get_NoLeftChar(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_NoLeftChar(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_NoRightChar(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_NoRightChar(
            VARIANT_BOOL prop) = 0;

    };
};
