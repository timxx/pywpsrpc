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
    struct Chart : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_HasTitle(
            long lcid,
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HasTitle(
            long lcid,
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ChartTitle(
            long lcid,
            ChartTitle **prop /Out/) = 0;

        virtual HRESULT get_DepthPercent(
            long lcid,
            long *prop /Out/) = 0;

        virtual HRESULT put_DepthPercent(
            long lcid,
            long prop) = 0;

        virtual HRESULT get_Elevation(
            long lcid,
            long *prop /Out/) = 0;

        virtual HRESULT put_Elevation(
            long lcid,
            long prop) = 0;

        virtual HRESULT get_GapDepth(
            long lcid,
            long *prop /Out/) = 0;

        virtual HRESULT put_GapDepth(
            long lcid,
            long prop) = 0;

        virtual HRESULT get_HeightPercent(
            long lcid,
            long *prop /Out/) = 0;

        virtual HRESULT put_HeightPercent(
            long lcid,
            long prop) = 0;

        virtual HRESULT get_Perspective(
            long lcid,
            long *prop /Out/) = 0;

        virtual HRESULT put_Perspective(
            long lcid,
            long prop) = 0;

        virtual HRESULT get_RightAngleAxes(
            long lcid,
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_RightAngleAxes(
            long lcid,
            VARIANT prop) = 0;

        virtual HRESULT get_Rotation(
            long lcid,
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Rotation(
            long lcid,
            VARIANT prop) = 0;

        virtual HRESULT get_DisplayBlanksAs(
            long lcid,
            XlDisplayBlanksAs *prop /Out/) = 0;

        virtual HRESULT put_DisplayBlanksAs(
            long lcid,
            XlDisplayBlanksAs prop) = 0;

        virtual HRESULT get_ChartGroups(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **prop /Out/ = 0) = 0;

        virtual HRESULT SeriesCollection(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **prop /Out/ = 0) = 0;

        virtual HRESULT get_SubType(
            long lcid,
            long *prop /Out/) = 0;

        virtual HRESULT put_SubType(
            long lcid,
            long prop) = 0;

        virtual HRESULT get_Type(
            long lcid,
            long *prop /Out/) = 0;

        virtual HRESULT put_Type(
            long lcid,
            long prop) = 0;

        virtual HRESULT get_Corners(
            long lcid,
            Corners **prop /Out/) = 0;

        virtual HRESULT ApplyDataLabels(
            XlDataLabelsType Type = wpsapi::xlDataLabelsShowNone,
            VARIANT LegendKey = argMissing2(),
            VARIANT AutoText = argMissing2(),
            VARIANT HasLeaderLines = argMissing2(),
            VARIANT ShowSeriesName = argMissing2(),
            VARIANT ShowCategoryName = argMissing2(),
            VARIANT ShowValue = argMissing2(),
            VARIANT ShowPercentage = argMissing2(),
            VARIANT ShowBubbleSize = argMissing2(),
            VARIANT Separator = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT get_ChartType(
            XlChartType *prop /Out/) = 0;

        virtual HRESULT put_ChartType(
            XlChartType prop) = 0;

        virtual HRESULT get_HasDataTable(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HasDataTable(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT ApplyCustomType(
            XlChartType ChartType,
            VARIANT TypeName = argMissing2()) = 0;

        virtual HRESULT GetChartElement(
            long x,
            long y,
            long *ElementID /Out/,
            long *Arg1 /Out/,
            long *Arg2 /Out/) = 0;

        virtual HRESULT SetSourceData(
            BSTR Source,
            VARIANT PlotBy = argMissing2()) = 0;

        virtual HRESULT get_PlotBy(
            XlRowCol *prop /Out/) = 0;

        virtual HRESULT put_PlotBy(
            XlRowCol prop) = 0;

        virtual HRESULT get_HasLegend(
            long lcid,
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HasLegend(
            long lcid,
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Legend(
            long lcid,
            Legend **prop /Out/) = 0;

        virtual HRESULT Axes(
            VARIANT Type = argMissing2(),
            XlAxisGroup AxisGroup = wpsapi::xlPrimary,
            long lcid = 0,
            IDispatch **prop /Out/ = 0) = 0;

        virtual HRESULT get_HasAxis(
            VARIANT Index1 = argMissing2(),
            VARIANT Index2 = argMissing2(),
            long lcid = 0,
            VARIANT *prop /Out/ = 0) = 0;

        virtual HRESULT put_HasAxis(
            VARIANT Index1 = argMissing2(),
            VARIANT Index2 = argMissing2(),
            long lcid = 0,
            VARIANT prop = argMissing2()) = 0;

        virtual HRESULT get_Walls(
            long lcid,
            Walls **prop /Out/) = 0;

        virtual HRESULT get_Floor(
            long lcid,
            Floor **prop /Out/) = 0;

        virtual HRESULT get_PlotArea(
            long lcid,
            PlotArea **prop /Out/) = 0;

        virtual HRESULT get_PlotVisibleOnly(
            long lcid,
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_PlotVisibleOnly(
            long lcid,
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ChartArea(
            long lcid,
            ChartArea **prop /Out/) = 0;

        virtual HRESULT AutoFormat(
            long Gallery,
            VARIANT Format = argMissing2()) = 0;

        virtual HRESULT get_AutoScaling(
            long lcid,
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AutoScaling(
            long lcid,
            VARIANT_BOOL prop) = 0;

        virtual HRESULT SetBackgroundPicture(
            BSTR FileName) = 0;

        virtual HRESULT ChartWizard(
            VARIANT Source = argMissing2(),
            VARIANT Gallery = argMissing2(),
            VARIANT Format = argMissing2(),
            VARIANT PlotBy = argMissing2(),
            VARIANT CategoryLabels = argMissing2(),
            VARIANT SeriesLabels = argMissing2(),
            VARIANT HasLegend = argMissing2(),
            VARIANT Title = argMissing2(),
            VARIANT CategoryTitle = argMissing2(),
            VARIANT ValueTitle = argMissing2(),
            VARIANT ExtraTitle = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT CopyPicture(
            XlPictureAppearance Appearance = wpsapi::xlPrinter,
            XlCopyPictureFormat Format = wpsapi::xlPicture,
            XlPictureAppearance Size = wpsapi::xlPrinter,
            long lcid = 0) = 0;

        virtual HRESULT get_DataTable(
            DataTable **prop /Out/) = 0;

        virtual HRESULT Paste(
            VARIANT Type = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT get_BarShape(
            XlBarShape *prop /Out/) = 0;

        virtual HRESULT put_BarShape(
            XlBarShape prop) = 0;

        virtual HRESULT Export(
            BSTR FileName,
            VARIANT FilterName = argMissing2(),
            VARIANT Interactive = argMissing2(),
            VARIANT_BOOL *prop /Out/ = 0) = 0;

        virtual HRESULT SetDefaultChart(
            VARIANT Name) = 0;

        virtual HRESULT ApplyChartTemplate(
            BSTR FileName) = 0;

        virtual HRESULT SaveChartTemplate(
            BSTR FileName) = 0;

        virtual HRESULT get_SideWall(
            Walls **prop /Out/) = 0;

        virtual HRESULT get_BackWall(
            Walls **prop /Out/) = 0;

        virtual HRESULT get_ChartStyle(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_ChartStyle(
            VARIANT prop) = 0;

        virtual HRESULT ClearToMatchStyle() = 0;

        virtual HRESULT get_PivotLayout(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_HasPivotFields(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HasPivotFields(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowDataLabelsOverMaximum(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowDataLabelsOverMaximum(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT ApplyLayout(
            long Layout,
            VARIANT ChartType = argMissing2()) = 0;

        virtual HRESULT Refresh() = 0;

        virtual HRESULT SetElement(
            MsoChartElementType Element) = 0;

        virtual HRESULT get_ChartData(
            ChartData **prop /Out/) = 0;

        virtual HRESULT get_Shapes(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Area3DGroup(
            long lcid,
            ChartGroup **prop /Out/) = 0;

        virtual HRESULT AreaGroups(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **prop /Out/ = 0) = 0;

        virtual HRESULT get_Bar3DGroup(
            long lcid = 0,
            ChartGroup **prop /Out/ = 0) = 0;

        virtual HRESULT BarGroups(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **prop /Out/ = 0) = 0;

        virtual HRESULT get_Column3DGroup(
            long lcid,
            ChartGroup **prop /Out/) = 0;

        virtual HRESULT ColumnGroups(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **prop /Out/ = 0) = 0;

        virtual HRESULT get_Line3DGroup(
            long lcid,
            ChartGroup **prop /Out/) = 0;

        virtual HRESULT LineGroups(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **prop /Out/ = 0) = 0;

        virtual HRESULT get_Pie3DGroup(
            long lcid,
            ChartGroup **prop /Out/) = 0;

        virtual HRESULT PieGroups(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **prop /Out/ = 0) = 0;

        virtual HRESULT DoughnutGroups(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **prop /Out/ = 0) = 0;

        virtual HRESULT RadarGroups(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **prop /Out/ = 0) = 0;

        virtual HRESULT get_SurfaceGroup(
            long lcid,
            ChartGroup **prop /Out/) = 0;

        virtual HRESULT XYGroups(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **prop /Out/ = 0) = 0;

        virtual HRESULT Delete(
            long lcid,
            VARIANT *prop /Out/) = 0;

        virtual HRESULT Copy(
            VARIANT Before = argMissing2(),
            VARIANT After = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT Select(
            VARIANT Replace = argMissing2(),
            long lcid = 0,
            VARIANT *prop /Out/ = 0) = 0;

        virtual HRESULT get_ShowReportFilterFieldButtons(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowReportFilterFieldButtons(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowLegendFieldButtons(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowLegendFieldButtons(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowAxisFieldButtons(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowAxisFieldButtons(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowValueFieldButtons(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowValueFieldButtons(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ShowAllFieldButtons(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowAllFieldButtons(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT FullSeriesCollection(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **prop /Out/ = 0) = 0;

        virtual HRESULT get_CategoryLabelLevel(
            XlCategoryLabelLevel *prop /Out/) = 0;

        virtual HRESULT put_CategoryLabelLevel(
            XlCategoryLabelLevel prop) = 0;

        virtual HRESULT get_SeriesNameLevel(
            XlSeriesNameLevel *prop /Out/) = 0;

        virtual HRESULT put_SeriesNameLevel(
            XlSeriesNameLevel prop) = 0;

        virtual HRESULT get_HasHiddenContent(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT DeleteHiddenContent() = 0;

        virtual HRESULT get_ChartColor(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_ChartColor(
            VARIANT prop) = 0;

        virtual HRESULT ClearToMatchColorStyle() = 0;

        VARIANT_BOOL getHasTitle();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HasTitle(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasTitle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHasTitle(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HasTitle(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HasTitle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HasTitle, get=getHasTitle, set=setHasTitle)

        ChartTitle* getChartTitle();
        %MethodCode
            wpsapi::ChartTitle *prop = nullptr;
            HRESULT hr = sipCpp->get_ChartTitle(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ChartTitle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ChartTitle, get=getChartTitle)

        long getDepthPercent();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_DepthPercent(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DepthPercent()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDepthPercent(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DepthPercent(0, a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DepthPercent()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DepthPercent, get=getDepthPercent, set=setDepthPercent)

        long getElevation();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Elevation(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Elevation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setElevation(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Elevation(0, a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Elevation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Elevation, get=getElevation, set=setElevation)

        long getGapDepth();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_GapDepth(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_GapDepth()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setGapDepth(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_GapDepth(0, a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_GapDepth()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=GapDepth, get=getGapDepth, set=setGapDepth)

        long getHeightPercent();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_HeightPercent(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HeightPercent()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHeightPercent(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HeightPercent(0, a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HeightPercent()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HeightPercent, get=getHeightPercent, set=setHeightPercent)

        long getPerspective();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Perspective(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Perspective()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPerspective(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Perspective(0, a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Perspective()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Perspective, get=getPerspective, set=setPerspective)

        VARIANT getRightAngleAxes();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_RightAngleAxes(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RightAngleAxes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRightAngleAxes(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RightAngleAxes(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RightAngleAxes()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RightAngleAxes, get=getRightAngleAxes, set=setRightAngleAxes)

        VARIANT getRotation();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Rotation(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Rotation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRotation(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Rotation(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Rotation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Rotation, get=getRotation, set=setRotation)

        XlDisplayBlanksAs getDisplayBlanksAs();
        %MethodCode
            wpsapi::XlDisplayBlanksAs prop = (wpsapi::XlDisplayBlanksAs)0;
            HRESULT hr = sipCpp->get_DisplayBlanksAs(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayBlanksAs()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayBlanksAs(XlDisplayBlanksAs prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayBlanksAs(0, a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayBlanksAs()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayBlanksAs, get=getDisplayBlanksAs, set=setDisplayBlanksAs)

        long getSubType();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_SubType(0, &prop);
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
            HRESULT hr = sipCpp->put_SubType(0, a0);
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
            HRESULT hr = sipCpp->get_Type(0, &prop);
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
            HRESULT hr = sipCpp->put_Type(0, a0);
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

        Corners* getCorners();
        %MethodCode
            wpsapi::Corners *prop = nullptr;
            HRESULT hr = sipCpp->get_Corners(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Corners()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Corners, get=getCorners)

        XlChartType getChartType();
        %MethodCode
            wpsapi::XlChartType prop = (wpsapi::XlChartType)0;
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

        VARIANT_BOOL getHasDataTable();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HasDataTable(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasDataTable()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHasDataTable(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HasDataTable(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HasDataTable()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HasDataTable, get=getHasDataTable, set=setHasDataTable)

        XlRowCol getPlotBy();
        %MethodCode
            wpsapi::XlRowCol prop = (wpsapi::XlRowCol)0;
            HRESULT hr = sipCpp->get_PlotBy(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PlotBy()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPlotBy(XlRowCol prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PlotBy(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PlotBy()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PlotBy, get=getPlotBy, set=setPlotBy)

        VARIANT_BOOL getHasLegend();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HasLegend(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasLegend()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHasLegend(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HasLegend(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HasLegend()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HasLegend, get=getHasLegend, set=setHasLegend)

        Legend* getLegend();
        %MethodCode
            wpsapi::Legend *prop = nullptr;
            HRESULT hr = sipCpp->get_Legend(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Legend()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Legend, get=getLegend)

        Walls* getWalls();
        %MethodCode
            wpsapi::Walls *prop = nullptr;
            HRESULT hr = sipCpp->get_Walls(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Walls()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Walls, get=getWalls)

        Floor* getFloor();
        %MethodCode
            wpsapi::Floor *prop = nullptr;
            HRESULT hr = sipCpp->get_Floor(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Floor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Floor, get=getFloor)

        PlotArea* getPlotArea();
        %MethodCode
            wpsapi::PlotArea *prop = nullptr;
            HRESULT hr = sipCpp->get_PlotArea(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PlotArea()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PlotArea, get=getPlotArea)

        VARIANT_BOOL getPlotVisibleOnly();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PlotVisibleOnly(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PlotVisibleOnly()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPlotVisibleOnly(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PlotVisibleOnly(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PlotVisibleOnly()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PlotVisibleOnly, get=getPlotVisibleOnly, set=setPlotVisibleOnly)

        ChartArea* getChartArea();
        %MethodCode
            wpsapi::ChartArea *prop = nullptr;
            HRESULT hr = sipCpp->get_ChartArea(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ChartArea()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ChartArea, get=getChartArea)

        VARIANT_BOOL getAutoScaling();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AutoScaling(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoScaling()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoScaling(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoScaling(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoScaling()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoScaling, get=getAutoScaling, set=setAutoScaling)

        DataTable* getDataTable();
        %MethodCode
            wpsapi::DataTable *prop = nullptr;
            HRESULT hr = sipCpp->get_DataTable(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DataTable()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DataTable, get=getDataTable)

        XlBarShape getBarShape();
        %MethodCode
            wpsapi::XlBarShape prop = (wpsapi::XlBarShape)0;
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

        Walls* getSideWall();
        %MethodCode
            wpsapi::Walls *prop = nullptr;
            HRESULT hr = sipCpp->get_SideWall(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SideWall()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SideWall, get=getSideWall)

        Walls* getBackWall();
        %MethodCode
            wpsapi::Walls *prop = nullptr;
            HRESULT hr = sipCpp->get_BackWall(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BackWall()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=BackWall, get=getBackWall)

        VARIANT getChartStyle();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_ChartStyle(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ChartStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setChartStyle(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ChartStyle(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ChartStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ChartStyle, get=getChartStyle, set=setChartStyle)

        IDispatch* getPivotLayout();
        %MethodCode
            IDispatch *prop = nullptr;
            HRESULT hr = sipCpp->get_PivotLayout(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PivotLayout()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PivotLayout, get=getPivotLayout)

        VARIANT_BOOL getHasPivotFields();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HasPivotFields(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasPivotFields()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHasPivotFields(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HasPivotFields(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HasPivotFields()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HasPivotFields, get=getHasPivotFields, set=setHasPivotFields)

        VARIANT_BOOL getShowDataLabelsOverMaximum();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowDataLabelsOverMaximum(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowDataLabelsOverMaximum()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowDataLabelsOverMaximum(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowDataLabelsOverMaximum(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowDataLabelsOverMaximum()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowDataLabelsOverMaximum, get=getShowDataLabelsOverMaximum, set=setShowDataLabelsOverMaximum)

        ChartData* getChartData();
        %MethodCode
            wpsapi::ChartData *prop = nullptr;
            HRESULT hr = sipCpp->get_ChartData(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ChartData()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ChartData, get=getChartData)

        IDispatch* getShapes();
        %MethodCode
            IDispatch *prop = nullptr;
            HRESULT hr = sipCpp->get_Shapes(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Shapes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Shapes, get=getShapes)

        ChartGroup* getArea3DGroup();
        %MethodCode
            wpsapi::ChartGroup *prop = nullptr;
            HRESULT hr = sipCpp->get_Area3DGroup(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Area3DGroup()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Area3DGroup, get=getArea3DGroup)

        ChartGroup* getColumn3DGroup();
        %MethodCode
            wpsapi::ChartGroup *prop = nullptr;
            HRESULT hr = sipCpp->get_Column3DGroup(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Column3DGroup()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Column3DGroup, get=getColumn3DGroup)

        ChartGroup* getLine3DGroup();
        %MethodCode
            wpsapi::ChartGroup *prop = nullptr;
            HRESULT hr = sipCpp->get_Line3DGroup(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Line3DGroup()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Line3DGroup, get=getLine3DGroup)

        ChartGroup* getPie3DGroup();
        %MethodCode
            wpsapi::ChartGroup *prop = nullptr;
            HRESULT hr = sipCpp->get_Pie3DGroup(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Pie3DGroup()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Pie3DGroup, get=getPie3DGroup)

        ChartGroup* getSurfaceGroup();
        %MethodCode
            wpsapi::ChartGroup *prop = nullptr;
            HRESULT hr = sipCpp->get_SurfaceGroup(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SurfaceGroup()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SurfaceGroup, get=getSurfaceGroup)

        VARIANT_BOOL getShowReportFilterFieldButtons();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowReportFilterFieldButtons(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowReportFilterFieldButtons()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowReportFilterFieldButtons(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowReportFilterFieldButtons(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowReportFilterFieldButtons()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowReportFilterFieldButtons, get=getShowReportFilterFieldButtons, set=setShowReportFilterFieldButtons)

        VARIANT_BOOL getShowLegendFieldButtons();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowLegendFieldButtons(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowLegendFieldButtons()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowLegendFieldButtons(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowLegendFieldButtons(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowLegendFieldButtons()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowLegendFieldButtons, get=getShowLegendFieldButtons, set=setShowLegendFieldButtons)

        VARIANT_BOOL getShowAxisFieldButtons();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowAxisFieldButtons(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowAxisFieldButtons()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowAxisFieldButtons(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowAxisFieldButtons(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowAxisFieldButtons()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowAxisFieldButtons, get=getShowAxisFieldButtons, set=setShowAxisFieldButtons)

        VARIANT_BOOL getShowValueFieldButtons();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowValueFieldButtons(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowValueFieldButtons()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowValueFieldButtons(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowValueFieldButtons(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowValueFieldButtons()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowValueFieldButtons, get=getShowValueFieldButtons, set=setShowValueFieldButtons)

        VARIANT_BOOL getShowAllFieldButtons();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowAllFieldButtons(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowAllFieldButtons()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowAllFieldButtons(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowAllFieldButtons(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowAllFieldButtons()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowAllFieldButtons, get=getShowAllFieldButtons, set=setShowAllFieldButtons)

        XlCategoryLabelLevel getCategoryLabelLevel();
        %MethodCode
            wpsapi::XlCategoryLabelLevel prop = (wpsapi::XlCategoryLabelLevel)0;
            HRESULT hr = sipCpp->get_CategoryLabelLevel(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CategoryLabelLevel()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCategoryLabelLevel(XlCategoryLabelLevel prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CategoryLabelLevel(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CategoryLabelLevel()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CategoryLabelLevel, get=getCategoryLabelLevel, set=setCategoryLabelLevel)

        XlSeriesNameLevel getSeriesNameLevel();
        %MethodCode
            wpsapi::XlSeriesNameLevel prop = (wpsapi::XlSeriesNameLevel)0;
            HRESULT hr = sipCpp->get_SeriesNameLevel(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SeriesNameLevel()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSeriesNameLevel(XlSeriesNameLevel prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SeriesNameLevel(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SeriesNameLevel()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SeriesNameLevel, get=getSeriesNameLevel, set=setSeriesNameLevel)

        VARIANT_BOOL getHasHiddenContent();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HasHiddenContent(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasHiddenContent()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HasHiddenContent, get=getHasHiddenContent)

        VARIANT getChartColor();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_ChartColor(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ChartColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setChartColor(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ChartColor(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ChartColor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ChartColor, get=getChartColor, set=setChartColor)
    };
};
