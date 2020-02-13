/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wppapi
{
    struct CategoryCollection : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Count(
            long *cCategory /Out/) = 0;

        virtual HRESULT Item(
            VARIANT Index,
            ChartCategory **ppcategory /Out/) = 0;

        virtual HRESULT get_Application(
            Application **ppval /Out/) = 0;

        virtual HRESULT get_Creator(
            long *pval /Out/) = 0;

        virtual HRESULT _Default(
            VARIANT Index,
            ChartCategory **RHS /Out/) = 0;

    };
};
