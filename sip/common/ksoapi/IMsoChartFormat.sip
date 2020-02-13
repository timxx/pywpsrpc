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
    struct IMsoChartFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Fill(
            FillFormat **ppfill /Out/) = 0;

        virtual HRESULT get_Glow(
            GlowFormat **ppGlow /Out/) = 0;

        virtual HRESULT get_Line(
            LineFormat **ppline /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **ppParent /Out/) = 0;

        virtual HRESULT get_PictureFormat(
            PictureFormat **ppPictureFormat /Out/) = 0;

        virtual HRESULT get_Shadow(
            ShadowFormat **ppShadow /Out/) = 0;

        virtual HRESULT get_SoftEdge(
            SoftEdgeFormat **ppSoftEdge /Out/) = 0;

        virtual HRESULT get_TextFrame2(
            TextFrame2 **ppTextFrame /Out/) = 0;

        virtual HRESULT get_ThreeD(
            ThreeDFormat **ppThreeD /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **ppval /Out/) = 0;

        virtual HRESULT get_Creator(
            long *pval /Out/) = 0;

        virtual HRESULT get_Adjustments(
            Adjustments **ppAdjustments /Out/) = 0;

        virtual HRESULT get_AutoShapeType(
            MsoAutoShapeType *AutoShapeType /Out/) = 0;

        virtual HRESULT put_AutoShapeType(
            MsoAutoShapeType AutoShapeType) = 0;

    };
};
