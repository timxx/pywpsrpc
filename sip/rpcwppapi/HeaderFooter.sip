/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wppapi
{
    struct HeaderFooter : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Visible(
            MsoTriState *Visible /Out/) = 0;

        virtual HRESULT put_Visible(
            MsoTriState Visible) = 0;

        virtual HRESULT get_Text(
            BSTR *Text /Out/) = 0;

        virtual HRESULT put_Text(
            BSTR Text) = 0;

        virtual HRESULT get_UseFormat(
            MsoTriState *UseFormat /Out/) = 0;

        virtual HRESULT put_UseFormat(
            MsoTriState UseFormat) = 0;

        virtual HRESULT get_Format(
            PpDateTimeFormat *Format /Out/) = 0;

        virtual HRESULT put_Format(
            PpDateTimeFormat Format) = 0;

    };
};
