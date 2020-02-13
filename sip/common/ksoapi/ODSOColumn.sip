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
    struct ODSOColumn : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Index(
            long *plIndex /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *pbstrName /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **ppParent /Out/) = 0;

        virtual HRESULT get_Value(
            BSTR *pbstrValue /Out/) = 0;

    };
};
