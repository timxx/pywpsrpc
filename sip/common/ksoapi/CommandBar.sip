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
};
