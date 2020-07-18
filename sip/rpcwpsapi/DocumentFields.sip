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
    struct DocumentFields : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        int __len__() const;
        %MethodCode
            long count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT get_DefaultSorting(
            WdDocumentFieldSortBy *prop /Out/) = 0;

        virtual HRESULT put_DefaultSorting(
            WdDocumentFieldSortBy prop) = 0;

        virtual HRESULT Item(
            VARIANT *Index,
            DocumentField **prop /Out/) = 0;

        DocumentField* __getitem__(VARIANT *index) const;
        %MethodCode
            wpsapi::DocumentField *prop = nullptr;
            if (sipCpp->Item(a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT Add(
            BSTR Name,
            VARIANT *Range = argMissing(),
            VARIANT *Hidden = argMissing(),
            VARIANT *PrintOut = argMissing(),
            VARIANT *ReadOnly = argMissing(),
            DocumentField **prop /Out/ = 0) = 0;

        virtual HRESULT Exists(
            BSTR Name,
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_InsertionMode(
            VARIANT_BOOL *insertIntoItem /Out/) = 0;

        virtual HRESULT put_InsertionMode(
            VARIANT_BOOL insertIntoItem) = 0;

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

        WdDocumentFieldSortBy getDefaultSorting();
        %MethodCode
            wpsapi::WdDocumentFieldSortBy prop = (wpsapi::WdDocumentFieldSortBy)0;
            HRESULT hr = sipCpp->get_DefaultSorting(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DefaultSorting()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDefaultSorting(WdDocumentFieldSortBy prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DefaultSorting(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DefaultSorting()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DefaultSorting, get=getDefaultSorting, set=setDefaultSorting)

        VARIANT_BOOL getInsertionMode();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_InsertionMode(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InsertionMode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setInsertionMode(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_InsertionMode(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_InsertionMode()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=InsertionMode, get=getInsertionMode, set=setInsertionMode)
    };
};
