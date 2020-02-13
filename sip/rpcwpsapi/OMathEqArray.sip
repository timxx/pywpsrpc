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
    struct OMathEqArray : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

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
};
