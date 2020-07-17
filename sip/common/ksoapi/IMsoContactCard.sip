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

        BSTR getAddress();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Address(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Address()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Address, get=getAddress)

        MsoContactCardAddressType getAddressType();
        %MethodCode
            ksoapi::MsoContactCardAddressType prop = (ksoapi::MsoContactCardAddressType)0;
            HRESULT hr = sipCpp->get_AddressType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AddressType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AddressType, get=getAddressType)

        MsoContactCardType getCardType();
        %MethodCode
            ksoapi::MsoContactCardType prop = (ksoapi::MsoContactCardType)0;
            HRESULT hr = sipCpp->get_CardType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CardType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CardType, get=getCardType)
    };
};
