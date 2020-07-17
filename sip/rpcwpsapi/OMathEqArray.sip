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
    struct OMathEqArray : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_E(
            OMathArgs **prop /Out/) = 0;

        virtual HRESULT get_MaxDist(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MaxDist(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ObjDist(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ObjDist(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Align(
            WdOMathVertAlignType *prop /Out/) = 0;

        virtual HRESULT put_Align(
            WdOMathVertAlignType prop) = 0;

        virtual HRESULT get_RowSpacingRule(
            WdOMathSpacingRule *prop /Out/) = 0;

        virtual HRESULT put_RowSpacingRule(
            WdOMathSpacingRule prop) = 0;

        virtual HRESULT get_RowSpacing(
            long *prop /Out/) = 0;

        virtual HRESULT put_RowSpacing(
            long prop) = 0;

        Application* getApplication();
        %MethodCode
            wpsapi::Application *prop = nullptr;
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

        OMathArgs* getE();
        %MethodCode
            wpsapi::OMathArgs *prop = nullptr;
            HRESULT hr = sipCpp->get_E(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_E()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=E, get=getE)

        VARIANT_BOOL getMaxDist();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MaxDist(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MaxDist()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMaxDist(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MaxDist(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MaxDist()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MaxDist, get=getMaxDist, set=setMaxDist)

        VARIANT_BOOL getObjDist();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ObjDist(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ObjDist()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setObjDist(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ObjDist(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ObjDist()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ObjDist, get=getObjDist, set=setObjDist)

        WdOMathVertAlignType getAlign();
        %MethodCode
            wpsapi::WdOMathVertAlignType prop = (wpsapi::WdOMathVertAlignType)0;
            HRESULT hr = sipCpp->get_Align(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Align()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAlign(WdOMathVertAlignType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Align(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Align()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Align, get=getAlign, set=setAlign)

        WdOMathSpacingRule getRowSpacingRule();
        %MethodCode
            wpsapi::WdOMathSpacingRule prop = (wpsapi::WdOMathSpacingRule)0;
            HRESULT hr = sipCpp->get_RowSpacingRule(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RowSpacingRule()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRowSpacingRule(WdOMathSpacingRule prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RowSpacingRule(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RowSpacingRule()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RowSpacingRule, get=getRowSpacingRule, set=setRowSpacingRule)

        long getRowSpacing();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_RowSpacing(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RowSpacing()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRowSpacing(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RowSpacing(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RowSpacing()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RowSpacing, get=getRowSpacing, set=setRowSpacing)
    };
};
