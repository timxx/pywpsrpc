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
    struct FileDialog : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Filters(
            FileDialogFilters **Filters /Out/) = 0;

        virtual HRESULT get_FilterIndex(
            int *FilterIndex /Out/) = 0;

        virtual HRESULT put_FilterIndex(
            int FilterIndex) = 0;

        virtual HRESULT get_Title(
            BSTR *Title /Out/) = 0;

        virtual HRESULT put_Title(
            BSTR Title) = 0;

        virtual HRESULT get_ButtonName(
            BSTR *ButtonName /Out/) = 0;

        virtual HRESULT put_ButtonName(
            BSTR ButtonName) = 0;

        virtual HRESULT get_AllowMultiSelect(
            VARIANT_BOOL *pvarfAllowMultiSelect /Out/) = 0;

        virtual HRESULT put_AllowMultiSelect(
            VARIANT_BOOL pvarfAllowMultiSelect) = 0;

        virtual HRESULT get_InitialView(
            MsoFileDialogView *pinitialview /Out/) = 0;

        virtual HRESULT put_InitialView(
            MsoFileDialogView pinitialview) = 0;

        virtual HRESULT get_InitialFileName(
            BSTR *InitialFileName /Out/) = 0;

        virtual HRESULT put_InitialFileName(
            BSTR InitialFileName) = 0;

        virtual HRESULT get_SelectedItems(
            FileDialogSelectedItems **Files /Out/) = 0;

        virtual HRESULT get_DialogType(
            MsoFileDialogType *pdialogtype /Out/) = 0;

        virtual HRESULT get_Item(
            BSTR *Name /Out/) = 0;

        virtual HRESULT Show(
            int *rval /Out/) = 0;

        virtual HRESULT Execute() = 0;

        FileDialogFilters* getFilters();
        %MethodCode
            ksoapi::FileDialogFilters *prop = nullptr;
            HRESULT hr = sipCpp->get_Filters(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Filters()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Filters, get=getFilters)

        int getFilterIndex();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_FilterIndex(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FilterIndex()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFilterIndex(int prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FilterIndex(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FilterIndex()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FilterIndex, get=getFilterIndex, set=setFilterIndex)

        BSTR getTitle();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Title(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Title()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTitle(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Title(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Title()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Title, get=getTitle, set=setTitle)

        BSTR getButtonName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ButtonName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ButtonName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setButtonName(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ButtonName(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ButtonName()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ButtonName, get=getButtonName, set=setButtonName)

        VARIANT_BOOL getAllowMultiSelect();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AllowMultiSelect(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AllowMultiSelect()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAllowMultiSelect(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AllowMultiSelect(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AllowMultiSelect()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AllowMultiSelect, get=getAllowMultiSelect, set=setAllowMultiSelect)

        MsoFileDialogView getInitialView();
        %MethodCode
            ksoapi::MsoFileDialogView prop = (ksoapi::MsoFileDialogView)0;
            HRESULT hr = sipCpp->get_InitialView(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InitialView()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setInitialView(MsoFileDialogView prop);
        %MethodCode
            HRESULT hr = sipCpp->put_InitialView(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_InitialView()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=InitialView, get=getInitialView, set=setInitialView)

        BSTR getInitialFileName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_InitialFileName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InitialFileName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setInitialFileName(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_InitialFileName(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_InitialFileName()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=InitialFileName, get=getInitialFileName, set=setInitialFileName)

        FileDialogSelectedItems* getSelectedItems();
        %MethodCode
            ksoapi::FileDialogSelectedItems *prop = nullptr;
            HRESULT hr = sipCpp->get_SelectedItems(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SelectedItems()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SelectedItems, get=getSelectedItems)

        MsoFileDialogType getDialogType();
        %MethodCode
            ksoapi::MsoFileDialogType prop = (ksoapi::MsoFileDialogType)0;
            HRESULT hr = sipCpp->get_DialogType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DialogType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DialogType, get=getDialogType)

        BSTR getItem();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Item(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Item()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Item, get=getItem)
    };
};
