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
    struct IMsoChartGroup : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT put_AxisGroup(
            int piGroup) = 0;

        virtual HRESULT get_AxisGroup(
            int *piGroup /Out/) = 0;

        virtual HRESULT put_DoughnutHoleSize(
            int pDoughnutHoleSize) = 0;

        virtual HRESULT get_DoughnutHoleSize(
            int *pDoughnutHoleSize /Out/) = 0;

        virtual HRESULT get_DownBars(
            IMsoDownBars **ppdownbars /Out/) = 0;

        virtual HRESULT get_DropLines(
            IMsoDropLines **ppdroplines /Out/) = 0;

        virtual HRESULT put_FirstSliceAngle(
            int pFirstSliceAngle) = 0;

        virtual HRESULT get_FirstSliceAngle(
            int *pFirstSliceAngle /Out/) = 0;

        virtual HRESULT put_GapWidth(
            int pGapWidth) = 0;

        virtual HRESULT get_GapWidth(
            int *pGapWidth /Out/) = 0;

        virtual HRESULT put_HasDropLines(
            VARIANT_BOOL pfHasDropLines) = 0;

        virtual HRESULT get_HasDropLines(
            VARIANT_BOOL *pfHasDropLines /Out/) = 0;

        virtual HRESULT put_HasHiLoLines(
            VARIANT_BOOL pfHasHiLoLines) = 0;

        virtual HRESULT get_HasHiLoLines(
            VARIANT_BOOL *pfHasHiLoLines /Out/) = 0;

        virtual HRESULT put_HasRadarAxisLabels(
            VARIANT_BOOL pfHasRadarAxisLabels) = 0;

        virtual HRESULT get_HasRadarAxisLabels(
            VARIANT_BOOL *pfHasRadarAxisLabels /Out/) = 0;

        virtual HRESULT put_HasSeriesLines(
            VARIANT_BOOL pfHasSeriesLines) = 0;

        virtual HRESULT get_HasSeriesLines(
            VARIANT_BOOL *pfHasSeriesLines /Out/) = 0;

        virtual HRESULT put_HasUpDownBars(
            VARIANT_BOOL pfHasUpDownBars) = 0;

        virtual HRESULT get_HasUpDownBars(
            VARIANT_BOOL *pfHasUpDownBars /Out/) = 0;

        virtual HRESULT get_HiLoLines(
            IMsoHiLoLines **ppHiLoLines /Out/) = 0;

        virtual HRESULT get_Index(
            int *pIndex /Out/) = 0;

        virtual HRESULT put_Overlap(
            int pOverlap) = 0;

        virtual HRESULT get_Overlap(
            int *pOverlap /Out/) = 0;

        virtual HRESULT get_RadarAxisLabels(
            IDispatch **ppRadarAxisLabels /Out/) = 0;

        virtual HRESULT SeriesCollection(
            VARIANT Index = argMissing2(),
            IDispatch **ppSeriesCollection /Out/ = 0) = 0;

        virtual HRESULT get_SeriesLines(
            IMsoSeriesLines **ppSeriesLines /Out/) = 0;

        virtual HRESULT put_SubType(
            int pSubType) = 0;

        virtual HRESULT get_SubType(
            int *pSubType /Out/) = 0;

        virtual HRESULT put_Type(
            int ptype) = 0;

        virtual HRESULT get_Type(
            int *ptype /Out/) = 0;

        virtual HRESULT get_UpBars(
            IMsoUpBars **ppUpBars /Out/) = 0;

        virtual HRESULT put_VaryByCategories(
            VARIANT_BOOL pfVaryByCategories) = 0;

        virtual HRESULT get_VaryByCategories(
            VARIANT_BOOL *pfVaryByCategories /Out/) = 0;

        virtual HRESULT get_SizeRepresents(
            XlSizeRepresents *pXlSizeRepresents /Out/) = 0;

        virtual HRESULT put_SizeRepresents(
            XlSizeRepresents pXlSizeRepresents) = 0;

        virtual HRESULT put_BubbleScale(
            int pbubblescale) = 0;

        virtual HRESULT get_BubbleScale(
            int *pbubblescale /Out/) = 0;

        virtual HRESULT put_ShowNegativeBubbles(
            VARIANT_BOOL pfShowNegativeBubbles) = 0;

        virtual HRESULT get_ShowNegativeBubbles(
            VARIANT_BOOL *pfShowNegativeBubbles /Out/) = 0;

        virtual HRESULT put_SplitType(
            XlChartSplitType pChartSplitType) = 0;

        virtual HRESULT get_SplitType(
            XlChartSplitType *pChartSplitType /Out/) = 0;

        virtual HRESULT get_SplitValue(
            VARIANT *pSplitValue /Out/) = 0;

        virtual HRESULT put_SplitValue(
            VARIANT pSplitValue) = 0;

        virtual HRESULT get_SecondPlotSize(
            int *pSecondPlotSize /Out/) = 0;

        virtual HRESULT put_SecondPlotSize(
            int pSecondPlotSize) = 0;

        virtual HRESULT get_Has3DShading(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Has3DShading(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT CategoryCollection(
            VARIANT Index = argMissing2(),
            IDispatch **ppcatcollection /Out/ = 0) = 0;

        virtual HRESULT FullCategoryCollection(
            VARIANT Index = argMissing2(),
            IDispatch **ppcatcollection /Out/ = 0) = 0;

        int getAxisGroup();
        %MethodCode
            int prop = 0;
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

        PyObject* setAxisGroup(int prop);
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

        int getDoughnutHoleSize();
        %MethodCode
            int prop = 0;
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

        PyObject* setDoughnutHoleSize(int prop);
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

        IMsoDownBars* getDownBars();
        %MethodCode
            ksoapi::IMsoDownBars *prop = nullptr;
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

        IMsoDropLines* getDropLines();
        %MethodCode
            ksoapi::IMsoDropLines *prop = nullptr;
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

        int getFirstSliceAngle();
        %MethodCode
            int prop = 0;
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

        PyObject* setFirstSliceAngle(int prop);
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

        int getGapWidth();
        %MethodCode
            int prop = 0;
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

        PyObject* setGapWidth(int prop);
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

        IMsoHiLoLines* getHiLoLines();
        %MethodCode
            ksoapi::IMsoHiLoLines *prop = nullptr;
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

        int getIndex();
        %MethodCode
            int prop = 0;
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

        int getOverlap();
        %MethodCode
            int prop = 0;
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

        PyObject* setOverlap(int prop);
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

        IDispatch* getRadarAxisLabels();
        %MethodCode
            IDispatch *prop = nullptr;
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

        IMsoSeriesLines* getSeriesLines();
        %MethodCode
            ksoapi::IMsoSeriesLines *prop = nullptr;
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

        int getSubType();
        %MethodCode
            int prop = 0;
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

        PyObject* setSubType(int prop);
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

        int getType();
        %MethodCode
            int prop = 0;
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

        PyObject* setType(int prop);
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

        IMsoUpBars* getUpBars();
        %MethodCode
            ksoapi::IMsoUpBars *prop = nullptr;
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
            ksoapi::XlSizeRepresents prop = (ksoapi::XlSizeRepresents)0;
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

        int getBubbleScale();
        %MethodCode
            int prop = 0;
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

        PyObject* setBubbleScale(int prop);
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
            ksoapi::XlChartSplitType prop = (ksoapi::XlChartSplitType)0;
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

        int getSecondPlotSize();
        %MethodCode
            int prop = 0;
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

        PyObject* setSecondPlotSize(int prop);
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
