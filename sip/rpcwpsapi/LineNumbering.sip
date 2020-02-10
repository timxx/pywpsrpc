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
    struct LineNumbering : public IDispatch /Abstract/
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

        virtual HRESULT get_RestartMode(
            WdNumberingRule *prop /Out/) = 0;

        virtual HRESULT put_RestartMode(
            WdNumberingRule prop) = 0;

        virtual HRESULT get_StartingNumber(
            long *prop /Out/) = 0;

        virtual HRESULT put_StartingNumber(
            long prop) = 0;

        virtual HRESULT get_DistanceFromText(
            single *prop /Out/) = 0;

        virtual HRESULT put_DistanceFromText(
            single prop) = 0;

        virtual HRESULT get_CountBy(
            long *prop /Out/) = 0;

        virtual HRESULT put_CountBy(
            long prop) = 0;

        virtual HRESULT get_Active(
            long *prop /Out/) = 0;

        virtual HRESULT put_Active(
            long prop) = 0;

    };
};