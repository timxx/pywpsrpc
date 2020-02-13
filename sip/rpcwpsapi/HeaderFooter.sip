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
    struct HeaderFooter : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT get_Index(
            WdHeaderFooterIndex *prop /Out/) = 0;

        virtual HRESULT get_IsHeader(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_Exists(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Exists(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_PageNumbers(
            PageNumbers **prop /Out/) = 0;

        virtual HRESULT get_LinkToPrevious(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_LinkToPrevious(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Shapes(
            Shapes **prop /Out/) = 0;

    };
};
