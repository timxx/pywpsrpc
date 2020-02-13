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
    struct IDiagram : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Nodes(
            DiagramNodes **RHS /Out/) = 0;

        virtual HRESULT get_Type(
            MsoDiagramType *RHS /Out/) = 0;

        virtual HRESULT get_AutoLayout(
            MsoTriState *RHS /Out/) = 0;

        virtual HRESULT put_AutoLayout(
            MsoTriState RHS) = 0;

        virtual HRESULT get_Reverse(
            MsoTriState *RHS /Out/) = 0;

        virtual HRESULT put_Reverse(
            MsoTriState RHS) = 0;

        virtual HRESULT get_AutoFormat(
            MsoTriState *RHS /Out/) = 0;

        virtual HRESULT put_AutoFormat(
            MsoTriState RHS) = 0;

        virtual HRESULT Convert(
            MsoDiagramType Type) = 0;

        virtual HRESULT FitText() = 0;

    };
};
