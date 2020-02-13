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
    struct DiagramNode : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT AddNode(
            MsoRelativeNodePosition Pos,
            MsoDiagramNodeType NodeType,
            DiagramNode **NewNode /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT MoveNode(
            DiagramNode *TargetNode,
            MsoRelativeNodePosition Pos) = 0;

        virtual HRESULT ReplaceNode(
            DiagramNode *TargetNode) = 0;

        virtual HRESULT SwapNode(
            DiagramNode *TargetNode,
            VARIANT_BOOL SwapChildren = -1) = 0;

        virtual HRESULT CloneNode(
            VARIANT_BOOL CopyChildren,
            DiagramNode *TargetNode,
            MsoRelativeNodePosition Pos,
            DiagramNode **Node /Out/) = 0;

        virtual HRESULT TransferChildren(
            DiagramNode *ReceivingNode) = 0;

        virtual HRESULT NextNode(
            DiagramNode **NextNode /Out/) = 0;

        virtual HRESULT PrevNode(
            DiagramNode **PrevNode /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Children(
            DiagramNodeChildren **Children /Out/) = 0;

        virtual HRESULT get_Shape(
            Shape **Shape /Out/) = 0;

        virtual HRESULT get_Root(
            DiagramNode **Root /Out/) = 0;

        virtual HRESULT get_Diagram(
            IMsoDiagram **Diagram /Out/) = 0;

        virtual HRESULT get_Layout(
            MsoOrgChartLayoutType *Type /Out/) = 0;

        virtual HRESULT put_Layout(
            MsoOrgChartLayoutType Type) = 0;

        virtual HRESULT get_TextShape(
            Shape **Shape /Out/) = 0;

    };
};
