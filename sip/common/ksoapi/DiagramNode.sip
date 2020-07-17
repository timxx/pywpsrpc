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
            MsoRelativeNodePosition Pos = ksoapi::msoBeforeNode,
            MsoDiagramNodeType NodeType = ksoapi::msoDiagramNode,
            DiagramNode **NewNode /Out/ = 0) = 0;

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
            MsoRelativeNodePosition Pos = ksoapi::msoBeforeNode,
            DiagramNode **Node /Out/ = 0) = 0;

        virtual HRESULT TransferChildren(
            DiagramNode *ReceivingNode) = 0;

        virtual HRESULT NextNode(
            DiagramNode **NextNode /Out/) = 0;

        virtual HRESULT PrevNode(
            DiagramNode **PrevNode /Out/) = 0;

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

        DiagramNodeChildren* getChildren();
        %MethodCode
            ksoapi::DiagramNodeChildren *prop = nullptr;
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
            ksoapi::Shape *prop = nullptr;
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
            ksoapi::DiagramNode *prop = nullptr;
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

        IMsoDiagram* getDiagram();
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
            ksoapi::MsoOrgChartLayoutType prop = (ksoapi::MsoOrgChartLayoutType)0;
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
            ksoapi::Shape *prop = nullptr;
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
