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
    struct ServerPolicy : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Item(
            VARIANT Index,
            PolicyItem **pppi /Out/) = 0;

        virtual HRESULT get_Id(
            BSTR *pbstrID /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *pbstrName /Out/) = 0;

        virtual HRESULT get_Description(
            BSTR *pbstrDescription /Out/) = 0;

        virtual HRESULT get_Statement(
            BSTR *pbstrStatement /Out/) = 0;

        virtual HRESULT get_Count(
            long *pc /Out/) = 0;

        virtual HRESULT get_BlockPreview(
            VARIANT_BOOL *pfBlockPreview /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **ppidisp /Out/) = 0;

    };
};
