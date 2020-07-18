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
    struct MsoDebugOptions_UTs : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Item(
            int Index,
            MsoDebugOptions_UT **ppUnitTest /Out/) = 0;

        MsoDebugOptions_UT* __getitem__(int index) const;
        %MethodCode
            ksoapi::MsoDebugOptions_UT *prop = nullptr;
            if (sipCpp->get_Item(a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT get_Count(
            int *iCountRetVal /Out/) = 0;

        int __len__() const;
        %MethodCode
            int count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT GetUnitTestsInCollection(
            BSTR bstrCollectionName,
            MsoDebugOptions_UTs **MsoDebugOptions_UTs /Out/) = 0;

        virtual HRESULT GetUnitTest(
            BSTR bstrCollectionName,
            BSTR bstrUnitTestName,
            MsoDebugOptions_UT **MsoDebugOptions_UT /Out/) = 0;

        virtual HRESULT GetMatchingUnitTestsInCollection(
            BSTR bstrCollectionName,
            BSTR bstrUnitTestNameFilter,
            MsoDebugOptions_UTs **MsoDebugOptions_UTs /Out/) = 0;

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

    };
};
