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
    struct Frames : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT Item(
            long Index,
            Frame **prop /Out/) = 0;

        virtual HRESULT Add(
            Range *Range,
            Frame **prop /Out/) = 0;

        virtual HRESULT Delete() = 0;
    };

    struct Frame : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_HeightRule(
            WdFrameSizeRule *prop /Out/) = 0;

        virtual HRESULT put_HeightRule(
            WdFrameSizeRule prop) = 0;

        virtual HRESULT get_WidthRule(
            WdFrameSizeRule *prop /Out/) = 0;

        virtual HRESULT put_WidthRule(
            WdFrameSizeRule prop) = 0;

        virtual HRESULT get_HorizontalDistanceFromText(
            single *prop /Out/) = 0;

        virtual HRESULT put_HorizontalDistanceFromText(
            single prop) = 0;

        virtual HRESULT get_Height(
            single *prop /Out/) = 0;

        virtual HRESULT put_Height(
            single prop) = 0;

        virtual HRESULT get_HorizontalPosition(
            single *prop /Out/) = 0;

        virtual HRESULT put_HorizontalPosition(
            single prop) = 0;

        virtual HRESULT get_LockAnchor(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_LockAnchor(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_RelativeHorizontalPosition(
            WdRelativeHorizontalPosition *prop /Out/) = 0;

        virtual HRESULT put_RelativeHorizontalPosition(
            WdRelativeHorizontalPosition prop) = 0;

        virtual HRESULT get_RelativeVerticalPosition(
            WdRelativeVerticalPosition *prop /Out/) = 0;

        virtual HRESULT put_RelativeVerticalPosition(
            WdRelativeVerticalPosition prop) = 0;

        virtual HRESULT get_VerticalDistanceFromText(
            single *prop /Out/) = 0;

        virtual HRESULT put_VerticalDistanceFromText(
            single prop) = 0;

        virtual HRESULT get_VerticalPosition(
            single *prop /Out/) = 0;

        virtual HRESULT put_VerticalPosition(
            single prop) = 0;

        virtual HRESULT get_Width(
            single *prop /Out/) = 0;

        virtual HRESULT put_Width(
            single prop) = 0;

        virtual HRESULT get_TextWrap(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_TextWrap(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Shading(
            Shading **prop /Out/) = 0;

        virtual HRESULT get_Borders(
            Borders **prop /Out/) = 0;

        virtual HRESULT put_Borders(
            Borders *prop) = 0;

        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Select() = 0;

        virtual HRESULT Copy() = 0;

        virtual HRESULT Cut() = 0;
    };

    struct Frameset : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT get_ParentFrameset(
            Frameset **prop /Out/) = 0;

        virtual HRESULT get_Type(
            WdFramesetType *prop /Out/) = 0;

        virtual HRESULT get_WidthType(
            WdFramesetSizeType *prop /Out/) = 0;

        virtual HRESULT put_WidthType(
            WdFramesetSizeType prop) = 0;

        virtual HRESULT get_HeightType(
            WdFramesetSizeType *prop /Out/) = 0;

        virtual HRESULT put_HeightType(
            WdFramesetSizeType prop) = 0;

        virtual HRESULT get_Width(
            long *prop /Out/) = 0;

        virtual HRESULT put_Width(
            long prop) = 0;

        virtual HRESULT get_Height(
            long *prop /Out/) = 0;

        virtual HRESULT put_Height(
            long prop) = 0;

        virtual HRESULT get_ChildFramesetCount(
            long *prop /Out/) = 0;

        virtual HRESULT get_ChildFramesetItem(
            long Index,
            Frameset **prop /Out/) = 0;

        virtual HRESULT get_FramesetBorderWidth(
            single *prop /Out/) = 0;

        virtual HRESULT put_FramesetBorderWidth(
            single prop) = 0;

        virtual HRESULT get_FramesetBorderColor(
            WdColor *prop /Out/) = 0;

        virtual HRESULT put_FramesetBorderColor(
            WdColor prop) = 0;

        virtual HRESULT get_FrameScrollbarType(
            WdScrollbarType *prop /Out/) = 0;

        virtual HRESULT put_FrameScrollbarType(
            WdScrollbarType prop) = 0;

        virtual HRESULT get_FrameResizable(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_FrameResizable(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_FrameName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_FrameName(
            BSTR prop) = 0;

        virtual HRESULT get_FrameDisplayBorders(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_FrameDisplayBorders(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_FrameDefaultURL(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_FrameDefaultURL(
            BSTR prop) = 0;

        virtual HRESULT get_FrameLinkToFile(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_FrameLinkToFile(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT AddNewFrame(
            WdFramesetNewFrameLocation Where,
            Frameset **prop /Out/) = 0;

        virtual HRESULT Delete() = 0;
    };
};