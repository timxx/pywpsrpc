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
    struct IMsoEnvelopeVB : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Introduction(
            BSTR *pbstrIntro /Out/) = 0;

        virtual HRESULT put_Introduction(
            BSTR pbstrIntro) = 0;

        virtual HRESULT get_Item(
            IDispatch **ppdisp /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **ppdisp /Out/) = 0;

        virtual HRESULT get_CommandBars(
            IDispatch **ppdisp /Out/) = 0;

    };
};
