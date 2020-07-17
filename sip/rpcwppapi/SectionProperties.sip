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

        virtual HRESULT get_Count(
            long *Count /Out/) = 0;

        int __len__() const;
        %MethodCode
            long count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

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

        Application* getApplication();
        %MethodCode
            wppapi::Application *prop = nullptr;
            HRESULT hr = sipCpp->get_Application(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Application()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Application, get=getApplication)

        long getCount();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Count(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Count()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Count, get=getCount)
    };
};
