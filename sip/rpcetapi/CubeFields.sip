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
    struct CubeFields : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Count(
            long *RHS /Out/) = 0;

        virtual HRESULT get_Item(
            VARIANT Index,
            CubeField **RHS /Out/) = 0;

        virtual HRESULT get__Default(
            VARIANT Index,
            CubeField **RHS /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **RHS /Out/) = 0;

        virtual HRESULT AddSet(
            BSTR Name,
            BSTR Caption,
            CubeField **RHS /Out/) = 0;

        virtual HRESULT GetMeasure(
            VARIANT AttributeHierarchy,
            XlConsolidationFunction Function,
            VARIANT Caption = argMissing2(),
            CubeField **RHS /Out/ = 0) = 0;

    };
};
