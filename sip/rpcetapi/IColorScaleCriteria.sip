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
    struct IColorScaleCriteria : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Count(
            long *RHS /Out/) = 0;

        virtual HRESULT get__Default(
            VARIANT Index,
            ColorScaleCriterion **RHS /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **RHS /Out/) = 0;

        virtual HRESULT get_Item(
            VARIANT Index,
            ColorScaleCriterion **RHS /Out/) = 0;

    };
};
