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
    struct IRibbonControl : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Id(
            BSTR *Id /Out/) = 0;

        virtual HRESULT get_Context(
            IDispatch **Context /Out/) = 0;

        virtual HRESULT get_Tag(
            BSTR *Tag /Out/) = 0;

    };
};
