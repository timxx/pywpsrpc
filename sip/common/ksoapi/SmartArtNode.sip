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

        MsoOrgChartLayoutType getOrgChartLayout();
        %MethodCode
            ksoapi::MsoOrgChartLayoutType prop = (ksoapi::MsoOrgChartLayoutType)0;
            HRESULT hr = sipCpp->get_OrgChartLayout(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OrgChartLayout()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOrgChartLayout(MsoOrgChartLayoutType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OrgChartLayout(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OrgChartLayout()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OrgChartLayout, get=getOrgChartLayout, set=setOrgChartLayout)

        ShapeRange* getShapes();
        %MethodCode
            ksoapi::ShapeRange *prop = nullptr;
            HRESULT hr = sipCpp->get_Shapes(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Shapes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Shapes, get=getShapes)

        TextFrame2* getTextFrame2();
        %MethodCode
            ksoapi::TextFrame2 *prop = nullptr;
            HRESULT hr = sipCpp->get_TextFrame2(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextFrame2()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TextFrame2, get=getTextFrame2)

        int getLevel();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_Level(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Level()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Level, get=getLevel)

        MsoTriState getHidden();
        %MethodCode
            ksoapi::MsoTriState prop = (ksoapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_Hidden(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Hidden()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Hidden, get=getHidden)

        SmartArtNodes* getNodes();
        %MethodCode
            ksoapi::SmartArtNodes *prop = nullptr;
            HRESULT hr = sipCpp->get_Nodes(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Nodes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Nodes, get=getNodes)

        SmartArtNode* getParentNode();
        %MethodCode
            ksoapi::SmartArtNode *prop = nullptr;
            HRESULT hr = sipCpp->get_ParentNode(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ParentNode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ParentNode, get=getParentNode)

        MsoSmartArtNodeType getType();
        %MethodCode
            ksoapi::MsoSmartArtNodeType prop = (ksoapi::MsoSmartArtNodeType)0;
            HRESULT hr = sipCpp->get_Type(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Type()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Type, get=getType)
    };
};
