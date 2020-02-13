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
    struct RulerLevel2 : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_FirstMargin(
            single *FirstMargin /Out/) = 0;

        virtual HRESULT put_FirstMargin(
            single FirstMargin) = 0;

        virtual HRESULT get_LeftMargin(
            single *LeftMargin /Out/) = 0;

        virtual HRESULT put_LeftMargin(
            single LeftMargin) = 0;

    };
};
