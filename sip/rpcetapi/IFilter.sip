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
    struct IFilter : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_On(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_Criteria1(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get__Operator(
            XlAutoFilterOperator *RHS /Out/) = 0;

        virtual HRESULT get_Criteria2(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Operator(
            XlAutoFilterOperator *RHS /Out/) = 0;

        virtual HRESULT put_Operator(
            XlAutoFilterOperator RHS) = 0;

        virtual HRESULT get_Count(
            long *RHS /Out/) = 0;

        int __len__() const;
        %MethodCode
            long count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

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

        VARIANT_BOOL getOn();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_On(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_On()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=On, get=getOn)

        VARIANT getCriteria1();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Criteria1(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Criteria1()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Criteria1, get=getCriteria1)

        XlAutoFilterOperator get_Operator();
        %MethodCode
            etapi::XlAutoFilterOperator prop = (etapi::XlAutoFilterOperator)0;
            HRESULT hr = sipCpp->get__Operator(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get__Operator()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=_Operator, get=get_Operator)

        VARIANT getCriteria2();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Criteria2(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Criteria2()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Criteria2, get=getCriteria2)

        XlAutoFilterOperator getOperator();
        %MethodCode
            etapi::XlAutoFilterOperator prop = (etapi::XlAutoFilterOperator)0;
            HRESULT hr = sipCpp->get_Operator(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Operator()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOperator(XlAutoFilterOperator prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Operator(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Operator()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Operator, get=getOperator, set=setOperator)

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
    };
};
