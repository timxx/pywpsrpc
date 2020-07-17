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
    struct IDataLabel : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT Select(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Border(
            Border **RHS /Out/) = 0;

        virtual HRESULT Delete(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Interior(
            Interior **RHS /Out/) = 0;

        virtual HRESULT get_Fill(
            ChartFillFormat **RHS /Out/) = 0;

        virtual HRESULT get_Caption(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Caption(
            BSTR RHS) = 0;

        virtual HRESULT get_Characters(
            VARIANT Start = argMissing2(),
            VARIANT Length = argMissing2(),
            Characters **RHS /Out/ = 0) = 0;

        virtual HRESULT get_Font(
            Font **RHS /Out/) = 0;

        virtual HRESULT get_HorizontalAlignment(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_HorizontalAlignment(
            VARIANT RHS) = 0;

        virtual HRESULT get_Left(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Left(
            double RHS) = 0;

        virtual HRESULT get_Orientation(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Orientation(
            VARIANT RHS) = 0;

        virtual HRESULT get_Shadow(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Shadow(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Text(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Text(
            BSTR RHS) = 0;

        virtual HRESULT get_Top(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Top(
            double RHS) = 0;

        virtual HRESULT get_VerticalAlignment(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_VerticalAlignment(
            VARIANT RHS) = 0;

        virtual HRESULT get_ReadingOrder(
            long *RHS /Out/) = 0;

        virtual HRESULT put_ReadingOrder(
            long RHS) = 0;

        virtual HRESULT get_AutoScaleFont(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_AutoScaleFont(
            VARIANT RHS) = 0;

        virtual HRESULT get_AutoText(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AutoText(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_NumberFormat(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_NumberFormat(
            BSTR RHS) = 0;

        virtual HRESULT get_NumberFormatLinked(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_NumberFormatLinked(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_NumberFormatLocal(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_NumberFormatLocal(
            VARIANT RHS) = 0;

        virtual HRESULT get_ShowLegendKey(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowLegendKey(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Type(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Type(
            VARIANT RHS) = 0;

        virtual HRESULT get_Position(
            XlDataLabelPosition *RHS /Out/) = 0;

        virtual HRESULT put_Position(
            XlDataLabelPosition RHS) = 0;

        virtual HRESULT get_ShowSeriesName(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowSeriesName(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ShowCategoryName(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowCategoryName(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ShowValue(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowValue(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ShowPercentage(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowPercentage(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ShowBubbleSize(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowBubbleSize(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Separator(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Separator(
            VARIANT RHS) = 0;

        virtual HRESULT get_Format(
            ChartFormat **RHS /Out/) = 0;

        virtual HRESULT get__Height(
            double *RHS /Out/) = 0;

        virtual HRESULT get__Width(
            double *RHS /Out/) = 0;

        virtual HRESULT get_Formula(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Formula(
            BSTR RHS) = 0;

        virtual HRESULT get_FormulaR1C1(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_FormulaR1C1(
            BSTR RHS) = 0;

        virtual HRESULT get_FormulaLocal(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_FormulaLocal(
            BSTR RHS) = 0;

        virtual HRESULT get_FormulaR1C1Local(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_FormulaR1C1Local(
            BSTR RHS) = 0;

        virtual HRESULT get_ShowRange(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowRange(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Height(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Height(
            double RHS) = 0;

        virtual HRESULT get_Width(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Width(
            double RHS) = 0;

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

        %Property(name=Name, get=getName)

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

        ChartFillFormat* getFill();
        %MethodCode
            etapi::ChartFillFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_Fill(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Fill()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Fill, get=getFill)

        BSTR getCaption();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Caption(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Caption()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCaption(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Caption(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Caption()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Caption, get=getCaption, set=setCaption)

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

        BSTR getText();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Text(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Text()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setText(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Text(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Text()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Text, get=getText, set=setText)

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

        VARIANT getAutoScaleFont();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_AutoScaleFont(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoScaleFont()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoScaleFont(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoScaleFont(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoScaleFont()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoScaleFont, get=getAutoScaleFont, set=setAutoScaleFont)

        VARIANT_BOOL getAutoText();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoText(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoText()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoText(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoText(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoText()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoText, get=getAutoText, set=setAutoText)

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

        VARIANT_BOOL getNumberFormatLinked();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_NumberFormatLinked(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NumberFormatLinked()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNumberFormatLinked(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NumberFormatLinked(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NumberFormatLinked()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NumberFormatLinked, get=getNumberFormatLinked, set=setNumberFormatLinked)

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

        VARIANT_BOOL getShowLegendKey();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowLegendKey(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowLegendKey()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowLegendKey(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowLegendKey(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowLegendKey()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowLegendKey, get=getShowLegendKey, set=setShowLegendKey)

        VARIANT getType();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Type(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Type()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setType(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Type(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Type()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Type, get=getType, set=setType)

        XlDataLabelPosition getPosition();
        %MethodCode
            etapi::XlDataLabelPosition prop = (etapi::XlDataLabelPosition)0;
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

        PyObject* setPosition(XlDataLabelPosition prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Position(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Position()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Position, get=getPosition, set=setPosition)

        VARIANT_BOOL getShowSeriesName();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowSeriesName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowSeriesName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowSeriesName(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowSeriesName(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowSeriesName()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowSeriesName, get=getShowSeriesName, set=setShowSeriesName)

        VARIANT_BOOL getShowCategoryName();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowCategoryName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowCategoryName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowCategoryName(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowCategoryName(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowCategoryName()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowCategoryName, get=getShowCategoryName, set=setShowCategoryName)

        VARIANT_BOOL getShowValue();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowValue(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowValue()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowValue(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowValue(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowValue()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowValue, get=getShowValue, set=setShowValue)

        VARIANT_BOOL getShowPercentage();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowPercentage(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowPercentage()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowPercentage(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowPercentage(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowPercentage()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowPercentage, get=getShowPercentage, set=setShowPercentage)

        VARIANT_BOOL getShowBubbleSize();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowBubbleSize(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowBubbleSize()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowBubbleSize(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowBubbleSize(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowBubbleSize()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowBubbleSize, get=getShowBubbleSize, set=setShowBubbleSize)

        VARIANT getSeparator();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Separator(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Separator()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSeparator(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Separator(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Separator()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Separator, get=getSeparator, set=setSeparator)

        ChartFormat* getFormat();
        %MethodCode
            etapi::ChartFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_Format(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Format()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Format, get=getFormat)

        double get_Height();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get__Height(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get__Height()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=_Height, get=get_Height)

        double get_Width();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get__Width(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get__Width()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=_Width, get=get_Width)

        BSTR getFormula();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Formula(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Formula()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFormula(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Formula(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Formula()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Formula, get=getFormula, set=setFormula)

        BSTR getFormulaR1C1();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_FormulaR1C1(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FormulaR1C1()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFormulaR1C1(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FormulaR1C1(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FormulaR1C1()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FormulaR1C1, get=getFormulaR1C1, set=setFormulaR1C1)

        BSTR getFormulaLocal();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_FormulaLocal(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FormulaLocal()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFormulaLocal(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FormulaLocal(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FormulaLocal()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FormulaLocal, get=getFormulaLocal, set=setFormulaLocal)

        BSTR getFormulaR1C1Local();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_FormulaR1C1Local(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FormulaR1C1Local()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFormulaR1C1Local(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FormulaR1C1Local(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FormulaR1C1Local()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FormulaR1C1Local, get=getFormulaR1C1Local, set=setFormulaR1C1Local)

        VARIANT_BOOL getShowRange();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowRange(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowRange()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowRange(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowRange(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowRange()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowRange, get=getShowRange, set=setShowRange)

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
    };
};
