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
    struct PropertyTests : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Item(
            int Index,
            long lcid,
            PropertyTest **ppIDocProp /Out/) = 0;

        virtual HRESULT get_Count(
            long *pc /Out/) = 0;

        virtual HRESULT Add(
            BSTR Name,
            MsoCondition Condition,
            VARIANT Value,
            VARIANT SecondValue,
            MsoConnector Connector = ksoapi::msoConnectorAnd) = 0;

        virtual HRESULT Remove(
            int Index) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **ppunkEnum /Out/) = 0;

    };
};
