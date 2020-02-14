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
    struct ISlicers : public IDispatch /Abstract/
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
            Slicer **RHS /Out/) = 0;

        virtual HRESULT get__Default(
            VARIANT Index,
            Slicer **RHS /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **RHS /Out/) = 0;

        virtual HRESULT Add(
            VARIANT SlicerDestination,
            VARIANT Level = argMissing2(),
            VARIANT Name = argMissing2(),
            VARIANT Caption = argMissing2(),
            VARIANT Top = argMissing2(),
            VARIANT Left = argMissing2(),
            VARIANT Width = argMissing2(),
            VARIANT Height = argMissing2(),
            Slicer **RHS /Out/ = 0) = 0;

    };
};
