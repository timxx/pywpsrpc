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
    struct TreeviewControl : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Hidden(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Hidden(
            VARIANT RHS) = 0;

        virtual HRESULT get_Drilled(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Drilled(
            VARIANT RHS) = 0;

    };
};
