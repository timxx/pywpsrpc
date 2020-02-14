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
    struct IRoutingSlip : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Delivery(
            XlRoutingSlipDelivery *RHS /Out/) = 0;

        virtual HRESULT put_Delivery(
            XlRoutingSlipDelivery RHS) = 0;

        virtual HRESULT get_Message(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Message(
            VARIANT RHS) = 0;

        virtual HRESULT get_Recipients(
            VARIANT Index = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT put_Recipients(
            VARIANT Index = argMissing2(),
            VARIANT RHS = argMissing2()) = 0;

        virtual HRESULT Reset(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_ReturnWhenDone(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ReturnWhenDone(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Status(
            XlRoutingSlipStatus *RHS /Out/) = 0;

        virtual HRESULT get_Subject(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Subject(
            VARIANT RHS) = 0;

        virtual HRESULT get_TrackStatus(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_TrackStatus(
            VARIANT_BOOL RHS) = 0;

    };
};
