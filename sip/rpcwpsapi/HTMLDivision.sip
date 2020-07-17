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
    struct HTMLDivision : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT get_Borders(
            Borders **prop /Out/) = 0;

        virtual HRESULT get_LeftIndent(
            single *prop /Out/) = 0;

        virtual HRESULT put_LeftIndent(
            single prop) = 0;

        virtual HRESULT get_RightIndent(
            single *prop /Out/) = 0;

        virtual HRESULT put_RightIndent(
            single prop) = 0;

        virtual HRESULT get_SpaceBefore(
            single *prop /Out/) = 0;

        virtual HRESULT put_SpaceBefore(
            single prop) = 0;

        virtual HRESULT get_SpaceAfter(
            single *prop /Out/) = 0;

        virtual HRESULT put_SpaceAfter(
            single prop) = 0;

        virtual HRESULT get_HTMLDivisions(
            HTMLDivisions **prop /Out/) = 0;

        virtual HRESULT HTMLDivisionParent(
            VARIANT *LevelsUp = argMissing(),
            HTMLDivision **prop /Out/ = 0) = 0;

        virtual HRESULT Delete() = 0;

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

        Borders* getBorders();
        %MethodCode
            wpsapi::Borders *prop = nullptr;
            HRESULT hr = sipCpp->get_Borders(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Borders()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Borders, get=getBorders)

        single getLeftIndent();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_LeftIndent(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LeftIndent()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLeftIndent(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LeftIndent(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LeftIndent()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LeftIndent, get=getLeftIndent, set=setLeftIndent)

        single getRightIndent();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_RightIndent(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RightIndent()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRightIndent(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RightIndent(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RightIndent()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RightIndent, get=getRightIndent, set=setRightIndent)

        single getSpaceBefore();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_SpaceBefore(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SpaceBefore()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSpaceBefore(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SpaceBefore(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SpaceBefore()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SpaceBefore, get=getSpaceBefore, set=setSpaceBefore)

        single getSpaceAfter();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_SpaceAfter(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SpaceAfter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSpaceAfter(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SpaceAfter(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SpaceAfter()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SpaceAfter, get=getSpaceAfter, set=setSpaceAfter)

        HTMLDivisions* getHTMLDivisions();
        %MethodCode
            wpsapi::HTMLDivisions *prop = nullptr;
            HRESULT hr = sipCpp->get_HTMLDivisions(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HTMLDivisions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HTMLDivisions, get=getHTMLDivisions)
    };
};
