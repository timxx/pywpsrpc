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
    struct IAccessible : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_accParent(
            IDispatch **ppdispParent /Out/) = 0;

        virtual HRESULT get_accChildCount(
            long *pcountChildren /Out/) = 0;

        virtual HRESULT get_accChild(
            VARIANT varChild,
            IDispatch **ppdispChild /Out/) = 0;

        virtual HRESULT get_accName(
            VARIANT varChild,
            BSTR *pszName /Out/) = 0;

        virtual HRESULT get_accValue(
            VARIANT varChild,
            BSTR *pszValue /Out/) = 0;

        virtual HRESULT get_accDescription(
            VARIANT varChild,
            BSTR *pszDescription /Out/) = 0;

        virtual HRESULT get_accRole(
            VARIANT varChild,
            VARIANT *pvarRole /Out/) = 0;

        virtual HRESULT get_accState(
            VARIANT varChild,
            VARIANT *pvarState /Out/) = 0;

        virtual HRESULT get_accHelp(
            VARIANT varChild,
            BSTR *pszHelp /Out/) = 0;

        virtual HRESULT get_accHelpTopic(
            BSTR *pszHelpFile /Out/,
            VARIANT varChild,
            long *pidTopic /Out/) = 0;

        virtual HRESULT get_accKeyboardShortcut(
            VARIANT varChild,
            BSTR *pszKeyboardShortcut /Out/) = 0;

        virtual HRESULT get_accFocus(
            VARIANT *pvarChild /Out/) = 0;

        virtual HRESULT get_accSelection(
            VARIANT *pvarChildren /Out/) = 0;

        virtual HRESULT get_accDefaultAction(
            VARIANT varChild,
            BSTR *pszDefaultAction /Out/) = 0;

        virtual HRESULT accSelect(
            long flagsSelect,
            VARIANT varChild) = 0;

        virtual HRESULT accLocation(
            long *pxLeft /Out/,
            long *pyTop /Out/,
            long *pcxWidth /Out/,
            long *pcyHeight /Out/,
            VARIANT varChild) = 0;

        virtual HRESULT accNavigate(
            long navDir,
            VARIANT varStart,
            VARIANT *pvarEndUpAt /Out/) = 0;

        virtual HRESULT accHitTest(
            long xLeft,
            long yTop,
            VARIANT *pvarChild /Out/) = 0;

        virtual HRESULT accDoDefaultAction(
            VARIANT varChild) = 0;

        virtual HRESULT put_accName(
            VARIANT varChild,
            BSTR pszName) = 0;

        virtual HRESULT put_accValue(
            VARIANT varChild,
            BSTR pszValue) = 0;

    };
};
