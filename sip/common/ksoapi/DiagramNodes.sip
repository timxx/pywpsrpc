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
    struct DiagramNodes : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get__NewEnum(
            IUnknown **ppunkEnum /Out/) = 0;

        virtual HRESULT Item(
            VARIANT Index,
            DiagramNode **ppdn /Out/) = 0;

        virtual HRESULT SelectAll() = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Count(
            int *iDiagramNodes /Out/) = 0;
    };

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

    struct DiagramNodeChildren : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get__NewEnum(
            IUnknown **ppunkEnum /Out/) = 0;

        virtual HRESULT Item(
            VARIANT Index,
            DiagramNode **Node /Out/) = 0;

        virtual HRESULT AddNode(
            VARIANT Index,
            MsoDiagramNodeType NodeType,
            DiagramNode **NewNode /Out/) = 0;

        virtual HRESULT SelectAll() = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Count(
            int *iDiagramNodes /Out/) = 0;

        virtual HRESULT get_FirstChild(
            DiagramNode **First /Out/) = 0;

        virtual HRESULT get_LastChild(
            DiagramNode **Last /Out/) = 0;
    };

    struct IMsoDiagram : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Nodes(
            DiagramNodes **Nodes /Out/) = 0;

        virtual HRESULT get_Type(
            MsoDiagramType *Type /Out/) = 0;

        virtual HRESULT get_AutoLayout(
            MsoTriState *AutoLayout /Out/) = 0;

        virtual HRESULT put_AutoLayout(
            MsoTriState AutoLayout) = 0;

        virtual HRESULT get_Reverse(
            MsoTriState *Reverse /Out/) = 0;

        virtual HRESULT put_Reverse(
            MsoTriState Reverse) = 0;

        virtual HRESULT get_AutoFormat(
            MsoTriState *AutoFormat /Out/) = 0;

        virtual HRESULT put_AutoFormat(
            MsoTriState AutoFormat) = 0;

        virtual HRESULT Convert(
            MsoDiagramType Type) = 0;

        virtual HRESULT FitText() = 0;
    };
};