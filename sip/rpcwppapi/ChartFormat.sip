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
    struct ChartFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Fill(
            FillFormat **ppFill /Out/) = 0;

        virtual HRESULT get_Glow(
            ksoapi::GlowFormat **ppGlow /Out/) = 0;

        virtual HRESULT get_Line(
            LineFormat **ppLine /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **ppparent /Out/) = 0;

        virtual HRESULT get_PictureFormat(
            PictureFormat **ppPictureFormat /Out/) = 0;

        virtual HRESULT get_Shadow(
            ShadowFormat **ppShadow /Out/) = 0;

        virtual HRESULT get_SoftEdge(
            ksoapi::SoftEdgeFormat **ppSoftEdge /Out/) = 0;

        virtual HRESULT get_TextFrame2(
            TextFrame2 **ppTextFrame /Out/) = 0;

        virtual HRESULT get_ThreeD(
            ThreeDFormat **ppThreeD /Out/) = 0;

        virtual HRESULT get_Creator(
            long *pval /Out/) = 0;

        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Adjustments(
            Adjustments **ppAdjustments /Out/) = 0;

        virtual HRESULT get_AutoShapeType(
            MsoAutoShapeType *AutoShapeType /Out/) = 0;

        virtual HRESULT put_AutoShapeType(
            MsoAutoShapeType AutoShapeType) = 0;

    };
};
