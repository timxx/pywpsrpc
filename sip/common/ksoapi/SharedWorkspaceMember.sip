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
    struct SharedWorkspaceMember : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_DomainName(
            BSTR *pbstrDomainName /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *pbstrName /Out/) = 0;

        virtual HRESULT get_Email(
            BSTR *pbstrEmail /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_Id(
            BSTR *Id /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **ppidisp /Out/) = 0;

    };
};
