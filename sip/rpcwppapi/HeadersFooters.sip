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
    struct HeadersFooters : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_DateAndTime(
            HeaderFooter **DateAndTime /Out/) = 0;

        virtual HRESULT get_SlideNumber(
            HeaderFooter **SlideNumber /Out/) = 0;

        virtual HRESULT get_Header(
            HeaderFooter **Header /Out/) = 0;

        virtual HRESULT get_Footer(
            HeaderFooter **Footer /Out/) = 0;

        virtual HRESULT get_DisplayOnTitleSlide(
            MsoTriState *DisplayOnTitleSlide /Out/) = 0;

        virtual HRESULT put_DisplayOnTitleSlide(
            MsoTriState DisplayOnTitleSlide) = 0;

        virtual HRESULT Clear() = 0;

    };
};
