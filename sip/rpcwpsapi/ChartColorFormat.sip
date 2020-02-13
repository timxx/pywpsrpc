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
    struct ChartColorFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_SchemeColor(
            long *prop /Out/) = 0;

        virtual HRESULT put_SchemeColor(
            long prop) = 0;

        virtual HRESULT get_RGB(
            long *prop /Out/) = 0;

        virtual HRESULT get__Default(
            long *prop /Out/) = 0;

        virtual HRESULT get_Type(
            long *prop /Out/) = 0;

        virtual HRESULT get_Application(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

    };
};
