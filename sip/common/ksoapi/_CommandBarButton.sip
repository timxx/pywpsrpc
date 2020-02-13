/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace ksoapi
{
    struct _CommandBarButton : public ksoapi::CommandBarControl /Abstract/
    {
    public:
        virtual HRESULT get_BuiltInFace(
            VARIANT_BOOL *pvarfBuiltIn /Out/) = 0;

        virtual HRESULT put_BuiltInFace(
            VARIANT_BOOL pvarfBuiltIn) = 0;

        virtual HRESULT CopyFace() = 0;

        virtual HRESULT get_FaceId(
            int *pid /Out/) = 0;

        virtual HRESULT put_FaceId(
            int pid) = 0;

        virtual HRESULT PasteFace() = 0;

        virtual HRESULT get_ShortcutText(
            BSTR *pbstrText /Out/) = 0;

        virtual HRESULT put_ShortcutText(
            BSTR pbstrText) = 0;

        virtual HRESULT get_State(
            MsoButtonState *pstate /Out/) = 0;

        virtual HRESULT put_State(
            MsoButtonState pstate) = 0;

        virtual HRESULT get_Style(
            MsoButtonStyle *pstyle /Out/) = 0;

        virtual HRESULT put_Style(
            MsoButtonStyle pstyle) = 0;

        virtual HRESULT get_HyperlinkType(
            MsoCommandBarButtonHyperlinkType *phlType /Out/) = 0;

        virtual HRESULT put_HyperlinkType(
            MsoCommandBarButtonHyperlinkType phlType) = 0;

        virtual HRESULT get_Picture(
            IPictureDisp **ppdispPicture /Out/) = 0;

        virtual HRESULT put_Picture(
            IPictureDisp *ppdispPicture) = 0;

        virtual HRESULT get_Mask(
            IPictureDisp **ppipictdispMask /Out/) = 0;

        virtual HRESULT put_Mask(
            IPictureDisp *ppipictdispMask) = 0;

        virtual HRESULT get_InstanceIdPtr(
            VARIANT *pvarPic /Out/) = 0;

    };
};
