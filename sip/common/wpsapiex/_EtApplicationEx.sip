/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wpsapiex
{
    struct _EtApplicationEx : public wpsapiex::_ApplicationEx /Abstract/
    {
    public:
        virtual HRESULT get_EmbedTrueTypeFonts(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EmbedTrueTypeFonts(
            VARIANT_BOOL RHS) = 0;

        VARIANT_BOOL getEmbedTrueTypeFonts();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EmbedTrueTypeFonts(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EmbedTrueTypeFonts()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEmbedTrueTypeFonts(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EmbedTrueTypeFonts(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EmbedTrueTypeFonts()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EmbedTrueTypeFonts, get=getEmbedTrueTypeFonts, set=setEmbedTrueTypeFonts)
    };
};
