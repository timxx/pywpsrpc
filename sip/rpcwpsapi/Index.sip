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
    struct Index : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_HeadingSeparator(
            WdHeadingSeparator *prop /Out/) = 0;

        virtual HRESULT put_HeadingSeparator(
            WdHeadingSeparator prop) = 0;

        virtual HRESULT get_RightAlignPageNumbers(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_RightAlignPageNumbers(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Type(
            WdIndexType *prop /Out/) = 0;

        virtual HRESULT put_Type(
            WdIndexType prop) = 0;

        virtual HRESULT get_NumberOfColumns(
            long *prop /Out/) = 0;

        virtual HRESULT put_NumberOfColumns(
            long prop) = 0;

        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT get_TabLeader(
            WdTabLeader *prop /Out/) = 0;

        virtual HRESULT put_TabLeader(
            WdTabLeader prop) = 0;

        virtual HRESULT get_AccentedLetters(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AccentedLetters(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SortBy(
            WdIndexSortBy *prop /Out/) = 0;

        virtual HRESULT put_SortBy(
            WdIndexSortBy prop) = 0;

        virtual HRESULT get_Filter(
            WdIndexFilter *prop /Out/) = 0;

        virtual HRESULT put_Filter(
            WdIndexFilter prop) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Update() = 0;

        virtual HRESULT get_IndexLanguage(
            WdLanguageID *prop /Out/) = 0;

        virtual HRESULT put_IndexLanguage(
            WdLanguageID prop) = 0;

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

        WdHeadingSeparator getHeadingSeparator();
        %MethodCode
            wpsapi::WdHeadingSeparator prop = (wpsapi::WdHeadingSeparator)0;
            HRESULT hr = sipCpp->get_HeadingSeparator(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HeadingSeparator()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHeadingSeparator(WdHeadingSeparator prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HeadingSeparator(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HeadingSeparator()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HeadingSeparator, get=getHeadingSeparator, set=setHeadingSeparator)

        VARIANT_BOOL getRightAlignPageNumbers();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_RightAlignPageNumbers(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RightAlignPageNumbers()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRightAlignPageNumbers(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RightAlignPageNumbers(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RightAlignPageNumbers()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RightAlignPageNumbers, get=getRightAlignPageNumbers, set=setRightAlignPageNumbers)

        WdIndexType getType();
        %MethodCode
            wpsapi::WdIndexType prop = (wpsapi::WdIndexType)0;
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

        PyObject* setType(WdIndexType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Type(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Type()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Type, get=getType, set=setType)

        long getNumberOfColumns();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_NumberOfColumns(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NumberOfColumns()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNumberOfColumns(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NumberOfColumns(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NumberOfColumns()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NumberOfColumns, get=getNumberOfColumns, set=setNumberOfColumns)

        Range* getRange();
        %MethodCode
            wpsapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_Range(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Range()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Range, get=getRange)

        WdTabLeader getTabLeader();
        %MethodCode
            wpsapi::WdTabLeader prop = (wpsapi::WdTabLeader)0;
            HRESULT hr = sipCpp->get_TabLeader(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TabLeader()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTabLeader(WdTabLeader prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TabLeader(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TabLeader()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TabLeader, get=getTabLeader, set=setTabLeader)

        VARIANT_BOOL getAccentedLetters();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AccentedLetters(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AccentedLetters()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAccentedLetters(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AccentedLetters(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AccentedLetters()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AccentedLetters, get=getAccentedLetters, set=setAccentedLetters)

        WdIndexSortBy getSortBy();
        %MethodCode
            wpsapi::WdIndexSortBy prop = (wpsapi::WdIndexSortBy)0;
            HRESULT hr = sipCpp->get_SortBy(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SortBy()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSortBy(WdIndexSortBy prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SortBy(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SortBy()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SortBy, get=getSortBy, set=setSortBy)

        WdIndexFilter getFilter();
        %MethodCode
            wpsapi::WdIndexFilter prop = (wpsapi::WdIndexFilter)0;
            HRESULT hr = sipCpp->get_Filter(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Filter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFilter(WdIndexFilter prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Filter(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Filter()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Filter, get=getFilter, set=setFilter)

        WdLanguageID getIndexLanguage();
        %MethodCode
            wpsapi::WdLanguageID prop = (wpsapi::WdLanguageID)0;
            HRESULT hr = sipCpp->get_IndexLanguage(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IndexLanguage()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setIndexLanguage(WdLanguageID prop);
        %MethodCode
            HRESULT hr = sipCpp->put_IndexLanguage(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_IndexLanguage()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=IndexLanguage, get=getIndexLanguage, set=setIndexLanguage)
    };
};
