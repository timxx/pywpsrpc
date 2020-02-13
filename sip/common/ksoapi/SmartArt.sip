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
};
