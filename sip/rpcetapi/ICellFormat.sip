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
    struct ICellFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Borders(
            Borders **RHS /Out/) = 0;

        virtual HRESULT putref_Borders(
            Borders *RHS) = 0;

        virtual HRESULT get_Font(
            Font **RHS /Out/) = 0;

        virtual HRESULT putref_Font(
            Font *RHS) = 0;

        virtual HRESULT get_Interior(
            Interior **RHS /Out/) = 0;

        virtual HRESULT putref_Interior(
            Interior *RHS) = 0;

        virtual HRESULT get_NumberFormat(
            long lcid,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_NumberFormat(
            long lcid,
            VARIANT RHS) = 0;

        virtual HRESULT get_NumberFormatLocal(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_NumberFormatLocal(
            VARIANT RHS) = 0;

        virtual HRESULT get_AddIndent(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_AddIndent(
            VARIANT RHS) = 0;

        virtual HRESULT get_IndentLevel(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_IndentLevel(
            VARIANT RHS) = 0;

        virtual HRESULT get_HorizontalAlignment(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_HorizontalAlignment(
            VARIANT RHS) = 0;

        virtual HRESULT get_VerticalAlignment(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_VerticalAlignment(
            VARIANT RHS) = 0;

        virtual HRESULT get_Orientation(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Orientation(
            VARIANT RHS) = 0;

        virtual HRESULT get_ShrinkToFit(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_ShrinkToFit(
            VARIANT RHS) = 0;

        virtual HRESULT get_WrapText(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_WrapText(
            VARIANT RHS) = 0;

        virtual HRESULT get_Locked(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Locked(
            VARIANT RHS) = 0;

        virtual HRESULT get_FormulaHidden(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_FormulaHidden(
            VARIANT RHS) = 0;

        virtual HRESULT get_MergeCells(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_MergeCells(
            VARIANT RHS) = 0;

        virtual HRESULT Clear() = 0;

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

        Borders* getBorders();
        %MethodCode
            etapi::Borders *prop = nullptr;
            HRESULT hr = sipCpp->get_Borders(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Borders()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Borders, get=getBorders)

        Font* getFont();
        %MethodCode
            etapi::Font *prop = nullptr;
            HRESULT hr = sipCpp->get_Font(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Font()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Font, get=getFont)

        Interior* getInterior();
        %MethodCode
            etapi::Interior *prop = nullptr;
            HRESULT hr = sipCpp->get_Interior(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Interior()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Interior, get=getInterior)

        VARIANT getNumberFormat();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_NumberFormat(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NumberFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNumberFormat(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NumberFormat(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NumberFormat()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NumberFormat, get=getNumberFormat, set=setNumberFormat)

        VARIANT getNumberFormatLocal();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_NumberFormatLocal(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NumberFormatLocal()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNumberFormatLocal(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NumberFormatLocal(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NumberFormatLocal()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NumberFormatLocal, get=getNumberFormatLocal, set=setNumberFormatLocal)

        VARIANT getAddIndent();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_AddIndent(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AddIndent()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAddIndent(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AddIndent(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AddIndent()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AddIndent, get=getAddIndent, set=setAddIndent)

        VARIANT getIndentLevel();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_IndentLevel(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IndentLevel()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setIndentLevel(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_IndentLevel(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_IndentLevel()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=IndentLevel, get=getIndentLevel, set=setIndentLevel)

        VARIANT getHorizontalAlignment();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_HorizontalAlignment(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HorizontalAlignment()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHorizontalAlignment(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HorizontalAlignment(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HorizontalAlignment()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HorizontalAlignment, get=getHorizontalAlignment, set=setHorizontalAlignment)

        VARIANT getVerticalAlignment();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_VerticalAlignment(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_VerticalAlignment()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setVerticalAlignment(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_VerticalAlignment(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_VerticalAlignment()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=VerticalAlignment, get=getVerticalAlignment, set=setVerticalAlignment)

        VARIANT getOrientation();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Orientation(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Orientation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOrientation(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Orientation(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Orientation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Orientation, get=getOrientation, set=setOrientation)

        VARIANT getShrinkToFit();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_ShrinkToFit(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShrinkToFit()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShrinkToFit(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShrinkToFit(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShrinkToFit()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShrinkToFit, get=getShrinkToFit, set=setShrinkToFit)

        VARIANT getWrapText();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_WrapText(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WrapText()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWrapText(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_WrapText(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_WrapText()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=WrapText, get=getWrapText, set=setWrapText)

        VARIANT getLocked();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Locked(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Locked()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLocked(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Locked(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Locked()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Locked, get=getLocked, set=setLocked)

        VARIANT getFormulaHidden();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_FormulaHidden(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FormulaHidden()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFormulaHidden(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FormulaHidden(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FormulaHidden()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FormulaHidden, get=getFormulaHidden, set=setFormulaHidden)

        VARIANT getMergeCells();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_MergeCells(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MergeCells()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMergeCells(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MergeCells(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MergeCells()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MergeCells, get=getMergeCells, set=setMergeCells)
    };
};
