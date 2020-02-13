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
    struct IMsoDiagram : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Nodes(
            DiagramNodes **Nodes /Out/) = 0;

        virtual HRESULT get_Type(
            MsoDiagramType *Type /Out/) = 0;

        virtual HRESULT get_AutoLayout(
            MsoTriState *AutoLayout /Out/) = 0;

        virtual HRESULT put_AutoLayout(
            MsoTriState AutoLayout) = 0;

        virtual HRESULT get_Reverse(
            MsoTriState *Reverse /Out/) = 0;

        virtual HRESULT put_Reverse(
            MsoTriState Reverse) = 0;

        virtual HRESULT get_AutoFormat(
            MsoTriState *AutoFormat /Out/) = 0;

        virtual HRESULT put_AutoFormat(
            MsoTriState AutoFormat) = 0;

        virtual HRESULT Convert(
            MsoDiagramType Type) = 0;

        virtual HRESULT FitText() = 0;

    };
};
