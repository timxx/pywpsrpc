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
    struct DiagramNodeChildren : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get__NewEnum(
            IUnknown **ppunkEnum /Out/) = 0;

        virtual HRESULT Item(
            VARIANT Index,
            DiagramNode **ppNode /Out/) = 0;

        virtual HRESULT AddNode(
            VARIANT Index,
            MsoDiagramNodeType nodeType,
            DiagramNode **ppNewNode /Out/) = 0;

        virtual HRESULT SelectAll() = 0;

        virtual HRESULT get_Parent(
            IDispatch **ppParent /Out/) = 0;

        virtual HRESULT get_Count(
            int *pcDiagramNodes /Out/) = 0;

        virtual HRESULT get_FirstChild(
            DiagramNode **pFirst /Out/) = 0;

        virtual HRESULT get_LastChild(
            DiagramNode **pLast /Out/) = 0;

    };
};
