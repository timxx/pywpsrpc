/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace etapi
{
    struct IResearch : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT Query(
            BSTR ServiceID,
            VARIANT QueryString = argMissing2(),
            VARIANT QueryLanguage = argMissing2(),
            VARIANT UseSelection = argMissing2(),
            VARIANT LaunchQuery = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT IsResearchService(
            BSTR ServiceID,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT SetLanguagePair(
            long LanguageFrom,
            long LanguageTo,
            VARIANT *RHS /Out/) = 0;

    };
};
