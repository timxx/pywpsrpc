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
    struct IMsoContactCard : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Address(
            BSTR *pAddress /Out/) = 0;

        virtual HRESULT get_AddressType(
            MsoContactCardAddressType *pAddressType /Out/) = 0;

        virtual HRESULT get_CardType(
            MsoContactCardType *pCardType /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **ppdispParent /Out/) = 0;

    };
};
