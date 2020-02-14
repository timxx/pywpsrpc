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
            VARIANT SolveOrder = argMissing2(),
            VARIANT Type = argMissing2(),
            CalculatedMember **RHS /Out/ = 0) = 0;

        virtual HRESULT Add(
            BSTR Name,
            VARIANT Formula,
            VARIANT SolveOrder = argMissing2(),
            VARIANT Type = argMissing2(),
            VARIANT Dynamic = argMissing2(),
            VARIANT DisplayFolder = argMissing2(),
            VARIANT HierarchizeDistinct = argMissing2(),
            CalculatedMember **RHS /Out/ = 0) = 0;

        virtual HRESULT AddCalculatedMember(
            BSTR Name,
            VARIANT Formula,
            VARIANT SolveOrder = argMissing2(),
            VARIANT Type = argMissing2(),
            VARIANT DisplayFolder = argMissing2(),
            VARIANT MeasureGroup = argMissing2(),
            VARIANT ParentHierarchy = argMissing2(),
            VARIANT ParentMember = argMissing2(),
            VARIANT NumberFormat = argMissing2(),
            CalculatedMember **RHS /Out/ = 0) = 0;

    };
};
