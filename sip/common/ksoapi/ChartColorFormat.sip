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
    struct ChartColorFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT  get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT  get_SchemeColor(
            long *RHS /Out/) = 0;

        virtual HRESULT  put_SchemeColor(
            long RHS) = 0;

        virtual HRESULT  get_RGB(
            long *RHS /Out/) = 0;

        virtual HRESULT  put_RGB(
            long RHS) = 0;

        virtual HRESULT  get__Default(
            long *RHS /Out/) = 0;

        virtual HRESULT  get_Type(
            long *RHS /Out/) = 0;

        virtual HRESULT  get_Application(
            IDispatch **ppval /Out/) = 0;

        virtual HRESULT  get_Creator(
            long *pval /Out/) = 0;

    };
};
