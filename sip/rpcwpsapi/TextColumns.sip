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
    struct TextColumns : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_EvenlySpaced(
            long *prop /Out/) = 0;

        virtual HRESULT put_EvenlySpaced(
            long prop) = 0;

        virtual HRESULT get_LineBetween(
            long *prop /Out/) = 0;

        virtual HRESULT put_LineBetween(
            long prop) = 0;

        virtual HRESULT get_Width(
            single *prop /Out/) = 0;

        virtual HRESULT put_Width(
            single prop) = 0;

        virtual HRESULT get_Spacing(
            single *prop /Out/) = 0;

        virtual HRESULT put_Spacing(
            single prop) = 0;

        virtual HRESULT Item(
            long Index,
            TextColumn **prop /Out/) = 0;

        virtual HRESULT Add(
            VARIANT *Width = argMissing(),
            VARIANT *Spacing = argMissing(),
            VARIANT *EvenlySpaced = argMissing(),
            TextColumn **prop /Out/ = 0) = 0;

        virtual HRESULT SetCount(
            long NumColumns) = 0;

        virtual HRESULT get_FlowDirection(
            WdFlowDirection *prop /Out/) = 0;

        virtual HRESULT put_FlowDirection(
            WdFlowDirection prop) = 0;
    };

    struct TextColumn : public IDispatch /Abstract/
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

        virtual HRESULT get_Width(
            single *prop /Out/) = 0;

        virtual HRESULT put_Width(
            single prop) = 0;

        virtual HRESULT get_SpaceAfter(
            single *prop /Out/) = 0;

        virtual HRESULT put_SpaceAfter(
            single prop) = 0;
    };
};