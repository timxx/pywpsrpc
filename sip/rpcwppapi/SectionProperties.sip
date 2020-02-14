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
    struct SectionProperties : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Count(
            long *Count /Out/) = 0;

        virtual HRESULT Name(
            int sectionIndex,
            BSTR *Name /Out/) = 0;

        virtual HRESULT Rename(
            int sectionIndex,
            BSTR sectionName) = 0;

        virtual HRESULT SlidesCount(
            int sectionIndex,
            long *SlidesCount /Out/) = 0;

        virtual HRESULT FirstSlide(
            int sectionIndex,
            int *FirstSlide /Out/) = 0;

        virtual HRESULT AddBeforeSlide(
            int SlideIndex,
            BSTR sectionName,
            int *BeforeSlide /Out/) = 0;

        virtual HRESULT AddSection(
            int sectionIndex,
            VARIANT sectionName = argMissing2(),
            int *Section /Out/ = 0) = 0;

        virtual HRESULT Move(
            int sectionIndex,
            int toPos) = 0;

        virtual HRESULT Delete(
            int sectionIndex,
            VARIANT_BOOL deleteSlides) = 0;

        virtual HRESULT SectionID(
            int sectionIndex,
            BSTR *SectionID /Out/) = 0;

    };
};
