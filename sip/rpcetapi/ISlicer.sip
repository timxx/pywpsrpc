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
    struct ISlicer : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR RHS) = 0;

        virtual HRESULT get_Caption(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Caption(
            BSTR RHS) = 0;

        virtual HRESULT get_Top(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Top(
            double RHS) = 0;

        virtual HRESULT get_Left(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Left(
            double RHS) = 0;

        virtual HRESULT get_DisableMoveResizeUI(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisableMoveResizeUI(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Width(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Width(
            double RHS) = 0;

        virtual HRESULT get_Height(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Height(
            double RHS) = 0;

        virtual HRESULT get_RowHeight(
            double *RHS /Out/) = 0;

        virtual HRESULT put_RowHeight(
            double RHS) = 0;

        virtual HRESULT get_ColumnWidth(
            double *RHS /Out/) = 0;

        virtual HRESULT put_ColumnWidth(
            double RHS) = 0;

        virtual HRESULT get_NumberOfColumns(
            long *RHS /Out/) = 0;

        virtual HRESULT put_NumberOfColumns(
            long RHS) = 0;

        virtual HRESULT get_DisplayHeader(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayHeader(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Locked(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Locked(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_SlicerCache(
            SlicerCache **RHS /Out/) = 0;

        virtual HRESULT get_SlicerCacheLevel(
            SlicerCacheLevel **RHS /Out/) = 0;

        virtual HRESULT get_Shape(
            Shape **RHS /Out/) = 0;

        virtual HRESULT get_Style(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Style(
            VARIANT RHS) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Cut() = 0;

        virtual HRESULT Copy() = 0;

        virtual HRESULT get_ActiveItem(
            SlicerItem **RHS /Out/) = 0;

        virtual HRESULT get_TimelineViewState(
            TimelineViewState **RHS /Out/) = 0;

        virtual HRESULT get_SlicerCacheType(
            XlSlicerCacheType *RHS /Out/) = 0;

    };
};
