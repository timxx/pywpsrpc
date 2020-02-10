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
    struct WrapFormat : public IDispatch /Abstract/
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

        virtual HRESULT get_Type(
            WdWrapType *prop /Out/) = 0;

        virtual HRESULT put_Type(
            WdWrapType prop) = 0;

        virtual HRESULT get_Side(
            WdWrapSideType *prop /Out/) = 0;

        virtual HRESULT put_Side(
            WdWrapSideType prop) = 0;

        virtual HRESULT get_DistanceTop(
            single *prop /Out/) = 0;

        virtual HRESULT put_DistanceTop(
            single prop) = 0;

        virtual HRESULT get_DistanceBottom(
            single *prop /Out/) = 0;

        virtual HRESULT put_DistanceBottom(
            single prop) = 0;

        virtual HRESULT get_DistanceLeft(
            single *prop /Out/) = 0;

        virtual HRESULT put_DistanceLeft(
            single prop) = 0;

        virtual HRESULT get_DistanceRight(
            single *prop /Out/) = 0;

        virtual HRESULT put_DistanceRight(
            single prop) = 0;

        virtual HRESULT get_AllowOverlap(
            long *prop /Out/) = 0;

        virtual HRESULT put_AllowOverlap(
            long prop) = 0;
    };
};