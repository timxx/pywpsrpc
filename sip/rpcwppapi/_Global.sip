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
    struct _Global : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_ActivePresentation(
            Presentation **ActivePresentation /Out/) = 0;

        virtual HRESULT get_ActiveWindow(
            DocumentWindow **ActiveWindow /Out/) = 0;

        virtual HRESULT get_AddIns(
            AddIns **AddIns /Out/) = 0;

        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Assistant(
            ksoapi::Assistant **Assistant /Out/) = 0;

        virtual HRESULT get_Dialogs(
            IUnknown **Dialogs /Out/) = 0;

        virtual HRESULT get_Presentations(
            Presentations **Presentations /Out/) = 0;

        virtual HRESULT get_SlideShowWindows(
            SlideShowWindows **SlideShowWindows /Out/) = 0;

        virtual HRESULT get_Windows(
            DocumentWindows **Windows /Out/) = 0;

        virtual HRESULT get_CommandBars(
            ksoapi::CommandBars **CommandBars /Out/) = 0;

        virtual HRESULT get_AnswerWizard(
            ksoapi::AnswerWizard **AnswerWizard /Out/) = 0;

        virtual HRESULT get_FileConverters(
            FileConverters **FileConverters /Out/) = 0;

        virtual HRESULT get_ProtectedViewWindows(
            ProtectedViewWindows **ProtectedViewWindows /Out/) = 0;

        virtual HRESULT get_ActiveProtectedViewWindow(
            ProtectedViewWindow **ActiveProtectedViewWindow /Out/) = 0;

        virtual HRESULT get_IsSandboxed(
            VARIANT_BOOL *IsSandboxed /Out/) = 0;

    };
};
