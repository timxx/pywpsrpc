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
    struct ParagraphFormat2 : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Alignment(
            MsoParagraphAlignment *Alignment /Out/) = 0;

        virtual HRESULT put_Alignment(
            MsoParagraphAlignment Alignment) = 0;

        virtual HRESULT get_BaselineAlignment(
            MsoBaselineAlignment *BaselineAlignment /Out/) = 0;

        virtual HRESULT put_BaselineAlignment(
            MsoBaselineAlignment BaselineAlignment) = 0;

        virtual HRESULT get_Bullet(
            BulletFormat2 **Bullet /Out/) = 0;

        virtual HRESULT get_FarEastLineBreakLevel(
            MsoTriState *Break /Out/) = 0;

        virtual HRESULT put_FarEastLineBreakLevel(
            MsoTriState Break) = 0;

        virtual HRESULT get_FirstLineIndent(
            single *Indent /Out/) = 0;

        virtual HRESULT put_FirstLineIndent(
            single Indent) = 0;

        virtual HRESULT get_HangingPunctuation(
            MsoTriState *Hanging /Out/) = 0;

        virtual HRESULT put_HangingPunctuation(
            MsoTriState Hanging) = 0;

        virtual HRESULT get_IndentLevel(
            int *Level /Out/) = 0;

        virtual HRESULT put_IndentLevel(
            int Level) = 0;

        virtual HRESULT get_LeftIndent(
            single *Indent /Out/) = 0;

        virtual HRESULT put_LeftIndent(
            single Indent) = 0;

        virtual HRESULT get_LineRuleAfter(
            MsoTriState *LineRule /Out/) = 0;

        virtual HRESULT put_LineRuleAfter(
            MsoTriState LineRule) = 0;

        virtual HRESULT get_LineRuleBefore(
            MsoTriState *LineRule /Out/) = 0;

        virtual HRESULT put_LineRuleBefore(
            MsoTriState LineRule) = 0;

        virtual HRESULT get_LineRuleWithin(
            MsoTriState *LineRule /Out/) = 0;

        virtual HRESULT put_LineRuleWithin(
            MsoTriState LineRule) = 0;

        virtual HRESULT get_RightIndent(
            single *Indent /Out/) = 0;

        virtual HRESULT put_RightIndent(
            single Indent) = 0;

        virtual HRESULT get_SpaceAfter(
            single *Space /Out/) = 0;

        virtual HRESULT put_SpaceAfter(
            single Space) = 0;

        virtual HRESULT get_SpaceBefore(
            single *Space /Out/) = 0;

        virtual HRESULT put_SpaceBefore(
            single Space) = 0;

        virtual HRESULT get_SpaceWithin(
            single *Space /Out/) = 0;

        virtual HRESULT put_SpaceWithin(
            single Space) = 0;

        virtual HRESULT get_TabStops(
            TabStops2 **TabStops /Out/) = 0;

        virtual HRESULT get_TextDirection(
            MsoTextDirection *Direction /Out/) = 0;

        virtual HRESULT put_TextDirection(
            MsoTextDirection Direction) = 0;

        virtual HRESULT get_WordWrap(
            MsoTriState *WordWrap /Out/) = 0;

        virtual HRESULT put_WordWrap(
            MsoTriState WordWrap) = 0;

    };
};
