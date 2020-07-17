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
    struct ISlicerCacheLevel : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_SlicerItems(
            SlicerItems **RHS /Out/) = 0;

        virtual HRESULT get_Count(
            long *RHS /Out/) = 0;

        int __len__() const;
        %MethodCode
            long count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT get_Ordinal(
            long *RHS /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_CrossFilterType(
            XlSlicerCrossFilterType *RHS /Out/) = 0;

        virtual HRESULT put_CrossFilterType(
            XlSlicerCrossFilterType RHS) = 0;

        virtual HRESULT get_SortItems(
            XlSlicerSort *RHS /Out/) = 0;

        virtual HRESULT put_SortItems(
            XlSlicerSort RHS) = 0;

        virtual HRESULT get_VisibleSlicerItemsList(
            VARIANT *RHS /Out/) = 0;

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

        SlicerItems* getSlicerItems();
        %MethodCode
            etapi::SlicerItems *prop = nullptr;
            HRESULT hr = sipCpp->get_SlicerItems(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SlicerItems()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SlicerItems, get=getSlicerItems)

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

        long getOrdinal();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Ordinal(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Ordinal()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Ordinal, get=getOrdinal)

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

        XlSlicerCrossFilterType getCrossFilterType();
        %MethodCode
            etapi::XlSlicerCrossFilterType prop = (etapi::XlSlicerCrossFilterType)0;
            HRESULT hr = sipCpp->get_CrossFilterType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CrossFilterType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCrossFilterType(XlSlicerCrossFilterType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CrossFilterType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CrossFilterType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CrossFilterType, get=getCrossFilterType, set=setCrossFilterType)

        XlSlicerSort getSortItems();
        %MethodCode
            etapi::XlSlicerSort prop = (etapi::XlSlicerSort)0;
            HRESULT hr = sipCpp->get_SortItems(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SortItems()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSortItems(XlSlicerSort prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SortItems(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SortItems()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SortItems, get=getSortItems, set=setSortItems)

        VARIANT getVisibleSlicerItemsList();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_VisibleSlicerItemsList(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_VisibleSlicerItemsList()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=VisibleSlicerItemsList, get=getVisibleSlicerItemsList)
    };
};
