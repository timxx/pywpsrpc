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
    struct OMaths : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT Item(
            long Index,
            OMath **prop /Out/) = 0;

        virtual HRESULT Linearize() = 0;

        virtual HRESULT BuildUp() = 0;

        virtual HRESULT Add(
            Range *range,
            Range **prop /Out/) = 0;
    };

    struct OMath : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT get_Functions(
            OMathFunctions **prop /Out/) = 0;

        virtual HRESULT get_Type(
            WdOMathType *prop /Out/) = 0;

        virtual HRESULT put_Type(
            WdOMathType prop) = 0;

        virtual HRESULT get_ParentOMath(
            OMath **prop /Out/) = 0;

        virtual HRESULT get_ParentFunction(
            OMathFunction **prop /Out/) = 0;

        virtual HRESULT get_ParentRow(
            OMathMatRow **prop /Out/) = 0;

        virtual HRESULT get_ParentCol(
            OMathMatCol **prop /Out/) = 0;

        virtual HRESULT get_ParentArg(
            OMath **prop /Out/) = 0;

        virtual HRESULT get_ArgIndex(
            long *prop /Out/) = 0;

        virtual HRESULT get_NestingLevel(
            long *prop /Out/) = 0;

        virtual HRESULT get_ArgSize(
            long *prop /Out/) = 0;

        virtual HRESULT put_ArgSize(
            long prop) = 0;

        virtual HRESULT get_Breaks(
            OMathBreaks **prop /Out/) = 0;

        virtual HRESULT get_Justification(
            WdOMathJc *prop /Out/) = 0;

        virtual HRESULT put_Justification(
            WdOMathJc prop) = 0;

        virtual HRESULT get_AlignPoint(
            long *prop /Out/) = 0;

        virtual HRESULT put_AlignPoint(
            long prop) = 0;

        virtual HRESULT Linearize() = 0;

        virtual HRESULT BuildUp() = 0;

        virtual HRESULT Remove() = 0;

        virtual HRESULT ConvertToMathText() = 0;

        virtual HRESULT ConvertToNormalText() = 0;

        virtual HRESULT ConvertToLiteralText() = 0;
    };

    struct OMathFunctions : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT Item(
            long Index,
            OMathFunction **prop /Out/) = 0;

        virtual HRESULT Add(
            Range *Range,
            WdOMathFunctionType Type,
            VARIANT *NumArgs = argMissing(),
            VARIANT *NumCols = argMissing(),
            OMathFunction **prop /Out/ = 0) = 0;
    };

    struct OMathFunction : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Type(
            WdOMathFunctionType *prop /Out/) = 0;

        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT get_Args(
            OMathArgs **prop /Out/) = 0;

        virtual HRESULT get_Acc(
            OMathAcc **prop /Out/) = 0;

        virtual HRESULT get_Bar(
            OMathBar **prop /Out/) = 0;

        virtual HRESULT get_Box(
            OMathBox **prop /Out/) = 0;

        virtual HRESULT get_BorderBox(
            OMathBorderBox **prop /Out/) = 0;

        virtual HRESULT get_Delim(
            OMathDelim **prop /Out/) = 0;

        virtual HRESULT get_EqArray(
            OMathEqArray **prop /Out/) = 0;

        virtual HRESULT get_Frac(
            OMathFrac **prop /Out/) = 0;

        virtual HRESULT get_Func(
            OMathFunc **prop /Out/) = 0;

        virtual HRESULT get_GroupChar(
            OMathGroupChar **prop /Out/) = 0;

        virtual HRESULT get_LimLow(
            OMathLimLow **prop /Out/) = 0;

        virtual HRESULT get_LimUpp(
            OMathLimUpp **prop /Out/) = 0;

        virtual HRESULT get_Mat(
            OMathMat **prop /Out/) = 0;

        virtual HRESULT get_Nary(
            OMathNary **prop /Out/) = 0;

        virtual HRESULT get_Phantom(
            OMathPhantom **prop /Out/) = 0;

        virtual HRESULT get_ScrPre(
            OMathScrPre **prop /Out/) = 0;

        virtual HRESULT get_Rad(
            OMathRad **prop /Out/) = 0;

        virtual HRESULT get_ScrSub(
            OMathScrSub **prop /Out/) = 0;

        virtual HRESULT get_ScrSubSup(
            OMathScrSubSup **prop /Out/) = 0;

        virtual HRESULT get_ScrSup(
            OMathScrSup **prop /Out/) = 0;

        virtual HRESULT get_OMath(
            OMath **prop /Out/) = 0;

        virtual HRESULT Remove(
            OMathFunction **prop /Out/) = 0;
    };

    struct OMathMatRows : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT Item(
            long Index,
            OMathMatRow **prop /Out/) = 0;

        virtual HRESULT Add(
            VARIANT *BeforeRow = argMissing(),
            OMathMatRow **prop /Out/ = 0) = 0;
    };

    struct OMathMatRow : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Args(
            OMathArgs **prop /Out/) = 0;

        virtual HRESULT get_RowIndex(
            long *prop /Out/) = 0;

        virtual HRESULT Delete() = 0;
    };

    struct OMathMatCols : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT Item(
            long Index,
            OMathMatCol **prop /Out/) = 0;

        virtual HRESULT Add(
            VARIANT *BeforeCol = argMissing(),
            OMathMatCol **prop /Out/ = 0) = 0;
    };

    struct OMathMatCol : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Args(
            OMathArgs **prop /Out/) = 0;

        virtual HRESULT get_ColIndex(
            long *prop /Out/) = 0;

        virtual HRESULT get_Align(
            WdOMathHorizAlignType *prop /Out/) = 0;

        virtual HRESULT put_Align(
            WdOMathHorizAlignType prop) = 0;

        virtual HRESULT Delete() = 0;
    };

    struct OMathBreaks : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT Item(
            long Index,
            OMathBreak **prop /Out/) = 0;

        virtual HRESULT Add(
            Range *Range,
            OMathBreak **prop /Out/) = 0;
    };

    struct OMathBreak : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT get_AlignAt(
            long *prop /Out/) = 0;

        virtual HRESULT put_AlignAt(
            long prop) = 0;

        virtual HRESULT Delete() = 0;
    };

    struct OMathArgs : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT Item(
            long Index,
            OMath **prop /Out/) = 0;

        virtual HRESULT Add(
            VARIANT *BeforeArg = argMissing(),
            OMath **prop /Out/ = 0) = 0;
    };

    struct OMathAcc : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_E(
            OMath **prop /Out/) = 0;

        virtual HRESULT get_Char(
            short *prop /Out/) = 0;

        virtual HRESULT put_Char(
            short prop) = 0;
    };

    struct OMathBar : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_E(
            OMath **prop /Out/) = 0;

        virtual HRESULT get_BarTop(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_BarTop(
            VARIANT_BOOL prop) = 0;
    };

    struct OMathBox : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_E(
            OMath **prop /Out/) = 0;

        virtual HRESULT get_OpEmu(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_OpEmu(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_NoBreak(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_NoBreak(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Diff(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Diff(
            VARIANT_BOOL prop) = 0;
    };

    struct OMathBorderBox : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_E(
            OMath **prop /Out/) = 0;

        virtual HRESULT get_HideTop(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HideTop(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HideBot(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HideBot(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HideLeft(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HideLeft(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HideRight(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HideRight(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_StrikeH(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_StrikeH(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_StrikeV(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_StrikeV(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_StrikeBLTR(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_StrikeBLTR(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_StrikeTLBR(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_StrikeTLBR(
            VARIANT_BOOL prop) = 0;
    };

    struct OMathDelim : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_E(
            OMathArgs **prop /Out/) = 0;

        virtual HRESULT get_BegChar(
            short *prop /Out/) = 0;

        virtual HRESULT put_BegChar(
            short prop) = 0;

        virtual HRESULT get_SepChar(
            short *prop /Out/) = 0;

        virtual HRESULT put_SepChar(
            short prop) = 0;

        virtual HRESULT get_EndChar(
            short *prop /Out/) = 0;

        virtual HRESULT put_EndChar(
            short prop) = 0;

        virtual HRESULT get_Grow(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Grow(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Shape(
            WdOMathShapeType *prop /Out/) = 0;

        virtual HRESULT put_Shape(
            WdOMathShapeType prop) = 0;

        virtual HRESULT get_NoLeftChar(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_NoLeftChar(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_NoRightChar(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_NoRightChar(
            VARIANT_BOOL prop) = 0;
    };

    struct OMathEqArray : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_E(
            OMathArgs **prop /Out/) = 0;

        virtual HRESULT get_MaxDist(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MaxDist(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ObjDist(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ObjDist(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Align(
            WdOMathVertAlignType *prop /Out/) = 0;

        virtual HRESULT put_Align(
            WdOMathVertAlignType prop) = 0;

        virtual HRESULT get_RowSpacingRule(
            WdOMathSpacingRule *prop /Out/) = 0;

        virtual HRESULT put_RowSpacingRule(
            WdOMathSpacingRule prop) = 0;

        virtual HRESULT get_RowSpacing(
            long *prop /Out/) = 0;

        virtual HRESULT put_RowSpacing(
            long prop) = 0;
    };

    struct OMathFrac : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Num(
            OMath **prop /Out/) = 0;

        virtual HRESULT get_Den(
            OMath **prop /Out/) = 0;

        virtual HRESULT get_Type(
            WdOMathFracType *prop /Out/) = 0;

        virtual HRESULT put_Type(
            WdOMathFracType prop) = 0;
    };

    struct OMathFunc : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_FName(
            OMath **prop /Out/) = 0;

        virtual HRESULT get_E(
            OMath **prop /Out/) = 0;
    };

    struct OMathGroupChar : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_E(
            OMath **prop /Out/) = 0;

        virtual HRESULT get_Char(
            short *prop /Out/) = 0;

        virtual HRESULT put_Char(
            short prop) = 0;

        virtual HRESULT get_CharTop(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_CharTop(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_AlignTop(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AlignTop(
            VARIANT_BOOL prop) = 0;
    };

    struct OMathLimLow : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_E(
            OMath **prop /Out/) = 0;

        virtual HRESULT get_Lim(
            OMath **prop /Out/) = 0;

        virtual HRESULT ToLimUpp(
            OMathFunction **prop /Out/) = 0;
    };

    struct OMathLimUpp : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_E(
            OMath **prop /Out/) = 0;

        virtual HRESULT get_Lim(
            OMath **prop /Out/) = 0;

        virtual HRESULT ToLimLow(
            OMathFunction **prop /Out/) = 0;
    };

    struct OMathMat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Rows(
            OMathMatRows **prop /Out/) = 0;

        virtual HRESULT get_Cols(
            OMathMatCols **prop /Out/) = 0;

        virtual HRESULT get_Cell(
            long Row,
            long Col,
            OMath **prop /Out/) = 0;

        virtual HRESULT get_Align(
            WdOMathVertAlignType *prop /Out/) = 0;

        virtual HRESULT put_Align(
            WdOMathVertAlignType prop) = 0;

        virtual HRESULT get_PlcHoldHidden(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_PlcHoldHidden(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_RowSpacingRule(
            WdOMathSpacingRule *prop /Out/) = 0;

        virtual HRESULT put_RowSpacingRule(
            WdOMathSpacingRule prop) = 0;

        virtual HRESULT get_RowSpacing(
            long *prop /Out/) = 0;

        virtual HRESULT put_RowSpacing(
            long prop) = 0;

        virtual HRESULT get_ColSpacing(
            long *prop /Out/) = 0;

        virtual HRESULT put_ColSpacing(
            long prop) = 0;

        virtual HRESULT get_ColGapRule(
            WdOMathSpacingRule *prop /Out/) = 0;

        virtual HRESULT put_ColGapRule(
            WdOMathSpacingRule prop) = 0;

        virtual HRESULT get_ColGap(
            long *prop /Out/) = 0;

        virtual HRESULT put_ColGap(
            long prop) = 0;
    };

    struct OMathNary : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Sub(
            OMath **prop /Out/) = 0;

        virtual HRESULT get_Sup(
            OMath **prop /Out/) = 0;

        virtual HRESULT get_E(
            OMath **prop /Out/) = 0;

        virtual HRESULT get_Char(
            short *prop /Out/) = 0;

        virtual HRESULT put_Char(
            short prop) = 0;

        virtual HRESULT get_Grow(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Grow(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SubSupLim(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_SubSupLim(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HideSub(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HideSub(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HideSup(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HideSup(
            VARIANT_BOOL prop) = 0;
    };

    struct OMathPhantom : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_E(
            OMath **prop /Out/) = 0;

        virtual HRESULT get_Show(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Show(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ZeroWid(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ZeroWid(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ZeroAsc(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ZeroAsc(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ZeroDesc(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ZeroDesc(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Transp(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Transp(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Smash(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Smash(
            VARIANT_BOOL prop) = 0;
    };

    struct OMathScrPre : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Sub(
            OMath **prop /Out/) = 0;

        virtual HRESULT get_Sup(
            OMath **prop /Out/) = 0;

        virtual HRESULT get_E(
            OMath **prop /Out/) = 0;

        virtual HRESULT ToScrSubSup(
            OMathFunction **prop /Out/) = 0;
    };

    struct OMathRad : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Deg(
            OMath **prop /Out/) = 0;

        virtual HRESULT get_E(
            OMath **prop /Out/) = 0;

        virtual HRESULT get_HideDeg(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_HideDeg(
            VARIANT_BOOL prop) = 0;
    };

    struct OMathScrSub : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_E(
            OMath **prop /Out/) = 0;

        virtual HRESULT get_Sub(
            OMath **prop /Out/) = 0;
    };

    struct OMathScrSubSup : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_E(
            OMath **prop /Out/) = 0;

        virtual HRESULT get_Sub(
            OMath **prop /Out/) = 0;

        virtual HRESULT get_Sup(
            OMath **prop /Out/) = 0;

        virtual HRESULT get_AlignScripts(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AlignScripts(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT RemoveSub(
            OMathFunction **prop /Out/) = 0;

        virtual HRESULT RemoveSup(
            OMathFunction **prop /Out/) = 0;

        virtual HRESULT ToScrPre(
            OMathFunction **prop /Out/) = 0;
    };

    struct OMathScrSup : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_E(
            OMath **prop /Out/) = 0;

        virtual HRESULT get_Sup(
            OMath **prop /Out/) = 0;
    };

    struct OMathAutoCorrect : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_ReplaceText(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ReplaceText(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_UseOutsideOMath(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_UseOutsideOMath(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Entries(
            OMathAutoCorrectEntries **prop /Out/) = 0;

        virtual HRESULT get_Functions(
            OMathRecognizedFunctions **prop /Out/) = 0;
    };

    struct OMathAutoCorrectEntries : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT Item(
            VARIANT *Index,
            OMathAutoCorrectEntry **prop /Out/) = 0;

        virtual HRESULT Add(
            BSTR Name,
            BSTR Value,
            OMathAutoCorrectEntry **prop /Out/) = 0;
    };

    struct OMathAutoCorrectEntry : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Index(
            long *prop /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR prop) = 0;

        virtual HRESULT get_Value(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Value(
            BSTR prop) = 0;

        virtual HRESULT Delete() = 0;
    };

    struct OMathRecognizedFunctions : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT Item(
            VARIANT *Index,
            OMathRecognizedFunction **prop /Out/) = 0;

        virtual HRESULT Add(
            BSTR Name,
            OMathRecognizedFunction **prop /Out/) = 0;
    };

    struct OMathRecognizedFunction : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Index(
            long *prop /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT Delete() = 0;
    };
};