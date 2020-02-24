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

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT Item(
            long Index,
            InlineShape **prop /Out/) = 0;

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

    };
};
