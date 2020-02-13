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
    struct IPage : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_LeftHeader(
            HeaderFooter **RHS /Out/) = 0;

        virtual HRESULT get_CenterHeader(
            HeaderFooter **RHS /Out/) = 0;

        virtual HRESULT get_RightHeader(
            HeaderFooter **RHS /Out/) = 0;

        virtual HRESULT get_LeftFooter(
            HeaderFooter **RHS /Out/) = 0;

        virtual HRESULT get_CenterFooter(
            HeaderFooter **RHS /Out/) = 0;

        virtual HRESULT get_RightFooter(
            HeaderFooter **RHS /Out/) = 0;

    };
};
