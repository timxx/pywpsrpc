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
    struct Effect : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Shape(
            Shape **Shape /Out/) = 0;

        virtual HRESULT put_Shape(
            Shape *Shape) = 0;

        virtual HRESULT MoveTo(
            int toPos) = 0;

        virtual HRESULT MoveBefore(
            Effect *Effect) = 0;

        virtual HRESULT MoveAfter(
            Effect *Effect) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_Index(
            int *Index /Out/) = 0;

        virtual HRESULT get_Timing(
            Timing **Timing /Out/) = 0;

        virtual HRESULT get_EffectType(
            MsoAnimEffect *EffectType /Out/) = 0;

        virtual HRESULT put_EffectType(
            MsoAnimEffect EffectType) = 0;

        virtual HRESULT get_EffectParameters(
            EffectParameters **EffectParameters /Out/) = 0;

        virtual HRESULT get_TextRangeStart(
            int *TextRangeStart /Out/) = 0;

        virtual HRESULT get_TextRangeLength(
            int *TextRangeLength /Out/) = 0;

        virtual HRESULT get_Paragraph(
            int *Paragraph /Out/) = 0;

        virtual HRESULT put_Paragraph(
            int Paragraph) = 0;

        virtual HRESULT get_DisplayName(
            BSTR *DisplayName /Out/) = 0;

        virtual HRESULT get_Exit(
            MsoTriState *Exit /Out/) = 0;

        virtual HRESULT put_Exit(
            MsoTriState Exit) = 0;

        virtual HRESULT get_Behaviors(
            AnimationBehaviors **Behaviors /Out/) = 0;

        virtual HRESULT get_EffectInformation(
            EffectInformation **EffectInformation /Out/) = 0;

    };
};
