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
    struct IChartObjects : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual void  _Dummy3() = 0;

        virtual HRESULT BringToFront(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT _Copy(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT CopyPicture(
            XlPictureAppearance Appearance,
            XlCopyPictureFormat Format,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT Cut(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT Delete(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT Duplicate(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Enabled(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Enabled(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Height(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Height(
            double RHS) = 0;

        virtual void  _Dummy12() = 0;

        virtual HRESULT get_Left(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Left(
            double RHS) = 0;

        virtual HRESULT get_Locked(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Locked(
            VARIANT_BOOL RHS) = 0;

        virtual void  _Dummy15() = 0;

        virtual HRESULT get_OnAction(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_OnAction(
            BSTR RHS) = 0;

        virtual HRESULT get_Placement(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Placement(
            VARIANT RHS) = 0;

        virtual HRESULT get_PrintObject(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_PrintObject(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT Select(
            VARIANT Replace,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT SendToBack(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Top(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Top(
            double RHS) = 0;

        virtual void  _Dummy22() = 0;

        virtual HRESULT get_Visible(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Visible(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Width(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Width(
            double RHS) = 0;

        virtual void  _Dummy25() = 0;

        virtual HRESULT get_ShapeRange(
            ShapeRange **RHS /Out/) = 0;

        virtual void  _Dummy27() = 0;

        virtual void  _Dummy28() = 0;

        virtual HRESULT get_ProtectChartObject(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ProtectChartObject(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_RoundedCorners(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_RoundedCorners(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Border(
            Border **RHS /Out/) = 0;

        virtual HRESULT get_Interior(
            Interior **RHS /Out/) = 0;

        virtual HRESULT get_Shadow(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Shadow(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT Copy(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT Add(
            double Left,
            double Top,
            double Width,
            double Height,
            ChartObject **RHS /Out/) = 0;

        virtual HRESULT get_Count(
            long *RHS /Out/) = 0;

        virtual HRESULT Group(
            GroupObject **RHS /Out/) = 0;

        virtual HRESULT Item(
            VARIANT Index,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT _NewEnum(
            IUnknown **RHS /Out/) = 0;

        virtual HRESULT _Default(
            VARIANT Index,
            IDispatch **RHS /Out/) = 0;

    };
};
