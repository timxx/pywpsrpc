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
    struct DocumentLibraryVersion : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Modified(
            VARIANT *pvarDate /Out/) = 0;

        virtual HRESULT get_Index(
            long *lIndex /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **ppidisp /Out/) = 0;

        virtual HRESULT get_ModifiedBy(
            BSTR *userName /Out/) = 0;

        virtual HRESULT get_Comments(
            BSTR *Comments /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Open(
            IDispatch **ppdispOpened /Out/) = 0;

        virtual HRESULT Restore(
            IDispatch **ppdispOpened /Out/) = 0;

    };
};
