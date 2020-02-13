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
    struct OLEFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_ObjectVerbs(
            ObjectVerbs **ObjectVerbs /Out/) = 0;

        virtual HRESULT get_Object(
            IDispatch **Object /Out/) = 0;

        virtual HRESULT get_ProgID(
            BSTR *ProgID /Out/) = 0;

        virtual HRESULT get_FollowColors(
            PpFollowColors *FollowColors /Out/) = 0;

        virtual HRESULT put_FollowColors(
            PpFollowColors FollowColors) = 0;

        virtual HRESULT DoVerb(
            int Index = 0) = 0;

        virtual HRESULT Activate() = 0;

    };
};
