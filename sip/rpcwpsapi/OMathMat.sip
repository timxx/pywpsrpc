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
    struct OMathMat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Rows(
            OMathMatRows **prop /Out/) = 0;

        virtual HRESULT get_Cols(
            OMathMatCols **prop /Out/) = 0;

        virtual HRESULT get_Cell(
            long Row,
            long Col,
            OMath **prop /Out/) = 0;

        virtual HRESULT get_Align(
            WdOMathVertAlignType *prop /Out/) = 0;

        virtual HRESULT put_Align(
            WdOMathVertAlignType prop) = 0;

        virtual HRESULT get_PlcHoldHidden(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_PlcHoldHidden(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_RowSpacingRule(
            WdOMathSpacingRule *prop /Out/) = 0;

        virtual HRESULT put_RowSpacingRule(
            WdOMathSpacingRule prop) = 0;

        virtual HRESULT get_RowSpacing(
            long *prop /Out/) = 0;

        virtual HRESULT put_RowSpacing(
            long prop) = 0;

        virtual HRESULT get_ColSpacing(
            long *prop /Out/) = 0;

        virtual HRESULT put_ColSpacing(
            long prop) = 0;

        virtual HRESULT get_ColGapRule(
            WdOMathSpacingRule *prop /Out/) = 0;

        virtual HRESULT put_ColGapRule(
            WdOMathSpacingRule prop) = 0;

        virtual HRESULT get_ColGap(
            long *prop /Out/) = 0;

        virtual HRESULT put_ColGap(
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

        OMathMatRows* getRows();
        %MethodCode
            wpsapi::OMathMatRows *prop = nullptr;
            HRESULT hr = sipCpp->get_Rows(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Rows()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Rows, get=getRows)

        OMathMatCols* getCols();
        %MethodCode
            wpsapi::OMathMatCols *prop = nullptr;
            HRESULT hr = sipCpp->get_Cols(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Cols()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Cols, get=getCols)

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

        VARIANT_BOOL getPlcHoldHidden();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PlcHoldHidden(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PlcHoldHidden()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPlcHoldHidden(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PlcHoldHidden(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PlcHoldHidden()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PlcHoldHidden, get=getPlcHoldHidden, set=setPlcHoldHidden)

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

        long getColSpacing();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_ColSpacing(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ColSpacing()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setColSpacing(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ColSpacing(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ColSpacing()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ColSpacing, get=getColSpacing, set=setColSpacing)

        WdOMathSpacingRule getColGapRule();
        %MethodCode
            wpsapi::WdOMathSpacingRule prop = (wpsapi::WdOMathSpacingRule)0;
            HRESULT hr = sipCpp->get_ColGapRule(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ColGapRule()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setColGapRule(WdOMathSpacingRule prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ColGapRule(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ColGapRule()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ColGapRule, get=getColGapRule, set=setColGapRule)

        long getColGap();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_ColGap(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ColGap()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setColGap(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ColGap(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ColGap()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ColGap, get=getColGap, set=setColGap)
    };
};
