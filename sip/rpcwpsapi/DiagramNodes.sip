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
    struct DiagramNodes : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT Item(
            VARIANT *Index,
            DiagramNode **prop /Out/) = 0;

        virtual HRESULT SelectAll() = 0;
    };

    struct DiagramNode : public IDispatch /Abstract/
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

        virtual HRESULT get_Children(
            DiagramNodeChildren **prop /Out/) = 0;

        virtual HRESULT get_Shape(
            Shape **prop /Out/) = 0;

        virtual HRESULT get_Root(
            DiagramNode **prop /Out/) = 0;

        virtual HRESULT get_Diagram(
            Diagram **prop /Out/) = 0;

        virtual HRESULT get_Layout(
            MsoOrgChartLayoutType *prop /Out/) = 0;

        virtual HRESULT put_Layout(
            MsoOrgChartLayoutType prop) = 0;

        virtual HRESULT get_TextShape(
            Shape **prop /Out/) = 0;

        virtual HRESULT AddNode(
            MsoRelativeNodePosition Pos,
            MsoDiagramNodeType NodeType,
            DiagramNode **prop /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT MoveNode(
            DiagramNode **TargetNode /Out/,
            MsoRelativeNodePosition Pos) = 0;

        virtual HRESULT ReplaceNode(
            DiagramNode **TargetNode /Out/) = 0;

        virtual HRESULT SwapNode(
            DiagramNode **TargetNode /Out/,
            MsoRelativeNodePosition Pos = wpsapi::msoBeforeNode) = 0;

        virtual HRESULT CloneNode(
            VARIANT_BOOL copyChildren,
            DiagramNode **TargetNode /Out/,
            MsoRelativeNodePosition Pos,
            DiagramNode **prop /Out/) = 0;

        virtual HRESULT TransferChildren(
            DiagramNode **ReceivingNode /Out/) = 0;

        virtual HRESULT NextNode(
            DiagramNode **prop /Out/) = 0;

        virtual HRESULT PrevNode(
            DiagramNode **prop /Out/) = 0;
    };

    struct DiagramNodeChildren : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT get_FirstChild(
            DiagramNode **prop /Out/) = 0;

        virtual HRESULT get_LastChild(
            DiagramNode **prop /Out/) = 0;

        virtual HRESULT Item(
            VARIANT *Index,
            DiagramNode **prop /Out/) = 0;

        virtual HRESULT AddNode(
            VARIANT *Index,
            MsoDiagramNodeType NodeType,
            DiagramNode **prop /Out/) = 0;

        virtual HRESULT SelectAll() = 0;
    };

    struct Diagram : public IDispatch /Abstract/
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

        virtual HRESULT get_Nodes(
            DiagramNodes **prop /Out/) = 0;

        virtual HRESULT get_Type(
            MsoDiagramType *prop /Out/) = 0;

        virtual HRESULT get_AutoLayout(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_AutoLayout(
            MsoTriState prop) = 0;

        virtual HRESULT get_Reverse(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_Reverse(
            MsoTriState prop) = 0;

        virtual HRESULT get_AutoFormat(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_AutoFormat(
            MsoTriState prop) = 0;

        virtual HRESULT Convert(
            MsoDiagramType Type) = 0;

        virtual HRESULT FitText() = 0;
    };
};