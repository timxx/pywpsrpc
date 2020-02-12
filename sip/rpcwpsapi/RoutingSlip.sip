/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wpsapi
{
    struct RoutingSlip : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Subject(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Subject(
            BSTR prop) = 0;

        virtual HRESULT get_Message(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Message(
            BSTR prop) = 0;

        virtual HRESULT get_Delivery(
            WdRoutingSlipDelivery *prop /Out/) = 0;

        virtual HRESULT put_Delivery(
            WdRoutingSlipDelivery prop) = 0;

        virtual HRESULT get_TrackStatus(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_TrackStatus(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Protect(
            WdProtectionType *prop /Out/) = 0;

        virtual HRESULT put_Protect(
            WdProtectionType prop) = 0;

        virtual HRESULT get_ReturnWhenDone(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ReturnWhenDone(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Status(
            WdRoutingSlipStatus *prop /Out/) = 0;

        virtual HRESULT get_Recipients(
            VARIANT *Index = argMissing(),
            VARIANT *prop /Out/ = 0) = 0;

        virtual HRESULT Reset() = 0;

        virtual HRESULT AddRecipient(
            BSTR Recipient) = 0;
    };
};