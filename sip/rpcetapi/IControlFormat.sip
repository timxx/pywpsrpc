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
    struct IControlFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT AddItem(
            BSTR Text,
            VARIANT Index = argMissing2()) = 0;

        virtual HRESULT RemoveAllItems() = 0;

        virtual HRESULT RemoveItem(
            long Index,
            VARIANT Count = argMissing2()) = 0;

        virtual HRESULT get_DropDownLines(
            long *RHS /Out/) = 0;

        virtual HRESULT put_DropDownLines(
            long RHS) = 0;

        virtual HRESULT get_Enabled(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Enabled(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_LargeChange(
            long *RHS /Out/) = 0;

        virtual HRESULT put_LargeChange(
            long RHS) = 0;

        virtual HRESULT get_LinkedCell(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_LinkedCell(
            BSTR RHS) = 0;

        virtual HRESULT List(
            VARIANT Index = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_ListCount(
            long *RHS /Out/) = 0;

        virtual HRESULT put_ListCount(
            long RHS) = 0;

        virtual HRESULT get_ListFillRange(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_ListFillRange(
            BSTR RHS) = 0;

        virtual HRESULT get_ListIndex(
            long *RHS /Out/) = 0;

        virtual HRESULT put_ListIndex(
            long RHS) = 0;

        virtual HRESULT get_LockedText(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_LockedText(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Max(
            long *RHS /Out/) = 0;

        virtual HRESULT put_Max(
            long RHS) = 0;

        virtual HRESULT get_Min(
            long *RHS /Out/) = 0;

        virtual HRESULT put_Min(
            long RHS) = 0;

        virtual HRESULT get_MultiSelect(
            long *RHS /Out/) = 0;

        virtual HRESULT put_MultiSelect(
            long RHS) = 0;

        virtual HRESULT get_PrintObject(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_PrintObject(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_SmallChange(
            long *RHS /Out/) = 0;

        virtual HRESULT put_SmallChange(
            long RHS) = 0;

        virtual HRESULT get__Default(
            long *RHS /Out/) = 0;

        virtual HRESULT put__Default(
            long RHS) = 0;

        virtual HRESULT get_Value(
            long *RHS /Out/) = 0;

        virtual HRESULT put_Value(
            long RHS) = 0;

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

        long getDropDownLines();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_DropDownLines(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DropDownLines()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDropDownLines(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DropDownLines(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DropDownLines()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DropDownLines, get=getDropDownLines, set=setDropDownLines)

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

        long getLargeChange();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_LargeChange(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LargeChange()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLargeChange(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LargeChange(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LargeChange()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LargeChange, get=getLargeChange, set=setLargeChange)

        BSTR getLinkedCell();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_LinkedCell(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LinkedCell()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLinkedCell(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LinkedCell(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LinkedCell()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LinkedCell, get=getLinkedCell, set=setLinkedCell)

        long getListCount();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_ListCount(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ListCount()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setListCount(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ListCount(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ListCount()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ListCount, get=getListCount, set=setListCount)

        BSTR getListFillRange();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ListFillRange(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ListFillRange()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setListFillRange(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ListFillRange(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ListFillRange()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ListFillRange, get=getListFillRange, set=setListFillRange)

        long getListIndex();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_ListIndex(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ListIndex()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setListIndex(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ListIndex(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ListIndex()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ListIndex, get=getListIndex, set=setListIndex)

        VARIANT_BOOL getLockedText();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_LockedText(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LockedText()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLockedText(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LockedText(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LockedText()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LockedText, get=getLockedText, set=setLockedText)

        long getMax();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Max(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Max()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMax(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Max(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Max()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Max, get=getMax, set=setMax)

        long getMin();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Min(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Min()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMin(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Min(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Min()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Min, get=getMin, set=setMin)

        long getMultiSelect();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_MultiSelect(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MultiSelect()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMultiSelect(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MultiSelect(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MultiSelect()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MultiSelect, get=getMultiSelect, set=setMultiSelect)

        VARIANT_BOOL getPrintObject();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_PrintObject(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PrintObject()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPrintObject(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PrintObject(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PrintObject()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PrintObject, get=getPrintObject, set=setPrintObject)

        long getSmallChange();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_SmallChange(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SmallChange()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSmallChange(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SmallChange(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SmallChange()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SmallChange, get=getSmallChange, set=setSmallChange)

        long get_Default();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get__Default(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get__Default()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* set_Default(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put__Default(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put__Default()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=_Default, get=get_Default, set=set_Default)

        long getValue();
        %MethodCode
            long prop = 0;
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

        PyObject* setValue(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Value(a0);
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
    };
};
