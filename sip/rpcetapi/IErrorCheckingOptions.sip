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
    struct IErrorCheckingOptions : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_BackgroundChecking(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_BackgroundChecking(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_IndicatorColorIndex(
            XlColorIndex *RHS /Out/) = 0;

        virtual HRESULT put_IndicatorColorIndex(
            XlColorIndex RHS) = 0;

        virtual HRESULT get_EvaluateToError(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EvaluateToError(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_TextDate(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_TextDate(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_NumberAsText(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_NumberAsText(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_InconsistentFormula(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_InconsistentFormula(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_OmittedCells(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_OmittedCells(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_UnlockedFormulaCells(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_UnlockedFormulaCells(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_EmptyCellReferences(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EmptyCellReferences(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ListDataValidation(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ListDataValidation(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_InconsistentTableFormula(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_InconsistentTableFormula(
            VARIANT_BOOL RHS) = 0;

    };
};
