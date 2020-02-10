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
    struct SmartArt : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_AllNodes(
            SmartArtNodes **Nodes /Out/) = 0;

        virtual HRESULT get_Nodes(
            SmartArtNodes **Nodes /Out/) = 0;

        virtual HRESULT get_Layout(
            SmartArtLayout **Layout /Out/) = 0;

        virtual HRESULT put_Layout(
            SmartArtLayout *Layout) = 0;

        virtual HRESULT get_QuickStyle(
            SmartArtQuickStyle **Style /Out/) = 0;

        virtual HRESULT put_QuickStyle(
            SmartArtQuickStyle *Style) = 0;

        virtual HRESULT get_Color(
            SmartArtColor **ColorStyle /Out/) = 0;

        virtual HRESULT put_Color(
            SmartArtColor *ColorStyle) = 0;

        virtual HRESULT get_Reverse(
            MsoTriState *Reverse /Out/) = 0;

        virtual HRESULT put_Reverse(
            MsoTriState Reverse) = 0;

        virtual HRESULT Reset() = 0;
    };

    struct SmartArtNodes : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get__NewEnum(
            IUnknown **_NewEnum /Out/) = 0;

        virtual HRESULT get_Item(
            VARIANT Index,
            SmartArtNode **SmartArtNode /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Count(
            int *Count /Out/) = 0;

        virtual HRESULT Add(
            SmartArtNode **NewNode /Out/) = 0;
    };

    struct SmartArtNode : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT AddNode(
            MsoSmartArtNodePosition Position,
            MsoSmartArtNodeType Type,
            SmartArtNode **NewNode /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Promote() = 0;

        virtual HRESULT Demote() = 0;

        virtual HRESULT get_OrgChartLayout(
            MsoOrgChartLayoutType *Type /Out/) = 0;

        virtual HRESULT put_OrgChartLayout(
            MsoOrgChartLayoutType Type) = 0;

        virtual HRESULT get_Shapes(
            ShapeRange **Shape /Out/) = 0;

        virtual HRESULT get_TextFrame2(
            TextFrame2 **Frame /Out/) = 0;

        virtual HRESULT Larger() = 0;

        virtual HRESULT Smaller() = 0;

        virtual HRESULT get_Level(
            int *Level /Out/) = 0;

        virtual HRESULT get_Hidden(
            MsoTriState *Hidden /Out/) = 0;

        virtual HRESULT get_Nodes(
            SmartArtNodes **Nodes /Out/) = 0;

        virtual HRESULT get_ParentNode(
            SmartArtNode **Node /Out/) = 0;

        virtual HRESULT get_Type(
            MsoSmartArtNodeType *Type /Out/) = 0;

        virtual HRESULT ReorderUp() = 0;

        virtual HRESULT ReorderDown() = 0;
    };

    struct SmartArtQuickStyles : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get__NewEnum(
            IUnknown **_NewEnum /Out/) = 0;

        virtual HRESULT get_Item(
            VARIANT Index,
            SmartArtQuickStyle **Style /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Count(
            int *Count /Out/) = 0;
    };

    struct SmartArtQuickStyle : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Id(
            BSTR *StyleId /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *Name /Out/) = 0;

        virtual HRESULT get_Description(
            BSTR *Description /Out/) = 0;

        virtual HRESULT get_Category(
            BSTR *Category /Out/) = 0;
    };

    struct SmartArtColors : ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get__NewEnum(
            IUnknown **_NewEnum /Out/) = 0;

        virtual HRESULT get_Item(
            VARIANT Index,
            SmartArtColor **SmartArtColor /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Count(
            int *Count /Out/) = 0;
    };

    struct SmartArtColor : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Id(
            BSTR *ColorStyleId /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *Name /Out/) = 0;

        virtual HRESULT get_Description(
            BSTR *Description /Out/) = 0;

        virtual HRESULT get_Category(
            BSTR *Category /Out/) = 0;
    };

    struct SmartArtLayouts : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get__NewEnum(
            IUnknown **_NewEnum /Out/) = 0;

        virtual HRESULT get_Item(
            VARIANT Index,
            SmartArtLayout **SmartArtLayout /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Count(
            int *Count /Out/) = 0;
    };

    struct SmartArtLayout : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Id(
            BSTR *LayoutId /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *Name /Out/) = 0;

        virtual HRESULT get_Description(
            BSTR *Description /Out/) = 0;

        virtual HRESULT get_Category(
            BSTR *Category /Out/) = 0;
    };
};