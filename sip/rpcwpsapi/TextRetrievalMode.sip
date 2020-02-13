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
    struct TextRetrievalMode : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_ViewType(
            WdViewType *prop /Out/) = 0;

        virtual HRESULT put_ViewType(
            WdViewType prop) = 0;

        virtual HRESULT get_Duplicate(
            TextRetrievalMode **prop /Out/) = 0;

        virtual HRESULT get_IncludeHiddenText(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_IncludeHiddenText(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_IncludeFieldCodes(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_IncludeFieldCodes(
            VARIANT_BOOL prop) = 0;

    };
};
