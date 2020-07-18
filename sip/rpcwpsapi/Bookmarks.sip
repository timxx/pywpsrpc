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
    struct Bookmarks : public IDispatch /Abstract/
    {
    public:
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
            WdBookmarkSortBy *prop /Out/) = 0;

        virtual HRESULT put_DefaultSorting(
            WdBookmarkSortBy prop) = 0;

        virtual HRESULT get_ShowHidden(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowHidden(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT Item(
            VARIANT *Index,
            Bookmark **prop /Out/) = 0;

        Bookmark* __getitem__(VARIANT *index) const;
        %MethodCode
            wpsapi::Bookmark *prop = nullptr;
            if (sipCpp->Item(a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT Add(
            BSTR Name,
            VARIANT *Range = argMissing(),
            Bookmark **prop /Out/ = 0) = 0;

        virtual HRESULT Exists(
            BSTR Name,
            VARIANT_BOOL *prop /Out/) = 0;

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

        WdBookmarkSortBy getDefaultSorting();
        %MethodCode
            wpsapi::WdBookmarkSortBy prop = (wpsapi::WdBookmarkSortBy)0;
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

        PyObject* setDefaultSorting(WdBookmarkSortBy prop);
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

        VARIANT_BOOL getShowHidden();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowHidden(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowHidden()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowHidden(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowHidden(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowHidden()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowHidden, get=getShowHidden, set=setShowHidden)

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
    };
};
