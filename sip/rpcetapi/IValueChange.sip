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
    struct IValueChange : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Order(
            long *RHS /Out/) = 0;

        virtual HRESULT get_VisibleInPivotTable(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_PivotCell(
            PivotCell **RHS /Out/) = 0;

        virtual HRESULT get_Tuple(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Value(
            double *RHS /Out/) = 0;

        virtual HRESULT get_AllocationValue(
            XlAllocationValue *RHS /Out/) = 0;

        virtual HRESULT get_AllocationMethod(
            XlAllocationMethod *RHS /Out/) = 0;

        virtual HRESULT get_AllocationWeightExpression(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT Delete() = 0;

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

        %Property(name=Order, get=getOrder)

        VARIANT_BOOL getVisibleInPivotTable();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_VisibleInPivotTable(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_VisibleInPivotTable()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=VisibleInPivotTable, get=getVisibleInPivotTable)

        PivotCell* getPivotCell();
        %MethodCode
            etapi::PivotCell *prop = nullptr;
            HRESULT hr = sipCpp->get_PivotCell(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PivotCell()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PivotCell, get=getPivotCell)

        BSTR getTuple();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Tuple(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Tuple()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Tuple, get=getTuple)

        double getValue();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_Value(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Value()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Value, get=getValue)

        XlAllocationValue getAllocationValue();
        %MethodCode
            etapi::XlAllocationValue prop = (etapi::XlAllocationValue)0;
            HRESULT hr = sipCpp->get_AllocationValue(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AllocationValue()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AllocationValue, get=getAllocationValue)

        XlAllocationMethod getAllocationMethod();
        %MethodCode
            etapi::XlAllocationMethod prop = (etapi::XlAllocationMethod)0;
            HRESULT hr = sipCpp->get_AllocationMethod(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AllocationMethod()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AllocationMethod, get=getAllocationMethod)

        BSTR getAllocationWeightExpression();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_AllocationWeightExpression(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AllocationWeightExpression()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AllocationWeightExpression, get=getAllocationWeightExpression)
    };
};
