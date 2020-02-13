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
    struct SharedWorkspaceFile : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_URL(
            BSTR *pbstrFilename /Out/) = 0;

        virtual HRESULT get_CreatedBy(
            BSTR *pbstrCreatedBy /Out/) = 0;

        virtual HRESULT get_CreatedDate(
            VARIANT *CreatedDate /Out/) = 0;

        virtual HRESULT get_ModifiedBy(
            BSTR *pbstrModifiedBy /Out/) = 0;

        virtual HRESULT get_ModifiedDate(
            VARIANT *ModifiedDate /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_Parent(
            IDispatch **ppidisp /Out/) = 0;

    };
};
