/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace etapi
{
    struct IWorksheetFunction : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;
/*
        virtual HRESULT _WSFunction(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT Count(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            double *RHS /Out/) = 0;
*/
        virtual HRESULT IsNA(
            VARIANT Arg1,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT IsError(
            VARIANT Arg1,
            VARIANT_BOOL *RHS /Out/) = 0;
/*
        virtual HRESULT Sum(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            double *RHS /Out/) = 0;

        virtual HRESULT Average(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            double *RHS /Out/) = 0;

        virtual HRESULT Min(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            double *RHS /Out/) = 0;

        virtual HRESULT Max(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            double *RHS /Out/) = 0;

        virtual HRESULT Npv(
            double Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            double *RHS /Out/) = 0;

        virtual HRESULT StDev(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            double *RHS /Out/) = 0;
*/
        virtual HRESULT Dollar(
            double Arg1,
            VARIANT Arg2,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT Fixed(
            double Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT Pi(
            double *RHS /Out/) = 0;

        virtual HRESULT Ln(
            double Arg1,
            double *RHS /Out/) = 0;

        virtual HRESULT Log10(
            double Arg1,
            double *RHS /Out/) = 0;

        virtual HRESULT Round(
            double Arg1,
            double Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT Lookup(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT Index(
            VARIANT Arg1,
            double Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT Rept(
            BSTR Arg1,
            double Arg2,
            BSTR *RHS /Out/) = 0;
/*
        virtual HRESULT And(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT Or(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            VARIANT_BOOL *RHS /Out/) = 0;
*/
        virtual HRESULT DCount(
            Range *Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT DSum(
            Range *Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT DAverage(
            Range *Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT DMin(
            Range *Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT DMax(
            Range *Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT DStDev(
            Range *Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            double *RHS /Out/) = 0;
/*
        virtual HRESULT Var(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            double *RHS /Out/) = 0;
*/
        virtual HRESULT DVar(
            Range *Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT Text(
            VARIANT Arg1,
            BSTR Arg2,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT LinEst(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT Trend(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT LogEst(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT Growth(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT Pv(
            double Arg1,
            double Arg2,
            double Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            double *RHS /Out/) = 0;

        virtual HRESULT Fv(
            double Arg1,
            double Arg2,
            double Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            double *RHS /Out/) = 0;

        virtual HRESULT NPer(
            double Arg1,
            double Arg2,
            double Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            double *RHS /Out/) = 0;

        virtual HRESULT Pmt(
            double Arg1,
            double Arg2,
            double Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            double *RHS /Out/) = 0;

        virtual HRESULT Rate(
            double Arg1,
            double Arg2,
            double Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            double *RHS /Out/) = 0;

        virtual HRESULT MIrr(
            VARIANT Arg1,
            double Arg2,
            double Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT Irr(
            VARIANT Arg1,
            VARIANT Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT Match(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT Weekday(
            VARIANT Arg1,
            VARIANT Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT Search(
            BSTR Arg1,
            BSTR Arg2,
            VARIANT Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT Transpose(
            VARIANT Arg1,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT Atan2(
            double Arg1,
            double Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT Asin(
            double Arg1,
            double *RHS /Out/) = 0;

        virtual HRESULT Acos(
            double Arg1,
            double *RHS /Out/) = 0;
/*
        virtual HRESULT Choose(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            VARIANT *RHS /Out/) = 0;
*/
        virtual HRESULT HLookup(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT VLookup(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT Log(
            double Arg1,
            VARIANT Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT Proper(
            BSTR Arg1,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT Trim(
            BSTR Arg1,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT Replace(
            BSTR Arg1,
            double Arg2,
            double Arg3,
            BSTR Arg4,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT Substitute(
            BSTR Arg1,
            BSTR Arg2,
            BSTR Arg3,
            VARIANT Arg4,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT Find(
            BSTR Arg1,
            BSTR Arg2,
            VARIANT Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT IsErr(
            VARIANT Arg1,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT IsText(
            VARIANT Arg1,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT IsNumber(
            VARIANT Arg1,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT Sln(
            double Arg1,
            double Arg2,
            double Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT Syd(
            double Arg1,
            double Arg2,
            double Arg3,
            double Arg4,
            double *RHS /Out/) = 0;

        virtual HRESULT Ddb(
            double Arg1,
            double Arg2,
            double Arg3,
            double Arg4,
            VARIANT Arg5,
            double *RHS /Out/) = 0;

        virtual HRESULT Clean(
            BSTR Arg1,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT MDeterm(
            VARIANT Arg1,
            double *RHS /Out/) = 0;

        virtual HRESULT MInverse(
            VARIANT Arg1,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT MMult(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT Ipmt(
            double Arg1,
            double Arg2,
            double Arg3,
            double Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            double *RHS /Out/) = 0;

        virtual HRESULT Ppmt(
            double Arg1,
            double Arg2,
            double Arg3,
            double Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            double *RHS /Out/) = 0;
/*
        virtual HRESULT CountA(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            double *RHS /Out/) = 0;

        virtual HRESULT Product(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            double *RHS /Out/) = 0;
*/
        virtual HRESULT Fact(
            double Arg1,
            double *RHS /Out/) = 0;

        virtual HRESULT DProduct(
            Range *Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT IsNonText(
            VARIANT Arg1,
            VARIANT_BOOL *RHS /Out/) = 0;
/*
        virtual HRESULT StDevP(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            double *RHS /Out/) = 0;

        virtual HRESULT VarP(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            double *RHS /Out/) = 0;
*/
        virtual HRESULT DStDevP(
            Range *Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT DVarP(
            Range *Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT IsLogical(
            VARIANT Arg1,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT DCountA(
            Range *Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT USDollar(
            double Arg1,
            double Arg2,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT FindB(
            BSTR Arg1,
            BSTR Arg2,
            VARIANT Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT SearchB(
            BSTR Arg1,
            BSTR Arg2,
            VARIANT Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT ReplaceB(
            BSTR Arg1,
            double Arg2,
            double Arg3,
            BSTR Arg4,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT RoundUp(
            double Arg1,
            double Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT RoundDown(
            double Arg1,
            double Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT Rank(
            double Arg1,
            Range *Arg2,
            VARIANT Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT Days360(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT Vdb(
            double Arg1,
            double Arg2,
            double Arg3,
            double Arg4,
            double Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            double *RHS /Out/) = 0;
/*
        virtual HRESULT Median(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            double *RHS /Out/) = 0;

        virtual HRESULT SumProduct(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            double *RHS /Out/) = 0;
*/
        virtual HRESULT Sinh(
            double Arg1,
            double *RHS /Out/) = 0;

        virtual HRESULT Cosh(
            double Arg1,
            double *RHS /Out/) = 0;

        virtual HRESULT Tanh(
            double Arg1,
            double *RHS /Out/) = 0;

        virtual HRESULT Asinh(
            double Arg1,
            double *RHS /Out/) = 0;

        virtual HRESULT Acosh(
            double Arg1,
            double *RHS /Out/) = 0;

        virtual HRESULT Atanh(
            double Arg1,
            double *RHS /Out/) = 0;

        virtual HRESULT DGet(
            Range *Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT Db(
            double Arg1,
            double Arg2,
            double Arg3,
            double Arg4,
            VARIANT Arg5,
            double *RHS /Out/) = 0;

        virtual HRESULT Frequency(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT *RHS /Out/) = 0;
/*
        virtual HRESULT AveDev(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            double *RHS /Out/) = 0;
*/
        virtual HRESULT BetaDist(
            double Arg1,
            double Arg2,
            double Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            double *RHS /Out/) = 0;

        virtual HRESULT GammaLn(
            double Arg1,
            double *RHS /Out/) = 0;

        virtual HRESULT BetaInv(
            double Arg1,
            double Arg2,
            double Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            double *RHS /Out/) = 0;

        virtual HRESULT BinomDist(
            double Arg1,
            double Arg2,
            double Arg3,
            VARIANT_BOOL Arg4,
            double *RHS /Out/) = 0;

        virtual HRESULT ChiDist(
            double Arg1,
            double Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT ChiInv(
            double Arg1,
            double Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT Combin(
            double Arg1,
            double Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT Confidence(
            double Arg1,
            double Arg2,
            double Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT CritBinom(
            double Arg1,
            double Arg2,
            double Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT Even(
            double Arg1,
            double *RHS /Out/) = 0;

        virtual HRESULT ExponDist(
            double Arg1,
            double Arg2,
            VARIANT_BOOL Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT FDist(
            double Arg1,
            double Arg2,
            double Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT FInv(
            double Arg1,
            double Arg2,
            double Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT Fisher(
            double Arg1,
            double *RHS /Out/) = 0;

        virtual HRESULT FisherInv(
            double Arg1,
            double *RHS /Out/) = 0;

        virtual HRESULT Floor(
            double Arg1,
            double Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT GammaDist(
            double Arg1,
            double Arg2,
            double Arg3,
            VARIANT_BOOL Arg4,
            double *RHS /Out/) = 0;

        virtual HRESULT GammaInv(
            double Arg1,
            double Arg2,
            double Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT Ceiling(
            double Arg1,
            double Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT HypGeomDist(
            double Arg1,
            double Arg2,
            double Arg3,
            double Arg4,
            double *RHS /Out/) = 0;

        virtual HRESULT LogNormDist(
            double Arg1,
            double Arg2,
            double Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT LogInv(
            double Arg1,
            double Arg2,
            double Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT NegBinomDist(
            double Arg1,
            double Arg2,
            double Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT NormDist(
            double Arg1,
            double Arg2,
            double Arg3,
            VARIANT_BOOL Arg4,
            double *RHS /Out/) = 0;

        virtual HRESULT NormSDist(
            double Arg1,
            double *RHS /Out/) = 0;

        virtual HRESULT NormInv(
            double Arg1,
            double Arg2,
            double Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT NormSInv(
            double Arg1,
            double *RHS /Out/) = 0;

        virtual HRESULT Standardize(
            double Arg1,
            double Arg2,
            double Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT Odd(
            double Arg1,
            double *RHS /Out/) = 0;

        virtual HRESULT Permut(
            double Arg1,
            double Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT Poisson(
            double Arg1,
            double Arg2,
            VARIANT_BOOL Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT TDist(
            double Arg1,
            double Arg2,
            double Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT Weibull(
            double Arg1,
            double Arg2,
            double Arg3,
            VARIANT_BOOL Arg4,
            double *RHS /Out/) = 0;

        virtual HRESULT SumXMY2(
            VARIANT Arg1,
            VARIANT Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT SumX2MY2(
            VARIANT Arg1,
            VARIANT Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT SumX2PY2(
            VARIANT Arg1,
            VARIANT Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT ChiTest(
            VARIANT Arg1,
            VARIANT Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT Correl(
            VARIANT Arg1,
            VARIANT Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT Covar(
            VARIANT Arg1,
            VARIANT Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT Forecast(
            double Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT FTest(
            VARIANT Arg1,
            VARIANT Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT Intercept(
            VARIANT Arg1,
            VARIANT Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT Pearson(
            VARIANT Arg1,
            VARIANT Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT RSq(
            VARIANT Arg1,
            VARIANT Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT StEyx(
            VARIANT Arg1,
            VARIANT Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT Slope(
            VARIANT Arg1,
            VARIANT Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT TTest(
            VARIANT Arg1,
            VARIANT Arg2,
            double Arg3,
            double Arg4,
            double *RHS /Out/) = 0;

        virtual HRESULT Prob(
            VARIANT Arg1,
            VARIANT Arg2,
            double Arg3,
            VARIANT Arg4,
            double *RHS /Out/) = 0;
/*
        virtual HRESULT DevSq(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            double *RHS /Out/) = 0;

        virtual HRESULT GeoMean(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            double *RHS /Out/) = 0;

        virtual HRESULT HarMean(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            double *RHS /Out/) = 0;

        virtual HRESULT SumSq(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            double *RHS /Out/) = 0;

        virtual HRESULT Kurt(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            double *RHS /Out/) = 0;

        virtual HRESULT Skew(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            double *RHS /Out/) = 0;
*/
        virtual HRESULT ZTest(
            VARIANT Arg1,
            double Arg2,
            VARIANT Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT Large(
            VARIANT Arg1,
            double Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT Small(
            VARIANT Arg1,
            double Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT Quartile(
            VARIANT Arg1,
            double Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT Percentile(
            VARIANT Arg1,
            double Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT PercentRank(
            VARIANT Arg1,
            double Arg2,
            VARIANT Arg3,
            double *RHS /Out/) = 0;
/*
        virtual HRESULT Mode(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            double *RHS /Out/) = 0;
*/
        virtual HRESULT TrimMean(
            VARIANT Arg1,
            double Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT TInv(
            double Arg1,
            double Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT Power(
            double Arg1,
            double Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT Radians(
            double Arg1,
            double *RHS /Out/) = 0;

        virtual HRESULT Degrees(
            double Arg1,
            double *RHS /Out/) = 0;
/*
        virtual HRESULT Subtotal(
            double Arg1,
            Range *Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            double *RHS /Out/) = 0;
*/
        virtual HRESULT SumIf(
            Range *Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT CountIf(
            Range *Arg1,
            VARIANT Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT CountBlank(
            Range *Arg1,
            double *RHS /Out/) = 0;

        virtual HRESULT Ispmt(
            double Arg1,
            double Arg2,
            double Arg3,
            double Arg4,
            double *RHS /Out/) = 0;

        virtual HRESULT Roman(
            double Arg1,
            VARIANT Arg2,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT Asc(
            BSTR Arg1,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT Dbcs(
            BSTR Arg1,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT Phonetic(
            Range *Arg1,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT BahtText(
            double Arg1,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT ThaiDayOfWeek(
            double Arg1,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT ThaiDigit(
            BSTR Arg1,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT ThaiMonthOfYear(
            double Arg1,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT ThaiNumSound(
            double Arg1,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT ThaiNumString(
            double Arg1,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT ThaiStringLength(
            BSTR Arg1,
            double *RHS /Out/) = 0;

        virtual HRESULT IsThaiDigit(
            BSTR Arg1,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT RoundBahtDown(
            double Arg1,
            double *RHS /Out/) = 0;

        virtual HRESULT RoundBahtUp(
            double Arg1,
            double *RHS /Out/) = 0;

        virtual HRESULT ThaiYear(
            double Arg1,
            double *RHS /Out/) = 0;
/*
        virtual HRESULT RTD(
            VARIANT progID,
            VARIANT server,
            VARIANT topic1,
            VARIANT topic2,
            VARIANT topic3,
            VARIANT topic4,
            VARIANT topic5,
            VARIANT topic6,
            VARIANT topic7,
            VARIANT topic8,
            VARIANT topic9,
            VARIANT topic10,
            VARIANT topic11,
            VARIANT topic12,
            VARIANT topic13,
            VARIANT topic14,
            VARIANT topic15,
            VARIANT topic16,
            VARIANT topic17,
            VARIANT topic18,
            VARIANT topic19,
            VARIANT topic20,
            VARIANT topic21,
            VARIANT topic22,
            VARIANT topic23,
            VARIANT topic24,
            VARIANT topic25,
            VARIANT topic26,
            VARIANT topic27,
            VARIANT topic28,
            VARIANT *RHS /Out/) = 0;
*/
        virtual HRESULT Hex2Bin(
            VARIANT Arg1,
            VARIANT Arg2,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT Hex2Dec(
            VARIANT Arg1,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT Hex2Oct(
            VARIANT Arg1,
            VARIANT Arg2,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT Dec2Bin(
            VARIANT Arg1,
            VARIANT Arg2,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT Dec2Hex(
            VARIANT Arg1,
            VARIANT Arg2,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT Dec2Oct(
            VARIANT Arg1,
            VARIANT Arg2,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT Oct2Bin(
            VARIANT Arg1,
            VARIANT Arg2,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT Oct2Hex(
            VARIANT Arg1,
            VARIANT Arg2,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT Oct2Dec(
            VARIANT Arg1,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT Bin2Dec(
            VARIANT Arg1,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT Bin2Oct(
            VARIANT Arg1,
            VARIANT Arg2,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT Bin2Hex(
            VARIANT Arg1,
            VARIANT Arg2,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT ImSub(
            VARIANT Arg1,
            VARIANT Arg2,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT ImDiv(
            VARIANT Arg1,
            VARIANT Arg2,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT ImPower(
            VARIANT Arg1,
            VARIANT Arg2,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT ImAbs(
            VARIANT Arg1,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT ImSqrt(
            VARIANT Arg1,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT ImLn(
            VARIANT Arg1,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT ImLog2(
            VARIANT Arg1,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT ImLog10(
            VARIANT Arg1,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT ImSin(
            VARIANT Arg1,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT ImCos(
            VARIANT Arg1,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT ImExp(
            VARIANT Arg1,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT ImArgument(
            VARIANT Arg1,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT ImConjugate(
            VARIANT Arg1,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT Imaginary(
            VARIANT Arg1,
            double *RHS /Out/) = 0;

        virtual HRESULT ImReal(
            VARIANT Arg1,
            double *RHS /Out/) = 0;

        virtual HRESULT Complex(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            BSTR *RHS /Out/) = 0;
/*
        virtual HRESULT ImSum(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT ImProduct(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            BSTR *RHS /Out/) = 0;
*/
        virtual HRESULT SeriesSum(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            double *RHS /Out/) = 0;

        virtual HRESULT FactDouble(
            VARIANT Arg1,
            double *RHS /Out/) = 0;

        virtual HRESULT SqrtPi(
            VARIANT Arg1,
            double *RHS /Out/) = 0;

        virtual HRESULT Quotient(
            VARIANT Arg1,
            VARIANT Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT Delta(
            VARIANT Arg1,
            VARIANT Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT GeStep(
            VARIANT Arg1,
            VARIANT Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT IsEven(
            VARIANT Arg1,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT IsOdd(
            VARIANT Arg1,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT MRound(
            VARIANT Arg1,
            VARIANT Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT Erf(
            VARIANT Arg1,
            VARIANT Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT ErfC(
            VARIANT Arg1,
            double *RHS /Out/) = 0;

        virtual HRESULT BesselJ(
            VARIANT Arg1,
            VARIANT Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT BesselK(
            VARIANT Arg1,
            VARIANT Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT BesselY(
            VARIANT Arg1,
            VARIANT Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT BesselI(
            VARIANT Arg1,
            VARIANT Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT Xirr(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT Xnpv(
            VARIANT Arg1,
            VARIANT Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT PriceMat(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            double *RHS /Out/) = 0;

        virtual HRESULT YieldMat(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            double *RHS /Out/) = 0;

        virtual HRESULT IntRate(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            double *RHS /Out/) = 0;

        virtual HRESULT Received(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            double *RHS /Out/) = 0;

        virtual HRESULT Disc(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            double *RHS /Out/) = 0;

        virtual HRESULT PriceDisc(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            double *RHS /Out/) = 0;

        virtual HRESULT YieldDisc(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            double *RHS /Out/) = 0;

        virtual HRESULT TBillEq(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT TBillPrice(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT TBillYield(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT Price(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            double *RHS /Out/) = 0;

        virtual HRESULT DollarDe(
            VARIANT Arg1,
            VARIANT Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT DollarFr(
            VARIANT Arg1,
            VARIANT Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT Nominal(
            VARIANT Arg1,
            VARIANT Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT Effect(
            VARIANT Arg1,
            VARIANT Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT CumPrinc(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            double *RHS /Out/) = 0;

        virtual HRESULT CumIPmt(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            double *RHS /Out/) = 0;

        virtual HRESULT EDate(
            VARIANT Arg1,
            VARIANT Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT EoMonth(
            VARIANT Arg1,
            VARIANT Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT YearFrac(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT CoupDayBs(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            double *RHS /Out/) = 0;

        virtual HRESULT CoupDays(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            double *RHS /Out/) = 0;

        virtual HRESULT CoupDaysNc(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            double *RHS /Out/) = 0;

        virtual HRESULT CoupNcd(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            double *RHS /Out/) = 0;

        virtual HRESULT CoupNum(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            double *RHS /Out/) = 0;

        virtual HRESULT CoupPcd(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            double *RHS /Out/) = 0;

        virtual HRESULT Duration(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            double *RHS /Out/) = 0;

        virtual HRESULT MDuration(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            double *RHS /Out/) = 0;

        virtual HRESULT OddLPrice(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            double *RHS /Out/) = 0;

        virtual HRESULT OddLYield(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            double *RHS /Out/) = 0;

        virtual HRESULT OddFPrice(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            double *RHS /Out/) = 0;

        virtual HRESULT OddFYield(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            double *RHS /Out/) = 0;

        virtual HRESULT RandBetween(
            VARIANT Arg1,
            VARIANT Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT WeekNum(
            VARIANT Arg1,
            VARIANT Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT AmorDegrc(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            double *RHS /Out/) = 0;

        virtual HRESULT AmorLinc(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            double *RHS /Out/) = 0;

        virtual HRESULT Convert(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT AccrInt(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            double *RHS /Out/) = 0;

        virtual HRESULT AccrIntM(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            double *RHS /Out/) = 0;

        virtual HRESULT WorkDay(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT NetworkDays(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            double *RHS /Out/) = 0;
/*
        virtual HRESULT Gcd(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            double *RHS /Out/) = 0;

        virtual HRESULT MultiNomial(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            double *RHS /Out/) = 0;

        virtual HRESULT Lcm(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            double *RHS /Out/) = 0;
*/
        virtual HRESULT FVSchedule(
            VARIANT Arg1,
            VARIANT Arg2,
            double *RHS /Out/) = 0;
/*
        virtual HRESULT SumIfs(
            Range *Arg1,
            Range *Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            double *RHS /Out/) = 0;

        virtual HRESULT CountIfs(
            Range *Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            double *RHS /Out/) = 0;
*/
        virtual HRESULT AverageIf(
            Range *Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            double *RHS /Out/) = 0;
/*
        virtual HRESULT AverageIfs(
            Range *Arg1,
            Range *Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            double *RHS /Out/) = 0;
*/
        virtual HRESULT IfError(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT *RHS /Out/) = 0;
/*
        virtual HRESULT Aggregate(
            double Arg1,
            double Arg2,
            Range *Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            double *RHS /Out/) = 0;
*/
        virtual HRESULT Confidence_Norm(
            double Arg1,
            double Arg2,
            double Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT Confidence_T(
            double Arg1,
            double Arg2,
            double Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT ChiSq_Test(
            VARIANT Arg1,
            VARIANT Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT F_Test(
            VARIANT Arg1,
            VARIANT Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT Covariance_P(
            VARIANT Arg1,
            VARIANT Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT Covariance_S(
            VARIANT Arg1,
            VARIANT Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT Expon_Dist(
            double Arg1,
            double Arg2,
            VARIANT_BOOL Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT Gamma_Dist(
            double Arg1,
            double Arg2,
            double Arg3,
            VARIANT_BOOL Arg4,
            double *RHS /Out/) = 0;

        virtual HRESULT Gamma_Inv(
            double Arg1,
            double Arg2,
            double Arg3,
            double *RHS /Out/) = 0;
/*
        virtual HRESULT Mode_Mult(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT Mode_Sngl(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            double *RHS /Out/) = 0;
*/
        virtual HRESULT Norm_Dist(
            double Arg1,
            double Arg2,
            double Arg3,
            VARIANT_BOOL Arg4,
            double *RHS /Out/) = 0;

        virtual HRESULT Norm_Inv(
            double Arg1,
            double Arg2,
            double Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT Percentile_Exc(
            VARIANT Arg1,
            double Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT Percentile_Inc(
            VARIANT Arg1,
            double Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT PercentRank_Exc(
            VARIANT Arg1,
            double Arg2,
            VARIANT Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT PercentRank_Inc(
            VARIANT Arg1,
            double Arg2,
            VARIANT Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT Poisson_Dist(
            double Arg1,
            double Arg2,
            VARIANT_BOOL Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT Quartile_Exc(
            VARIANT Arg1,
            double Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT Quartile_Inc(
            VARIANT Arg1,
            double Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT Rank_Avg(
            double Arg1,
            Range *Arg2,
            VARIANT Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT Rank_Eq(
            double Arg1,
            Range *Arg2,
            VARIANT Arg3,
            double *RHS /Out/) = 0;
/*
        virtual HRESULT StDev_S(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            double *RHS /Out/) = 0;

        virtual HRESULT StDev_P(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            double *RHS /Out/) = 0;
*/
        virtual HRESULT T_Dist(
            double Arg1,
            double Arg2,
            VARIANT_BOOL Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT T_Dist_2T(
            double Arg1,
            double Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT T_Dist_RT(
            double Arg1,
            double Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT T_Inv(
            double Arg1,
            double Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT T_Inv_2T(
            double Arg1,
            double Arg2,
            double *RHS /Out/) = 0;
/*
        virtual HRESULT Var_S(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            double *RHS /Out/) = 0;

        virtual HRESULT Var_P(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            double *RHS /Out/) = 0;
*/
        virtual HRESULT Weibull_Dist(
            double Arg1,
            double Arg2,
            double Arg3,
            VARIANT_BOOL Arg4,
            double *RHS /Out/) = 0;

        virtual HRESULT NetworkDays_Intl(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            double *RHS /Out/) = 0;

        virtual HRESULT WorkDay_Intl(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            double *RHS /Out/) = 0;

        virtual HRESULT ISO_Ceiling(
            double Arg1,
            VARIANT Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT Dummy21(
            double Arg1,
            double Arg2,
            double *RHS /Out/) = 0;
/*
        virtual HRESULT Dummy19(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            VARIANT *RHS /Out/) = 0;
*/
        virtual HRESULT Beta_Dist(
            double Arg1,
            double Arg2,
            double Arg3,
            VARIANT_BOOL Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            double *RHS /Out/) = 0;

        virtual HRESULT Beta_Inv(
            double Arg1,
            double Arg2,
            double Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            double *RHS /Out/) = 0;

        virtual HRESULT ChiSq_Dist(
            double Arg1,
            double Arg2,
            VARIANT_BOOL Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT ChiSq_Dist_RT(
            double Arg1,
            double Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT ChiSq_Inv(
            double Arg1,
            double Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT ChiSq_Inv_RT(
            double Arg1,
            double Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT F_Dist(
            double Arg1,
            double Arg2,
            double Arg3,
            VARIANT_BOOL Arg4,
            double *RHS /Out/) = 0;

        virtual HRESULT F_Dist_RT(
            double Arg1,
            double Arg2,
            double Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT F_Inv(
            double Arg1,
            double Arg2,
            double Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT F_Inv_RT(
            double Arg1,
            double Arg2,
            double Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT HypGeom_Dist(
            double Arg1,
            double Arg2,
            double Arg3,
            double Arg4,
            VARIANT_BOOL Arg5,
            double *RHS /Out/) = 0;

        virtual HRESULT LogNorm_Dist(
            double Arg1,
            double Arg2,
            double Arg3,
            VARIANT_BOOL Arg4,
            double *RHS /Out/) = 0;

        virtual HRESULT LogNorm_Inv(
            double Arg1,
            double Arg2,
            double Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT NegBinom_Dist(
            double Arg1,
            double Arg2,
            double Arg3,
            VARIANT_BOOL Arg4,
            double *RHS /Out/) = 0;

        virtual HRESULT Norm_S_Dist(
            double Arg1,
            VARIANT_BOOL Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT Norm_S_Inv(
            double Arg1,
            double *RHS /Out/) = 0;

        virtual HRESULT T_Test(
            VARIANT Arg1,
            VARIANT Arg2,
            double Arg3,
            double Arg4,
            double *RHS /Out/) = 0;

        virtual HRESULT Z_Test(
            VARIANT Arg1,
            double Arg2,
            VARIANT Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT Binom_Dist(
            double Arg1,
            double Arg2,
            double Arg3,
            VARIANT_BOOL Arg4,
            double *RHS /Out/) = 0;

        virtual HRESULT Binom_Inv(
            double Arg1,
            double Arg2,
            double Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT Erf_Precise(
            VARIANT Arg1,
            double *RHS /Out/) = 0;

        virtual HRESULT ErfC_Precise(
            VARIANT Arg1,
            double *RHS /Out/) = 0;

        virtual HRESULT GammaLn_Precise(
            double Arg1,
            double *RHS /Out/) = 0;

        virtual HRESULT Ceiling_Precise(
            double Arg1,
            VARIANT Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT Floor_Precise(
            double Arg1,
            VARIANT Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT Acot(
            double Arg1,
            double *RHS /Out/) = 0;

        virtual HRESULT Acoth(
            double Arg1,
            double *RHS /Out/) = 0;

        virtual HRESULT Cot(
            double Arg1,
            double *RHS /Out/) = 0;

        virtual HRESULT Coth(
            double Arg1,
            double *RHS /Out/) = 0;

        virtual HRESULT Csc(
            double Arg1,
            double *RHS /Out/) = 0;

        virtual HRESULT Csch(
            double Arg1,
            double *RHS /Out/) = 0;

        virtual HRESULT Sec(
            double Arg1,
            double *RHS /Out/) = 0;

        virtual HRESULT Sech(
            double Arg1,
            double *RHS /Out/) = 0;

        virtual HRESULT ImCot(
            VARIANT Arg1,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT ImTan(
            VARIANT Arg1,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT ImCsc(
            VARIANT Arg1,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT ImCsch(
            VARIANT Arg1,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT ImSec(
            VARIANT Arg1,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT ImSech(
            VARIANT Arg1,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT Bitand(
            double Arg1,
            double Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT Bitor(
            double Arg1,
            double Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT Bitxor(
            double Arg1,
            double Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT Bitlshift(
            double Arg1,
            double Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT Bitrshift(
            double Arg1,
            double Arg2,
            double *RHS /Out/) = 0;
/*
        virtual HRESULT Xor(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            VARIANT_BOOL *RHS /Out/) = 0;
*/
        virtual HRESULT Combina(
            double Arg1,
            double Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT Permutationa(
            double Arg1,
            double Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT PDuration(
            double Arg1,
            double Arg2,
            double Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT Base(
            double Arg1,
            double Arg2,
            VARIANT Arg3,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT Decimal(
            BSTR Arg1,
            double Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT Days(
            VARIANT Arg1,
            VARIANT Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT Binom_Dist_Range(
            double Arg1,
            double Arg2,
            double Arg3,
            VARIANT Arg4,
            double *RHS /Out/) = 0;

        virtual HRESULT Gamma(
            double Arg1,
            double *RHS /Out/) = 0;

        virtual HRESULT Gauss(
            double Arg1,
            double *RHS /Out/) = 0;

        virtual HRESULT Phi(
            double Arg1,
            double *RHS /Out/) = 0;
/*
        virtual HRESULT Skew_p(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            VARIANT Arg4,
            VARIANT Arg5,
            VARIANT Arg6,
            VARIANT Arg7,
            VARIANT Arg8,
            VARIANT Arg9,
            VARIANT Arg10,
            VARIANT Arg11,
            VARIANT Arg12,
            VARIANT Arg13,
            VARIANT Arg14,
            VARIANT Arg15,
            VARIANT Arg16,
            VARIANT Arg17,
            VARIANT Arg18,
            VARIANT Arg19,
            VARIANT Arg20,
            VARIANT Arg21,
            VARIANT Arg22,
            VARIANT Arg23,
            VARIANT Arg24,
            VARIANT Arg25,
            VARIANT Arg26,
            VARIANT Arg27,
            VARIANT Arg28,
            VARIANT Arg29,
            VARIANT Arg30,
            double *RHS /Out/) = 0;
*/
        virtual HRESULT Rri(
            double Arg1,
            double Arg2,
            double Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT Unichar(
            double Arg1,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT Unicode(
            BSTR Arg1,
            double *RHS /Out/) = 0;

        virtual HRESULT Munit(
            double Arg1,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT Arabic(
            BSTR Arg1,
            double *RHS /Out/) = 0;

        virtual HRESULT IsoWeekNum(
            double Arg1,
            VARIANT Arg2,
            double *RHS /Out/) = 0;

        virtual HRESULT NumberValue(
            BSTR Arg1,
            BSTR Arg2,
            BSTR Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT IsFormula(
            Range *Arg1,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT IfNa(
            VARIANT Arg1,
            VARIANT Arg2,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT Ceiling_Math(
            double Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT Floor_Math(
            double Arg1,
            VARIANT Arg2,
            VARIANT Arg3,
            double *RHS /Out/) = 0;

        virtual HRESULT ImSinh(
            VARIANT Arg1,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT ImCosh(
            VARIANT Arg1,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT FilterXML(
            BSTR Arg1,
            BSTR Arg2,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT WebService(
            BSTR Arg1,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT EncodeURL(
            BSTR Arg1,
            VARIANT *RHS /Out/) = 0;

    };
};
