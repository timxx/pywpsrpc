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
    struct Diagram : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Nodes(
            DiagramNodes **prop /Out/) = 0;

        virtual HRESULT get_Type(
            MsoDiagramType *prop /Out/) = 0;

        virtual HRESULT get_AutoLayout(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_AutoLayout(
            MsoTriState prop) = 0;

        virtual HRESULT get_Reverse(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_Reverse(
            MsoTriState prop) = 0;

        virtual HRESULT get_AutoFormat(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_AutoFormat(
            MsoTriState prop) = 0;

        virtual HRESULT Convert(
            MsoDiagramType Type) = 0;

        virtual HRESULT FitText() = 0;

    };
};
