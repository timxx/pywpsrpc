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
    struct ICalculatedMembers : public IDispatch /Abstract/
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
            CalculatedMember **RHS /Out/) = 0;

        virtual HRESULT get__Default(
            VARIANT Index,
            CalculatedMember **RHS /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **RHS /Out/) = 0;

        virtual HRESULT _Add(
            BSTR Name,
            BSTR Formula,
            VARIANT SolveOrder,
            VARIANT Type,
            CalculatedMember **RHS /Out/) = 0;

        virtual HRESULT Add(
            BSTR Name,
            VARIANT Formula,
            VARIANT SolveOrder,
            VARIANT Type,
            VARIANT Dynamic,
            VARIANT DisplayFolder,
            VARIANT HierarchizeDistinct,
            CalculatedMember **RHS /Out/) = 0;

        virtual HRESULT AddCalculatedMember(
            BSTR Name,
            VARIANT Formula,
            VARIANT SolveOrder,
            VARIANT Type,
            VARIANT DisplayFolder,
            VARIANT MeasureGroup,
            VARIANT ParentHierarchy,
            VARIANT ParentMember,
            VARIANT NumberFormat,
            CalculatedMember **RHS /Out/) = 0;

    };
};
