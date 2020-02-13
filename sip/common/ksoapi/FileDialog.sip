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
    struct FileDialog : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Filters(
            FileDialogFilters **Filters /Out/) = 0;

        virtual HRESULT get_FilterIndex(
            int *FilterIndex /Out/) = 0;

        virtual HRESULT put_FilterIndex(
            int FilterIndex) = 0;

        virtual HRESULT get_Title(
            BSTR *Title /Out/) = 0;

        virtual HRESULT put_Title(
            BSTR Title) = 0;

        virtual HRESULT get_ButtonName(
            BSTR *ButtonName /Out/) = 0;

        virtual HRESULT put_ButtonName(
            BSTR ButtonName) = 0;

        virtual HRESULT get_AllowMultiSelect(
            VARIANT_BOOL *pvarfAllowMultiSelect /Out/) = 0;

        virtual HRESULT put_AllowMultiSelect(
            VARIANT_BOOL pvarfAllowMultiSelect) = 0;

        virtual HRESULT get_InitialView(
            MsoFileDialogView *pinitialview /Out/) = 0;

        virtual HRESULT put_InitialView(
            MsoFileDialogView pinitialview) = 0;

        virtual HRESULT get_InitialFileName(
            BSTR *InitialFileName /Out/) = 0;

        virtual HRESULT put_InitialFileName(
            BSTR InitialFileName) = 0;

        virtual HRESULT get_SelectedItems(
            FileDialogSelectedItems **Files /Out/) = 0;

        virtual HRESULT get_DialogType(
            MsoFileDialogType *pdialogtype /Out/) = 0;

        virtual HRESULT get_Item(
            BSTR *Name /Out/) = 0;

        virtual HRESULT Show(
            int *rval /Out/) = 0;

        virtual HRESULT Execute() = 0;

    };
};
