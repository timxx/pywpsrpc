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
    struct DiagramNode : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

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
            MsoRelativeNodePosition Pos = (wpsapi::MsoRelativeNodePosition)-1,
            MsoDiagramNodeType NodeType = wpsapi::msoDiagramNode,
            DiagramNode **prop /Out/ = 0) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT MoveNode(
            DiagramNode **TargetNode /Out/,
            MsoRelativeNodePosition Pos) = 0;

        virtual HRESULT ReplaceNode(
            DiagramNode **TargetNode /Out/) = 0;

        virtual HRESULT SwapNode(
            DiagramNode **TargetNode /Out/,
            MsoRelativeNodePosition Pos = (wpsapi::MsoRelativeNodePosition)-1) = 0;

        virtual HRESULT CloneNode(
            VARIANT_BOOL copyChildren,
            DiagramNode **TargetNode /Out/,
            MsoRelativeNodePosition Pos = (wpsapi::MsoRelativeNodePosition)-1,
            DiagramNode **prop /Out/ = 0) = 0;

        virtual HRESULT TransferChildren(
            DiagramNode **ReceivingNode /Out/) = 0;

        virtual HRESULT NextNode(
            DiagramNode **prop /Out/) = 0;

        virtual HRESULT PrevNode(
            DiagramNode **prop /Out/) = 0;

        Application* getApplication();
        %MethodCode
            wpsapi::Application *prop = nullptr;
            HRESULT hr = sipCpp->get_Application(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Application()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Application, get=getApplication)

        DiagramNodeChildren* getChildren();
        %MethodCode
            wpsapi::DiagramNodeChildren *prop = nullptr;
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
            wpsapi::Shape *prop = nullptr;
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
            wpsapi::DiagramNode *prop = nullptr;
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

        Diagram* getDiagram();
        %MethodCode
            wpsapi::Diagram *prop = nullptr;
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
            wpsapi::MsoOrgChartLayoutType prop = (wpsapi::MsoOrgChartLayoutType)0;
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
            wpsapi::Shape *prop = nullptr;
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
