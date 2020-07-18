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
    struct Rows : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        int __len__() const;
        %MethodCode
            long count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT get_AllowBreakAcrossPages(
            long *prop /Out/) = 0;

        virtual HRESULT put_AllowBreakAcrossPages(
            long prop) = 0;

        virtual HRESULT get_Alignment(
            WdRowAlignment *prop /Out/) = 0;

        virtual HRESULT put_Alignment(
            WdRowAlignment prop) = 0;

        virtual HRESULT get_HeadingFormat(
            long *prop /Out/) = 0;

        virtual HRESULT put_HeadingFormat(
            long prop) = 0;

        virtual HRESULT get_SpaceBetweenColumns(
            single *prop /Out/) = 0;

        virtual HRESULT put_SpaceBetweenColumns(
            single prop) = 0;

        virtual HRESULT get_Height(
            single *prop /Out/) = 0;

        virtual HRESULT put_Height(
            single prop) = 0;

        virtual HRESULT get_HeightRule(
            WdRowHeightRule *prop /Out/) = 0;

        virtual HRESULT put_HeightRule(
            WdRowHeightRule prop) = 0;

        virtual HRESULT get_LeftIndent(
            single *prop /Out/) = 0;

        virtual HRESULT put_LeftIndent(
            single prop) = 0;

        virtual HRESULT get_First(
            Row **prop /Out/) = 0;

        virtual HRESULT get_Last(
            Row **prop /Out/) = 0;

        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Borders(
            Borders **prop /Out/) = 0;

        virtual HRESULT put_Borders(
            Borders *prop) = 0;

        virtual HRESULT get_Shading(
            Shading **prop /Out/) = 0;

        virtual HRESULT Item(
            long Index,
            Row **prop /Out/) = 0;

        Row* __getitem__(long index) const;
        %MethodCode
            wpsapi::Row *prop = nullptr;
            if (sipCpp->Item(a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT Add(
            VARIANT *BeforeRow = argMissing(),
            Row **prop /Out/ = 0) = 0;

        virtual HRESULT Select() = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT SetLeftIndent(
            single LeftIndent,
            WdRulerStyle RulerStyle) = 0;

        virtual HRESULT SetHeight(
            single RowHeight,
            WdRowHeightRule HeightRule) = 0;

        virtual HRESULT ConvertToTextOld(
            VARIANT *Separator = argMissing(),
            Range **prop /Out/ = 0) = 0;

        virtual HRESULT DistributeHeight() = 0;

        virtual HRESULT ConvertToText(
            VARIANT *Separator = argMissing(),
            VARIANT *NestedTables = argMissing(),
            Range **prop /Out/ = 0) = 0;

        virtual HRESULT get_WrapAroundText(
            long *prop /Out/) = 0;

        virtual HRESULT put_WrapAroundText(
            long prop) = 0;

        virtual HRESULT get_DistanceTop(
            single *prop /Out/) = 0;

        virtual HRESULT put_DistanceTop(
            single prop) = 0;

        virtual HRESULT get_DistanceBottom(
            single *prop /Out/) = 0;

        virtual HRESULT put_DistanceBottom(
            single prop) = 0;

        virtual HRESULT get_DistanceLeft(
            single *prop /Out/) = 0;

        virtual HRESULT put_DistanceLeft(
            single prop) = 0;

        virtual HRESULT get_DistanceRight(
            single *prop /Out/) = 0;

        virtual HRESULT put_DistanceRight(
            single prop) = 0;

        virtual HRESULT get_HorizontalPosition(
            single *prop /Out/) = 0;

        virtual HRESULT put_HorizontalPosition(
            single prop) = 0;

        virtual HRESULT get_VerticalPosition(
            single *prop /Out/) = 0;

        virtual HRESULT put_VerticalPosition(
            single prop) = 0;

        virtual HRESULT get_RelativeHorizontalPosition(
            WdRelativeHorizontalPosition *prop /Out/) = 0;

        virtual HRESULT put_RelativeHorizontalPosition(
            WdRelativeHorizontalPosition prop) = 0;

        virtual HRESULT get_RelativeVerticalPosition(
            WdRelativeVerticalPosition *prop /Out/) = 0;

        virtual HRESULT put_RelativeVerticalPosition(
            WdRelativeVerticalPosition prop) = 0;

        virtual HRESULT get_AllowOverlap(
            long *prop /Out/) = 0;

        virtual HRESULT put_AllowOverlap(
            long prop) = 0;

        virtual HRESULT get_NestingLevel(
            long *prop /Out/) = 0;

        virtual HRESULT get_TableDirection(
            WdTableDirection *prop /Out/) = 0;

        virtual HRESULT put_TableDirection(
            WdTableDirection prop) = 0;

        long getCount();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Count(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Count()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Count, get=getCount)

        long getAllowBreakAcrossPages();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_AllowBreakAcrossPages(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AllowBreakAcrossPages()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAllowBreakAcrossPages(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AllowBreakAcrossPages(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AllowBreakAcrossPages()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AllowBreakAcrossPages, get=getAllowBreakAcrossPages, set=setAllowBreakAcrossPages)

        WdRowAlignment getAlignment();
        %MethodCode
            wpsapi::WdRowAlignment prop = (wpsapi::WdRowAlignment)0;
            HRESULT hr = sipCpp->get_Alignment(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Alignment()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAlignment(WdRowAlignment prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Alignment(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Alignment()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Alignment, get=getAlignment, set=setAlignment)

        long getHeadingFormat();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_HeadingFormat(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HeadingFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHeadingFormat(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HeadingFormat(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HeadingFormat()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HeadingFormat, get=getHeadingFormat, set=setHeadingFormat)

        single getSpaceBetweenColumns();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_SpaceBetweenColumns(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SpaceBetweenColumns()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSpaceBetweenColumns(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SpaceBetweenColumns(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SpaceBetweenColumns()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SpaceBetweenColumns, get=getSpaceBetweenColumns, set=setSpaceBetweenColumns)

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

        single getLeftIndent();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_LeftIndent(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LeftIndent()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLeftIndent(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LeftIndent(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LeftIndent()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LeftIndent, get=getLeftIndent, set=setLeftIndent)

        Row* getFirst();
        %MethodCode
            wpsapi::Row *prop = nullptr;
            HRESULT hr = sipCpp->get_First(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_First()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=First, get=getFirst)

        Row* getLast();
        %MethodCode
            wpsapi::Row *prop = nullptr;
            HRESULT hr = sipCpp->get_Last(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Last()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Last, get=getLast)

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

        long getWrapAroundText();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_WrapAroundText(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WrapAroundText()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWrapAroundText(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_WrapAroundText(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_WrapAroundText()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=WrapAroundText, get=getWrapAroundText, set=setWrapAroundText)

        single getDistanceTop();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_DistanceTop(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DistanceTop()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDistanceTop(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DistanceTop(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DistanceTop()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DistanceTop, get=getDistanceTop, set=setDistanceTop)

        single getDistanceBottom();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_DistanceBottom(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DistanceBottom()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDistanceBottom(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DistanceBottom(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DistanceBottom()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DistanceBottom, get=getDistanceBottom, set=setDistanceBottom)

        single getDistanceLeft();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_DistanceLeft(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DistanceLeft()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDistanceLeft(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DistanceLeft(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DistanceLeft()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DistanceLeft, get=getDistanceLeft, set=setDistanceLeft)

        single getDistanceRight();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_DistanceRight(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DistanceRight()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDistanceRight(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DistanceRight(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DistanceRight()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DistanceRight, get=getDistanceRight, set=setDistanceRight)

        single getHorizontalPosition();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_HorizontalPosition(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HorizontalPosition()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHorizontalPosition(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HorizontalPosition(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HorizontalPosition()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HorizontalPosition, get=getHorizontalPosition, set=setHorizontalPosition)

        single getVerticalPosition();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_VerticalPosition(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_VerticalPosition()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setVerticalPosition(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_VerticalPosition(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_VerticalPosition()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=VerticalPosition, get=getVerticalPosition, set=setVerticalPosition)

        WdRelativeHorizontalPosition getRelativeHorizontalPosition();
        %MethodCode
            wpsapi::WdRelativeHorizontalPosition prop = (wpsapi::WdRelativeHorizontalPosition)0;
            HRESULT hr = sipCpp->get_RelativeHorizontalPosition(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RelativeHorizontalPosition()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRelativeHorizontalPosition(WdRelativeHorizontalPosition prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RelativeHorizontalPosition(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RelativeHorizontalPosition()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RelativeHorizontalPosition, get=getRelativeHorizontalPosition, set=setRelativeHorizontalPosition)

        WdRelativeVerticalPosition getRelativeVerticalPosition();
        %MethodCode
            wpsapi::WdRelativeVerticalPosition prop = (wpsapi::WdRelativeVerticalPosition)0;
            HRESULT hr = sipCpp->get_RelativeVerticalPosition(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RelativeVerticalPosition()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRelativeVerticalPosition(WdRelativeVerticalPosition prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RelativeVerticalPosition(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RelativeVerticalPosition()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RelativeVerticalPosition, get=getRelativeVerticalPosition, set=setRelativeVerticalPosition)

        long getAllowOverlap();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_AllowOverlap(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AllowOverlap()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAllowOverlap(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AllowOverlap(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AllowOverlap()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AllowOverlap, get=getAllowOverlap, set=setAllowOverlap)

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

        WdTableDirection getTableDirection();
        %MethodCode
            wpsapi::WdTableDirection prop = (wpsapi::WdTableDirection)0;
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

        PyObject* setTableDirection(WdTableDirection prop);
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
    };
};
