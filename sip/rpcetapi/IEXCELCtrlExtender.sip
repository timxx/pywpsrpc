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
    struct IEXCELCtrlExtender : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR RHS) = 0;

        virtual HRESULT get_Object(
            IDispatch **RHS /Out/) = 0;

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

        virtual HRESULT Delete(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT CopyPicture(
            XlPictureAppearance Appearance = etapi::xlPrinter,
            XlCopyPictureFormat Format = etapi::xlPicture,
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT Cut(
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

        virtual HRESULT get_Border(
            Border **RHS /Out/) = 0;

        virtual HRESULT get_Interior(
            Interior **RHS /Out/) = 0;

        virtual HRESULT get_Shadow(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Shadow(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT Activate(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_AutoLoad(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AutoLoad(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_AutoUpdate(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AutoUpdate(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_OLEType(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_SourceName(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_SourceName(
            BSTR RHS) = 0;

        virtual HRESULT Update(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT Verb(
            XlOLEVerb Verb = etapi::xlVerbOpen,
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_LinkedCell(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_LinkedCell(
            BSTR RHS) = 0;

        virtual HRESULT get_ListFillRange(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_ListFillRange(
            BSTR RHS) = 0;

        virtual HRESULT get_progID(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_AltHTML(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_AltHTML(
            BSTR RHS) = 0;

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

        IDispatch* getObject();
        %MethodCode
            IDispatch *prop = nullptr;
            HRESULT hr = sipCpp->get_Object(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Object()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Object, get=getObject)

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

        VARIANT_BOOL getAutoLoad();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoLoad(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoLoad()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoLoad(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoLoad(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoLoad()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoLoad, get=getAutoLoad, set=setAutoLoad)

        VARIANT_BOOL getAutoUpdate();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoUpdate(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoUpdate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoUpdate(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoUpdate(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoUpdate()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoUpdate, get=getAutoUpdate, set=setAutoUpdate)

        VARIANT getOLEType();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_OLEType(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OLEType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=OLEType, get=getOLEType)

        BSTR getSourceName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_SourceName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SourceName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSourceName(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SourceName(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SourceName()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SourceName, get=getSourceName, set=setSourceName)

        BSTR getLinkedCell();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_LinkedCell(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LinkedCell()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLinkedCell(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LinkedCell(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LinkedCell()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LinkedCell, get=getLinkedCell, set=setLinkedCell)

        BSTR getListFillRange();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ListFillRange(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ListFillRange()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setListFillRange(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ListFillRange(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ListFillRange()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ListFillRange, get=getListFillRange, set=setListFillRange)

        BSTR getprogID();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_progID(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_progID()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=progID, get=getprogID)

        BSTR getAltHTML();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_AltHTML(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AltHTML()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAltHTML(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AltHTML(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AltHTML()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AltHTML, get=getAltHTML, set=setAltHTML)
    };
};
