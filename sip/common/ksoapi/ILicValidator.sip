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
    struct ILicValidator : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Products(
            VARIANT *pVariant /Out/) = 0;

        virtual HRESULT get_Selection(
            int *piSel /Out/) = 0;

        virtual HRESULT put_Selection(
            int piSel) = 0;

    };
};
