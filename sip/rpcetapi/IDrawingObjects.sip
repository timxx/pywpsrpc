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
    struct IDrawingObjects : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual void _Dummy3() = 0;

        virtual HRESULT BringToFront(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT Copy(
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

        virtual void _Dummy12() = 0;

        virtual HRESULT get_Left(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Left(
            double RHS) = 0;

        virtual HRESULT get_Locked(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Locked(
            VARIANT_BOOL RHS) = 0;

        virtual void _Dummy15() = 0;

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
            VARIANT Replace = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT SendToBack(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Top(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Top(
            double RHS) = 0;

        virtual void _Dummy22() = 0;

        virtual HRESULT get_Visible(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Visible(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Width(
            double *RHS /Out/) = 0;

        virtual HRESULT put_Width(
            double RHS) = 0;

        virtual HRESULT get_ZOrder(
            long *RHS /Out/) = 0;

        virtual HRESULT get_ShapeRange(
            ShapeRange **RHS /Out/) = 0;

        virtual HRESULT get_Accelerator(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Accelerator(
            VARIANT RHS) = 0;

        virtual void _Dummy28() = 0;

        virtual HRESULT get_AddIndent(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AddIndent(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT AddItem(
            VARIANT Text,
            VARIANT Index = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_ArrowHeadLength(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_ArrowHeadLength(
            VARIANT RHS) = 0;

        virtual HRESULT get_ArrowHeadStyle(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_ArrowHeadStyle(
            VARIANT RHS) = 0;

        virtual HRESULT get_ArrowHeadWidth(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_ArrowHeadWidth(
            VARIANT RHS) = 0;

        virtual HRESULT get_AutoSize(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AutoSize(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Border(
            Border **RHS /Out/) = 0;

        virtual HRESULT get_CancelButton(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_CancelButton(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Caption(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Caption(
            BSTR RHS) = 0;

        virtual HRESULT get_Characters(
            VARIANT Start = argMissing2(),
            VARIANT Length = argMissing2(),
            Characters **RHS /Out/ = 0) = 0;

        virtual HRESULT CheckSpelling(
            VARIANT CustomDictionary = argMissing2(),
            VARIANT IgnoreUppercase = argMissing2(),
            VARIANT AlwaysSuggest = argMissing2(),
            VARIANT SpellLang = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get__Default(
            long *RHS /Out/) = 0;

        virtual HRESULT put__Default(
            long RHS) = 0;

        virtual HRESULT get_DefaultButton(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DefaultButton(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DismissButton(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DismissButton(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Display3DShading(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Display3DShading(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DisplayVerticalScrollBar(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_DisplayVerticalScrollBar(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_DropDownLines(
            long *RHS /Out/) = 0;

        virtual HRESULT put_DropDownLines(
            long RHS) = 0;

        virtual HRESULT get_Font(
            Font **RHS /Out/) = 0;

        virtual void _Dummy47() = 0;

        virtual HRESULT get_HelpButton(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_HelpButton(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_HorizontalAlignment(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_HorizontalAlignment(
            VARIANT RHS) = 0;

        virtual HRESULT get_InputType(
            long *RHS /Out/) = 0;

        virtual HRESULT put_InputType(
            long RHS) = 0;

        virtual HRESULT get_Interior(
            Interior **RHS /Out/) = 0;

        virtual HRESULT get_LargeChange(
            long *RHS /Out/) = 0;

        virtual HRESULT put_LargeChange(
            long RHS) = 0;

        virtual HRESULT get_LinkedCell(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_LinkedCell(
            BSTR RHS) = 0;

        virtual void _Dummy54() = 0;

        virtual HRESULT List(
            VARIANT Index = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual void _Dummy56() = 0;

        virtual HRESULT get_ListFillRange(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_ListFillRange(
            BSTR RHS) = 0;

        virtual HRESULT get_ListIndex(
            long *RHS /Out/) = 0;

        virtual HRESULT put_ListIndex(
            long RHS) = 0;

        virtual HRESULT get_LockedText(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_LockedText(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Max(
            long *RHS /Out/) = 0;

        virtual HRESULT put_Max(
            long RHS) = 0;

        virtual HRESULT get_Min(
            long *RHS /Out/) = 0;

        virtual HRESULT put_Min(
            long RHS) = 0;

        virtual HRESULT get_MultiLine(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_MultiLine(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_MultiSelect(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_MultiSelect(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Orientation(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Orientation(
            VARIANT RHS) = 0;

        virtual HRESULT get_PhoneticAccelerator(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_PhoneticAccelerator(
            VARIANT RHS) = 0;

        virtual HRESULT RemoveAllItems(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT RemoveItem(
            long Index,
            VARIANT Count = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT Reshape(
            long Vertex,
            VARIANT Insert,
            VARIANT Left = argMissing2(),
            VARIANT Top = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_RoundedCorners(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_RoundedCorners(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT Selected(
            VARIANT Index = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_Shadow(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Shadow(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_SmallChange(
            long *RHS /Out/) = 0;

        virtual HRESULT put_SmallChange(
            long RHS) = 0;

        virtual HRESULT get_Text(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Text(
            BSTR RHS) = 0;

        virtual HRESULT Ungroup(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Value(
            long *RHS /Out/) = 0;

        virtual HRESULT put_Value(
            long RHS) = 0;

        virtual HRESULT get_VerticalAlignment(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_VerticalAlignment(
            VARIANT RHS) = 0;

        virtual HRESULT Vertices(
            VARIANT Index1 = argMissing2(),
            VARIANT Index2 = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_ReadingOrder(
            long *RHS /Out/) = 0;

        virtual HRESULT put_ReadingOrder(
            long RHS) = 0;

        virtual HRESULT get_Count(
            long *RHS /Out/) = 0;

        virtual HRESULT Item(
            VARIANT Index,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT Group(
            GroupObject **RHS /Out/) = 0;

        virtual HRESULT LinkCombo(
            VARIANT Link = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT _NewEnum(
            IUnknown **RHS /Out/) = 0;

    };
};
