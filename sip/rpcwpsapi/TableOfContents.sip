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
    struct TableOfContents : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_UseHeadingStyles(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_UseHeadingStyles(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_UseFields(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_UseFields(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_UpperHeadingLevel(
            long *prop /Out/) = 0;

        virtual HRESULT put_UpperHeadingLevel(
            long prop) = 0;

        virtual HRESULT get_LowerHeadingLevel(
            long *prop /Out/) = 0;

        virtual HRESULT put_LowerHeadingLevel(
            long prop) = 0;

        virtual HRESULT get_TableID(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_TableID(
            BSTR prop) = 0;

        virtual HRESULT get_HeadingStyles(
            HeadingStyles **prop /Out/) = 0;

        virtual HRESULT get_RightAlignPageNumbers(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_RightAlignPageNumbers(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_IncludePageNumbers(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_IncludePageNumbers(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT get_TabLeader(
            WdTabLeader *prop /Out/) = 0;

        virtual HRESULT put_TabLeader(
            WdTabLeader prop) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT UpdatePageNumbers() = 0;

        virtual HRESULT Update() = 0;

        virtual HRESULT get_UseHyperlinks(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_UseHyperlinks(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HidePageNumbersInWeb(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HidePageNumbersInWeb(
            VARIANT_BOOL prop) = 0;

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

        VARIANT_BOOL getUseHeadingStyles();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_UseHeadingStyles(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UseHeadingStyles()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUseHeadingStyles(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_UseHeadingStyles(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_UseHeadingStyles()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=UseHeadingStyles, get=getUseHeadingStyles, set=setUseHeadingStyles)

        VARIANT_BOOL getUseFields();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_UseFields(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UseFields()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUseFields(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_UseFields(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_UseFields()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=UseFields, get=getUseFields, set=setUseFields)

        long getUpperHeadingLevel();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_UpperHeadingLevel(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UpperHeadingLevel()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUpperHeadingLevel(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_UpperHeadingLevel(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_UpperHeadingLevel()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=UpperHeadingLevel, get=getUpperHeadingLevel, set=setUpperHeadingLevel)

        long getLowerHeadingLevel();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_LowerHeadingLevel(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LowerHeadingLevel()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLowerHeadingLevel(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LowerHeadingLevel(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LowerHeadingLevel()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LowerHeadingLevel, get=getLowerHeadingLevel, set=setLowerHeadingLevel)

        BSTR getTableID();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_TableID(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TableID()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTableID(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TableID(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TableID()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TableID, get=getTableID, set=setTableID)

        HeadingStyles* getHeadingStyles();
        %MethodCode
            wpsapi::HeadingStyles *prop = nullptr;
            HRESULT hr = sipCpp->get_HeadingStyles(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HeadingStyles()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HeadingStyles, get=getHeadingStyles)

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

        VARIANT_BOOL getIncludePageNumbers();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IncludePageNumbers(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IncludePageNumbers()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setIncludePageNumbers(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_IncludePageNumbers(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_IncludePageNumbers()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=IncludePageNumbers, get=getIncludePageNumbers, set=setIncludePageNumbers)

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

        VARIANT_BOOL getUseHyperlinks();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_UseHyperlinks(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UseHyperlinks()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUseHyperlinks(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_UseHyperlinks(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_UseHyperlinks()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=UseHyperlinks, get=getUseHyperlinks, set=setUseHyperlinks)

        VARIANT_BOOL getHidePageNumbersInWeb();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HidePageNumbersInWeb(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HidePageNumbersInWeb()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHidePageNumbersInWeb(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HidePageNumbersInWeb(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HidePageNumbersInWeb()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HidePageNumbersInWeb, get=getHidePageNumbersInWeb, set=setHidePageNumbersInWeb)
    };
};
