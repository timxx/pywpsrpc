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
    struct PropertyTest : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Name(
            BSTR *pbstrRetVal /Out/) = 0;

        virtual HRESULT get_Condition(
            MsoCondition *pConditionRetVal /Out/) = 0;

        virtual HRESULT get_Value(
            VARIANT *pvargRetVal /Out/) = 0;

        virtual HRESULT get_SecondValue(
            VARIANT *pvargRetVal2 /Out/) = 0;

        virtual HRESULT get_Connector(
            MsoConnector *pConnector /Out/) = 0;

    };
};
