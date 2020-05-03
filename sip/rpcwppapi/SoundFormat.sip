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
    struct SoundFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT Play() = 0;

        virtual HRESULT Import(
            BSTR FileName) = 0;

        virtual HRESULT Export(
            BSTR FileName,
            PpSoundFormatType *Export /Out/) = 0;

        virtual HRESULT get_Type(
            PpSoundFormatType *Type /Out/) = 0;

        virtual HRESULT get_SourceFullName(
            BSTR *SourceFullName /Out/) = 0;

        PpSoundFormatType getType();
        %MethodCode
            wppapi::PpSoundFormatType prop = (wppapi::PpSoundFormatType)0;
            HRESULT hr = sipCpp->get_Type(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Type()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Type, get=getType)

        BSTR getSourceFullName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_SourceFullName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SourceFullName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SourceFullName, get=getSourceFullName)
    };
};
