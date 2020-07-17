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
    struct IChartGroup : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_AxisGroup(
            XlAxisGroup *RHS /Out/) = 0;

        virtual HRESULT put_AxisGroup(
            XlAxisGroup RHS) = 0;

        virtual HRESULT get_DoughnutHoleSize(
            long *RHS /Out/) = 0;

        virtual HRESULT put_DoughnutHoleSize(
            long RHS) = 0;

        virtual HRESULT get_DownBars(
            DownBars **RHS /Out/) = 0;

        virtual HRESULT get_DropLines(
            DropLines **RHS /Out/) = 0;

        virtual HRESULT get_FirstSliceAngle(
            long *RHS /Out/) = 0;

        virtual HRESULT put_FirstSliceAngle(
            long RHS) = 0;

        virtual HRESULT get_GapWidth(
            long *RHS /Out/) = 0;

        virtual HRESULT put_GapWidth(
            long RHS) = 0;

        virtual HRESULT get_HasDropLines(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_HasDropLines(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_HasHiLoLines(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_HasHiLoLines(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_HasRadarAxisLabels(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_HasRadarAxisLabels(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_HasSeriesLines(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_HasSeriesLines(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_HasUpDownBars(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_HasUpDownBars(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_HiLoLines(
            HiLoLines **RHS /Out/) = 0;

        virtual HRESULT get_Index(
            long *RHS /Out/) = 0;

        virtual HRESULT get_Overlap(
            long *RHS /Out/) = 0;

        virtual HRESULT put_Overlap(
            long RHS) = 0;

        virtual HRESULT get_RadarAxisLabels(
            TickLabels **RHS /Out/) = 0;

        virtual HRESULT SeriesCollection(
            VARIANT Index = argMissing2(),
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get_SeriesLines(
            SeriesLines **RHS /Out/) = 0;

        virtual HRESULT get_SubType(
            long *RHS /Out/) = 0;

        virtual HRESULT put_SubType(
            long RHS) = 0;

        virtual HRESULT get_Type(
            long *RHS /Out/) = 0;

        virtual HRESULT put_Type(
            long RHS) = 0;

        virtual HRESULT get_UpBars(
            UpBars **RHS /Out/) = 0;

        virtual HRESULT get_VaryByCategories(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_VaryByCategories(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_SizeRepresents(
            XlSizeRepresents *RHS /Out/) = 0;

        virtual HRESULT put_SizeRepresents(
            XlSizeRepresents RHS) = 0;

        virtual HRESULT get_BubbleScale(
            long *RHS /Out/) = 0;

        virtual HRESULT put_BubbleScale(
            long RHS) = 0;

        virtual HRESULT get_ShowNegativeBubbles(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowNegativeBubbles(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_SplitType(
            XlChartSplitType *RHS /Out/) = 0;

        virtual HRESULT put_SplitType(
            XlChartSplitType RHS) = 0;

        virtual HRESULT get_SplitValue(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_SplitValue(
            VARIANT RHS) = 0;

        virtual HRESULT get_SecondPlotSize(
            long *RHS /Out/) = 0;

        virtual HRESULT put_SecondPlotSize(
            long RHS) = 0;

        virtual HRESULT get_Has3DShading(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Has3DShading(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT FullCategoryCollection(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT CategoryCollection(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

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

        XlAxisGroup getAxisGroup();
        %MethodCode
            etapi::XlAxisGroup prop = (etapi::XlAxisGroup)0;
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
            etapi::DownBars *prop = nullptr;
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
            etapi::DropLines *prop = nullptr;
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
            etapi::HiLoLines *prop = nullptr;
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
            etapi::TickLabels *prop = nullptr;
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
            etapi::SeriesLines *prop = nullptr;
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
            etapi::UpBars *prop = nullptr;
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
            etapi::XlSizeRepresents prop = (etapi::XlSizeRepresents)0;
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
            etapi::XlChartSplitType prop = (etapi::XlChartSplitType)0;
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
