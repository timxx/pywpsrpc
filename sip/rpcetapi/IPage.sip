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
    struct IPage : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_LeftHeader(
            HeaderFooter **RHS /Out/) = 0;

        virtual HRESULT get_CenterHeader(
            HeaderFooter **RHS /Out/) = 0;

        virtual HRESULT get_RightHeader(
            HeaderFooter **RHS /Out/) = 0;

        virtual HRESULT get_LeftFooter(
            HeaderFooter **RHS /Out/) = 0;

        virtual HRESULT get_CenterFooter(
            HeaderFooter **RHS /Out/) = 0;

        virtual HRESULT get_RightFooter(
            HeaderFooter **RHS /Out/) = 0;

        HeaderFooter* getLeftHeader();
        %MethodCode
            etapi::HeaderFooter *prop = nullptr;
            HRESULT hr = sipCpp->get_LeftHeader(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LeftHeader()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=LeftHeader, get=getLeftHeader)

        HeaderFooter* getCenterHeader();
        %MethodCode
            etapi::HeaderFooter *prop = nullptr;
            HRESULT hr = sipCpp->get_CenterHeader(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CenterHeader()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CenterHeader, get=getCenterHeader)

        HeaderFooter* getRightHeader();
        %MethodCode
            etapi::HeaderFooter *prop = nullptr;
            HRESULT hr = sipCpp->get_RightHeader(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RightHeader()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=RightHeader, get=getRightHeader)

        HeaderFooter* getLeftFooter();
        %MethodCode
            etapi::HeaderFooter *prop = nullptr;
            HRESULT hr = sipCpp->get_LeftFooter(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LeftFooter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=LeftFooter, get=getLeftFooter)

        HeaderFooter* getCenterFooter();
        %MethodCode
            etapi::HeaderFooter *prop = nullptr;
            HRESULT hr = sipCpp->get_CenterFooter(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CenterFooter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CenterFooter, get=getCenterFooter)

        HeaderFooter* getRightFooter();
        %MethodCode
            etapi::HeaderFooter *prop = nullptr;
            HRESULT hr = sipCpp->get_RightFooter(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RightFooter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=RightFooter, get=getRightFooter)
    };
};
