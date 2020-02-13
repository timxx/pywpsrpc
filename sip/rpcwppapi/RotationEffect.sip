/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wppapi
{
    struct RotationEffect : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_By(
            single *By /Out/) = 0;

        virtual HRESULT put_By(
            single By) = 0;

        virtual HRESULT get_From(
            single *From /Out/) = 0;

        virtual HRESULT put_From(
            single From) = 0;

        virtual HRESULT get_To(
            single *To /Out/) = 0;

        virtual HRESULT put_To(
            single To) = 0;

    };
};
