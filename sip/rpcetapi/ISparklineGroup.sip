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
    struct ISparklineGroup : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Count(
            long *RHS /Out/) = 0;

        int __len__() const;
        %MethodCode
            long count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT get_Item(
            VARIANT Index,
            Sparkline **RHS /Out/) = 0;

        Sparkline* __getitem__(VARIANT index) const;
        %MethodCode
            etapi::Sparkline *prop = nullptr;
            if (sipCpp->get_Item(*a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT get_Location(
            Range **RHS /Out/) = 0;

        virtual HRESULT putref_Location(
            Range *RHS) = 0;

        virtual HRESULT get_SourceData(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_SourceData(
            BSTR RHS) = 0;

        virtual HRESULT get_DateRange(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_DateRange(
            BSTR RHS) = 0;

        virtual HRESULT ModifyLocation(
            Range *Location) = 0;

        virtual HRESULT ModifySourceData(
            BSTR SourceData) = 0;

        virtual HRESULT Modify(
            Range *Location,
            BSTR SourceData) = 0;

        virtual HRESULT ModifyDateRange(
            BSTR DateRange) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_Type(
            XlSparkType *RHS /Out/) = 0;

        virtual HRESULT put_Type(
            XlSparkType RHS) = 0;

        virtual HRESULT get_SeriesColor(
            FormatColor **RHS /Out/) = 0;

        virtual HRESULT get_Points(
            SparkPoints **RHS /Out/) = 0;

        virtual HRESULT get_Axes(
            SparkAxes **RHS /Out/) = 0;

        virtual HRESULT get_DisplayBlanksAs(
            XlDisplayBlanksAs *RHS /Out/) = 0;

        virtual HRESULT put_DisplayBlanksAs(
            XlDisplayBlanksAs RHS) = 0;

        virtual HRESULT get_DisplayHidden(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayHidden(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_LineWeight(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_LineWeight(
            VARIANT RHS) = 0;

        virtual HRESULT get_PlotBy(
            XlSparklineRowCol *RHS /Out/) = 0;

        virtual HRESULT put_PlotBy(
            XlSparklineRowCol RHS) = 0;

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

        Range* getLocation();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_Location(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Location()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Location, get=getLocation)

        BSTR getSourceData();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_SourceData(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SourceData()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSourceData(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SourceData(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SourceData()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SourceData, get=getSourceData, set=setSourceData)

        BSTR getDateRange();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_DateRange(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DateRange()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDateRange(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DateRange(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DateRange()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DateRange, get=getDateRange, set=setDateRange)

        XlSparkType getType();
        %MethodCode
            etapi::XlSparkType prop = (etapi::XlSparkType)0;
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

        PyObject* setType(XlSparkType prop);
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

        FormatColor* getSeriesColor();
        %MethodCode
            etapi::FormatColor *prop = nullptr;
            HRESULT hr = sipCpp->get_SeriesColor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SeriesColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SeriesColor, get=getSeriesColor)

        SparkPoints* getPoints();
        %MethodCode
            etapi::SparkPoints *prop = nullptr;
            HRESULT hr = sipCpp->get_Points(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Points()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Points, get=getPoints)

        SparkAxes* getAxes();
        %MethodCode
            etapi::SparkAxes *prop = nullptr;
            HRESULT hr = sipCpp->get_Axes(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Axes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Axes, get=getAxes)

        XlDisplayBlanksAs getDisplayBlanksAs();
        %MethodCode
            etapi::XlDisplayBlanksAs prop = (etapi::XlDisplayBlanksAs)0;
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

        VARIANT_BOOL getDisplayHidden();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayHidden(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayHidden()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayHidden(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayHidden(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayHidden()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayHidden, get=getDisplayHidden, set=setDisplayHidden)

        VARIANT getLineWeight();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_LineWeight(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LineWeight()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLineWeight(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LineWeight(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LineWeight()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LineWeight, get=getLineWeight, set=setLineWeight)

        XlSparklineRowCol getPlotBy();
        %MethodCode
            etapi::XlSparklineRowCol prop = (etapi::XlSparklineRowCol)0;
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

        PyObject* setPlotBy(XlSparklineRowCol prop);
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
    };
};
