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
    struct PictureFormatEx : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_PictureID(
            BSTR *Md4 /Out/) = 0;

        BSTR getPictureID();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_PictureID(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PictureID()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PictureID, get=getPictureID)
    };
};
