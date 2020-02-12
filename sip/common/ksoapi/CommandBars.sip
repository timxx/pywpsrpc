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
            VARIANT Name,
            VARIANT Position,
            VARIANT MenuBar,
            VARIANT Temporary,
            CommandBar **ppcb /Out/) = 0;

        virtual HRESULT get_Count(
            int *pcToolbars /Out/) = 0;

        virtual HRESULT get_DisplayTooltips(
            VARIANT_BOOL *pvarfDisplayTooltips /Out/) = 0;

        virtual HRESULT put_DisplayTooltips(
            VARIANT_BOOL pvarfDisplayTooltips) = 0;

        virtual HRESULT get_DisplayKeysInTooltips(
            VARIANT_BOOL *pvarfDisplayKeys /Out/) = 0;

        virtual HRESULT put_DisplayKeysInTooltips(
            VARIANT_BOOL pvarfDisplayKeys) = 0;

        virtual HRESULT FindControl(
            VARIANT Type,
            VARIANT Id,
            VARIANT Tag,
            VARIANT Visible,
            CommandBarControl **ppcbc /Out/) = 0;

        virtual HRESULT get_Item(
            VARIANT Index,
            CommandBar **ppcb /Out/) = 0;

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
            VARIANT Type,
            VARIANT Id,
            VARIANT Tag,
            VARIANT Visible,
            CommandBarControls **ppcbcs /Out/) = 0;

        virtual HRESULT AddEx(
            VARIANT TbidOrName,
            VARIANT Position,
            VARIANT MenuBar,
            VARIANT Temporary,
            VARIANT TbtrProtection,
            CommandBar **ppcb /Out/) = 0;

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

    struct CommandBar : public ksoapi::_IMsoOleAccDispObj /Abstract/
    {
    public:
        virtual HRESULT get_BuiltIn(
            VARIANT_BOOL *pvarfBuiltIn /Out/) = 0;

        virtual HRESULT get_Context(
            BSTR *pbstrContext /Out/) = 0;

        virtual HRESULT put_Context(
            BSTR pbstrContext) = 0;

        virtual HRESULT get_Controls(
            CommandBarControls **ppcbcs /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_Enabled(
            VARIANT_BOOL *pvarfEnabled /Out/) = 0;

        virtual HRESULT put_Enabled(
            VARIANT_BOOL pvarfEnabled) = 0;

        virtual HRESULT FindControl(
            VARIANT Type,
            VARIANT Id,
            VARIANT Tag,
            VARIANT Visible,
            VARIANT Recursive,
            CommandBarControl **ppcbc /Out/) = 0;

        virtual HRESULT get_Height(
            int *pdy /Out/) = 0;

        virtual HRESULT put_Height(
            int pdy) = 0;

        virtual HRESULT get_Index(
            int *pi /Out/) = 0;

        virtual HRESULT get_InstanceId(
            long *pid /Out/) = 0;

        virtual HRESULT get_Left(
            int *pxpLeft /Out/) = 0;

        virtual HRESULT put_Left(
            int pxpLeft) = 0;

        virtual HRESULT get_Name(
            BSTR *pbstrName /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR pbstrName) = 0;

        virtual HRESULT get_NameLocal(
            BSTR *pbstrNameLocal /Out/) = 0;

        virtual HRESULT put_NameLocal(
            BSTR pbstrNameLocal) = 0;

        virtual HRESULT get_Parent(
            IDispatch **ppidisp /Out/) = 0;

        virtual HRESULT get_Position(
            MsoBarPosition *ppos /Out/) = 0;

        virtual HRESULT put_Position(
            MsoBarPosition ppos) = 0;

        virtual HRESULT get_RowIndex(
            int *piRow /Out/) = 0;

        virtual HRESULT put_RowIndex(
            int piRow) = 0;

        virtual HRESULT get_Protection(
            MsoBarProtection *pprot /Out/) = 0;

        virtual HRESULT put_Protection(
            MsoBarProtection pprot) = 0;

        virtual HRESULT Reset() = 0;

        virtual HRESULT ShowPopup(
            VARIANT x,
            VARIANT y) = 0;

        virtual HRESULT get_Top(
            int *pypTop /Out/) = 0;

        virtual HRESULT put_Top(
            int pypTop) = 0;

        virtual HRESULT get_Type(
            MsoBarType *ptype /Out/) = 0;

        virtual HRESULT get_Visible(
            VARIANT_BOOL *pvarfVisible /Out/) = 0;

        virtual HRESULT put_Visible(
            VARIANT_BOOL pvarfVisible) = 0;

        virtual HRESULT get_Width(
            int *pdx /Out/) = 0;

        virtual HRESULT put_Width(
            int pdx) = 0;

        virtual HRESULT get_AdaptiveMenu(
            VARIANT_BOOL *pvarfAdaptiveMenu /Out/) = 0;

        virtual HRESULT put_AdaptiveMenu(
            VARIANT_BOOL pvarfAdaptiveMenu) = 0;

        virtual HRESULT get_Id(
            int *pid /Out/) = 0;

        virtual HRESULT get_InstanceIdPtr(
            VARIANT *pvarPitb /Out/) = 0;
    };

    struct CommandBarControls : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT Add(
            VARIANT Type,
            VARIANT Id,
            VARIANT Parameter,
            VARIANT Before,
            VARIANT Temporary,
            CommandBarControl **ppcbc /Out/) = 0;

        virtual HRESULT get_Count(
            int *pcToolbarControls /Out/) = 0;

        virtual HRESULT get_Item(
            VARIANT Index,
            CommandBarControl **ppcbc /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **ppienum /Out/) = 0;

        virtual HRESULT get_Parent(
            CommandBar **ppcb /Out/) = 0;
    };

    struct CommandBarControl : public ksoapi::_IMsoOleAccDispObj /Abstract/
    {
    public:
        virtual HRESULT get_BeginGroup(
            VARIANT_BOOL *pvarfBeginGroup /Out/) = 0;

        virtual HRESULT put_BeginGroup(
            VARIANT_BOOL pvarfBeginGroup) = 0;

        virtual HRESULT get_BuiltIn(
            VARIANT_BOOL *pvarfBuiltIn /Out/) = 0;

        virtual HRESULT get_Caption(
            BSTR *pbstrCaption /Out/) = 0;

        virtual HRESULT put_Caption(
            BSTR pbstrCaption) = 0;

        virtual HRESULT get_Control(
            IDispatch **ppidisp /Out/) = 0;

        virtual HRESULT Copy(
            VARIANT Bar,
            VARIANT Before,
            CommandBarControl **ppcbc /Out/) = 0;

        virtual HRESULT Delete(
            VARIANT Temporary) = 0;

        virtual HRESULT get_DescriptionText(
            BSTR *pbstrText /Out/) = 0;

        virtual HRESULT put_DescriptionText(
            BSTR pbstrText) = 0;

        virtual HRESULT get_Enabled(
            VARIANT_BOOL *pvarfEnabled /Out/) = 0;

        virtual HRESULT put_Enabled(
            VARIANT_BOOL pvarfEnabled) = 0;

        virtual HRESULT Execute() = 0;

        virtual HRESULT get_Height(
            int *pdy /Out/) = 0;

        virtual HRESULT put_Height(
            int pdy) = 0;

        virtual HRESULT get_HelpContextId(
            int *pid /Out/) = 0;

        virtual HRESULT put_HelpContextId(
            int pid) = 0;

        virtual HRESULT get_HelpFile(
            BSTR *pbstrFilename /Out/) = 0;

        virtual HRESULT put_HelpFile(
            BSTR pbstrFilename) = 0;

        virtual HRESULT get_Id(
            int *pid /Out/) = 0;

        virtual HRESULT get_Index(
            int *pi /Out/) = 0;

        virtual HRESULT get_InstanceId(
            long *pid /Out/) = 0;

        virtual HRESULT Move(
            VARIANT Bar,
            VARIANT Before,
            CommandBarControl **ppcbc /Out/) = 0;

        virtual HRESULT get_Left(
            int *px /Out/) = 0;

        virtual HRESULT get_OLEUsage(
            MsoControlOLEUsage *pcou /Out/) = 0;

        virtual HRESULT put_OLEUsage(
            MsoControlOLEUsage pcou) = 0;

        virtual HRESULT get_OnAction(
            BSTR *pbstrOnAction /Out/) = 0;

        virtual HRESULT put_OnAction(
            BSTR pbstrOnAction) = 0;

        virtual HRESULT get_Parent(
            CommandBar **ppcb /Out/) = 0;

        virtual HRESULT get_Parameter(
            BSTR *pbstrParam /Out/) = 0;

        virtual HRESULT put_Parameter(
            BSTR pbstrParam) = 0;

        virtual HRESULT get_Priority(
            int *pnPri /Out/) = 0;

        virtual HRESULT put_Priority(
            int pnPri) = 0;

        virtual HRESULT Reset() = 0;

        virtual HRESULT SetFocus() = 0;

        virtual HRESULT get_Tag(
            BSTR *pbstrTag /Out/) = 0;

        virtual HRESULT put_Tag(
            BSTR pbstrTag) = 0;

        virtual HRESULT get_TooltipText(
            BSTR *pbstrTooltip /Out/) = 0;

        virtual HRESULT put_TooltipText(
            BSTR pbstrTooltip) = 0;

        virtual HRESULT get_Top(
            int *py /Out/) = 0;

        virtual HRESULT get_Type(
            MsoControlType *ptype /Out/) = 0;

        virtual HRESULT get_Visible(
            VARIANT_BOOL *pvarfVisible /Out/) = 0;

        virtual HRESULT put_Visible(
            VARIANT_BOOL pvarfVisible) = 0;

        virtual HRESULT get_Width(
            int *pdx /Out/) = 0;

        virtual HRESULT put_Width(
            int pdx) = 0;

        virtual HRESULT get_IsPriorityDropped(
            VARIANT_BOOL *pvarfDropped /Out/) = 0;

        virtual HRESULT Reserved1() = 0;

        virtual HRESULT Reserved2() = 0;

        virtual HRESULT Reserved3() = 0;

        virtual HRESULT Reserved4() = 0;

        virtual HRESULT Reserved5() = 0;

        virtual HRESULT Reserved6() = 0;

        virtual HRESULT Reserved7() = 0;
    };
};