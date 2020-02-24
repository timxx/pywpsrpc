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
    struct DiagramNode : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT AddNode(
            MsoRelativeNodePosition pos = etapi::msoBeforeNode,
            MsoDiagramNodeType nodeType = etapi::msoDiagramNode,
            DiagramNode **NewNode /Out/ = 0) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT MoveNode(
            DiagramNode *pTargetNode,
            MsoRelativeNodePosition pos) = 0;

        virtual HRESULT ReplaceNode(
            DiagramNode *pTargetNode) = 0;

        virtual HRESULT SwapNode(
            DiagramNode *pTargetNode,
            VARIANT_BOOL swapChildren = -1) = 0;

        virtual HRESULT CloneNode(
            VARIANT_BOOL copyChildren,
            DiagramNode *pTargetNode,
            MsoRelativeNodePosition pos = etapi::msoBeforeNode,
            DiagramNode **ppNode /Out/ = 0) = 0;

        virtual HRESULT TransferChildren(
            DiagramNode *pReceivingNode) = 0;

        virtual HRESULT NextNode(
            DiagramNode **ppNextNode /Out/) = 0;

        virtual HRESULT PrevNode(
            DiagramNode **ppPrevNode /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **ppParent /Out/) = 0;

        virtual HRESULT get_Children(
            DiagramNodeChildren **ppChildren /Out/) = 0;

        virtual HRESULT get_Shape(
            Shape **ppShape /Out/) = 0;

        virtual HRESULT get_Root(
            DiagramNode **ppRoot /Out/) = 0;

        virtual HRESULT get_Diagram(
            ksoapi::IMsoDiagram **ppDiagram /Out/) = 0;

        virtual HRESULT get_Layout(
            MsoOrgChartLayoutType *pdgmType /Out/) = 0;

        virtual HRESULT put_Layout(
            MsoOrgChartLayoutType pdgmType) = 0;

        virtual HRESULT get_TextShape(
            Shape **Shape /Out/) = 0;

    };
};
