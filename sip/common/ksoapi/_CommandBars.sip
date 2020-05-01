/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace ksoapi
{
    struct _CommandBars : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_ActionControl(
            CommandBarControl **ppcbc /Out/) = 0;

        virtual HRESULT get_ActiveMenuBar(
            CommandBar **ppcb /Out/) = 0;

        virtual HRESULT Add(
            VARIANT Name = argMissing2(),
            VARIANT Position = argMissing2(),
            VARIANT MenuBar = argMissing2(),
            VARIANT Temporary = argMissing2(),
            CommandBar **ppcb /Out/ = 0) = 0;

        virtual HRESULT get_Count(
            int *pcToolbars /Out/) = 0;

        int __len__() const;
        %MethodCode
            int count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT get_DisplayTooltips(
            VARIANT_BOOL *pvarfDisplayTooltips /Out/) = 0;

        virtual HRESULT put_DisplayTooltips(
            VARIANT_BOOL pvarfDisplayTooltips) = 0;

        virtual HRESULT get_DisplayKeysInTooltips(
            VARIANT_BOOL *pvarfDisplayKeys /Out/) = 0;

        virtual HRESULT put_DisplayKeysInTooltips(
            VARIANT_BOOL pvarfDisplayKeys) = 0;

        virtual HRESULT FindControl(
            VARIANT Type = argMissing2(),
            VARIANT Id = argMissing2(),
            VARIANT Tag = argMissing2(),
            VARIANT Visible = argMissing2(),
            CommandBarControl **ppcbc /Out/ = 0) = 0;

        virtual HRESULT get_Item(
            VARIANT Index,
            CommandBar **ppcb /Out/) = 0;

        CommandBar* __getitem__(VARIANT index) const;
        %MethodCode
            ksoapi::CommandBar *prop = nullptr;
            if (sipCpp->get_Item(*a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT get_LargeButtons(
            VARIANT_BOOL *pvarfLargeButtons /Out/) = 0;

        virtual HRESULT put_LargeButtons(
            VARIANT_BOOL pvarfLargeButtons) = 0;

        virtual HRESULT get_MenuAnimationStyle(
            MsoMenuAnimation *pma /Out/) = 0;

        virtual HRESULT put_MenuAnimationStyle(
            MsoMenuAnimation pma) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **ppienum /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **ppidisp /Out/) = 0;

        virtual HRESULT ReleaseFocus() = 0;

        virtual HRESULT get_IdsString(
            int ids,
            BSTR *pbstrName /Out/,
            int *pcch /Out/) = 0;

        virtual HRESULT get_TmcGetName(
            int tmc,
            BSTR *pbstrName /Out/,
            int *pcch /Out/) = 0;

        virtual HRESULT get_AdaptiveMenus(
            VARIANT_BOOL *pvarfAdaptiveMenus /Out/) = 0;

        virtual HRESULT put_AdaptiveMenus(
            VARIANT_BOOL pvarfAdaptiveMenus) = 0;

        virtual HRESULT FindControls(
            VARIANT Type = argMissing2(),
            VARIANT Id = argMissing2(),
            VARIANT Tag = argMissing2(),
            VARIANT Visible = argMissing2(),
            CommandBarControls **ppcbcs /Out/ = 0) = 0;

        virtual HRESULT AddEx(
            VARIANT TbidOrName = argMissing2(),
            VARIANT Position = argMissing2(),
            VARIANT MenuBar = argMissing2(),
            VARIANT Temporary = argMissing2(),
            VARIANT TbtrProtection = argMissing2(),
            CommandBar **ppcb /Out/ = 0) = 0;

        virtual HRESULT get_DisplayFonts(
            VARIANT_BOOL *pvarfDisplayFonts /Out/) = 0;

        virtual HRESULT put_DisplayFonts(
            VARIANT_BOOL pvarfDisplayFonts) = 0;

        virtual HRESULT get_DisableCustomize(
            VARIANT_BOOL *pvarfDisableCustomize /Out/) = 0;

        virtual HRESULT put_DisableCustomize(
            VARIANT_BOOL pvarfDisableCustomize) = 0;

        virtual HRESULT get_DisableAskAQuestionDropdown(
            VARIANT_BOOL *pvarfDisableAskAQuestionDropdown /Out/) = 0;

        virtual HRESULT put_DisableAskAQuestionDropdown(
            VARIANT_BOOL pvarfDisableAskAQuestionDropdown) = 0;

        virtual HRESULT ExecuteMso(
            BSTR idMso) = 0;

        virtual HRESULT GetEnabledMso(
            BSTR idMso,
            VARIANT_BOOL *Enabled /Out/) = 0;

        virtual HRESULT GetVisibleMso(
            BSTR idMso,
            VARIANT_BOOL *Visible /Out/) = 0;

        virtual HRESULT GetPressedMso(
            BSTR idMso,
            VARIANT_BOOL *Pressed /Out/) = 0;

        virtual HRESULT GetLabelMso(
            BSTR idMso,
            BSTR *Label /Out/) = 0;

        virtual HRESULT GetScreentipMso(
            BSTR idMso,
            BSTR *Screentip /Out/) = 0;

        virtual HRESULT GetSupertipMso(
            BSTR idMso,
            BSTR *Supertip /Out/) = 0;

        virtual HRESULT GetImageMso(
            BSTR idMso,
            int Width,
            int Height,
            IPictureDisp **Image /Out/) = 0;

        virtual HRESULT CommitRenderingTransaction(
            long hwnd) = 0;

    };
};
