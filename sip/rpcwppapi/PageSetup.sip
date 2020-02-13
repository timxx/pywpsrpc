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
    struct PageSetup : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_FirstSlideNumber(
            int *FirstSlideNumber /Out/) = 0;

        virtual HRESULT put_FirstSlideNumber(
            int FirstSlideNumber) = 0;

        virtual HRESULT get_SlideHeight(
            single *SlideHeight /Out/) = 0;

        virtual HRESULT put_SlideHeight(
            single SlideHeight) = 0;

        virtual HRESULT get_SlideWidth(
            single *SlideWidth /Out/) = 0;

        virtual HRESULT put_SlideWidth(
            single SlideWidth) = 0;

        virtual HRESULT get_SlideSize(
            PpSlideSizeType *SlideSize /Out/) = 0;

        virtual HRESULT put_SlideSize(
            PpSlideSizeType SlideSize) = 0;

        virtual HRESULT get_NotesOrientation(
            MsoOrientation *NotesOrientation /Out/) = 0;

        virtual HRESULT put_NotesOrientation(
            MsoOrientation NotesOrientation) = 0;

        virtual HRESULT get_SlideOrientation(
            MsoOrientation *SlideOrientation /Out/) = 0;

        virtual HRESULT put_SlideOrientation(
            MsoOrientation SlideOrientation) = 0;

    };
};
