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
    struct IPivotLine : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_LineType(
            XlPivotLineType *RHS /Out/) = 0;

        virtual HRESULT get_Position(
            long *RHS /Out/) = 0;

        virtual HRESULT get_PivotLineCells(
            PivotLineCells **RHS /Out/) = 0;

        virtual HRESULT get_PivotLineCellsFull(
            PivotLineCells **RHS /Out/) = 0;

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

        XlPivotLineType getLineType();
        %MethodCode
            etapi::XlPivotLineType prop = (etapi::XlPivotLineType)0;
            HRESULT hr = sipCpp->get_LineType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LineType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=LineType, get=getLineType)

        long getPosition();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Position(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Position()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Position, get=getPosition)

        PivotLineCells* getPivotLineCells();
        %MethodCode
            etapi::PivotLineCells *prop = nullptr;
            HRESULT hr = sipCpp->get_PivotLineCells(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PivotLineCells()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PivotLineCells, get=getPivotLineCells)

        PivotLineCells* getPivotLineCellsFull();
        %MethodCode
            etapi::PivotLineCells *prop = nullptr;
            HRESULT hr = sipCpp->get_PivotLineCellsFull(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PivotLineCellsFull()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PivotLineCellsFull, get=getPivotLineCellsFull)
    };
};
