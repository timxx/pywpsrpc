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
    struct IRibbonExtensibility : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT GetCustomUI(
            BSTR RibbonID,
            BSTR *RibbonXml /Out/) = 0;

    };
};
