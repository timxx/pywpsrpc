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

        DiagramNodeChildren* getChildren();
        %MethodCode
            etapi::DiagramNodeChildren *prop = nullptr;
            HRESULT hr = sipCpp->get_Children(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Children()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Children, get=getChildren)

        Shape* getShape();
        %MethodCode
            etapi::Shape *prop = nullptr;
            HRESULT hr = sipCpp->get_Shape(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Shape()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Shape, get=getShape)

        DiagramNode* getRoot();
        %MethodCode
            etapi::DiagramNode *prop = nullptr;
            HRESULT hr = sipCpp->get_Root(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Root()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Root, get=getRoot)

        ksoapi::IMsoDiagram* getDiagram();
        %MethodCode
            ksoapi::IMsoDiagram *prop = nullptr;
            HRESULT hr = sipCpp->get_Diagram(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Diagram()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Diagram, get=getDiagram)

        MsoOrgChartLayoutType getLayout();
        %MethodCode
            etapi::MsoOrgChartLayoutType prop = (etapi::MsoOrgChartLayoutType)0;
            HRESULT hr = sipCpp->get_Layout(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Layout()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLayout(MsoOrgChartLayoutType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Layout(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Layout()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Layout, get=getLayout, set=setLayout)

        Shape* getTextShape();
        %MethodCode
            etapi::Shape *prop = nullptr;
            HRESULT hr = sipCpp->get_TextShape(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextShape()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TextShape, get=getTextShape)
    };
};
