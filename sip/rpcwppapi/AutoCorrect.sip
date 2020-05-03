/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wppapi
{
    struct AutoCorrect : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_DisplayAutoCorrectOptions(
            VARIANT_BOOL *DisplayAutoCorrectOptions /Out/) = 0;

        virtual HRESULT put_DisplayAutoCorrectOptions(
            VARIANT_BOOL DisplayAutoCorrectOptions) = 0;

        virtual HRESULT get_DisplayAutoLayoutOptions(
            VARIANT_BOOL *DisplayAutoLayoutOptions /Out/) = 0;

        virtual HRESULT put_DisplayAutoLayoutOptions(
            VARIANT_BOOL DisplayAutoLayoutOptions) = 0;

        VARIANT_BOOL getDisplayAutoCorrectOptions();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayAutoCorrectOptions(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayAutoCorrectOptions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayAutoCorrectOptions(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayAutoCorrectOptions(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayAutoCorrectOptions()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayAutoCorrectOptions, get=getDisplayAutoCorrectOptions, set=setDisplayAutoCorrectOptions)

        VARIANT_BOOL getDisplayAutoLayoutOptions();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayAutoLayoutOptions(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayAutoLayoutOptions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayAutoLayoutOptions(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayAutoLayoutOptions(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayAutoLayoutOptions()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayAutoLayoutOptions, get=getDisplayAutoLayoutOptions, set=setDisplayAutoLayoutOptions)
    };
};
