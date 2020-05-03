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
    struct RevisionsFilter : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_View(
            WdRevisionsView *prop /Out/) = 0;

        virtual HRESULT put_View(
            WdRevisionsView prop) = 0;

        virtual HRESULT get_Markup(
            WdRevisionsMarkup *prop /Out/) = 0;

        virtual HRESULT put_Markup(
            WdRevisionsMarkup prop) = 0;

        virtual HRESULT get_Reviewers(
            Reviewers **prop /Out/) = 0;

        virtual HRESULT ToggleShowAllReviewers() = 0;

        WdRevisionsView getView();
        %MethodCode
            wpsapi::WdRevisionsView prop = (wpsapi::WdRevisionsView)0;
            HRESULT hr = sipCpp->get_View(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_View()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setView(WdRevisionsView prop);
        %MethodCode
            HRESULT hr = sipCpp->put_View(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_View()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=View, get=getView, set=setView)

        WdRevisionsMarkup getMarkup();
        %MethodCode
            wpsapi::WdRevisionsMarkup prop = (wpsapi::WdRevisionsMarkup)0;
            HRESULT hr = sipCpp->get_Markup(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Markup()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMarkup(WdRevisionsMarkup prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Markup(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Markup()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Markup, get=getMarkup, set=setMarkup)

        Reviewers* getReviewers();
        %MethodCode
            wpsapi::Reviewers *prop = nullptr;
            HRESULT hr = sipCpp->get_Reviewers(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Reviewers()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Reviewers, get=getReviewers)
    };
};
