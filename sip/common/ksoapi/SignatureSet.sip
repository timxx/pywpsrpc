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
    struct SignatureSet : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Count(
            int *pcSig /Out/) = 0;

        int __len__() const;
        %MethodCode
            int count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT get_Item(
            int iSig,
            Signature **ppidisp /Out/) = 0;

        Signature* __getitem__(int index) const;
        %MethodCode
            ksoapi::Signature *prop = nullptr;
            if (sipCpp->get_Item(a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT Add(
            Signature **ppidisp /Out/) = 0;

        virtual HRESULT Commit() = 0;

        virtual HRESULT AddNonVisibleSignature(
            VARIANT varSigProv = argMissing2(),
            Signature **ppidisp /Out/ = 0) = 0;

        virtual HRESULT get_CanAddSignatureLine(
            VARIANT_BOOL *pvarfCanAddSigLine /Out/) = 0;

        virtual HRESULT AddSignatureLine(
            VARIANT varSigProv = argMissing2(),
            Signature **ppidisp /Out/ = 0) = 0;

        virtual HRESULT get_Subset(
            MsoSignatureSubset *psubset /Out/) = 0;

        virtual HRESULT put_Subset(
            MsoSignatureSubset psubset) = 0;

        virtual HRESULT put_ShowSignaturesPane(
            VARIANT_BOOL rhs) = 0;

        int getCount();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_Count(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Count()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Count, get=getCount)

        VARIANT_BOOL getCanAddSignatureLine();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_CanAddSignatureLine(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CanAddSignatureLine()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CanAddSignatureLine, get=getCanAddSignatureLine)

        MsoSignatureSubset getSubset();
        %MethodCode
            ksoapi::MsoSignatureSubset prop = (ksoapi::MsoSignatureSubset)0;
            HRESULT hr = sipCpp->get_Subset(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Subset()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSubset(MsoSignatureSubset prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Subset(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Subset()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Subset, get=getSubset, set=setSubset)
    };
};
