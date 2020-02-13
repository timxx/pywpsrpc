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
    struct ParagraphFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Alignment(
            PpParagraphAlignment *Alignment /Out/) = 0;

        virtual HRESULT put_Alignment(
            PpParagraphAlignment Alignment) = 0;

        virtual HRESULT get_Bullet(
            BulletFormat **Bullet /Out/) = 0;

        virtual HRESULT get_LineRuleBefore(
            MsoTriState *LineRuleBefore /Out/) = 0;

        virtual HRESULT put_LineRuleBefore(
            MsoTriState LineRuleBefore) = 0;

        virtual HRESULT get_LineRuleAfter(
            MsoTriState *LineRuleAfter /Out/) = 0;

        virtual HRESULT put_LineRuleAfter(
            MsoTriState LineRuleAfter) = 0;

        virtual HRESULT get_LineRuleWithin(
            MsoTriState *LineRuleWithin /Out/) = 0;

        virtual HRESULT put_LineRuleWithin(
            MsoTriState LineRuleWithin) = 0;

        virtual HRESULT get_SpaceBefore(
            single *SpaceBefore /Out/) = 0;

        virtual HRESULT put_SpaceBefore(
            single SpaceBefore) = 0;

        virtual HRESULT get_SpaceAfter(
            single *SpaceAfter /Out/) = 0;

        virtual HRESULT put_SpaceAfter(
            single SpaceAfter) = 0;

        virtual HRESULT get_SpaceWithin(
            single *SpaceWithin /Out/) = 0;

        virtual HRESULT put_SpaceWithin(
            single SpaceWithin) = 0;

        virtual HRESULT get_BaseLineAlignment(
            PpBaselineAlignment *BaseLineAlignment /Out/) = 0;

        virtual HRESULT put_BaseLineAlignment(
            PpBaselineAlignment BaseLineAlignment) = 0;

        virtual HRESULT get_FarEastLineBreakControl(
            MsoTriState *FarEastLineBreakControl /Out/) = 0;

        virtual HRESULT put_FarEastLineBreakControl(
            MsoTriState FarEastLineBreakControl) = 0;

        virtual HRESULT get_WordWrap(
            MsoTriState *WordWrap /Out/) = 0;

        virtual HRESULT put_WordWrap(
            MsoTriState WordWrap) = 0;

        virtual HRESULT get_HangingPunctuation(
            MsoTriState *HangingPunctuation /Out/) = 0;

        virtual HRESULT put_HangingPunctuation(
            MsoTriState HangingPunctuation) = 0;

        virtual HRESULT get_TextDirection(
            PpDirection *TextDirection /Out/) = 0;

        virtual HRESULT put_TextDirection(
            PpDirection TextDirection) = 0;

    };
};
