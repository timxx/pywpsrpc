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
    struct IWindows : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT Arrange(
            XlArrangeStyle ArrangeStyle = etapi::xlArrangeStyleCascade,
            VARIANT ActiveWorkbook = argMissing2(),
            VARIANT SyncHorizontal = argMissing2(),
            VARIANT SyncVertical = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_Count(
            long *RHS /Out/) = 0;

        virtual HRESULT get_Item(
            VARIANT Index,
            Window **RHS /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **RHS /Out/) = 0;

        virtual HRESULT get__Default(
            VARIANT Index,
            Window **RHS /Out/) = 0;

        virtual HRESULT CompareSideBySideWith(
            VARIANT WindowName,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT BreakSideBySide(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_SyncScrollingSideBySide(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_SyncScrollingSideBySide(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT ResetPositionsSideBySide() = 0;

    };
};
