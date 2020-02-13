/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wpsapi
{
    struct CoAuthoring : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Authors(
            CoAuthors **prop /Out/) = 0;

        virtual HRESULT get_Me(
            CoAuthor **prop /Out/) = 0;

        virtual HRESULT get_PendingUpdates(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_Locks(
            CoAuthLocks **prop /Out/) = 0;

        virtual HRESULT get_Updates(
            CoAuthUpdates **prop /Out/) = 0;

        virtual HRESULT get_Conflicts(
            Conflicts **prop /Out/) = 0;

        virtual HRESULT get_CanShare(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_CanMerge(
            VARIANT_BOOL *prop /Out/) = 0;

    };
};
