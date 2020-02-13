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
    struct CustomXMLValidationErrors : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **ppdispParent /Out/) = 0;

        virtual HRESULT get_Count(
            long *plCount /Out/) = 0;

        virtual HRESULT get_Item(
            long Index,
            CustomXMLValidationError **ppError /Out/) = 0;

        virtual HRESULT Add(
            CustomXMLNode *Node,
            BSTR ErrorName,
            BSTR ErrorText = 0,
            VARIANT_BOOL ClearedOnUpdate = -1) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **ppunkEnum /Out/) = 0;

    };
};
