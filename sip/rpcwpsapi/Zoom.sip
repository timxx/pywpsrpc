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
    struct Zoom : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Percentage(
            long *prop /Out/) = 0;

        virtual HRESULT put_Percentage(
            long prop) = 0;

        virtual HRESULT get_PageFit(
            WdPageFit *prop /Out/) = 0;

        virtual HRESULT put_PageFit(
            WdPageFit prop) = 0;

        virtual HRESULT get_PageRows(
            long *prop /Out/) = 0;

        virtual HRESULT put_PageRows(
            long prop) = 0;

        virtual HRESULT get_PageColumns(
            long *prop /Out/) = 0;

        virtual HRESULT put_PageColumns(
            long prop) = 0;

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

        long getPercentage();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Percentage(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Percentage()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPercentage(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Percentage(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Percentage()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Percentage, get=getPercentage, set=setPercentage)

        WdPageFit getPageFit();
        %MethodCode
            wpsapi::WdPageFit prop = (wpsapi::WdPageFit)0;
            HRESULT hr = sipCpp->get_PageFit(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PageFit()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPageFit(WdPageFit prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PageFit(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PageFit()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PageFit, get=getPageFit, set=setPageFit)

        long getPageRows();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_PageRows(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PageRows()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPageRows(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PageRows(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PageRows()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PageRows, get=getPageRows, set=setPageRows)

        long getPageColumns();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_PageColumns(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PageColumns()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPageColumns(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PageColumns(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PageColumns()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PageColumns, get=getPageColumns, set=setPageColumns)
    };
};
