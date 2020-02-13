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
    struct ChartBorder : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Color(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Color(
            VARIANT prop) = 0;

        virtual HRESULT get_ColorIndex(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_ColorIndex(
            VARIANT prop) = 0;

        virtual HRESULT get_LineStyle(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_LineStyle(
            VARIANT prop) = 0;

        virtual HRESULT get_Weight(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_Weight(
            VARIANT prop) = 0;

        virtual HRESULT get_Application(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

    };
};
