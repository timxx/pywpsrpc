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
    struct ISort : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Rng(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_Header(
            XlYesNoGuess *RHS /Out/) = 0;

        virtual HRESULT put_Header(
            XlYesNoGuess RHS) = 0;

        virtual HRESULT get_MatchCase(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_MatchCase(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Orientation(
            XlSortOrientation *RHS /Out/) = 0;

        virtual HRESULT put_Orientation(
            XlSortOrientation RHS) = 0;

        virtual HRESULT get_SortMethod(
            XlSortMethod *RHS /Out/) = 0;

        virtual HRESULT put_SortMethod(
            XlSortMethod RHS) = 0;

        virtual HRESULT get_SortFields(
            SortFields **RHS /Out/) = 0;

        virtual HRESULT SetRange(
            Range *Rng) = 0;

        virtual HRESULT Apply() = 0;

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

        Range* getRng();
        %MethodCode
            etapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_Rng(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Rng()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Rng, get=getRng)

        XlYesNoGuess getHeader();
        %MethodCode
            etapi::XlYesNoGuess prop = (etapi::XlYesNoGuess)0;
            HRESULT hr = sipCpp->get_Header(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Header()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHeader(XlYesNoGuess prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Header(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Header()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Header, get=getHeader, set=setHeader)

        VARIANT_BOOL getMatchCase();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MatchCase(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MatchCase()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMatchCase(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MatchCase(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MatchCase()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MatchCase, get=getMatchCase, set=setMatchCase)

        XlSortOrientation getOrientation();
        %MethodCode
            etapi::XlSortOrientation prop = (etapi::XlSortOrientation)0;
            HRESULT hr = sipCpp->get_Orientation(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Orientation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOrientation(XlSortOrientation prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Orientation(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Orientation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Orientation, get=getOrientation, set=setOrientation)

        XlSortMethod getSortMethod();
        %MethodCode
            etapi::XlSortMethod prop = (etapi::XlSortMethod)0;
            HRESULT hr = sipCpp->get_SortMethod(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SortMethod()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSortMethod(XlSortMethod prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SortMethod(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SortMethod()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SortMethod, get=getSortMethod, set=setSortMethod)

        SortFields* getSortFields();
        %MethodCode
            etapi::SortFields *prop = nullptr;
            HRESULT hr = sipCpp->get_SortFields(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SortFields()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SortFields, get=getSortFields)
    };
};
