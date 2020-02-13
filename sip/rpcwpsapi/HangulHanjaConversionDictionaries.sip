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
    struct HangulHanjaConversionDictionaries : public IDispatch /Abstract/
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

        virtual HRESULT get_Maximum(
            long *prop /Out/) = 0;

        virtual HRESULT get_ActiveCustomDictionary(
            Dictionary **prop /Out/) = 0;

        virtual HRESULT put_ActiveCustomDictionary(
            Dictionary *prop) = 0;

        virtual HRESULT get_BuiltinDictionary(
            Dictionary **prop /Out/) = 0;

        virtual HRESULT Item(
            VARIANT *Index,
            Dictionary **prop /Out/) = 0;

        virtual HRESULT Add(
            BSTR FileName,
            Dictionary **prop /Out/) = 0;

        virtual HRESULT ClearAll() = 0;

    };
};
