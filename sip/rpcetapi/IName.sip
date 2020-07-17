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
    struct IName : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get__Default(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Index(
            long *RHS /Out/) = 0;

        virtual HRESULT get_Category(
            long lcidIn,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Category(
            long lcidIn,
            BSTR RHS) = 0;

        virtual HRESULT get_CategoryLocal(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_CategoryLocal(
            BSTR RHS) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_MacroType(
            XlXLMMacroType *RHS /Out/) = 0;

        virtual HRESULT put_MacroType(
            XlXLMMacroType RHS) = 0;

        virtual HRESULT get_Name(
            long lcidIn,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Name(
            long lcidIn,
            BSTR RHS) = 0;

        virtual HRESULT get_RefersTo(
            long lcidIn,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_RefersTo(
            long lcidIn,
            VARIANT RHS) = 0;

        virtual HRESULT get_ShortcutKey(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_ShortcutKey(
            BSTR RHS) = 0;

        virtual HRESULT get_Value(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Value(
            BSTR RHS) = 0;

        virtual HRESULT get_Visible(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Visible(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_NameLocal(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_NameLocal(
            BSTR RHS) = 0;

        virtual HRESULT get_RefersToLocal(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_RefersToLocal(
            VARIANT RHS) = 0;

        virtual HRESULT get_RefersToR1C1(
            long lcidIn,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_RefersToR1C1(
            long lcidIn,
            VARIANT RHS) = 0;

        virtual HRESULT get_RefersToR1C1Local(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_RefersToR1C1Local(
            VARIANT RHS) = 0;

        virtual HRESULT get_RefersToRange(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_Comment(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Comment(
            BSTR RHS) = 0;

        virtual HRESULT get_WorkbookParameter(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_WorkbookParameter(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ValidWorkbookParameter(
            VARIANT_BOOL *RHS /Out/) = 0;

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

        long getIndex();
        %MethodCode
            long prop = 0;
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

        BSTR getCategoryLocal();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_CategoryLocal(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CategoryLocal()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCategoryLocal(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CategoryLocal(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CategoryLocal()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CategoryLocal, get=getCategoryLocal, set=setCategoryLocal)

        XlXLMMacroType getMacroType();
        %MethodCode
            etapi::XlXLMMacroType prop = (etapi::XlXLMMacroType)0;
            HRESULT hr = sipCpp->get_MacroType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MacroType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMacroType(XlXLMMacroType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MacroType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MacroType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MacroType, get=getMacroType, set=setMacroType)

        BSTR getShortcutKey();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ShortcutKey(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShortcutKey()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShortcutKey(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShortcutKey(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShortcutKey()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShortcutKey, get=getShortcutKey, set=setShortcutKey)

        BSTR getValue();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Value(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Value()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setValue(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Value(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Value()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Value, get=getValue, set=setValue)

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

        VARIANT getRefersToLocal();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_RefersToLocal(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RefersToLocal()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRefersToLocal(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RefersToLocal(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RefersToLocal()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RefersToLocal, get=getRefersToLocal, set=setRefersToLocal)

        VARIANT getRefersToR1C1Local();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_RefersToR1C1Local(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RefersToR1C1Local()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRefersToR1C1Local(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RefersToR1C1Local(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RefersToR1C1Local()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RefersToR1C1Local, get=getRefersToR1C1Local, set=setRefersToR1C1Local)

        Range* getRefersToRange();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_RefersToRange(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RefersToRange()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=RefersToRange, get=getRefersToRange)

        BSTR getComment();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Comment(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Comment()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setComment(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Comment(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Comment()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Comment, get=getComment, set=setComment)

        VARIANT_BOOL getWorkbookParameter();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_WorkbookParameter(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WorkbookParameter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWorkbookParameter(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_WorkbookParameter(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_WorkbookParameter()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=WorkbookParameter, get=getWorkbookParameter, set=setWorkbookParameter)

        VARIANT_BOOL getValidWorkbookParameter();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ValidWorkbookParameter(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ValidWorkbookParameter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ValidWorkbookParameter, get=getValidWorkbookParameter)
    };
};
