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
    struct InlineShapes : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        int __len__() const;
        %MethodCode
            long count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT Item(
            long Index,
            InlineShape **prop /Out/) = 0;

        InlineShape* __getitem__(long index) const;
        %MethodCode
            wpsapi::InlineShape *prop = nullptr;
            if (sipCpp->Item(a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT AddPicture(
            BSTR FileName,
            VARIANT *LinkToFile = argMissing(),
            VARIANT *SaveWithDocument = argMissing(),
            VARIANT *Range = argMissing(),
            InlineShape **prop /Out/ = 0) = 0;

        virtual HRESULT AddOLEObject(
            VARIANT *ClassType = argMissing(),
            VARIANT *FileName = argMissing(),
            VARIANT *LinkToFile = argMissing(),
            VARIANT *DisplayAsIcon = argMissing(),
            VARIANT *IconFileName = argMissing(),
            VARIANT *IconIndex = argMissing(),
            VARIANT *IconLabel = argMissing(),
            VARIANT *Range = argMissing(),
            InlineShape **prop /Out/ = 0) = 0;

        virtual HRESULT AddOLEControl(
            VARIANT *ClassType = argMissing(),
            VARIANT *Range = argMissing(),
            InlineShape **prop /Out/ = 0) = 0;

        virtual HRESULT New(
            Range *Range,
            InlineShape **prop /Out/) = 0;

        virtual HRESULT AddHorizontalLine(
            BSTR FileName,
            VARIANT *Range = argMissing(),
            InlineShape **prop /Out/ = 0) = 0;

        virtual HRESULT AddHorizontalLineStandard(
            VARIANT *Range = argMissing(),
            InlineShape **prop /Out/ = 0) = 0;

        virtual HRESULT AddPictureBullet(
            BSTR FileName,
            VARIANT *Range = argMissing(),
            InlineShape **prop /Out/ = 0) = 0;

        virtual HRESULT AddChart(
            XlChartType Type = wpsapi::xlSuggestedChart,
            VARIANT *Range = argMissing(),
            InlineShape **prop /Out/ = 0) = 0;

        virtual HRESULT AddSmartArt(
            ksoapi::SmartArtLayout *Layout,
            VARIANT *Range = argMissing(),
            InlineShape **prop /Out/ = 0) = 0;

        virtual HRESULT AddWebVideo(
            BSTR EmbedCode,
            VARIANT *VideoWidth,
            VARIANT *VideoHeight,
            VARIANT *PosterFrameImage = argMissing(),
            VARIANT *Url = argMissing(),
            VARIANT *Range = argMissing(),
            InlineShape **prop /Out/ = 0) = 0;

        virtual HRESULT AddChart2(
            long Style = 0,
            XlChartType Type = wpsapi::xlSuggestedChart,
            VARIANT *Range = argMissing(),
            VARIANT *NewLayout = argMissing(),
            InlineShape **prop /Out/ = 0) = 0;

        Application* getApplication();
        %MethodCode
            wpsapi::Application *prop = nullptr;
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
