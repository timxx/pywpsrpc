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
    struct Slides : public wppapi::Collection /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT Item(
            VARIANT Index,
            Slide **Item /Out/) = 0;

        virtual HRESULT FindBySlideID(
            long SlideID,
            Slide **FindBySlideID /Out/) = 0;

        virtual HRESULT Add(
            int Index,
            PpSlideLayout Layout,
            Slide **Add /Out/) = 0;

        virtual HRESULT InsertFromFile(
            BSTR FileName,
            int Index,
            int SlideStart = 0,
            int SlideEnd = 0,
            int *FromFile /Out/ = 0) = 0;

        virtual HRESULT Range(
            VARIANT Index = argMissing2(),
            SlideRange **Range /Out/ = 0) = 0;

        virtual HRESULT Paste(
            int Index = 0,
            SlideRange **Paste /Out/ = 0) = 0;

        virtual HRESULT AddSlide(
            int Index,
            CustomLayout *pCustomLayout,
            Slide **Slide /Out/) = 0;

    };
};
