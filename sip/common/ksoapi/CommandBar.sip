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
    struct CommandBar : public ksoapi::_IMsoOleAccDispObj /Abstract/
    {
    public:
        virtual HRESULT get_BuiltIn(
            VARIANT_BOOL *pvarfBuiltIn /Out/) = 0;

        virtual HRESULT get_Context(
            BSTR *pbstrContext /Out/) = 0;

        virtual HRESULT put_Context(
            BSTR pbstrContext) = 0;

        virtual HRESULT get_Controls(
            CommandBarControls **ppcbcs /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_Enabled(
            VARIANT_BOOL *pvarfEnabled /Out/) = 0;

        virtual HRESULT put_Enabled(
            VARIANT_BOOL pvarfEnabled) = 0;

        virtual HRESULT FindControl(
            VARIANT Type = argMissing2(),
            VARIANT Id = argMissing2(),
            VARIANT Tag = argMissing2(),
            VARIANT Visible = argMissing2(),
            VARIANT Recursive = argMissing2(),
            CommandBarControl **ppcbc /Out/ = 0) = 0;

        virtual HRESULT get_Height(
            int *pdy /Out/) = 0;

        virtual HRESULT put_Height(
            int pdy) = 0;

        virtual HRESULT get_Index(
            int *pi /Out/) = 0;

        virtual HRESULT get_InstanceId(
            long *pid /Out/) = 0;

        virtual HRESULT get_Left(
            int *pxpLeft /Out/) = 0;

        virtual HRESULT put_Left(
            int pxpLeft) = 0;

        virtual HRESULT get_Name(
            BSTR *pbstrName /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR pbstrName) = 0;

        virtual HRESULT get_NameLocal(
            BSTR *pbstrNameLocal /Out/) = 0;

        virtual HRESULT put_NameLocal(
            BSTR pbstrNameLocal) = 0;

        virtual HRESULT get_Position(
            MsoBarPosition *ppos /Out/) = 0;

        virtual HRESULT put_Position(
            MsoBarPosition ppos) = 0;

        virtual HRESULT get_RowIndex(
            int *piRow /Out/) = 0;

        virtual HRESULT put_RowIndex(
            int piRow) = 0;

        virtual HRESULT get_Protection(
            MsoBarProtection *pprot /Out/) = 0;

        virtual HRESULT put_Protection(
            MsoBarProtection pprot) = 0;

        virtual HRESULT Reset() = 0;

        virtual HRESULT ShowPopup(
            VARIANT x = argMissing2(),
            VARIANT y = argMissing2()) = 0;

        virtual HRESULT get_Top(
            int *pypTop /Out/) = 0;

        virtual HRESULT put_Top(
            int pypTop) = 0;

        virtual HRESULT get_Type(
            MsoBarType *ptype /Out/) = 0;

        virtual HRESULT get_Visible(
            VARIANT_BOOL *pvarfVisible /Out/) = 0;

        virtual HRESULT put_Visible(
            VARIANT_BOOL pvarfVisible) = 0;

        virtual HRESULT get_Width(
            int *pdx /Out/) = 0;

        virtual HRESULT put_Width(
            int pdx) = 0;

        virtual HRESULT get_AdaptiveMenu(
            VARIANT_BOOL *pvarfAdaptiveMenu /Out/) = 0;

        virtual HRESULT put_AdaptiveMenu(
            VARIANT_BOOL pvarfAdaptiveMenu) = 0;

        virtual HRESULT get_Id(
            int *pid /Out/) = 0;

        virtual HRESULT get_InstanceIdPtr(
            VARIANT *pvarPitb /Out/) = 0;

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

        BSTR getContext();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Context(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Context()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setContext(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Context(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Context()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Context, get=getContext, set=setContext)

        CommandBarControls* getControls();
        %MethodCode
            ksoapi::CommandBarControls *prop = nullptr;
            HRESULT hr = sipCpp->get_Controls(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Controls()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Controls, get=getControls)

        VARIANT_BOOL getEnabled();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Enabled(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Enabled()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnabled(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Enabled(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Enabled()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Enabled, get=getEnabled, set=setEnabled)

        int getHeight();
        %MethodCode
            int prop = 0;
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

        PyObject* setHeight(int prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Height(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Height()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Height, get=getHeight, set=setHeight)

        int getIndex();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_Index(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Index()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Index, get=getIndex)

        long getInstanceId();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_InstanceId(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InstanceId()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=InstanceId, get=getInstanceId)

        int getLeft();
        %MethodCode
            int prop = 0;
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

        PyObject* setLeft(int prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Left(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Left()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Left, get=getLeft, set=setLeft)

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

        PyObject* setName(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Name(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Name()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Name, get=getName, set=setName)

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

        PyObject* setNameLocal(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NameLocal(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NameLocal()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NameLocal, get=getNameLocal, set=setNameLocal)

        MsoBarPosition getPosition();
        %MethodCode
            ksoapi::MsoBarPosition prop = (ksoapi::MsoBarPosition)0;
            HRESULT hr = sipCpp->get_Position(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Position()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPosition(MsoBarPosition prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Position(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Position()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Position, get=getPosition, set=setPosition)

        int getRowIndex();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_RowIndex(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RowIndex()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRowIndex(int prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RowIndex(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RowIndex()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RowIndex, get=getRowIndex, set=setRowIndex)

        MsoBarProtection getProtection();
        %MethodCode
            ksoapi::MsoBarProtection prop = (ksoapi::MsoBarProtection)0;
            HRESULT hr = sipCpp->get_Protection(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Protection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setProtection(MsoBarProtection prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Protection(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Protection()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Protection, get=getProtection, set=setProtection)

        int getTop();
        %MethodCode
            int prop = 0;
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

        PyObject* setTop(int prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Top(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Top()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Top, get=getTop, set=setTop)

        MsoBarType getType();
        %MethodCode
            ksoapi::MsoBarType prop = (ksoapi::MsoBarType)0;
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

        %Property(name=Type, get=getType)

        VARIANT_BOOL getVisible();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Visible(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Visible()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setVisible(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Visible(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Visible()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Visible, get=getVisible, set=setVisible)

        int getWidth();
        %MethodCode
            int prop = 0;
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

        PyObject* setWidth(int prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Width(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Width()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Width, get=getWidth, set=setWidth)

        VARIANT_BOOL getAdaptiveMenu();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AdaptiveMenu(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AdaptiveMenu()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAdaptiveMenu(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AdaptiveMenu(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AdaptiveMenu()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AdaptiveMenu, get=getAdaptiveMenu, set=setAdaptiveMenu)

        int getId();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_Id(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Id()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Id, get=getId)

        VARIANT getInstanceIdPtr();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_InstanceIdPtr(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InstanceIdPtr()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=InstanceIdPtr, get=getInstanceIdPtr)
    };
};
