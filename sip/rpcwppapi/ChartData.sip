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
    struct ChartData : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Workbook(
            IDispatch **ppdispWorkbook /Out/) = 0;

        virtual HRESULT Activate() = 0;

        virtual HRESULT get_IsLinked(
            VARIANT_BOOL *pfIsLinked /Out/) = 0;

        virtual HRESULT BreakLink() = 0;

        virtual HRESULT ActivateChartDataWindow() = 0;

        IDispatch* getWorkbook();
        %MethodCode
            IDispatch *prop = nullptr;
            HRESULT hr = sipCpp->get_Workbook(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Workbook()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Workbook, get=getWorkbook)

        VARIANT_BOOL getIsLinked();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IsLinked(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IsLinked()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=IsLinked, get=getIsLinked)
    };
};
