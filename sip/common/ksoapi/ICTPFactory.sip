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
    struct ICTPFactory : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT CreateCTP(
            BSTR CTPAxID,
            BSTR CTPTitle,
            VARIANT CTPParentWindow = argMissing2(),
            _CustomTaskPane **CTPInst /Out/ = 0) = 0;

    };
};
