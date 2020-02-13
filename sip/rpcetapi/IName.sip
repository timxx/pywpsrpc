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
    struct IName : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get__Default(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Index(
            long *RHS /Out/) = 0;

        virtual HRESULT get_Category(
            long lcidIn,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Category(
            long lcidIn,
            BSTR RHS) = 0;

        virtual HRESULT get_CategoryLocal(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_CategoryLocal(
            BSTR RHS) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_MacroType(
            XlXLMMacroType *RHS /Out/) = 0;

        virtual HRESULT put_MacroType(
            XlXLMMacroType RHS) = 0;

        virtual HRESULT get_Name(
            long lcidIn,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Name(
            long lcidIn,
            BSTR RHS) = 0;

        virtual HRESULT get_RefersTo(
            long lcidIn,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_RefersTo(
            long lcidIn,
            VARIANT RHS) = 0;

        virtual HRESULT get_ShortcutKey(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_ShortcutKey(
            BSTR RHS) = 0;

        virtual HRESULT get_Value(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Value(
            BSTR RHS) = 0;

        virtual HRESULT get_Visible(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Visible(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_NameLocal(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_NameLocal(
            BSTR RHS) = 0;

        virtual HRESULT get_RefersToLocal(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_RefersToLocal(
            VARIANT RHS) = 0;

        virtual HRESULT get_RefersToR1C1(
            long lcidIn,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_RefersToR1C1(
            long lcidIn,
            VARIANT RHS) = 0;

        virtual HRESULT get_RefersToR1C1Local(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_RefersToR1C1Local(
            VARIANT RHS) = 0;

        virtual HRESULT get_RefersToRange(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_Comment(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Comment(
            BSTR RHS) = 0;

        virtual HRESULT get_WorkbookParameter(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_WorkbookParameter(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ValidWorkbookParameter(
            VARIANT_BOOL *RHS /Out/) = 0;

    };
};
