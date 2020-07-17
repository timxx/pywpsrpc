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
    struct IStyle : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_AddIndent(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AddIndent(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_BuiltIn(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_Borders(
            Borders **RHS /Out/) = 0;

        virtual HRESULT Delete(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Font(
            Font **RHS /Out/) = 0;

        virtual HRESULT get_FormulaHidden(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_FormulaHidden(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_HorizontalAlignment(
            XlHAlign *RHS /Out/) = 0;

        virtual HRESULT put_HorizontalAlignment(
            XlHAlign RHS) = 0;

        virtual HRESULT get_IncludeAlignment(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_IncludeAlignment(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_IncludeBorder(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_IncludeBorder(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_IncludeFont(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_IncludeFont(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_IncludeNumber(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_IncludeNumber(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_IncludePatterns(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_IncludePatterns(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_IncludeProtection(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_IncludeProtection(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_IndentLevel(
            long *RHS /Out/) = 0;

        virtual HRESULT put_IndentLevel(
            long RHS) = 0;

        virtual HRESULT get_Interior(
            Interior **RHS /Out/) = 0;

        virtual HRESULT get_Locked(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Locked(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_MergeCells(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_MergeCells(
            VARIANT RHS) = 0;

        virtual HRESULT get_Name(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_NameLocal(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_NumberFormat(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_NumberFormat(
            BSTR RHS) = 0;

        virtual HRESULT get_NumberFormatLocal(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_NumberFormatLocal(
            BSTR RHS) = 0;

        virtual HRESULT get_Orientation(
            XlOrientation *RHS /Out/) = 0;

        virtual HRESULT put_Orientation(
            XlOrientation RHS) = 0;

        virtual HRESULT get_ShrinkToFit(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShrinkToFit(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Value(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_VerticalAlignment(
            XlVAlign *RHS /Out/) = 0;

        virtual HRESULT put_VerticalAlignment(
            XlVAlign RHS) = 0;

        virtual HRESULT get_WrapText(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_WrapText(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get__Default(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_ReadingOrder(
            long *RHS /Out/) = 0;

        virtual HRESULT put_ReadingOrder(
            long RHS) = 0;

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

        VARIANT_BOOL getAddIndent();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
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

        PyObject* setAddIndent(VARIANT_BOOL prop);
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

        VARIANT_BOOL getBuiltIn();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_BuiltIn(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BuiltIn()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=BuiltIn, get=getBuiltIn)

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

        VARIANT_BOOL getFormulaHidden();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
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

        PyObject* setFormulaHidden(VARIANT_BOOL prop);
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

        XlHAlign getHorizontalAlignment();
        %MethodCode
            etapi::XlHAlign prop = (etapi::XlHAlign)0;
            HRESULT hr = sipCpp->get_HorizontalAlignment(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HorizontalAlignment()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHorizontalAlignment(XlHAlign prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HorizontalAlignment(a0);
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

        VARIANT_BOOL getIncludeAlignment();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IncludeAlignment(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IncludeAlignment()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setIncludeAlignment(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_IncludeAlignment(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_IncludeAlignment()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=IncludeAlignment, get=getIncludeAlignment, set=setIncludeAlignment)

        VARIANT_BOOL getIncludeBorder();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IncludeBorder(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IncludeBorder()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setIncludeBorder(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_IncludeBorder(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_IncludeBorder()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=IncludeBorder, get=getIncludeBorder, set=setIncludeBorder)

        VARIANT_BOOL getIncludeFont();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IncludeFont(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IncludeFont()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setIncludeFont(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_IncludeFont(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_IncludeFont()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=IncludeFont, get=getIncludeFont, set=setIncludeFont)

        VARIANT_BOOL getIncludeNumber();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IncludeNumber(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IncludeNumber()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setIncludeNumber(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_IncludeNumber(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_IncludeNumber()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=IncludeNumber, get=getIncludeNumber, set=setIncludeNumber)

        VARIANT_BOOL getIncludePatterns();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IncludePatterns(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IncludePatterns()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setIncludePatterns(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_IncludePatterns(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_IncludePatterns()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=IncludePatterns, get=getIncludePatterns, set=setIncludePatterns)

        VARIANT_BOOL getIncludeProtection();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IncludeProtection(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IncludeProtection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setIncludeProtection(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_IncludeProtection(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_IncludeProtection()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=IncludeProtection, get=getIncludeProtection, set=setIncludeProtection)

        long getIndentLevel();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_IndentLevel(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IndentLevel()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setIndentLevel(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_IndentLevel(a0);
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

        VARIANT_BOOL getLocked();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
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

        PyObject* setLocked(VARIANT_BOOL prop);
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

        BSTR getName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Name(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Name()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Name, get=getName)

        BSTR getNameLocal();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_NameLocal(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NameLocal()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=NameLocal, get=getNameLocal)

        BSTR getNumberFormat();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_NumberFormat(prop);
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

        PyObject* setNumberFormat(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NumberFormat(*a0);
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

        BSTR getNumberFormatLocal();
        %MethodCode
            BSTR *prop = new BSTR;
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

        PyObject* setNumberFormatLocal(BSTR prop);
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

        XlOrientation getOrientation();
        %MethodCode
            etapi::XlOrientation prop = (etapi::XlOrientation)0;
            HRESULT hr = sipCpp->get_Orientation(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Orientation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOrientation(XlOrientation prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Orientation(a0);
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

        VARIANT_BOOL getShrinkToFit();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
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

        PyObject* setShrinkToFit(VARIANT_BOOL prop);
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

        BSTR getValue();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Value(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Value()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Value, get=getValue)

        XlVAlign getVerticalAlignment();
        %MethodCode
            etapi::XlVAlign prop = (etapi::XlVAlign)0;
            HRESULT hr = sipCpp->get_VerticalAlignment(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_VerticalAlignment()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setVerticalAlignment(XlVAlign prop);
        %MethodCode
            HRESULT hr = sipCpp->put_VerticalAlignment(a0);
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

        VARIANT_BOOL getWrapText();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
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

        PyObject* setWrapText(VARIANT_BOOL prop);
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

        BSTR get_Default();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get__Default(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get__Default()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=_Default, get=get_Default)

        long getReadingOrder();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_ReadingOrder(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ReadingOrder()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setReadingOrder(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ReadingOrder(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ReadingOrder()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ReadingOrder, get=getReadingOrder, set=setReadingOrder)
    };
};
