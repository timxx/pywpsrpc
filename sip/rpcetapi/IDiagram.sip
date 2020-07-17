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
    struct IDiagram : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Nodes(
            DiagramNodes **RHS /Out/) = 0;

        virtual HRESULT get_Type(
            MsoDiagramType *RHS /Out/) = 0;

        virtual HRESULT get_AutoLayout(
            MsoTriState *RHS /Out/) = 0;

        virtual HRESULT put_AutoLayout(
            MsoTriState RHS) = 0;

        virtual HRESULT get_Reverse(
            MsoTriState *RHS /Out/) = 0;

        virtual HRESULT put_Reverse(
            MsoTriState RHS) = 0;

        virtual HRESULT get_AutoFormat(
            MsoTriState *RHS /Out/) = 0;

        virtual HRESULT put_AutoFormat(
            MsoTriState RHS) = 0;

        virtual HRESULT Convert(
            MsoDiagramType Type) = 0;

        virtual HRESULT FitText() = 0;

        Application* getApplication();
        %MethodCode
            etapi::Application *prop = nullptr;
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

        XlCreator getCreator();
        %MethodCode
            etapi::XlCreator prop = (etapi::XlCreator)0;
            HRESULT hr = sipCpp->get_Creator(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Creator()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Creator, get=getCreator)

        DiagramNodes* getNodes();
        %MethodCode
            etapi::DiagramNodes *prop = nullptr;
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

        MsoDiagramType getType();
        %MethodCode
            etapi::MsoDiagramType prop = (etapi::MsoDiagramType)0;
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

        MsoTriState getAutoLayout();
        %MethodCode
            etapi::MsoTriState prop = (etapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_AutoLayout(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoLayout()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoLayout(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoLayout(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoLayout()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoLayout, get=getAutoLayout, set=setAutoLayout)

        MsoTriState getReverse();
        %MethodCode
            etapi::MsoTriState prop = (etapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_Reverse(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Reverse()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setReverse(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Reverse(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Reverse()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Reverse, get=getReverse, set=setReverse)

        MsoTriState getAutoFormat();
        %MethodCode
            etapi::MsoTriState prop = (etapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_AutoFormat(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoFormat(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoFormat(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoFormat()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoFormat, get=getAutoFormat, set=setAutoFormat)
    };
};
