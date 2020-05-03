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
    struct IDummy : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT _ActiveSheetOrChart() = 0;

        virtual HRESULT RGB() = 0;

        virtual HRESULT ChDir() = 0;

        virtual HRESULT DoScript() = 0;

        virtual HRESULT DirectObject() = 0;

        virtual HRESULT RefreshDocument() = 0;

        virtual HRESULT AddSignatureLine(
            VARIANT SigProv,
            ksoapi::Signature **RHS /Out/) = 0;

        virtual HRESULT AddNonVisibleSignature(
            VARIANT SigProv,
            ksoapi::Signature **RHS /Out/) = 0;

        virtual HRESULT get_ShowSignaturesPane(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowSignaturesPane(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT ThemeFontScheme() = 0;

        virtual HRESULT ThemeColorScheme() = 0;

        virtual HRESULT ThemeEffectScheme() = 0;

        virtual HRESULT Load() = 0;

        VARIANT_BOOL getShowSignaturesPane();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowSignaturesPane(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowSignaturesPane()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowSignaturesPane(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowSignaturesPane(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowSignaturesPane()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowSignaturesPane, get=getShowSignaturesPane, set=setShowSignaturesPane)
    };
};
