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
    struct IAssistance : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT ShowHelp(
            BSTR HelpId = 0,
            BSTR Scope = 0) = 0;

        virtual HRESULT SearchHelp(
            BSTR Query,
            BSTR Scope = 0) = 0;

        virtual HRESULT SetDefaultContext(
            BSTR HelpId) = 0;

        virtual HRESULT ClearDefaultContext(
            BSTR HelpId) = 0;

    };
};
