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
    struct DiagramNodeChildren : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        virtual HRESULT get_FirstChild(
            DiagramNode **prop /Out/) = 0;

        virtual HRESULT get_LastChild(
            DiagramNode **prop /Out/) = 0;

        virtual HRESULT Item(
            VARIANT *Index,
            DiagramNode **prop /Out/) = 0;

        virtual HRESULT AddNode(
            VARIANT *Index,
            MsoDiagramNodeType NodeType = wpsapi::msoDiagramNode,
            DiagramNode **prop /Out/ = 0) = 0;

        virtual HRESULT SelectAll() = 0;

    };
};
