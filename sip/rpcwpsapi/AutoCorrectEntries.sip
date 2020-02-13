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
    struct AutoCorrectEntries : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT Item(
            VARIANT *Index,
            AutoCorrectEntry **prop /Out/) = 0;

        virtual HRESULT Add(
            BSTR Name,
            BSTR Value,
            AutoCorrectEntry **prop /Out/) = 0;

        virtual HRESULT AddRichText(
            BSTR Name,
            Range *Range,
            AutoCorrectEntry **prop /Out/) = 0;

    };
};
