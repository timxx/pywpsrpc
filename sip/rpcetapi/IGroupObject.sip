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
    struct IGroupObject : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_BottomRightCell(
            Range **RHS /Out/) = 0;

        virtual HRESULT BringToFront(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT Copy(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT CopyPicture(
            XlPictureAppearance Appearance = etapi::xlPrinter,
            XlCopyPictureFormat Format = etapi::xlPicture,
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT Cut(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT Delete(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT Duplicate(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Enabled(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Enabled(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Height(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Height(
            double RHS) = 0;

        virtual HRESULT get_Index(
            long *RHS /Out/) = 0;

        virtual HRESULT get_Left(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Left(
            double RHS) = 0;

        virtual HRESULT get_Locked(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Locked(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR RHS) = 0;

        virtual HRESULT get_OnAction(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_OnAction(
            BSTR RHS) = 0;

        virtual HRESULT get_Placement(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Placement(
            VARIANT RHS) = 0;

        virtual HRESULT get_PrintObject(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_PrintObject(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT Select(
            VARIANT Replace = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT SendToBack(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Top(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Top(
            double RHS) = 0;

        virtual HRESULT get_TopLeftCell(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_Visible(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Visible(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Width(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Width(
            double RHS) = 0;

        virtual HRESULT get_ZOrder(
            long *RHS /Out/) = 0;

        virtual HRESULT get_ShapeRange(
            ShapeRange **RHS /Out/) = 0;

        virtual void _Dummy27() = 0;

        virtual void _Dummy28() = 0;

        virtual HRESULT get_AddIndent(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AddIndent(
            VARIANT_BOOL RHS) = 0;

        virtual void _Dummy30() = 0;

        virtual HRESULT get_ArrowHeadLength(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_ArrowHeadLength(
            VARIANT RHS) = 0;

        virtual HRESULT get_ArrowHeadStyle(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_ArrowHeadStyle(
            VARIANT RHS) = 0;

        virtual HRESULT get_ArrowHeadWidth(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_ArrowHeadWidth(
            VARIANT RHS) = 0;

        virtual HRESULT get_AutoSize(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AutoSize(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Border(
            Border **RHS /Out/) = 0;

        virtual void _Dummy36() = 0;

        virtual void _Dummy37() = 0;

        virtual void _Dummy38() = 0;

        virtual HRESULT CheckSpelling(
            VARIANT CustomDictionary = argMissing2(),
            VARIANT IgnoreUppercase = argMissing2(),
            VARIANT AlwaysSuggest = argMissing2(),
            VARIANT SpellLang = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get__Default(
            long *RHS /Out/) = 0;

        virtual HRESULT put__Default(
            long RHS) = 0;

        virtual void _Dummy41() = 0;

        virtual void _Dummy42() = 0;

        virtual void _Dummy43() = 0;

        virtual void _Dummy44() = 0;

        virtual void _Dummy45() = 0;

        virtual HRESULT get_Font(
            Font **RHS /Out/) = 0;

        virtual void _Dummy47() = 0;

        virtual void _Dummy48() = 0;

        virtual HRESULT get_HorizontalAlignment(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_HorizontalAlignment(
            VARIANT RHS) = 0;

        virtual void _Dummy50() = 0;

        virtual HRESULT get_Interior(
            Interior **RHS /Out/) = 0;

        virtual void _Dummy52() = 0;

        virtual void _Dummy53() = 0;

        virtual void _Dummy54() = 0;

        virtual void _Dummy55() = 0;

        virtual void _Dummy56() = 0;

        virtual void _Dummy57() = 0;

        virtual void _Dummy58() = 0;

        virtual void _Dummy59() = 0;

        virtual void _Dummy60() = 0;

        virtual void _Dummy61() = 0;

        virtual void _Dummy62() = 0;

        virtual void _Dummy63() = 0;

        virtual HRESULT get_Orientation(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Orientation(
            VARIANT RHS) = 0;

        virtual void _Dummy65() = 0;

        virtual void _Dummy66() = 0;

        virtual void _Dummy67() = 0;

        virtual void _Dummy68() = 0;

        virtual HRESULT get_RoundedCorners(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_RoundedCorners(
            VARIANT_BOOL RHS) = 0;

        virtual void _Dummy70() = 0;

        virtual HRESULT get_Shadow(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Shadow(
            VARIANT_BOOL RHS) = 0;

        virtual void _Dummy72() = 0;

        virtual void _Dummy73() = 0;

        virtual HRESULT Ungroup(
            IDispatch **RHS /Out/) = 0;

        virtual void _Dummy75() = 0;

        virtual HRESULT get_VerticalAlignment(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_VerticalAlignment(
            VARIANT RHS) = 0;

        virtual void _Dummy77() = 0;

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

        Range* getBottomRightCell();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_BottomRightCell(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BottomRightCell()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=BottomRightCell, get=getBottomRightCell)

        VARIANT_BOOL getEnabled();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Enabled(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Enabled()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnabled(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Enabled(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Enabled()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Enabled, get=getEnabled, set=setEnabled)

        double getHeight();
        %MethodCode
            double prop = 0;
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

        PyObject* setHeight(double prop);
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

        long getIndex();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Index(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Index()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Index, get=getIndex)

        double getLeft();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_Left(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Left()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLeft(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Left(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Left()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Left, get=getLeft, set=setLeft)

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

        BSTR getName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Name(prop);
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

        PyObject* setName(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Name(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Name()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Name, get=getName, set=setName)

        BSTR getOnAction();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_OnAction(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OnAction()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOnAction(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OnAction(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OnAction()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OnAction, get=getOnAction, set=setOnAction)

        VARIANT getPlacement();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Placement(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Placement()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPlacement(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Placement(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Placement()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Placement, get=getPlacement, set=setPlacement)

        VARIANT_BOOL getPrintObject();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PrintObject(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PrintObject()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPrintObject(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PrintObject(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PrintObject()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PrintObject, get=getPrintObject, set=setPrintObject)

        double getTop();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_Top(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Top()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTop(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Top(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Top()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Top, get=getTop, set=setTop)

        Range* getTopLeftCell();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_TopLeftCell(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TopLeftCell()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TopLeftCell, get=getTopLeftCell)

        VARIANT_BOOL getVisible();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Visible(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Visible()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setVisible(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Visible(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Visible()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Visible, get=getVisible, set=setVisible)

        double getWidth();
        %MethodCode
            double prop = 0;
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

        PyObject* setWidth(double prop);
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

        long getZOrder();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_ZOrder(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ZOrder()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ZOrder, get=getZOrder)

        ShapeRange* getShapeRange();
        %MethodCode
            etapi::ShapeRange *prop = nullptr;
            HRESULT hr = sipCpp->get_ShapeRange(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShapeRange()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ShapeRange, get=getShapeRange)

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

        VARIANT getArrowHeadLength();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_ArrowHeadLength(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ArrowHeadLength()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setArrowHeadLength(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ArrowHeadLength(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ArrowHeadLength()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ArrowHeadLength, get=getArrowHeadLength, set=setArrowHeadLength)

        VARIANT getArrowHeadStyle();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_ArrowHeadStyle(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ArrowHeadStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setArrowHeadStyle(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ArrowHeadStyle(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ArrowHeadStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ArrowHeadStyle, get=getArrowHeadStyle, set=setArrowHeadStyle)

        VARIANT getArrowHeadWidth();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_ArrowHeadWidth(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ArrowHeadWidth()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setArrowHeadWidth(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ArrowHeadWidth(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ArrowHeadWidth()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ArrowHeadWidth, get=getArrowHeadWidth, set=setArrowHeadWidth)

        VARIANT_BOOL getAutoSize();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoSize(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoSize()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoSize(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoSize(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoSize()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoSize, get=getAutoSize, set=setAutoSize)

        Border* getBorder();
        %MethodCode
            etapi::Border *prop = nullptr;
            HRESULT hr = sipCpp->get_Border(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Border()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Border, get=getBorder)

        long get_Default();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get__Default(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get__Default()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* set_Default(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put__Default(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put__Default()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=_Default, get=get_Default, set=set_Default)

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

        VARIANT_BOOL getRoundedCorners();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_RoundedCorners(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RoundedCorners()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRoundedCorners(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RoundedCorners(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RoundedCorners()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RoundedCorners, get=getRoundedCorners, set=setRoundedCorners)

        VARIANT_BOOL getShadow();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Shadow(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Shadow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShadow(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Shadow(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Shadow()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Shadow, get=getShadow, set=setShadow)

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
