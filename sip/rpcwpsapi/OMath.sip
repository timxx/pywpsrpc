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
    struct OMath : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

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
};
