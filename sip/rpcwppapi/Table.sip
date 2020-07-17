/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wppapi
{
    struct Table : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Columns(
            Columns **Columns /Out/) = 0;

        virtual HRESULT get_Rows(
            Rows **Rows /Out/) = 0;

        virtual HRESULT Cell(
            int Row,
            int Column,
            Cell **Cell /Out/) = 0;

        virtual HRESULT get_TableDirection(
            PpDirection *TableDirection /Out/) = 0;

        virtual HRESULT put_TableDirection(
            PpDirection TableDirection) = 0;

        virtual HRESULT MergeBorders() = 0;

        virtual HRESULT get_FirstRow(
            VARIANT_BOOL *FirstRow /Out/) = 0;

        virtual HRESULT put_FirstRow(
            VARIANT_BOOL FirstRow) = 0;

        virtual HRESULT get_LastRow(
            VARIANT_BOOL *LastRow /Out/) = 0;

        virtual HRESULT put_LastRow(
            VARIANT_BOOL LastRow) = 0;

        virtual HRESULT get_FirstCol(
            VARIANT_BOOL *FirstCol /Out/) = 0;

        virtual HRESULT put_FirstCol(
            VARIANT_BOOL FirstCol) = 0;

        virtual HRESULT get_LastCol(
            VARIANT_BOOL *LastCol /Out/) = 0;

        virtual HRESULT put_LastCol(
            VARIANT_BOOL LastCol) = 0;

        virtual HRESULT get_HorizBanding(
            VARIANT_BOOL *HorizBanding /Out/) = 0;

        virtual HRESULT put_HorizBanding(
            VARIANT_BOOL HorizBanding) = 0;

        virtual HRESULT get_VertBanding(
            VARIANT_BOOL *VertBanding /Out/) = 0;

        virtual HRESULT put_VertBanding(
            VARIANT_BOOL VertBanding) = 0;

        virtual HRESULT get_Style(
            TableStyle **Style /Out/) = 0;

        virtual HRESULT get_Background(
            TableBackground **Background /Out/) = 0;

        virtual HRESULT ScaleProportionally(
            single scale) = 0;

        virtual HRESULT ApplyStyle(
            BSTR StyleID = 0,
            VARIANT_BOOL SaveFormatting = VARIANT_FALSE) = 0;

        virtual HRESULT get_AlternativeText(
            BSTR *AlternativeText /Out/) = 0;

        virtual HRESULT put_AlternativeText(
            BSTR AlternativeText) = 0;

        virtual HRESULT get_Title(
            BSTR *Title /Out/) = 0;

        virtual HRESULT put_Title(
            BSTR Title) = 0;

        Application* getApplication();
        %MethodCode
            wppapi::Application *prop = nullptr;
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

        Columns* getColumns();
        %MethodCode
            wppapi::Columns *prop = nullptr;
            HRESULT hr = sipCpp->get_Columns(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Columns()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Columns, get=getColumns)

        Rows* getRows();
        %MethodCode
            wppapi::Rows *prop = nullptr;
            HRESULT hr = sipCpp->get_Rows(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Rows()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Rows, get=getRows)

        PpDirection getTableDirection();
        %MethodCode
            wppapi::PpDirection prop = (wppapi::PpDirection)0;
            HRESULT hr = sipCpp->get_TableDirection(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TableDirection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTableDirection(PpDirection prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TableDirection(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TableDirection()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TableDirection, get=getTableDirection, set=setTableDirection)

        VARIANT_BOOL getFirstRow();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_FirstRow(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FirstRow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFirstRow(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FirstRow(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FirstRow()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FirstRow, get=getFirstRow, set=setFirstRow)

        VARIANT_BOOL getLastRow();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_LastRow(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LastRow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLastRow(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LastRow(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LastRow()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LastRow, get=getLastRow, set=setLastRow)

        VARIANT_BOOL getFirstCol();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_FirstCol(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FirstCol()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFirstCol(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FirstCol(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FirstCol()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FirstCol, get=getFirstCol, set=setFirstCol)

        VARIANT_BOOL getLastCol();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_LastCol(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LastCol()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLastCol(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LastCol(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LastCol()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LastCol, get=getLastCol, set=setLastCol)

        VARIANT_BOOL getHorizBanding();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HorizBanding(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HorizBanding()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHorizBanding(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HorizBanding(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HorizBanding()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HorizBanding, get=getHorizBanding, set=setHorizBanding)

        VARIANT_BOOL getVertBanding();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_VertBanding(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_VertBanding()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setVertBanding(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_VertBanding(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_VertBanding()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=VertBanding, get=getVertBanding, set=setVertBanding)

        TableStyle* getStyle();
        %MethodCode
            wppapi::TableStyle *prop = nullptr;
            HRESULT hr = sipCpp->get_Style(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Style()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Style, get=getStyle)

        TableBackground* getBackground();
        %MethodCode
            wppapi::TableBackground *prop = nullptr;
            HRESULT hr = sipCpp->get_Background(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Background()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Background, get=getBackground)

        BSTR getAlternativeText();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_AlternativeText(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AlternativeText()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAlternativeText(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AlternativeText(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AlternativeText()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AlternativeText, get=getAlternativeText, set=setAlternativeText)

        BSTR getTitle();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Title(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Title()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTitle(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Title(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Title()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Title, get=getTitle, set=setTitle)
    };
};
