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
    struct TabStop : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Alignment(
            WdTabAlignment *prop /Out/) = 0;

        virtual HRESULT put_Alignment(
            WdTabAlignment prop) = 0;

        virtual HRESULT get_Leader(
            WdTabLeader *prop /Out/) = 0;

        virtual HRESULT put_Leader(
            WdTabLeader prop) = 0;

        virtual HRESULT get_Position(
            single *prop /Out/) = 0;

        virtual HRESULT put_Position(
            single prop) = 0;

        virtual HRESULT get_CustomTab(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_Next(
            TabStop **prop /Out/) = 0;

        virtual HRESULT get_Previous(
            TabStop **prop /Out/) = 0;

        virtual HRESULT Clear() = 0;

    };
};
