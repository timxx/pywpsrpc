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
    struct IMultiThreadedCalculation : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Enabled(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Enabled(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ThreadMode(
            XlThreadMode *RHS /Out/) = 0;

        virtual HRESULT put_ThreadMode(
            XlThreadMode RHS) = 0;

        virtual HRESULT get_ThreadCount(
            long *RHS /Out/) = 0;

        virtual HRESULT put_ThreadCount(
            long RHS) = 0;

    };
};
