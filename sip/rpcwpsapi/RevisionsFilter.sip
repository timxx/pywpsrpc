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
    struct RevisionsFilter : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_View(
            WdRevisionsView *prop /Out/) = 0;

        virtual HRESULT put_View(
            WdRevisionsView prop) = 0;

        virtual HRESULT get_Markup(
            WdRevisionsMarkup *prop /Out/) = 0;

        virtual HRESULT put_Markup(
            WdRevisionsMarkup prop) = 0;

        virtual HRESULT get_Reviewers(
            Reviewers **prop /Out/) = 0;

        virtual HRESULT ToggleShowAllReviewers() = 0;

    };
};
