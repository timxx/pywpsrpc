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
    struct IChartFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Fill(
            FillFormat **RHS /Out/) = 0;

        virtual HRESULT get_Glow(
            ksoapi::GlowFormat **RHS /Out/) = 0;

        virtual HRESULT get_Line(
            LineFormat **RHS /Out/) = 0;

        virtual HRESULT get_PictureFormat(
            PictureFormat **RHS /Out/) = 0;

        virtual HRESULT get_Shadow(
            ShadowFormat **RHS /Out/) = 0;

        virtual HRESULT get_SoftEdge(
            ksoapi::SoftEdgeFormat **RHS /Out/) = 0;

        virtual HRESULT get_TextFrame2(
            TextFrame2 **RHS /Out/) = 0;

        virtual HRESULT get_ThreeD(
            ThreeDFormat **RHS /Out/) = 0;

        virtual HRESULT get_Adjustments(
            Adjustments **RHS /Out/) = 0;

        virtual HRESULT get_AutoShapeType(
            etapi::MsoAutoShapeType *RHS /Out/) = 0;

        virtual HRESULT put_AutoShapeType(
            etapi::MsoAutoShapeType RHS) = 0;

    };
};
