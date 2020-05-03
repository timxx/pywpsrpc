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
    struct _CommandBarComboBox : public ksoapi::CommandBarControl /Abstract/
    {
    public:
        virtual HRESULT AddItem(
            BSTR Text,
            VARIANT Index = argMissing2()) = 0;

        virtual HRESULT Clear() = 0;

        virtual HRESULT get_DropDownLines(
            int *pcLines /Out/) = 0;

        virtual HRESULT put_DropDownLines(
            int pcLines) = 0;

        virtual HRESULT get_DropDownWidth(
            int *pdx /Out/) = 0;

        virtual HRESULT put_DropDownWidth(
            int pdx) = 0;

        virtual HRESULT get_List(
            int Index,
            BSTR *pbstrItem /Out/) = 0;

        virtual HRESULT put_List(
            int Index,
            BSTR pbstrItem) = 0;

        virtual HRESULT get_ListCount(
            int *pcItems /Out/) = 0;

        virtual HRESULT get_ListHeaderCount(
            int *pcItems /Out/) = 0;

        virtual HRESULT put_ListHeaderCount(
            int pcItems) = 0;

        virtual HRESULT get_ListIndex(
            int *pi /Out/) = 0;

        virtual HRESULT put_ListIndex(
            int pi) = 0;

        virtual HRESULT RemoveItem(
            int Index) = 0;

        virtual HRESULT get_Style(
            MsoComboStyle *pstyle /Out/) = 0;

        virtual HRESULT put_Style(
            MsoComboStyle pstyle) = 0;

        virtual HRESULT get_Text(
            BSTR *pbstrText /Out/) = 0;

        virtual HRESULT put_Text(
            BSTR pbstrText) = 0;

        virtual HRESULT get_InstanceIdPtr(
            VARIANT *pvarPic /Out/) = 0;

        int getDropDownLines();
        %MethodCode
            int prop = 0;
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

        PyObject* setDropDownLines(int prop);
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

        int getDropDownWidth();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_DropDownWidth(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DropDownWidth()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDropDownWidth(int prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DropDownWidth(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DropDownWidth()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DropDownWidth, get=getDropDownWidth, set=setDropDownWidth)

        int getListCount();
        %MethodCode
            int prop = 0;
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

        %Property(name=ListCount, get=getListCount)

        int getListHeaderCount();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_ListHeaderCount(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ListHeaderCount()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setListHeaderCount(int prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ListHeaderCount(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ListHeaderCount()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ListHeaderCount, get=getListHeaderCount, set=setListHeaderCount)

        int getListIndex();
        %MethodCode
            int prop = 0;
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

        PyObject* setListIndex(int prop);
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

        MsoComboStyle getStyle();
        %MethodCode
            ksoapi::MsoComboStyle prop = (ksoapi::MsoComboStyle)0;
            HRESULT hr = sipCpp->get_Style(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Style()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setStyle(MsoComboStyle prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Style(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Style()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Style, get=getStyle, set=setStyle)

        BSTR getText();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Text(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Text()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setText(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Text(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Text()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Text, get=getText, set=setText)

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
