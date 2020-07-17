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
    struct IMsoEnvelopeVB : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Introduction(
            BSTR *pbstrIntro /Out/) = 0;

        virtual HRESULT put_Introduction(
            BSTR pbstrIntro) = 0;

        virtual HRESULT get_Item(
            IDispatch **ppdisp /Out/) = 0;

        virtual HRESULT get_CommandBars(
            IDispatch **ppdisp /Out/) = 0;

        BSTR getIntroduction();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Introduction(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Introduction()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setIntroduction(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Introduction(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Introduction()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Introduction, get=getIntroduction, set=setIntroduction)

        IDispatch* getItem();
        %MethodCode
            IDispatch *prop = nullptr;
            HRESULT hr = sipCpp->get_Item(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Item()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Item, get=getItem)

        IDispatch* getCommandBars();
        %MethodCode
            IDispatch *prop = nullptr;
            HRESULT hr = sipCpp->get_CommandBars(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CommandBars()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CommandBars, get=getCommandBars)
    };
};
