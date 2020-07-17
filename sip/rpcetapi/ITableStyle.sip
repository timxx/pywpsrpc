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
    struct ITableStyle : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get__Default(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_NameLocal(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_BuiltIn(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_TableStyleElements(
            TableStyleElements **RHS /Out/) = 0;

        virtual HRESULT get_ShowAsAvailableTableStyle(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowAsAvailableTableStyle(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ShowAsAvailablePivotTableStyle(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowAsAvailablePivotTableStyle(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Duplicate(
            VARIANT NewTableStyleName = argMissing2(),
            TableStyle **RHS /Out/ = 0) = 0;

        virtual HRESULT get_ShowAsAvailableSlicerStyle(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowAsAvailableSlicerStyle(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ShowAsAvailableTimelineStyle(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowAsAvailableTimelineStyle(
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

        BSTR get_Default();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get__Default(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get__Default()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=_Default, get=get_Default)

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

        BSTR getNameLocal();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_NameLocal(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NameLocal()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=NameLocal, get=getNameLocal)

        VARIANT_BOOL getBuiltIn();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_BuiltIn(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BuiltIn()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=BuiltIn, get=getBuiltIn)

        TableStyleElements* getTableStyleElements();
        %MethodCode
            etapi::TableStyleElements *prop = nullptr;
            HRESULT hr = sipCpp->get_TableStyleElements(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TableStyleElements()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TableStyleElements, get=getTableStyleElements)

        VARIANT_BOOL getShowAsAvailableTableStyle();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowAsAvailableTableStyle(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowAsAvailableTableStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowAsAvailableTableStyle(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowAsAvailableTableStyle(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowAsAvailableTableStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowAsAvailableTableStyle, get=getShowAsAvailableTableStyle, set=setShowAsAvailableTableStyle)

        VARIANT_BOOL getShowAsAvailablePivotTableStyle();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowAsAvailablePivotTableStyle(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowAsAvailablePivotTableStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowAsAvailablePivotTableStyle(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowAsAvailablePivotTableStyle(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowAsAvailablePivotTableStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowAsAvailablePivotTableStyle, get=getShowAsAvailablePivotTableStyle, set=setShowAsAvailablePivotTableStyle)

        VARIANT_BOOL getShowAsAvailableSlicerStyle();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowAsAvailableSlicerStyle(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowAsAvailableSlicerStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowAsAvailableSlicerStyle(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowAsAvailableSlicerStyle(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowAsAvailableSlicerStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowAsAvailableSlicerStyle, get=getShowAsAvailableSlicerStyle, set=setShowAsAvailableSlicerStyle)

        VARIANT_BOOL getShowAsAvailableTimelineStyle();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowAsAvailableTimelineStyle(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowAsAvailableTimelineStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowAsAvailableTimelineStyle(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowAsAvailableTimelineStyle(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowAsAvailableTimelineStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowAsAvailableTimelineStyle, get=getShowAsAvailableTimelineStyle, set=setShowAsAvailableTimelineStyle)
    };
};
