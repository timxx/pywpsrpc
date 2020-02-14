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
            VARIANT varChild = argMissing2(),
            BSTR *pszName /Out/ = 0) = 0;

        virtual HRESULT get_accValue(
            VARIANT varChild = argMissing2(),
            BSTR *pszValue /Out/ = 0) = 0;

        virtual HRESULT get_accDescription(
            VARIANT varChild = argMissing2(),
            BSTR *pszDescription /Out/ = 0) = 0;

        virtual HRESULT get_accRole(
            VARIANT varChild = argMissing2(),
            VARIANT *pvarRole /Out/ = 0) = 0;

        virtual HRESULT get_accState(
            VARIANT varChild = argMissing2(),
            VARIANT *pvarState /Out/ = 0) = 0;

        virtual HRESULT get_accHelp(
            VARIANT varChild = argMissing2(),
            BSTR *pszHelp /Out/ = 0) = 0;

        virtual HRESULT get_accHelpTopic(
            BSTR *pszHelpFile /Out/,
            VARIANT varChild = argMissing2(),
            long *pidTopic /Out/ = 0) = 0;

        virtual HRESULT get_accKeyboardShortcut(
            VARIANT varChild = argMissing2(),
            BSTR *pszKeyboardShortcut /Out/ = 0) = 0;

        virtual HRESULT get_accFocus(
            VARIANT *pvarChild /Out/) = 0;

        virtual HRESULT get_accSelection(
            VARIANT *pvarChildren /Out/) = 0;

        virtual HRESULT get_accDefaultAction(
            VARIANT varChild = argMissing2(),
            BSTR *pszDefaultAction /Out/ = 0) = 0;

        virtual HRESULT accSelect(
            long flagsSelect,
            VARIANT varChild = argMissing2()) = 0;

        virtual HRESULT accLocation(
            long *pxLeft /Out/,
            long *pyTop /Out/,
            long *pcxWidth /Out/,
            long *pcyHeight /Out/,
            VARIANT varChild = argMissing2()) = 0;

        virtual HRESULT accNavigate(
            long navDir,
            VARIANT varStart = argMissing2(),
            VARIANT *pvarEndUpAt /Out/ = 0) = 0;

        virtual HRESULT accHitTest(
            long xLeft,
            long yTop,
            VARIANT *pvarChild /Out/) = 0;

        virtual HRESULT accDoDefaultAction(
            VARIANT varChild = argMissing2()) = 0;

        virtual HRESULT put_accName(
            VARIANT varChild = argMissing2(),
            BSTR pszName = 0) = 0;

        virtual HRESULT put_accValue(
            VARIANT varChild = argMissing2(),
            BSTR pszValue = 0) = 0;

    };
};
