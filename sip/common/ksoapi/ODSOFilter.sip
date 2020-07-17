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
    struct ODSOFilter : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Index(
            long *plIndex /Out/) = 0;

        virtual HRESULT get_Column(
            BSTR *pbstrCol /Out/) = 0;

        virtual HRESULT put_Column(
            BSTR pbstrCol) = 0;

        virtual HRESULT get_Comparison(
            MsoFilterComparison *pComparison /Out/) = 0;

        virtual HRESULT put_Comparison(
            MsoFilterComparison pComparison) = 0;

        virtual HRESULT get_CompareTo(
            BSTR *pbstrCompareTo /Out/) = 0;

        virtual HRESULT put_CompareTo(
            BSTR pbstrCompareTo) = 0;

        virtual HRESULT get_Conjunction(
            MsoFilterConjunction *pConjunction /Out/) = 0;

        virtual HRESULT put_Conjunction(
            MsoFilterConjunction pConjunction) = 0;

        long getIndex();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Index(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Index()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Index, get=getIndex)

        BSTR getColumn();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Column(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Column()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setColumn(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Column(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Column()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Column, get=getColumn, set=setColumn)

        MsoFilterComparison getComparison();
        %MethodCode
            ksoapi::MsoFilterComparison prop = (ksoapi::MsoFilterComparison)0;
            HRESULT hr = sipCpp->get_Comparison(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Comparison()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setComparison(MsoFilterComparison prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Comparison(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Comparison()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Comparison, get=getComparison, set=setComparison)

        BSTR getCompareTo();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_CompareTo(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CompareTo()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCompareTo(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_CompareTo(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_CompareTo()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=CompareTo, get=getCompareTo, set=setCompareTo)

        MsoFilterConjunction getConjunction();
        %MethodCode
            ksoapi::MsoFilterConjunction prop = (ksoapi::MsoFilterConjunction)0;
            HRESULT hr = sipCpp->get_Conjunction(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Conjunction()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setConjunction(MsoFilterConjunction prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Conjunction(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Conjunction()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Conjunction, get=getConjunction, set=setConjunction)
    };
};
