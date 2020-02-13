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
    struct OMathFunction : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Type(
            WdOMathFunctionType *prop /Out/) = 0;

        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

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
};
