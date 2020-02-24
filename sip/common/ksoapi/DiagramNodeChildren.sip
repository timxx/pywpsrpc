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
    struct DiagramNodeChildren : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get__NewEnum(
            IUnknown **ppunkEnum /Out/) = 0;

        virtual HRESULT Item(
            VARIANT Index,
            DiagramNode **Node /Out/) = 0;

        virtual HRESULT AddNode(
            VARIANT Index = argMissing2(),
            MsoDiagramNodeType NodeType = ksoapi::msoDiagramNode,
            DiagramNode **NewNode /Out/ = 0) = 0;

        virtual HRESULT SelectAll() = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Count(
            int *iDiagramNodes /Out/) = 0;

        virtual HRESULT get_FirstChild(
            DiagramNode **First /Out/) = 0;

        virtual HRESULT get_LastChild(
            DiagramNode **Last /Out/) = 0;

    };
};
