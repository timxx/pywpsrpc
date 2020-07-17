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
    struct OMathMatCol : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Args(
            OMathArgs **prop /Out/) = 0;

        virtual HRESULT get_ColIndex(
            long *prop /Out/) = 0;

        virtual HRESULT get_Align(
            WdOMathHorizAlignType *prop /Out/) = 0;

        virtual HRESULT put_Align(
            WdOMathHorizAlignType prop) = 0;

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

        OMathArgs* getArgs();
        %MethodCode
            wpsapi::OMathArgs *prop = nullptr;
            HRESULT hr = sipCpp->get_Args(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Args()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Args, get=getArgs)

        long getColIndex();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_ColIndex(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ColIndex()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ColIndex, get=getColIndex)

        WdOMathHorizAlignType getAlign();
        %MethodCode
            wpsapi::WdOMathHorizAlignType prop = (wpsapi::WdOMathHorizAlignType)0;
            HRESULT hr = sipCpp->get_Align(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Align()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAlign(WdOMathHorizAlignType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Align(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Align()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Align, get=getAlign, set=setAlign)
    };
};
