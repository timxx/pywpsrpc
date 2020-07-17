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
    struct ICalculatedMember : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Formula(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_SourceName(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_SolveOrder(
            long *RHS /Out/) = 0;

        virtual HRESULT get_IsValid(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get__Default(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_Type(
            XlCalculatedMemberType *RHS /Out/) = 0;

        virtual HRESULT get_Dynamic(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_DisplayFolder(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_HierarchizeDistinct(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_HierarchizeDistinct(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_FlattenHierarchies(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_FlattenHierarchies(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_MeasureGroup(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_ParentHierarchy(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_ParentMember(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_NumberFormat(
            XlCalcMemNumberFormatType *RHS /Out/) = 0;

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

        BSTR getFormula();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Formula(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Formula()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Formula, get=getFormula)

        BSTR getSourceName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_SourceName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SourceName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SourceName, get=getSourceName)

        long getSolveOrder();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_SolveOrder(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SolveOrder()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SolveOrder, get=getSolveOrder)

        VARIANT_BOOL getIsValid();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IsValid(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IsValid()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=IsValid, get=getIsValid)

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

        XlCalculatedMemberType getType();
        %MethodCode
            etapi::XlCalculatedMemberType prop = (etapi::XlCalculatedMemberType)0;
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

        VARIANT_BOOL getDynamic();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Dynamic(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Dynamic()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Dynamic, get=getDynamic)

        BSTR getDisplayFolder();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_DisplayFolder(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayFolder()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DisplayFolder, get=getDisplayFolder)

        VARIANT_BOOL getHierarchizeDistinct();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HierarchizeDistinct(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HierarchizeDistinct()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHierarchizeDistinct(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HierarchizeDistinct(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HierarchizeDistinct()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HierarchizeDistinct, get=getHierarchizeDistinct, set=setHierarchizeDistinct)

        VARIANT_BOOL getFlattenHierarchies();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_FlattenHierarchies(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FlattenHierarchies()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFlattenHierarchies(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FlattenHierarchies(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FlattenHierarchies()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FlattenHierarchies, get=getFlattenHierarchies, set=setFlattenHierarchies)

        BSTR getMeasureGroup();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_MeasureGroup(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MeasureGroup()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MeasureGroup, get=getMeasureGroup)

        BSTR getParentHierarchy();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ParentHierarchy(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ParentHierarchy()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ParentHierarchy, get=getParentHierarchy)

        BSTR getParentMember();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ParentMember(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ParentMember()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ParentMember, get=getParentMember)

        XlCalcMemNumberFormatType getNumberFormat();
        %MethodCode
            etapi::XlCalcMemNumberFormatType prop = (etapi::XlCalcMemNumberFormatType)0;
            HRESULT hr = sipCpp->get_NumberFormat(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NumberFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=NumberFormat, get=getNumberFormat)
    };
};
