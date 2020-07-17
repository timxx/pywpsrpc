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
    struct ChartGroup : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_AxisGroup(
            XlAxisGroup *prop /Out/) = 0;

        virtual HRESULT put_AxisGroup(
            XlAxisGroup prop) = 0;

        virtual HRESULT get_DoughnutHoleSize(
            long *prop /Out/) = 0;

        virtual HRESULT put_DoughnutHoleSize(
            long prop) = 0;

        virtual HRESULT get_DownBars(
            DownBars **prop /Out/) = 0;

        virtual HRESULT get_DropLines(
            DropLines **prop /Out/) = 0;

        virtual HRESULT get_FirstSliceAngle(
            long *prop /Out/) = 0;

        virtual HRESULT put_FirstSliceAngle(
            long prop) = 0;

        virtual HRESULT get_GapWidth(
            long *prop /Out/) = 0;

        virtual HRESULT put_GapWidth(
            long prop) = 0;

        virtual HRESULT get_HasDropLines(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HasDropLines(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HasHiLoLines(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HasHiLoLines(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HasRadarAxisLabels(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HasRadarAxisLabels(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HasSeriesLines(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HasSeriesLines(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HasUpDownBars(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HasUpDownBars(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HiLoLines(
            HiLoLines **prop /Out/) = 0;

        virtual HRESULT get_Index(
            long *prop /Out/) = 0;

        virtual HRESULT get_Overlap(
            long *prop /Out/) = 0;

        virtual HRESULT put_Overlap(
            long prop) = 0;

        virtual HRESULT get_RadarAxisLabels(
            TickLabels **prop /Out/) = 0;

        virtual HRESULT SeriesCollection(
            VARIANT Index = argMissing2(),
            IDispatch **prop /Out/ = 0) = 0;

        virtual HRESULT get_SeriesLines(
            SeriesLines **prop /Out/) = 0;

        virtual HRESULT get_SubType(
            long *prop /Out/) = 0;

        virtual HRESULT put_SubType(
            long prop) = 0;

        virtual HRESULT get_Type(
            long *prop /Out/) = 0;

        virtual HRESULT put_Type(
            long prop) = 0;

        virtual HRESULT get_UpBars(
            UpBars **prop /Out/) = 0;

        virtual HRESULT get_VaryByCategories(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_VaryByCategories(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SizeRepresents(
            XlSizeRepresents *prop /Out/) = 0;

        virtual HRESULT put_SizeRepresents(
            XlSizeRepresents prop) = 0;

        virtual HRESULT get_BubbleScale(
            long *prop /Out/) = 0;

        virtual HRESULT put_BubbleScale(
            long prop) = 0;

        virtual HRESULT get_ShowNegativeBubbles(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowNegativeBubbles(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SplitType(
            XlChartSplitType *prop /Out/) = 0;

        virtual HRESULT put_SplitType(
            XlChartSplitType prop) = 0;

        virtual HRESULT get_SplitValue(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_SplitValue(
            VARIANT prop) = 0;

        virtual HRESULT get_SecondPlotSize(
            long *prop /Out/) = 0;

        virtual HRESULT put_SecondPlotSize(
            long prop) = 0;

        virtual HRESULT get_Has3DShading(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Has3DShading(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT CategoryCollection(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **prop /Out/ = 0) = 0;

        virtual HRESULT FullCategoryCollection(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **prop /Out/ = 0) = 0;

        XlAxisGroup getAxisGroup();
        %MethodCode
            wpsapi::XlAxisGroup prop = (wpsapi::XlAxisGroup)0;
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

        long getDoughnutHoleSize();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_DoughnutHoleSize(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DoughnutHoleSize()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDoughnutHoleSize(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DoughnutHoleSize(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DoughnutHoleSize()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DoughnutHoleSize, get=getDoughnutHoleSize, set=setDoughnutHoleSize)

        DownBars* getDownBars();
        %MethodCode
            wpsapi::DownBars *prop = nullptr;
            HRESULT hr = sipCpp->get_DownBars(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DownBars()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DownBars, get=getDownBars)

        DropLines* getDropLines();
        %MethodCode
            wpsapi::DropLines *prop = nullptr;
            HRESULT hr = sipCpp->get_DropLines(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DropLines()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DropLines, get=getDropLines)

        long getFirstSliceAngle();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_FirstSliceAngle(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FirstSliceAngle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFirstSliceAngle(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FirstSliceAngle(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FirstSliceAngle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FirstSliceAngle, get=getFirstSliceAngle, set=setFirstSliceAngle)

        long getGapWidth();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_GapWidth(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_GapWidth()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setGapWidth(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_GapWidth(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_GapWidth()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=GapWidth, get=getGapWidth, set=setGapWidth)

        VARIANT_BOOL getHasDropLines();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HasDropLines(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasDropLines()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHasDropLines(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HasDropLines(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HasDropLines()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HasDropLines, get=getHasDropLines, set=setHasDropLines)

        VARIANT_BOOL getHasHiLoLines();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HasHiLoLines(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasHiLoLines()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHasHiLoLines(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HasHiLoLines(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HasHiLoLines()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HasHiLoLines, get=getHasHiLoLines, set=setHasHiLoLines)

        VARIANT_BOOL getHasRadarAxisLabels();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HasRadarAxisLabels(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasRadarAxisLabels()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHasRadarAxisLabels(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HasRadarAxisLabels(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HasRadarAxisLabels()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HasRadarAxisLabels, get=getHasRadarAxisLabels, set=setHasRadarAxisLabels)

        VARIANT_BOOL getHasSeriesLines();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HasSeriesLines(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasSeriesLines()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHasSeriesLines(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HasSeriesLines(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HasSeriesLines()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HasSeriesLines, get=getHasSeriesLines, set=setHasSeriesLines)

        VARIANT_BOOL getHasUpDownBars();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HasUpDownBars(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasUpDownBars()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHasUpDownBars(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HasUpDownBars(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HasUpDownBars()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HasUpDownBars, get=getHasUpDownBars, set=setHasUpDownBars)

        HiLoLines* getHiLoLines();
        %MethodCode
            wpsapi::HiLoLines *prop = nullptr;
            HRESULT hr = sipCpp->get_HiLoLines(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HiLoLines()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HiLoLines, get=getHiLoLines)

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

        long getOverlap();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Overlap(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Overlap()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOverlap(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Overlap(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Overlap()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Overlap, get=getOverlap, set=setOverlap)

        TickLabels* getRadarAxisLabels();
        %MethodCode
            wpsapi::TickLabels *prop = nullptr;
            HRESULT hr = sipCpp->get_RadarAxisLabels(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RadarAxisLabels()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=RadarAxisLabels, get=getRadarAxisLabels)

        SeriesLines* getSeriesLines();
        %MethodCode
            wpsapi::SeriesLines *prop = nullptr;
            HRESULT hr = sipCpp->get_SeriesLines(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SeriesLines()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SeriesLines, get=getSeriesLines)

        long getSubType();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_SubType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SubType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSubType(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SubType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SubType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SubType, get=getSubType, set=setSubType)

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

        UpBars* getUpBars();
        %MethodCode
            wpsapi::UpBars *prop = nullptr;
            HRESULT hr = sipCpp->get_UpBars(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UpBars()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=UpBars, get=getUpBars)

        VARIANT_BOOL getVaryByCategories();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_VaryByCategories(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_VaryByCategories()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setVaryByCategories(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_VaryByCategories(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_VaryByCategories()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=VaryByCategories, get=getVaryByCategories, set=setVaryByCategories)

        XlSizeRepresents getSizeRepresents();
        %MethodCode
            wpsapi::XlSizeRepresents prop = (wpsapi::XlSizeRepresents)0;
            HRESULT hr = sipCpp->get_SizeRepresents(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SizeRepresents()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSizeRepresents(XlSizeRepresents prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SizeRepresents(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SizeRepresents()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SizeRepresents, get=getSizeRepresents, set=setSizeRepresents)

        long getBubbleScale();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_BubbleScale(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BubbleScale()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBubbleScale(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BubbleScale(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BubbleScale()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BubbleScale, get=getBubbleScale, set=setBubbleScale)

        VARIANT_BOOL getShowNegativeBubbles();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowNegativeBubbles(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowNegativeBubbles()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowNegativeBubbles(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowNegativeBubbles(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowNegativeBubbles()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowNegativeBubbles, get=getShowNegativeBubbles, set=setShowNegativeBubbles)

        XlChartSplitType getSplitType();
        %MethodCode
            wpsapi::XlChartSplitType prop = (wpsapi::XlChartSplitType)0;
            HRESULT hr = sipCpp->get_SplitType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SplitType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSplitType(XlChartSplitType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SplitType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SplitType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SplitType, get=getSplitType, set=setSplitType)

        VARIANT getSplitValue();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_SplitValue(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SplitValue()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSplitValue(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SplitValue(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SplitValue()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SplitValue, get=getSplitValue, set=setSplitValue)

        long getSecondPlotSize();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_SecondPlotSize(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SecondPlotSize()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSecondPlotSize(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SecondPlotSize(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SecondPlotSize()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SecondPlotSize, get=getSecondPlotSize, set=setSecondPlotSize)

        VARIANT_BOOL getHas3DShading();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Has3DShading(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Has3DShading()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHas3DShading(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Has3DShading(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Has3DShading()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Has3DShading, get=getHas3DShading, set=setHas3DShading)
    };
};
