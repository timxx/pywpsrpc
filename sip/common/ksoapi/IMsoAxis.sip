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
    struct IMsoAxis : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_AxisBetweenCategories(
            VARIANT_BOOL *pval /Out/) = 0;

        virtual HRESULT put_AxisBetweenCategories(
            VARIANT_BOOL pval) = 0;

        virtual HRESULT get_AxisGroup(
            XlAxisGroup *pval /Out/) = 0;

        virtual HRESULT get_AxisTitle(
            IMsoAxisTitle **pval /Out/) = 0;

        virtual HRESULT get_CategoryNames(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT put_CategoryNames(
            VARIANT pval) = 0;

        virtual HRESULT get_Crosses(
            XlAxisCrosses *pval /Out/) = 0;

        virtual HRESULT put_Crosses(
            XlAxisCrosses pval) = 0;

        virtual HRESULT get_CrossesAt(
            double *pval /Out/) = 0;

        virtual HRESULT put_CrossesAt(
            double pval) = 0;

        virtual HRESULT Delete(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT get_HasMajorGridlines(
            VARIANT_BOOL *pval /Out/) = 0;

        virtual HRESULT put_HasMajorGridlines(
            VARIANT_BOOL pval) = 0;

        virtual HRESULT get_HasMinorGridlines(
            VARIANT_BOOL *pval /Out/) = 0;

        virtual HRESULT put_HasMinorGridlines(
            VARIANT_BOOL pval) = 0;

        virtual HRESULT get_HasTitle(
            VARIANT_BOOL *pval /Out/) = 0;

        virtual HRESULT put_HasTitle(
            VARIANT_BOOL pval) = 0;

        virtual HRESULT get_MajorGridlines(
            GridLines **ppval /Out/) = 0;

        virtual HRESULT get_MajorTickMark(
            XlTickMark *pval /Out/) = 0;

        virtual HRESULT put_MajorTickMark(
            XlTickMark pval) = 0;

        virtual HRESULT get_MajorUnit(
            double *pval /Out/) = 0;

        virtual HRESULT put_MajorUnit(
            double pval) = 0;

        virtual HRESULT get_LogBase(
            double *pval /Out/) = 0;

        virtual HRESULT put_LogBase(
            double pval) = 0;

        virtual HRESULT get_TickLabelSpacingIsAuto(
            VARIANT_BOOL *pval /Out/) = 0;

        virtual HRESULT put_TickLabelSpacingIsAuto(
            VARIANT_BOOL pval) = 0;

        virtual HRESULT get_MajorUnitIsAuto(
            VARIANT_BOOL *pval /Out/) = 0;

        virtual HRESULT put_MajorUnitIsAuto(
            VARIANT_BOOL pval) = 0;

        virtual HRESULT get_MaximumScale(
            double *pval /Out/) = 0;

        virtual HRESULT put_MaximumScale(
            double pval) = 0;

        virtual HRESULT get_MaximumScaleIsAuto(
            VARIANT_BOOL *pval /Out/) = 0;

        virtual HRESULT put_MaximumScaleIsAuto(
            VARIANT_BOOL pval) = 0;

        virtual HRESULT get_MinimumScale(
            double *pval /Out/) = 0;

        virtual HRESULT put_MinimumScale(
            double pval) = 0;

        virtual HRESULT get_MinimumScaleIsAuto(
            VARIANT_BOOL *pval /Out/) = 0;

        virtual HRESULT put_MinimumScaleIsAuto(
            VARIANT_BOOL pval) = 0;

        virtual HRESULT get_MinorGridlines(
            GridLines **ppval /Out/) = 0;

        virtual HRESULT get_MinorTickMark(
            XlTickMark *pval /Out/) = 0;

        virtual HRESULT put_MinorTickMark(
            XlTickMark pval) = 0;

        virtual HRESULT get_MinorUnit(
            double *pval /Out/) = 0;

        virtual HRESULT put_MinorUnit(
            double pval) = 0;

        virtual HRESULT get_MinorUnitIsAuto(
            VARIANT_BOOL *pval /Out/) = 0;

        virtual HRESULT put_MinorUnitIsAuto(
            VARIANT_BOOL pval) = 0;

        virtual HRESULT get_ReversePlotOrder(
            VARIANT_BOOL *pval /Out/) = 0;

        virtual HRESULT put_ReversePlotOrder(
            VARIANT_BOOL pval) = 0;

        virtual HRESULT get_ScaleType(
            XlScaleType *pval /Out/) = 0;

        virtual HRESULT put_ScaleType(
            XlScaleType pval) = 0;

        virtual HRESULT Select(
            VARIANT *pval /Out/) = 0;

        virtual HRESULT get_TickLabelPosition(
            XlTickLabelPosition *pval /Out/) = 0;

        virtual HRESULT put_TickLabelPosition(
            XlTickLabelPosition pval) = 0;

        virtual HRESULT get_TickLabels(
            IMsoTickLabels **pval /Out/) = 0;

        virtual HRESULT get_TickLabelSpacing(
            int *pval /Out/) = 0;

        virtual HRESULT put_TickLabelSpacing(
            int pval) = 0;

        virtual HRESULT get_TickMarkSpacing(
            int *pval /Out/) = 0;

        virtual HRESULT put_TickMarkSpacing(
            int pval) = 0;

        virtual HRESULT get_Type(
            XlAxisType *pval /Out/) = 0;

        virtual HRESULT put_Type(
            XlAxisType pval) = 0;

        virtual HRESULT get_BaseUnit(
            XlTimeUnit *pval /Out/) = 0;

        virtual HRESULT put_BaseUnit(
            XlTimeUnit pval) = 0;

        virtual HRESULT get_BaseUnitIsAuto(
            VARIANT_BOOL *pval /Out/) = 0;

        virtual HRESULT put_BaseUnitIsAuto(
            VARIANT_BOOL pval) = 0;

        virtual HRESULT get_MajorUnitScale(
            XlTimeUnit *pval /Out/) = 0;

        virtual HRESULT put_MajorUnitScale(
            XlTimeUnit pval) = 0;

        virtual HRESULT get_MinorUnitScale(
            XlTimeUnit *pval /Out/) = 0;

        virtual HRESULT put_MinorUnitScale(
            XlTimeUnit pval) = 0;

        virtual HRESULT get_CategoryType(
            XlCategoryType *pval /Out/) = 0;

        virtual HRESULT put_CategoryType(
            XlCategoryType pval) = 0;

        virtual HRESULT get_Left(
            double *pval /Out/) = 0;

        virtual HRESULT get_Top(
            double *pval /Out/) = 0;

        virtual HRESULT get_Width(
            double *pval /Out/) = 0;

        virtual HRESULT get_Height(
            double *pval /Out/) = 0;

        virtual HRESULT get_DisplayUnit(
            XlDisplayUnit *pval /Out/) = 0;

        virtual HRESULT put_DisplayUnit(
            XlDisplayUnit pval) = 0;

        virtual HRESULT get_DisplayUnitCustom(
            double *pval /Out/) = 0;

        virtual HRESULT put_DisplayUnitCustom(
            double pval) = 0;

        virtual HRESULT get_HasDisplayUnitLabel(
            VARIANT_BOOL *pval /Out/) = 0;

        virtual HRESULT put_HasDisplayUnitLabel(
            VARIANT_BOOL pval) = 0;

        virtual HRESULT get_DisplayUnitLabel(
            IMsoDisplayUnitLabel **pval /Out/) = 0;

        virtual HRESULT get_Border(
            IMsoBorder **ppborder /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT get_Format(
            IMsoChartFormat **ppChartFormat /Out/) = 0;

        VARIANT_BOOL getAxisBetweenCategories();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AxisBetweenCategories(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AxisBetweenCategories()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAxisBetweenCategories(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AxisBetweenCategories(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AxisBetweenCategories()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AxisBetweenCategories, get=getAxisBetweenCategories, set=setAxisBetweenCategories)

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

        %Property(name=AxisGroup, get=getAxisGroup)

        IMsoAxisTitle* getAxisTitle();
        %MethodCode
            ksoapi::IMsoAxisTitle *prop = nullptr;
            HRESULT hr = sipCpp->get_AxisTitle(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AxisTitle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AxisTitle, get=getAxisTitle)

        VARIANT getCategoryNames();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_CategoryNames(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CategoryNames()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCategoryNames(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CategoryNames(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CategoryNames()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CategoryNames, get=getCategoryNames, set=setCategoryNames)

        XlAxisCrosses getCrosses();
        %MethodCode
            ksoapi::XlAxisCrosses prop = (ksoapi::XlAxisCrosses)0;
            HRESULT hr = sipCpp->get_Crosses(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Crosses()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCrosses(XlAxisCrosses prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Crosses(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Crosses()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Crosses, get=getCrosses, set=setCrosses)

        double getCrossesAt();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_CrossesAt(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CrossesAt()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCrossesAt(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CrossesAt(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CrossesAt()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CrossesAt, get=getCrossesAt, set=setCrossesAt)

        VARIANT_BOOL getHasMajorGridlines();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HasMajorGridlines(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasMajorGridlines()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHasMajorGridlines(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HasMajorGridlines(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HasMajorGridlines()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HasMajorGridlines, get=getHasMajorGridlines, set=setHasMajorGridlines)

        VARIANT_BOOL getHasMinorGridlines();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HasMinorGridlines(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasMinorGridlines()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHasMinorGridlines(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HasMinorGridlines(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HasMinorGridlines()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HasMinorGridlines, get=getHasMinorGridlines, set=setHasMinorGridlines)

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

        GridLines* getMajorGridlines();
        %MethodCode
            ksoapi::GridLines *prop = nullptr;
            HRESULT hr = sipCpp->get_MajorGridlines(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MajorGridlines()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MajorGridlines, get=getMajorGridlines)

        XlTickMark getMajorTickMark();
        %MethodCode
            ksoapi::XlTickMark prop = (ksoapi::XlTickMark)0;
            HRESULT hr = sipCpp->get_MajorTickMark(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MajorTickMark()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMajorTickMark(XlTickMark prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MajorTickMark(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MajorTickMark()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MajorTickMark, get=getMajorTickMark, set=setMajorTickMark)

        double getMajorUnit();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_MajorUnit(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MajorUnit()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMajorUnit(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MajorUnit(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MajorUnit()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MajorUnit, get=getMajorUnit, set=setMajorUnit)

        double getLogBase();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_LogBase(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LogBase()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLogBase(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LogBase(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LogBase()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LogBase, get=getLogBase, set=setLogBase)

        VARIANT_BOOL getTickLabelSpacingIsAuto();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_TickLabelSpacingIsAuto(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TickLabelSpacingIsAuto()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTickLabelSpacingIsAuto(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TickLabelSpacingIsAuto(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TickLabelSpacingIsAuto()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TickLabelSpacingIsAuto, get=getTickLabelSpacingIsAuto, set=setTickLabelSpacingIsAuto)

        VARIANT_BOOL getMajorUnitIsAuto();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MajorUnitIsAuto(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MajorUnitIsAuto()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMajorUnitIsAuto(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MajorUnitIsAuto(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MajorUnitIsAuto()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MajorUnitIsAuto, get=getMajorUnitIsAuto, set=setMajorUnitIsAuto)

        double getMaximumScale();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_MaximumScale(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MaximumScale()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMaximumScale(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MaximumScale(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MaximumScale()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MaximumScale, get=getMaximumScale, set=setMaximumScale)

        VARIANT_BOOL getMaximumScaleIsAuto();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MaximumScaleIsAuto(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MaximumScaleIsAuto()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMaximumScaleIsAuto(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MaximumScaleIsAuto(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MaximumScaleIsAuto()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MaximumScaleIsAuto, get=getMaximumScaleIsAuto, set=setMaximumScaleIsAuto)

        double getMinimumScale();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_MinimumScale(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MinimumScale()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMinimumScale(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MinimumScale(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MinimumScale()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MinimumScale, get=getMinimumScale, set=setMinimumScale)

        VARIANT_BOOL getMinimumScaleIsAuto();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MinimumScaleIsAuto(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MinimumScaleIsAuto()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMinimumScaleIsAuto(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MinimumScaleIsAuto(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MinimumScaleIsAuto()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MinimumScaleIsAuto, get=getMinimumScaleIsAuto, set=setMinimumScaleIsAuto)

        GridLines* getMinorGridlines();
        %MethodCode
            ksoapi::GridLines *prop = nullptr;
            HRESULT hr = sipCpp->get_MinorGridlines(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MinorGridlines()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MinorGridlines, get=getMinorGridlines)

        XlTickMark getMinorTickMark();
        %MethodCode
            ksoapi::XlTickMark prop = (ksoapi::XlTickMark)0;
            HRESULT hr = sipCpp->get_MinorTickMark(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MinorTickMark()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMinorTickMark(XlTickMark prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MinorTickMark(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MinorTickMark()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MinorTickMark, get=getMinorTickMark, set=setMinorTickMark)

        double getMinorUnit();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_MinorUnit(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MinorUnit()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMinorUnit(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MinorUnit(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MinorUnit()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MinorUnit, get=getMinorUnit, set=setMinorUnit)

        VARIANT_BOOL getMinorUnitIsAuto();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MinorUnitIsAuto(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MinorUnitIsAuto()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMinorUnitIsAuto(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MinorUnitIsAuto(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MinorUnitIsAuto()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MinorUnitIsAuto, get=getMinorUnitIsAuto, set=setMinorUnitIsAuto)

        VARIANT_BOOL getReversePlotOrder();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ReversePlotOrder(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ReversePlotOrder()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setReversePlotOrder(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ReversePlotOrder(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ReversePlotOrder()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ReversePlotOrder, get=getReversePlotOrder, set=setReversePlotOrder)

        XlScaleType getScaleType();
        %MethodCode
            ksoapi::XlScaleType prop = (ksoapi::XlScaleType)0;
            HRESULT hr = sipCpp->get_ScaleType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ScaleType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setScaleType(XlScaleType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ScaleType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ScaleType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ScaleType, get=getScaleType, set=setScaleType)

        XlTickLabelPosition getTickLabelPosition();
        %MethodCode
            ksoapi::XlTickLabelPosition prop = (ksoapi::XlTickLabelPosition)0;
            HRESULT hr = sipCpp->get_TickLabelPosition(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TickLabelPosition()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTickLabelPosition(XlTickLabelPosition prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TickLabelPosition(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TickLabelPosition()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TickLabelPosition, get=getTickLabelPosition, set=setTickLabelPosition)

        IMsoTickLabels* getTickLabels();
        %MethodCode
            ksoapi::IMsoTickLabels *prop = nullptr;
            HRESULT hr = sipCpp->get_TickLabels(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TickLabels()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TickLabels, get=getTickLabels)

        int getTickLabelSpacing();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_TickLabelSpacing(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TickLabelSpacing()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTickLabelSpacing(int prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TickLabelSpacing(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TickLabelSpacing()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TickLabelSpacing, get=getTickLabelSpacing, set=setTickLabelSpacing)

        int getTickMarkSpacing();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_TickMarkSpacing(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TickMarkSpacing()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTickMarkSpacing(int prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TickMarkSpacing(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TickMarkSpacing()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TickMarkSpacing, get=getTickMarkSpacing, set=setTickMarkSpacing)

        XlAxisType getType();
        %MethodCode
            ksoapi::XlAxisType prop = (ksoapi::XlAxisType)0;
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

        PyObject* setType(XlAxisType prop);
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

        XlTimeUnit getBaseUnit();
        %MethodCode
            ksoapi::XlTimeUnit prop = (ksoapi::XlTimeUnit)0;
            HRESULT hr = sipCpp->get_BaseUnit(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BaseUnit()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBaseUnit(XlTimeUnit prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BaseUnit(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BaseUnit()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BaseUnit, get=getBaseUnit, set=setBaseUnit)

        VARIANT_BOOL getBaseUnitIsAuto();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_BaseUnitIsAuto(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BaseUnitIsAuto()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBaseUnitIsAuto(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BaseUnitIsAuto(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BaseUnitIsAuto()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BaseUnitIsAuto, get=getBaseUnitIsAuto, set=setBaseUnitIsAuto)

        XlTimeUnit getMajorUnitScale();
        %MethodCode
            ksoapi::XlTimeUnit prop = (ksoapi::XlTimeUnit)0;
            HRESULT hr = sipCpp->get_MajorUnitScale(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MajorUnitScale()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMajorUnitScale(XlTimeUnit prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MajorUnitScale(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MajorUnitScale()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MajorUnitScale, get=getMajorUnitScale, set=setMajorUnitScale)

        XlTimeUnit getMinorUnitScale();
        %MethodCode
            ksoapi::XlTimeUnit prop = (ksoapi::XlTimeUnit)0;
            HRESULT hr = sipCpp->get_MinorUnitScale(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MinorUnitScale()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMinorUnitScale(XlTimeUnit prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MinorUnitScale(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MinorUnitScale()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MinorUnitScale, get=getMinorUnitScale, set=setMinorUnitScale)

        XlCategoryType getCategoryType();
        %MethodCode
            ksoapi::XlCategoryType prop = (ksoapi::XlCategoryType)0;
            HRESULT hr = sipCpp->get_CategoryType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CategoryType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCategoryType(XlCategoryType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CategoryType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CategoryType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CategoryType, get=getCategoryType, set=setCategoryType)

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

        %Property(name=Left, get=getLeft)

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

        %Property(name=Top, get=getTop)

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

        %Property(name=Width, get=getWidth)

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

        %Property(name=Height, get=getHeight)

        XlDisplayUnit getDisplayUnit();
        %MethodCode
            ksoapi::XlDisplayUnit prop = (ksoapi::XlDisplayUnit)0;
            HRESULT hr = sipCpp->get_DisplayUnit(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayUnit()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayUnit(XlDisplayUnit prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayUnit(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayUnit()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayUnit, get=getDisplayUnit, set=setDisplayUnit)

        double getDisplayUnitCustom();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_DisplayUnitCustom(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayUnitCustom()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayUnitCustom(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayUnitCustom(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayUnitCustom()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayUnitCustom, get=getDisplayUnitCustom, set=setDisplayUnitCustom)

        VARIANT_BOOL getHasDisplayUnitLabel();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HasDisplayUnitLabel(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasDisplayUnitLabel()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHasDisplayUnitLabel(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HasDisplayUnitLabel(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HasDisplayUnitLabel()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HasDisplayUnitLabel, get=getHasDisplayUnitLabel, set=setHasDisplayUnitLabel)

        IMsoDisplayUnitLabel* getDisplayUnitLabel();
        %MethodCode
            ksoapi::IMsoDisplayUnitLabel *prop = nullptr;
            HRESULT hr = sipCpp->get_DisplayUnitLabel(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayUnitLabel()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DisplayUnitLabel, get=getDisplayUnitLabel)

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
    };
};
