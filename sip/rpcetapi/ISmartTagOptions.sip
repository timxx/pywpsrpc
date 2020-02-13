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
    struct ISmartTagOptions : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_DisplaySmartTags(
            XlSmartTagDisplayMode *RHS /Out/) = 0;

        virtual HRESULT put_DisplaySmartTags(
            XlSmartTagDisplayMode RHS) = 0;

        virtual HRESULT get_EmbedSmartTags(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EmbedSmartTags(
            VARIANT_BOOL RHS) = 0;

    };
};
