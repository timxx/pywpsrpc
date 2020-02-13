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
    struct IAutoFilter : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Range(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_Filters(
            Filters **RHS /Out/) = 0;

        virtual HRESULT get_FilterMode(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_Sort(
            Sort **RHS /Out/) = 0;

        virtual HRESULT ApplyFilter() = 0;

        virtual HRESULT ShowAllData() = 0;

    };
};
