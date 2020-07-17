/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace ksoapi
{
    struct IMsoSeries : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT _ApplyDataLabels(
            XlDataLabelsType Type = ksoapi::xlDataLabelsShowNone,
            VARIANT IMsoLegendKey = argMissing2(),
            VARIANT AutoText = argMissing2(),
            VARIANT HasLeaderLines = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_AxisGroup(
            XlAxisGroup *RHS /Out/) = 0;

        virtual HRESULT put_AxisGroup(
            XlAxisGroup RHS) = 0;

        virtual HRESULT get_Border(
            IMsoBorder **RHS /Out/) = 0;

        virtual HRESULT ClearFormats(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT Copy(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT DataLabels(
            VARIANT Index = argMissing2(),
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT Delete(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT ErrorBar(
            XlErrorBarDirection Direction,
            XlErrorBarInclude Include,
            XlErrorBarType Type,
            VARIANT Amount = argMissing2(),
            VARIANT MinusValues = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_ErrorBars(
            IMsoErrorBars **RHS /Out/) = 0;

        virtual HRESULT get_Explosion(
            long *RHS /Out/) = 0;

        virtual HRESULT put_Explosion(
            long RHS) = 0;

        virtual HRESULT get_Formula(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Formula(
            BSTR RHS) = 0;

        virtual HRESULT get_FormulaLocal(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_FormulaLocal(
            BSTR RHS) = 0;

        virtual HRESULT get_FormulaR1C1(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_FormulaR1C1(
            BSTR RHS) = 0;

        virtual HRESULT get_FormulaR1C1Local(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_FormulaR1C1Local(
            BSTR RHS) = 0;

        virtual HRESULT get_HasDataLabels(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_HasDataLabels(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_HasErrorBars(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_HasErrorBars(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Interior(
            IMsoInterior **RHS /Out/) = 0;

        virtual HRESULT get_Fill(
            ChartFillFormat **RHS /Out/) = 0;

        virtual HRESULT get_InvertIfNegative(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_InvertIfNegative(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_MarkerBackgroundColor(
            long *RHS /Out/) = 0;

        virtual HRESULT put_MarkerBackgroundColor(
            long RHS) = 0;

        virtual HRESULT get_MarkerBackgroundColorIndex(
            XlColorIndex *RHS /Out/) = 0;

        virtual HRESULT put_MarkerBackgroundColorIndex(
            XlColorIndex RHS) = 0;

        virtual HRESULT get_MarkerForegroundColor(
            long *RHS /Out/) = 0;

        virtual HRESULT put_MarkerForegroundColor(
            long RHS) = 0;

        virtual HRESULT get_MarkerForegroundColorIndex(
            XlColorIndex *RHS /Out/) = 0;

        virtual HRESULT put_MarkerForegroundColorIndex(
            XlColorIndex RHS) = 0;

        virtual HRESULT get_MarkerSize(
            long *RHS /Out/) = 0;

        virtual HRESULT put_MarkerSize(
            long RHS) = 0;

        virtual HRESULT get_MarkerStyle(
            XlMarkerStyle *RHS /Out/) = 0;

        virtual HRESULT put_MarkerStyle(
            XlMarkerStyle RHS) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR RHS) = 0;

        virtual HRESULT Paste(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_PictureType(
            XlChartPictureType *RHS /Out/) = 0;

        virtual HRESULT put_PictureType(
            XlChartPictureType RHS) = 0;

        virtual HRESULT get_PictureUnit(
            double *RHS /Out/) = 0;

        virtual HRESULT put_PictureUnit(
            double RHS) = 0;

        virtual HRESULT get_PlotOrder(
            long *RHS /Out/) = 0;

        virtual HRESULT put_PlotOrder(
            long RHS) = 0;

        virtual HRESULT Points(
            VARIANT Index = argMissing2(),
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT Select(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Smooth(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Smooth(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT Trendlines(
            VARIANT Index = argMissing2(),
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get_Type(
            long *RHS /Out/) = 0;

        virtual HRESULT put_Type(
            long RHS) = 0;

        virtual HRESULT get_ChartType(
            XlChartType *RHS /Out/) = 0;

        virtual HRESULT put_ChartType(
            XlChartType RHS) = 0;

        virtual HRESULT ApplyCustomType(
            XlChartType ChartType) = 0;

        virtual HRESULT get_Values(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Values(
            VARIANT RHS) = 0;

        virtual HRESULT get_XValues(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_XValues(
            VARIANT RHS) = 0;

        virtual HRESULT get_BubbleSizes(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_BubbleSizes(
            VARIANT RHS) = 0;

        virtual HRESULT get_BarShape(
            XlBarShape *RHS /Out/) = 0;

        virtual HRESULT put_BarShape(
            XlBarShape RHS) = 0;

        virtual HRESULT get_ApplyPictToSides(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ApplyPictToSides(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ApplyPictToFront(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ApplyPictToFront(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ApplyPictToEnd(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ApplyPictToEnd(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Has3DEffect(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Has3DEffect(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Shadow(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Shadow(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_HasLeaderLines(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_HasLeaderLines(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_LeaderLines(
            IMsoLeaderLines **RHS /Out/) = 0;

        virtual HRESULT ApplyDataLabels(
            XlDataLabelsType Type = ksoapi::xlDataLabelsShowNone,
            VARIANT IMsoLegendKey = argMissing2(),
            VARIANT AutoText = argMissing2(),
            VARIANT HasLeaderLines = argMissing2(),
            VARIANT ShowSeriesName = argMissing2(),
            VARIANT ShowCategoryName = argMissing2(),
            VARIANT ShowValue = argMissing2(),
            VARIANT ShowPercentage = argMissing2(),
            VARIANT ShowBubbleSize = argMissing2(),
            VARIANT Separator = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_Format(
            IMsoChartFormat **ppChartFormat /Out/) = 0;

        virtual HRESULT get_PictureUnit2(
            double *RHS /Out/) = 0;

        virtual HRESULT put_PictureUnit2(
            double RHS) = 0;

        virtual HRESULT get_PlotColorIndex(
            long *RHS /Out/) = 0;

        virtual HRESULT get_InvertColor(
            long *RHS /Out/) = 0;

        virtual HRESULT put_InvertColor(
            long RHS) = 0;

        virtual HRESULT get_InvertColorIndex(
            XlColorIndex *RHS /Out/) = 0;

        virtual HRESULT put_InvertColorIndex(
            XlColorIndex RHS) = 0;

        virtual HRESULT get_IsFiltered(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_IsFiltered(
            VARIANT_BOOL RHS) = 0;

        XlAxisGroup getAxisGroup();
        %MethodCode
            ksoapi::XlAxisGroup prop = (ksoapi::XlAxisGroup)0;
            HRESULT hr = sipCpp->get_AxisGroup(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AxisGroup()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAxisGroup(XlAxisGroup prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AxisGroup(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AxisGroup()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AxisGroup, get=getAxisGroup, set=setAxisGroup)

        IMsoBorder* getBorder();
        %MethodCode
            ksoapi::IMsoBorder *prop = nullptr;
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

        IMsoErrorBars* getErrorBars();
        %MethodCode
            ksoapi::IMsoErrorBars *prop = nullptr;
            HRESULT hr = sipCpp->get_ErrorBars(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ErrorBars()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ErrorBars, get=getErrorBars)

        long getExplosion();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Explosion(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Explosion()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setExplosion(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Explosion(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Explosion()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Explosion, get=getExplosion, set=setExplosion)

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

        VARIANT_BOOL getHasDataLabels();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HasDataLabels(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasDataLabels()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHasDataLabels(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HasDataLabels(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HasDataLabels()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HasDataLabels, get=getHasDataLabels, set=setHasDataLabels)

        VARIANT_BOOL getHasErrorBars();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HasErrorBars(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasErrorBars()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHasErrorBars(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HasErrorBars(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HasErrorBars()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HasErrorBars, get=getHasErrorBars, set=setHasErrorBars)

        IMsoInterior* getInterior();
        %MethodCode
            ksoapi::IMsoInterior *prop = nullptr;
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
            ksoapi::ChartFillFormat *prop = nullptr;
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

        VARIANT_BOOL getInvertIfNegative();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_InvertIfNegative(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InvertIfNegative()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setInvertIfNegative(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_InvertIfNegative(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_InvertIfNegative()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=InvertIfNegative, get=getInvertIfNegative, set=setInvertIfNegative)

        long getMarkerBackgroundColor();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_MarkerBackgroundColor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MarkerBackgroundColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMarkerBackgroundColor(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MarkerBackgroundColor(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MarkerBackgroundColor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MarkerBackgroundColor, get=getMarkerBackgroundColor, set=setMarkerBackgroundColor)

        XlColorIndex getMarkerBackgroundColorIndex();
        %MethodCode
            ksoapi::XlColorIndex prop = (ksoapi::XlColorIndex)0;
            HRESULT hr = sipCpp->get_MarkerBackgroundColorIndex(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MarkerBackgroundColorIndex()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMarkerBackgroundColorIndex(XlColorIndex prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MarkerBackgroundColorIndex(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MarkerBackgroundColorIndex()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MarkerBackgroundColorIndex, get=getMarkerBackgroundColorIndex, set=setMarkerBackgroundColorIndex)

        long getMarkerForegroundColor();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_MarkerForegroundColor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MarkerForegroundColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMarkerForegroundColor(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MarkerForegroundColor(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MarkerForegroundColor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MarkerForegroundColor, get=getMarkerForegroundColor, set=setMarkerForegroundColor)

        XlColorIndex getMarkerForegroundColorIndex();
        %MethodCode
            ksoapi::XlColorIndex prop = (ksoapi::XlColorIndex)0;
            HRESULT hr = sipCpp->get_MarkerForegroundColorIndex(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MarkerForegroundColorIndex()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMarkerForegroundColorIndex(XlColorIndex prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MarkerForegroundColorIndex(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MarkerForegroundColorIndex()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MarkerForegroundColorIndex, get=getMarkerForegroundColorIndex, set=setMarkerForegroundColorIndex)

        long getMarkerSize();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_MarkerSize(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MarkerSize()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMarkerSize(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MarkerSize(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MarkerSize()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MarkerSize, get=getMarkerSize, set=setMarkerSize)

        XlMarkerStyle getMarkerStyle();
        %MethodCode
            ksoapi::XlMarkerStyle prop = (ksoapi::XlMarkerStyle)0;
            HRESULT hr = sipCpp->get_MarkerStyle(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MarkerStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMarkerStyle(XlMarkerStyle prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MarkerStyle(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MarkerStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MarkerStyle, get=getMarkerStyle, set=setMarkerStyle)

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

        XlChartPictureType getPictureType();
        %MethodCode
            ksoapi::XlChartPictureType prop = (ksoapi::XlChartPictureType)0;
            HRESULT hr = sipCpp->get_PictureType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PictureType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPictureType(XlChartPictureType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PictureType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PictureType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PictureType, get=getPictureType, set=setPictureType)

        double getPictureUnit();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_PictureUnit(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PictureUnit()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPictureUnit(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PictureUnit(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PictureUnit()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PictureUnit, get=getPictureUnit, set=setPictureUnit)

        long getPlotOrder();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_PlotOrder(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PlotOrder()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPlotOrder(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PlotOrder(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PlotOrder()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PlotOrder, get=getPlotOrder, set=setPlotOrder)

        VARIANT_BOOL getSmooth();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Smooth(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Smooth()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSmooth(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Smooth(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Smooth()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Smooth, get=getSmooth, set=setSmooth)

        long getType();
        %MethodCode
            long prop = 0;
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

        PyObject* setType(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Type(a0);
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

        XlChartType getChartType();
        %MethodCode
            ksoapi::XlChartType prop = (ksoapi::XlChartType)0;
            HRESULT hr = sipCpp->get_ChartType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ChartType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setChartType(XlChartType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ChartType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ChartType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ChartType, get=getChartType, set=setChartType)

        VARIANT getValues();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Values(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Values()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setValues(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Values(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Values()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Values, get=getValues, set=setValues)

        VARIANT getXValues();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_XValues(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_XValues()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setXValues(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_XValues(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_XValues()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=XValues, get=getXValues, set=setXValues)

        VARIANT getBubbleSizes();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_BubbleSizes(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BubbleSizes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBubbleSizes(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BubbleSizes(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BubbleSizes()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BubbleSizes, get=getBubbleSizes, set=setBubbleSizes)

        XlBarShape getBarShape();
        %MethodCode
            ksoapi::XlBarShape prop = (ksoapi::XlBarShape)0;
            HRESULT hr = sipCpp->get_BarShape(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BarShape()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBarShape(XlBarShape prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BarShape(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BarShape()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BarShape, get=getBarShape, set=setBarShape)

        VARIANT_BOOL getApplyPictToSides();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ApplyPictToSides(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ApplyPictToSides()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setApplyPictToSides(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ApplyPictToSides(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ApplyPictToSides()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ApplyPictToSides, get=getApplyPictToSides, set=setApplyPictToSides)

        VARIANT_BOOL getApplyPictToFront();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ApplyPictToFront(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ApplyPictToFront()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setApplyPictToFront(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ApplyPictToFront(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ApplyPictToFront()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ApplyPictToFront, get=getApplyPictToFront, set=setApplyPictToFront)

        VARIANT_BOOL getApplyPictToEnd();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ApplyPictToEnd(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ApplyPictToEnd()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setApplyPictToEnd(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ApplyPictToEnd(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ApplyPictToEnd()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ApplyPictToEnd, get=getApplyPictToEnd, set=setApplyPictToEnd)

        VARIANT_BOOL getHas3DEffect();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Has3DEffect(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Has3DEffect()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHas3DEffect(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Has3DEffect(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Has3DEffect()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Has3DEffect, get=getHas3DEffect, set=setHas3DEffect)

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

        VARIANT_BOOL getHasLeaderLines();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HasLeaderLines(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasLeaderLines()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHasLeaderLines(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HasLeaderLines(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HasLeaderLines()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HasLeaderLines, get=getHasLeaderLines, set=setHasLeaderLines)

        IMsoLeaderLines* getLeaderLines();
        %MethodCode
            ksoapi::IMsoLeaderLines *prop = nullptr;
            HRESULT hr = sipCpp->get_LeaderLines(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LeaderLines()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=LeaderLines, get=getLeaderLines)

        IMsoChartFormat* getFormat();
        %MethodCode
            ksoapi::IMsoChartFormat *prop = nullptr;
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

        double getPictureUnit2();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_PictureUnit2(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PictureUnit2()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPictureUnit2(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PictureUnit2(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PictureUnit2()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PictureUnit2, get=getPictureUnit2, set=setPictureUnit2)

        long getPlotColorIndex();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_PlotColorIndex(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PlotColorIndex()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PlotColorIndex, get=getPlotColorIndex)

        long getInvertColor();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_InvertColor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InvertColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setInvertColor(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_InvertColor(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_InvertColor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=InvertColor, get=getInvertColor, set=setInvertColor)

        XlColorIndex getInvertColorIndex();
        %MethodCode
            ksoapi::XlColorIndex prop = (ksoapi::XlColorIndex)0;
            HRESULT hr = sipCpp->get_InvertColorIndex(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InvertColorIndex()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setInvertColorIndex(XlColorIndex prop);
        %MethodCode
            HRESULT hr = sipCpp->put_InvertColorIndex(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_InvertColorIndex()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=InvertColorIndex, get=getInvertColorIndex, set=setInvertColorIndex)

        VARIANT_BOOL getIsFiltered();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IsFiltered(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IsFiltered()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setIsFiltered(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_IsFiltered(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_IsFiltered()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=IsFiltered, get=getIsFiltered, set=setIsFiltered)
    };
};
