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
    struct IMsoChart : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT put_HasTitle(
            VARIANT_BOOL fTitle) = 0;

        virtual HRESULT get_HasTitle(
            VARIANT_BOOL *fTitle /Out/) = 0;

        virtual HRESULT get_ChartTitle(
            IMsoChartTitle **pval /Out/) = 0;

        virtual HRESULT get_DepthPercent(
            int *pwDepthPercent /Out/) = 0;

        virtual HRESULT put_DepthPercent(
            int pwDepthPercent) = 0;

        virtual HRESULT get_Elevation(
            int *pwElevation /Out/) = 0;

        virtual HRESULT put_Elevation(
            int pwElevation) = 0;

        virtual HRESULT get_GapDepth(
            int *pwGapDepth /Out/) = 0;

        virtual HRESULT put_GapDepth(
            int pwGapDepth) = 0;

        virtual HRESULT get_HeightPercent(
            int *pwHeightPercent /Out/) = 0;

        virtual HRESULT put_HeightPercent(
            int pwHeightPercent) = 0;

        virtual HRESULT get_Perspective(
            int *pwPerspective /Out/) = 0;

        virtual HRESULT put_Perspective(
            int pwPerspective) = 0;

        virtual HRESULT get_RightAngleAxes(
            VARIANT *pvarRightAngleAxes /Out/) = 0;

        virtual HRESULT put_RightAngleAxes(
            VARIANT pvarRightAngleAxes) = 0;

        virtual HRESULT get_Rotation(
            VARIANT *pvarRotation /Out/) = 0;

        virtual HRESULT put_Rotation(
            VARIANT pvarRotation) = 0;

        virtual HRESULT put_DisplayBlanksAs(
            XlDisplayBlanksAs pres) = 0;

        virtual HRESULT get_DisplayBlanksAs(
            XlDisplayBlanksAs *pres /Out/) = 0;

        virtual HRESULT put_ProtectData(
            VARIANT_BOOL pres) = 0;

        virtual HRESULT get_ProtectData(
            VARIANT_BOOL *pres /Out/) = 0;

        virtual HRESULT put_ProtectFormatting(
            VARIANT_BOOL pres) = 0;

        virtual HRESULT get_ProtectFormatting(
            VARIANT_BOOL *pres /Out/) = 0;

        virtual HRESULT put_ProtectGoalSeek(
            VARIANT_BOOL pres) = 0;

        virtual HRESULT get_ProtectGoalSeek(
            VARIANT_BOOL *pres /Out/) = 0;

        virtual HRESULT put_ProtectSelection(
            VARIANT_BOOL pres) = 0;

        virtual HRESULT get_ProtectSelection(
            VARIANT_BOOL *pres /Out/) = 0;

        virtual HRESULT put_ProtectChartObjects(
            VARIANT_BOOL pres) = 0;

        virtual HRESULT get_ProtectChartObjects(
            VARIANT_BOOL *pres /Out/) = 0;

        virtual HRESULT UnProtect(
            VARIANT Password = argMissing2()) = 0;

        virtual HRESULT Protect(
            VARIANT Password = argMissing2(),
            VARIANT DrawingObjects = argMissing2(),
            VARIANT Contents = argMissing2(),
            VARIANT Scenarios = argMissing2(),
            VARIANT UserInterfaceOnly = argMissing2()) = 0;

        virtual HRESULT get_ChartGroups(
            VARIANT *pvarIndex = argMissing(),
            VARIANT varIgallery = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT SeriesCollection(
            VARIANT Index = argMissing2(),
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT _ApplyDataLabels(
            XlDataLabelsType Type = ksoapi::xlDataLabelsShowNone,
            VARIANT IMsoLegendKey = argMissing2(),
            VARIANT AutoText = argMissing2(),
            VARIANT HasLeaderLines = argMissing2()) = 0;

        virtual HRESULT get_SubType(
            long *RHS /Out/) = 0;

        virtual HRESULT put_SubType(
            long RHS) = 0;

        virtual HRESULT get_Type(
            long *RHS /Out/) = 0;

        virtual HRESULT put_Type(
            long RHS) = 0;

        virtual HRESULT get_Corners(
            IMsoCorners **RHS /Out/) = 0;

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
            VARIANT Separator = argMissing2()) = 0;

        virtual HRESULT get_ChartType(
            XlChartType *RHS /Out/) = 0;

        virtual HRESULT put_ChartType(
            XlChartType RHS) = 0;

        virtual HRESULT get_HasDataTable(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_HasDataTable(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT ApplyCustomType(
            XlChartType ChartType,
            VARIANT TypeName = argMissing2()) = 0;

        virtual HRESULT GetChartElement(
            long x,
            long y,
            long *ElementID /In,Out/,
            long *Arg1 /In,Out/,
            long *Arg2 /In,Out/) = 0;

        virtual HRESULT SetSourceData(
            BSTR Source,
            VARIANT PlotBy = argMissing2()) = 0;

        virtual HRESULT get_PlotBy(
            XlRowCol *PlotBy /Out/) = 0;

        virtual HRESULT put_PlotBy(
            XlRowCol PlotBy) = 0;

        virtual HRESULT get_HasLegend(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_HasLegend(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Legend(
            IMsoLegend **RHS /Out/) = 0;

        virtual HRESULT Axes(
            VARIANT Type = argMissing2(),
            XlAxisGroup AxisGroup = ksoapi::xlPrimary,
            IDispatch **ppAxes /Out/ = 0) = 0;

        virtual HRESULT put_HasAxis(
            VARIANT axisType = argMissing2(),
            VARIANT AxisGroup = argMissing2(),
            VARIANT pval = argMissing2()) = 0;

        virtual HRESULT get_HasAxis(
            VARIANT axisType = argMissing2(),
            VARIANT AxisGroup = argMissing2(),
            VARIANT *pval /Out/ = 0) = 0;

        virtual HRESULT get_Walls(
            VARIANT_BOOL fBackWall = VARIANT_FALSE,
            IMsoWalls **ppwalls /Out/ = 0) = 0;

        virtual HRESULT get_Floor(
            IMsoFloor **ppfloor /Out/) = 0;

        virtual HRESULT get_PlotArea(
            IMsoPlotArea **ppplotarea /Out/) = 0;

        virtual HRESULT get_PlotVisibleOnly(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_PlotVisibleOnly(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ChartArea(
            IMsoChartArea **ppchartarea /Out/) = 0;

        virtual HRESULT AutoFormat(
            long rGallery,
            VARIANT varFormat = argMissing2()) = 0;

        virtual HRESULT get_AutoScaling(
            VARIANT_BOOL *f /Out/) = 0;

        virtual HRESULT put_AutoScaling(
            VARIANT_BOOL f) = 0;

        virtual HRESULT SetBackgroundPicture(
            BSTR bstr) = 0;

        virtual HRESULT ChartWizard(
            VARIANT varSource = argMissing2(),
            VARIANT varGallery = argMissing2(),
            VARIANT varFormat = argMissing2(),
            VARIANT varPlotBy = argMissing2(),
            VARIANT varCategoryLabels = argMissing2(),
            VARIANT varSeriesLabels = argMissing2(),
            VARIANT varHasLegend = argMissing2(),
            VARIANT varTitle = argMissing2(),
            VARIANT varCategoryTitle = argMissing2(),
            VARIANT varValueTitle = argMissing2(),
            VARIANT varExtraTitle = argMissing2(),
            long LocaleID = 0) = 0;

        virtual HRESULT CopyPicture(
            int Appearance = 0,
            int Format = 0,
            int Size = 0,
            long LocaleID = 0) = 0;

        virtual HRESULT get_DataTable(
            IMsoDataTable **RHS /Out/) = 0;

        virtual HRESULT Evaluate(
            VARIANT varName,
            long LocaleID,
            long *ObjType /Out/,
            VARIANT *pvar /Out/) = 0;

        virtual HRESULT _Evaluate(
            VARIANT varName,
            long LocaleID,
            VARIANT *pvar /Out/) = 0;

        virtual HRESULT Paste(
            VARIANT varType = argMissing2(),
            long LocaleID = 0) = 0;

        virtual HRESULT get_BarShape(
            XlBarShape *pShape /Out/) = 0;

        virtual HRESULT put_BarShape(
            XlBarShape pShape) = 0;

        virtual HRESULT Export(
            BSTR bstr,
            VARIANT varFilterName = argMissing2(),
            VARIANT varInteractive = argMissing2(),
            VARIANT_BOOL *f /Out/ = 0) = 0;

        virtual HRESULT SetDefaultChart(
            VARIANT varName) = 0;

        virtual HRESULT ApplyChartTemplate(
            BSTR bstrFileName) = 0;

        virtual HRESULT SaveChartTemplate(
            BSTR bstrFileName) = 0;

        virtual HRESULT get_SideWall(
            IMsoWalls **RHS /Out/) = 0;

        virtual HRESULT get_BackWall(
            IMsoWalls **RHS /Out/) = 0;

        virtual HRESULT get_ChartStyle(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_ChartStyle(
            VARIANT RHS) = 0;

        virtual HRESULT ClearToMatchStyle() = 0;

        virtual HRESULT get_PivotLayout(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_HasPivotFields(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_HasPivotFields(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT RefreshPivotTable() = 0;

        virtual HRESULT put_ShowDataLabelsOverMaximum(
            VARIANT_BOOL pRHS) = 0;

        virtual HRESULT get_ShowDataLabelsOverMaximum(
            VARIANT_BOOL *pRHS /Out/) = 0;

        virtual HRESULT ApplyLayout(
            long Layout,
            VARIANT varChartType = argMissing2()) = 0;

        virtual HRESULT get_Selection(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT Refresh() = 0;

        virtual HRESULT SetElement(
            MsoChartElementType RHS) = 0;

        virtual HRESULT get_ChartData(
            IMsoChartData **ppchartdata /Out/) = 0;

        virtual HRESULT get_Format(
            IMsoChartFormat **ppChartFormat /Out/) = 0;

        virtual HRESULT get_Shapes(
            Shapes **ppShapes /Out/) = 0;

        virtual HRESULT get_Area3DGroup(
            long lcid,
            IMsoChartGroup **RHS /Out/) = 0;

        virtual HRESULT AreaGroups(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get_Bar3DGroup(
            long lcid,
            IMsoChartGroup **RHS /Out/) = 0;

        virtual HRESULT BarGroups(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get_Column3DGroup(
            long lcid,
            IMsoChartGroup **RHS /Out/) = 0;

        virtual HRESULT ColumnGroups(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get_Line3DGroup(
            long lcid,
            IMsoChartGroup **RHS /Out/) = 0;

        virtual HRESULT LineGroups(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get_Pie3DGroup(
            long lcid,
            IMsoChartGroup **RHS /Out/) = 0;

        virtual HRESULT PieGroups(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT DoughnutGroups(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT RadarGroups(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT get_SurfaceGroup(
            long lcid,
            IMsoChartGroup **RHS /Out/) = 0;

        virtual HRESULT XYGroups(
            VARIANT Index = argMissing2(),
            long lcid = 0,
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT Delete(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT Copy(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT Select(
            VARIANT Replace = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_ShowReportFilterFieldButtons(
            VARIANT_BOOL *res /Out/) = 0;

        virtual HRESULT put_ShowReportFilterFieldButtons(
            VARIANT_BOOL res) = 0;

        virtual HRESULT get_ShowLegendFieldButtons(
            VARIANT_BOOL *res /Out/) = 0;

        virtual HRESULT put_ShowLegendFieldButtons(
            VARIANT_BOOL res) = 0;

        virtual HRESULT get_ShowAxisFieldButtons(
            VARIANT_BOOL *res /Out/) = 0;

        virtual HRESULT put_ShowAxisFieldButtons(
            VARIANT_BOOL res) = 0;

        virtual HRESULT get_ShowValueFieldButtons(
            VARIANT_BOOL *res /Out/) = 0;

        virtual HRESULT put_ShowValueFieldButtons(
            VARIANT_BOOL res) = 0;

        virtual HRESULT get_ShowAllFieldButtons(
            VARIANT_BOOL *res /Out/) = 0;

        virtual HRESULT put_ShowAllFieldButtons(
            VARIANT_BOOL res) = 0;

        virtual HRESULT put_ProtectChartSheetFormatting(
            VARIANT_BOOL rhs) = 0;

        virtual HRESULT FullSeriesCollection(
            VARIANT Index = argMissing2(),
            IDispatch **RHS /Out/ = 0) = 0;

        virtual HRESULT put_CategoryLabelLevel(
            XlCategoryLabelLevel plevel) = 0;

        virtual HRESULT get_CategoryLabelLevel(
            XlCategoryLabelLevel *plevel /Out/) = 0;

        virtual HRESULT put_SeriesNameLevel(
            XlSeriesNameLevel plevel) = 0;

        virtual HRESULT get_SeriesNameLevel(
            XlSeriesNameLevel *plevel /Out/) = 0;

        virtual HRESULT get_HasHiddenContent(
            VARIANT_BOOL *res /Out/) = 0;

        virtual HRESULT DeleteHiddenContent() = 0;

        virtual HRESULT get_ChartColor(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_ChartColor(
            VARIANT RHS) = 0;

        virtual HRESULT ClearToMatchColorStyle() = 0;

        VARIANT_BOOL getHasTitle();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HasTitle(prop);
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
            HRESULT hr = sipCpp->put_HasTitle(*a0);
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

        IMsoChartTitle* getChartTitle();
        %MethodCode
            ksoapi::IMsoChartTitle *prop = nullptr;
            HRESULT hr = sipCpp->get_ChartTitle(&prop);
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

        int getDepthPercent();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_DepthPercent(&prop);
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

        PyObject* setDepthPercent(int prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DepthPercent(a0);
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

        int getElevation();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_Elevation(&prop);
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

        PyObject* setElevation(int prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Elevation(a0);
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

        int getGapDepth();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_GapDepth(&prop);
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

        PyObject* setGapDepth(int prop);
        %MethodCode
            HRESULT hr = sipCpp->put_GapDepth(a0);
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

        int getHeightPercent();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_HeightPercent(&prop);
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

        PyObject* setHeightPercent(int prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HeightPercent(a0);
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

        int getPerspective();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_Perspective(&prop);
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

        PyObject* setPerspective(int prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Perspective(a0);
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
            HRESULT hr = sipCpp->get_RightAngleAxes(prop);
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
            HRESULT hr = sipCpp->put_RightAngleAxes(*a0);
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
            HRESULT hr = sipCpp->get_Rotation(prop);
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
            HRESULT hr = sipCpp->put_Rotation(*a0);
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
            ksoapi::XlDisplayBlanksAs prop = (ksoapi::XlDisplayBlanksAs)0;
            HRESULT hr = sipCpp->get_DisplayBlanksAs(&prop);
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
            HRESULT hr = sipCpp->put_DisplayBlanksAs(a0);
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

        VARIANT_BOOL getProtectData();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ProtectData(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ProtectData()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setProtectData(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ProtectData(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ProtectData()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ProtectData, get=getProtectData, set=setProtectData)

        VARIANT_BOOL getProtectFormatting();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ProtectFormatting(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ProtectFormatting()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setProtectFormatting(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ProtectFormatting(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ProtectFormatting()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ProtectFormatting, get=getProtectFormatting, set=setProtectFormatting)

        VARIANT_BOOL getProtectGoalSeek();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ProtectGoalSeek(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ProtectGoalSeek()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setProtectGoalSeek(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ProtectGoalSeek(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ProtectGoalSeek()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ProtectGoalSeek, get=getProtectGoalSeek, set=setProtectGoalSeek)

        VARIANT_BOOL getProtectSelection();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ProtectSelection(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ProtectSelection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setProtectSelection(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ProtectSelection(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ProtectSelection()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ProtectSelection, get=getProtectSelection, set=setProtectSelection)

        VARIANT_BOOL getProtectChartObjects();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ProtectChartObjects(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ProtectChartObjects()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setProtectChartObjects(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ProtectChartObjects(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ProtectChartObjects()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ProtectChartObjects, get=getProtectChartObjects, set=setProtectChartObjects)

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

        IMsoCorners* getCorners();
        %MethodCode
            ksoapi::IMsoCorners *prop = nullptr;
            HRESULT hr = sipCpp->get_Corners(&prop);
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
            ksoapi::XlRowCol prop = (ksoapi::XlRowCol)0;
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
            HRESULT hr = sipCpp->get_HasLegend(prop);
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
            HRESULT hr = sipCpp->put_HasLegend(*a0);
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

        IMsoLegend* getLegend();
        %MethodCode
            ksoapi::IMsoLegend *prop = nullptr;
            HRESULT hr = sipCpp->get_Legend(&prop);
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

        IMsoFloor* getFloor();
        %MethodCode
            ksoapi::IMsoFloor *prop = nullptr;
            HRESULT hr = sipCpp->get_Floor(&prop);
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

        IMsoPlotArea* getPlotArea();
        %MethodCode
            ksoapi::IMsoPlotArea *prop = nullptr;
            HRESULT hr = sipCpp->get_PlotArea(&prop);
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
            HRESULT hr = sipCpp->get_PlotVisibleOnly(prop);
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
            HRESULT hr = sipCpp->put_PlotVisibleOnly(*a0);
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

        IMsoChartArea* getChartArea();
        %MethodCode
            ksoapi::IMsoChartArea *prop = nullptr;
            HRESULT hr = sipCpp->get_ChartArea(&prop);
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
            HRESULT hr = sipCpp->get_AutoScaling(prop);
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
            HRESULT hr = sipCpp->put_AutoScaling(*a0);
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

        IMsoDataTable* getDataTable();
        %MethodCode
            ksoapi::IMsoDataTable *prop = nullptr;
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

        IMsoWalls* getSideWall();
        %MethodCode
            ksoapi::IMsoWalls *prop = nullptr;
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

        IMsoWalls* getBackWall();
        %MethodCode
            ksoapi::IMsoWalls *prop = nullptr;
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

        IDispatch* getSelection();
        %MethodCode
            IDispatch *prop = nullptr;
            HRESULT hr = sipCpp->get_Selection(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Selection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Selection, get=getSelection)

        IMsoChartData* getChartData();
        %MethodCode
            ksoapi::IMsoChartData *prop = nullptr;
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

        Shapes* getShapes();
        %MethodCode
            ksoapi::Shapes *prop = nullptr;
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

        IMsoChartGroup* getArea3DGroup();
        %MethodCode
            ksoapi::IMsoChartGroup *prop = nullptr;
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

        IMsoChartGroup* getBar3DGroup();
        %MethodCode
            ksoapi::IMsoChartGroup *prop = nullptr;
            HRESULT hr = sipCpp->get_Bar3DGroup(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Bar3DGroup()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Bar3DGroup, get=getBar3DGroup)

        IMsoChartGroup* getColumn3DGroup();
        %MethodCode
            ksoapi::IMsoChartGroup *prop = nullptr;
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

        IMsoChartGroup* getLine3DGroup();
        %MethodCode
            ksoapi::IMsoChartGroup *prop = nullptr;
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

        IMsoChartGroup* getPie3DGroup();
        %MethodCode
            ksoapi::IMsoChartGroup *prop = nullptr;
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

        IMsoChartGroup* getSurfaceGroup();
        %MethodCode
            ksoapi::IMsoChartGroup *prop = nullptr;
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
            ksoapi::XlCategoryLabelLevel prop = (ksoapi::XlCategoryLabelLevel)0;
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
            ksoapi::XlSeriesNameLevel prop = (ksoapi::XlSeriesNameLevel)0;
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
