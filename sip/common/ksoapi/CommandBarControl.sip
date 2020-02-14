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
            VARIANT Bar = argMissing2(),
            VARIANT Before = argMissing2(),
            CommandBarControl **ppcbc /Out/ = 0) = 0;

        virtual HRESULT Delete(
            VARIANT Temporary = argMissing2()) = 0;

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
            VARIANT Bar = argMissing2(),
            VARIANT Before = argMissing2(),
            CommandBarControl **ppcbc /Out/ = 0) = 0;

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
