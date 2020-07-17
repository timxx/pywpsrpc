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
    struct DocumentLibraryVersion : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Modified(
            VARIANT *pvarDate /Out/) = 0;

        virtual HRESULT get_Index(
            long *lIndex /Out/) = 0;

        virtual HRESULT get_ModifiedBy(
            BSTR *userName /Out/) = 0;

        virtual HRESULT get_Comments(
            BSTR *Comments /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Open(
            IDispatch **ppdispOpened /Out/) = 0;

        virtual HRESULT Restore(
            IDispatch **ppdispOpened /Out/) = 0;

        VARIANT getModified();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Modified(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Modified()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Modified, get=getModified)

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

        BSTR getModifiedBy();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ModifiedBy(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ModifiedBy()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ModifiedBy, get=getModifiedBy)

        BSTR getComments();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Comments(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Comments()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Comments, get=getComments)
    };
};
