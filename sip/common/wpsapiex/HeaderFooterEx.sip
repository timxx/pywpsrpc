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
    struct HeaderFooterEx : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_WaterMarks(
            WaterMarks **prop /Out/) = 0;

        WaterMarks* getWaterMarks();
        %MethodCode
            wpsapiex::WaterMarks *prop = nullptr;
            HRESULT hr = sipCpp->get_WaterMarks(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WaterMarks()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=WaterMarks, get=getWaterMarks)
    };
};
