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
    struct Cell : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_RowIndex(
            long *prop /Out/) = 0;

        virtual HRESULT get_ColumnIndex(
            long *prop /Out/) = 0;

        virtual HRESULT get_Width(
            single *prop /Out/) = 0;

        virtual HRESULT put_Width(
            single prop) = 0;

        virtual HRESULT get_Height(
            single *prop /Out/) = 0;

        virtual HRESULT put_Height(
            single prop) = 0;

        virtual HRESULT get_HeightRule(
            WdRowHeightRule *prop /Out/) = 0;

        virtual HRESULT put_HeightRule(
            WdRowHeightRule prop) = 0;

        virtual HRESULT get_VerticalAlignment(
            WdCellVerticalAlignment *prop /Out/) = 0;

        virtual HRESULT put_VerticalAlignment(
            WdCellVerticalAlignment prop) = 0;

        virtual HRESULT get_Column(
            Column **prop /Out/) = 0;

        virtual HRESULT get_Row(
            Row **prop /Out/) = 0;

        virtual HRESULT get_Next(
            Cell **prop /Out/) = 0;

        virtual HRESULT get_Previous(
            Cell **prop /Out/) = 0;

        virtual HRESULT get_Shading(
            Shading **prop /Out/) = 0;

        virtual HRESULT get_Borders(
            Borders **prop /Out/) = 0;

        virtual HRESULT put_Borders(
            Borders *prop) = 0;

        virtual HRESULT Select() = 0;

        virtual HRESULT Delete(
            VARIANT *ShiftCells = argMissing()) = 0;

        virtual HRESULT Formula(
            VARIANT *Formula = argMissing(),
            VARIANT *NumFormat = argMissing()) = 0;

        virtual HRESULT SetWidth(
            single ColumnWidth,
            WdRulerStyle RulerStyle) = 0;

        virtual HRESULT SetHeight(
            VARIANT *RowHeight,
            WdRowHeightRule HeightRule) = 0;

        virtual HRESULT Merge(
            Cell *MergeTo) = 0;

        virtual HRESULT Split(
            VARIANT *NumRows = argMissing(),
            VARIANT *NumColumns = argMissing()) = 0;

        virtual HRESULT AutoSum() = 0;

        virtual HRESULT get_Tables(
            Tables **prop /Out/) = 0;

        virtual HRESULT get_NestingLevel(
            long *prop /Out/) = 0;

        virtual HRESULT get_WordWrap(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_WordWrap(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_PreferredWidth(
            single *prop /Out/) = 0;

        virtual HRESULT put_PreferredWidth(
            single prop) = 0;

        virtual HRESULT get_FitText(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_FitText(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_TopPadding(
            single *prop /Out/) = 0;

        virtual HRESULT put_TopPadding(
            single prop) = 0;

        virtual HRESULT get_BottomPadding(
            single *prop /Out/) = 0;

        virtual HRESULT put_BottomPadding(
            single prop) = 0;

        virtual HRESULT get_LeftPadding(
            single *prop /Out/) = 0;

        virtual HRESULT put_LeftPadding(
            single prop) = 0;

        virtual HRESULT get_RightPadding(
            single *prop /Out/) = 0;

        virtual HRESULT put_RightPadding(
            single prop) = 0;

        virtual HRESULT get_ID(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_ID(
            BSTR prop) = 0;

        virtual HRESULT get_PreferredWidthType(
            WdPreferredWidthType *prop /Out/) = 0;

        virtual HRESULT put_PreferredWidthType(
            WdPreferredWidthType prop) = 0;

        Range* getRange();
        %MethodCode
            wpsapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_Range(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Range()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Range, get=getRange)

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

        long getRowIndex();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_RowIndex(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RowIndex()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=RowIndex, get=getRowIndex)

        long getColumnIndex();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_ColumnIndex(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ColumnIndex()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ColumnIndex, get=getColumnIndex)

        single getWidth();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_Width(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Width()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWidth(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Width(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Width()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Width, get=getWidth, set=setWidth)

        single getHeight();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_Height(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Height()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHeight(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Height(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Height()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Height, get=getHeight, set=setHeight)

        WdRowHeightRule getHeightRule();
        %MethodCode
            wpsapi::WdRowHeightRule prop = (wpsapi::WdRowHeightRule)0;
            HRESULT hr = sipCpp->get_HeightRule(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HeightRule()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHeightRule(WdRowHeightRule prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HeightRule(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HeightRule()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HeightRule, get=getHeightRule, set=setHeightRule)

        WdCellVerticalAlignment getVerticalAlignment();
        %MethodCode
            wpsapi::WdCellVerticalAlignment prop = (wpsapi::WdCellVerticalAlignment)0;
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

        PyObject* setVerticalAlignment(WdCellVerticalAlignment prop);
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

        Column* getColumn();
        %MethodCode
            wpsapi::Column *prop = nullptr;
            HRESULT hr = sipCpp->get_Column(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Column()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Column, get=getColumn)

        Row* getRow();
        %MethodCode
            wpsapi::Row *prop = nullptr;
            HRESULT hr = sipCpp->get_Row(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Row()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Row, get=getRow)

        Cell* getNext();
        %MethodCode
            wpsapi::Cell *prop = nullptr;
            HRESULT hr = sipCpp->get_Next(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Next()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Next, get=getNext)

        Cell* getPrevious();
        %MethodCode
            wpsapi::Cell *prop = nullptr;
            HRESULT hr = sipCpp->get_Previous(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Previous()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Previous, get=getPrevious)

        Shading* getShading();
        %MethodCode
            wpsapi::Shading *prop = nullptr;
            HRESULT hr = sipCpp->get_Shading(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Shading()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Shading, get=getShading)

        Borders* getBorders();
        %MethodCode
            wpsapi::Borders *prop = nullptr;
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

        PyObject* setBorders(Borders *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Borders(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Borders()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Borders, get=getBorders, set=setBorders)

        Tables* getTables();
        %MethodCode
            wpsapi::Tables *prop = nullptr;
            HRESULT hr = sipCpp->get_Tables(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Tables()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Tables, get=getTables)

        long getNestingLevel();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_NestingLevel(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NestingLevel()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=NestingLevel, get=getNestingLevel)

        VARIANT_BOOL getWordWrap();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_WordWrap(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WordWrap()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWordWrap(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_WordWrap(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_WordWrap()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=WordWrap, get=getWordWrap, set=setWordWrap)

        single getPreferredWidth();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_PreferredWidth(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PreferredWidth()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPreferredWidth(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PreferredWidth(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PreferredWidth()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PreferredWidth, get=getPreferredWidth, set=setPreferredWidth)

        VARIANT_BOOL getFitText();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_FitText(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FitText()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFitText(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FitText(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FitText()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FitText, get=getFitText, set=setFitText)

        single getTopPadding();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_TopPadding(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TopPadding()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTopPadding(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TopPadding(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TopPadding()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TopPadding, get=getTopPadding, set=setTopPadding)

        single getBottomPadding();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_BottomPadding(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BottomPadding()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBottomPadding(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BottomPadding(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BottomPadding()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BottomPadding, get=getBottomPadding, set=setBottomPadding)

        single getLeftPadding();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_LeftPadding(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LeftPadding()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLeftPadding(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LeftPadding(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LeftPadding()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LeftPadding, get=getLeftPadding, set=setLeftPadding)

        single getRightPadding();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_RightPadding(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RightPadding()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRightPadding(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RightPadding(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RightPadding()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RightPadding, get=getRightPadding, set=setRightPadding)

        BSTR getID();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ID(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ID()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setID(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ID(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ID()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ID, get=getID, set=setID)

        WdPreferredWidthType getPreferredWidthType();
        %MethodCode
            wpsapi::WdPreferredWidthType prop = (wpsapi::WdPreferredWidthType)0;
            HRESULT hr = sipCpp->get_PreferredWidthType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PreferredWidthType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPreferredWidthType(WdPreferredWidthType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PreferredWidthType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PreferredWidthType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PreferredWidthType, get=getPreferredWidthType, set=setPreferredWidthType)
    };
};
