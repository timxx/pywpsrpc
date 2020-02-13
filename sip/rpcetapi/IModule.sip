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
    struct IModule : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT Activate(
            long lcid) = 0;

        virtual HRESULT Copy(
            VARIANT Before,
            VARIANT After,
            long lcid) = 0;

        virtual HRESULT Delete(
            long lcid) = 0;

        virtual HRESULT get_CodeName(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get__CodeName(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put__CodeName(
            BSTR RHS) = 0;

        virtual HRESULT get_Index(
            long lcid,
            long *RHS /Out/) = 0;

        virtual HRESULT Move(
            VARIANT Before,
            VARIANT After,
            long lcid) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR RHS) = 0;

        virtual HRESULT get_Next(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_OnDoubleClick(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_OnDoubleClick(
            long lcid,
            BSTR RHS) = 0;

        virtual HRESULT get_OnSheetActivate(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_OnSheetActivate(
            long lcid,
            BSTR RHS) = 0;

        virtual HRESULT get_OnSheetDeactivate(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_OnSheetDeactivate(
            long lcid,
            BSTR RHS) = 0;

        virtual HRESULT get_PageSetup(
            PageSetup **RHS /Out/) = 0;

        virtual HRESULT get_Previous(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT __PrintOut(
            VARIANT From,
            VARIANT To,
            VARIANT Copies,
            VARIANT Preview,
            VARIANT ActivePrinter,
            VARIANT PrintToFile,
            VARIANT Collate,
            long lcid) = 0;

        virtual void  _Dummy18() = 0;

        virtual HRESULT _Protect(
            VARIANT Password,
            VARIANT DrawingObjects,
            VARIANT Contents,
            VARIANT Scenarios,
            VARIANT UserInterfaceOnly,
            long lcid) = 0;

        virtual HRESULT get_ProtectContents(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual void  _Dummy21() = 0;

        virtual HRESULT get_ProtectionMode(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual void  _Dummy23() = 0;

        virtual HRESULT _SaveAs(
            BSTR Filename,
            VARIANT FileFormat,
            VARIANT Password,
            VARIANT WriteResPassword,
            VARIANT ReadOnlyRecommended,
            VARIANT CreateBackup,
            VARIANT AddToMru,
            VARIANT TextCodepage,
            VARIANT TextVisualLayout,
            long lcid) = 0;

        virtual HRESULT Select(
            VARIANT Replace,
            long lcid) = 0;

        virtual HRESULT Unprotect(
            VARIANT Password,
            long lcid) = 0;

        virtual HRESULT get_Visible(
            long lcid,
            XlSheetVisibility *RHS /Out/) = 0;

        virtual HRESULT put_Visible(
            long lcid,
            XlSheetVisibility RHS) = 0;

        virtual HRESULT get_Shapes(
            Shapes **RHS /Out/) = 0;

        virtual HRESULT InsertFile(
            VARIANT Filename,
            VARIANT Merge,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT SaveAs(
            BSTR Filename,
            VARIANT FileFormat,
            VARIANT Password,
            VARIANT WriteResPassword,
            VARIANT ReadOnlyRecommended,
            VARIANT CreateBackup,
            VARIANT AddToMru,
            VARIANT TextCodepage,
            VARIANT TextVisualLayout) = 0;

        virtual HRESULT Protect(
            VARIANT Password,
            VARIANT DrawingObjects,
            VARIANT Contents,
            VARIANT Scenarios,
            VARIANT UserInterfaceOnly) = 0;

        virtual HRESULT _PrintOut(
            VARIANT From,
            VARIANT To,
            VARIANT Copies,
            VARIANT Preview,
            VARIANT ActivePrinter,
            VARIANT PrintToFile,
            VARIANT Collate) = 0;

        virtual HRESULT PrintOut(
            VARIANT From,
            VARIANT To,
            VARIANT Copies,
            VARIANT Preview,
            VARIANT ActivePrinter,
            VARIANT PrintToFile,
            VARIANT Collate) = 0;

    };
};
