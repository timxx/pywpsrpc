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
    struct SmartArtNode : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT AddNode(
            MsoSmartArtNodePosition Position = ksoapi::msoSmartArtNodeDefault,
            MsoSmartArtNodeType Type = ksoapi::msoSmartArtNodeTypeDefault,
            SmartArtNode **NewNode /Out/ = 0) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Promote() = 0;

        virtual HRESULT Demote() = 0;

        virtual HRESULT get_OrgChartLayout(
            MsoOrgChartLayoutType *Type /Out/) = 0;

        virtual HRESULT put_OrgChartLayout(
            MsoOrgChartLayoutType Type) = 0;

        virtual HRESULT get_Shapes(
            ShapeRange **Shape /Out/) = 0;

        virtual HRESULT get_TextFrame2(
            TextFrame2 **Frame /Out/) = 0;

        virtual HRESULT Larger() = 0;

        virtual HRESULT Smaller() = 0;

        virtual HRESULT get_Level(
            int *Level /Out/) = 0;

        virtual HRESULT get_Hidden(
            MsoTriState *Hidden /Out/) = 0;

        virtual HRESULT get_Nodes(
            SmartArtNodes **Nodes /Out/) = 0;

        virtual HRESULT get_ParentNode(
            SmartArtNode **Node /Out/) = 0;

        virtual HRESULT get_Type(
            MsoSmartArtNodeType *Type /Out/) = 0;

        virtual HRESULT ReorderUp() = 0;

        virtual HRESULT ReorderDown() = 0;

    };
};
