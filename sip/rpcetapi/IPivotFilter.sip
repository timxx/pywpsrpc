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
    struct IPivotFilter : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Order(
            long *RHS /Out/) = 0;

        virtual HRESULT put_Order(
            long RHS) = 0;

        virtual HRESULT get_FilterType(
            XlPivotFilterType *RHS /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Description(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_Active(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_PivotField(
            PivotField **RHS /Out/) = 0;

        virtual HRESULT get_DataField(
            PivotField **RHS /Out/) = 0;

        virtual HRESULT get_DataCubeField(
            CubeField **RHS /Out/) = 0;

        virtual HRESULT get_Value1(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Value2(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_MemberPropertyField(
            PivotField **RHS /Out/) = 0;

        virtual HRESULT get_IsMemberPropertyFilter(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_WholeDayFilter(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_WholeDayFilter(
            VARIANT_BOOL RHS) = 0;

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

        long getOrder();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Order(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Order()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOrder(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Order(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Order()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Order, get=getOrder, set=setOrder)

        XlPivotFilterType getFilterType();
        %MethodCode
            etapi::XlPivotFilterType prop = (etapi::XlPivotFilterType)0;
            HRESULT hr = sipCpp->get_FilterType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FilterType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=FilterType, get=getFilterType)

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

        BSTR getDescription();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Description(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Description()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Description, get=getDescription)

        VARIANT_BOOL getActive();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Active(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Active()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Active, get=getActive)

        PivotField* getPivotField();
        %MethodCode
            etapi::PivotField *prop = nullptr;
            HRESULT hr = sipCpp->get_PivotField(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PivotField()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PivotField, get=getPivotField)

        PivotField* getDataField();
        %MethodCode
            etapi::PivotField *prop = nullptr;
            HRESULT hr = sipCpp->get_DataField(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DataField()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DataField, get=getDataField)

        CubeField* getDataCubeField();
        %MethodCode
            etapi::CubeField *prop = nullptr;
            HRESULT hr = sipCpp->get_DataCubeField(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DataCubeField()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DataCubeField, get=getDataCubeField)

        VARIANT getValue1();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Value1(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Value1()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Value1, get=getValue1)

        VARIANT getValue2();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Value2(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Value2()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Value2, get=getValue2)

        PivotField* getMemberPropertyField();
        %MethodCode
            etapi::PivotField *prop = nullptr;
            HRESULT hr = sipCpp->get_MemberPropertyField(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MemberPropertyField()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MemberPropertyField, get=getMemberPropertyField)

        VARIANT_BOOL getIsMemberPropertyFilter();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IsMemberPropertyFilter(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IsMemberPropertyFilter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=IsMemberPropertyFilter, get=getIsMemberPropertyFilter)

        VARIANT_BOOL getWholeDayFilter();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_WholeDayFilter(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WholeDayFilter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWholeDayFilter(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_WholeDayFilter(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_WholeDayFilter()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=WholeDayFilter, get=getWholeDayFilter, set=setWholeDayFilter)
    };
};
