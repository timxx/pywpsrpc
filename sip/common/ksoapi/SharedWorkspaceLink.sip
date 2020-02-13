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
    struct SharedWorkspaceLink : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_URL(
            BSTR *URL /Out/) = 0;

        virtual HRESULT put_URL(
            BSTR URL) = 0;

        virtual HRESULT get_Description(
            BSTR *Description /Out/) = 0;

        virtual HRESULT put_Description(
            BSTR Description) = 0;

        virtual HRESULT get_Notes(
            BSTR *Notes /Out/) = 0;

        virtual HRESULT put_Notes(
            BSTR Notes) = 0;

        virtual HRESULT get_CreatedBy(
            BSTR *CreatedBy /Out/) = 0;

        virtual HRESULT get_CreatedDate(
            VARIANT *CreatedDate /Out/) = 0;

        virtual HRESULT get_ModifiedBy(
            BSTR *ModifiedBy /Out/) = 0;

        virtual HRESULT get_ModifiedDate(
            VARIANT *ModifiedDate /Out/) = 0;

        virtual HRESULT Save() = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_Parent(
            IDispatch **ppidisp /Out/) = 0;

    };
};
