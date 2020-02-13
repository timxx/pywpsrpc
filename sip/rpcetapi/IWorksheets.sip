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
    struct IWorksheets : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT Add(
            VARIANT Before,
            VARIANT After,
            VARIANT Count,
            VARIANT Type,
            long lcid,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT Copy(
            VARIANT Before,
            VARIANT After,
            long lcid) = 0;

        virtual HRESULT get_Count(
            long *RHS /Out/) = 0;

        virtual HRESULT Delete(
            long lcid) = 0;

        virtual HRESULT FillAcrossSheets(
            Range *Range,
            XlFillWith Type,
            long lcid) = 0;

        virtual HRESULT get_Item(
            VARIANT Index,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT Move(
            VARIANT Before,
            VARIANT After,
            long lcid) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **RHS /Out/) = 0;

        virtual HRESULT __PrintOut(
            VARIANT From,
            VARIANT To,
            VARIANT Copies,
            VARIANT Preview,
            VARIANT ActivePrinter,
            VARIANT PrintToFile,
            VARIANT Collate,
            long lcid) = 0;

        virtual HRESULT PrintPreview(
            VARIANT EnableChanges,
            long lcid) = 0;

        virtual HRESULT Select(
            VARIANT Replace,
            long lcid) = 0;

        virtual HRESULT get_HPageBreaks(
            HPageBreaks **RHS /Out/) = 0;

        virtual HRESULT get_VPageBreaks(
            VPageBreaks **RHS /Out/) = 0;

        virtual HRESULT get_Visible(
            long lcid,
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Visible(
            long lcid,
            VARIANT RHS) = 0;

        virtual HRESULT get__Default(
            VARIANT Index,
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT _PrintOut(
            VARIANT From,
            VARIANT To,
            VARIANT Copies,
            VARIANT Preview,
            VARIANT ActivePrinter,
            VARIANT PrintToFile,
            VARIANT Collate,
            VARIANT PrToFileName,
            long lcid) = 0;

        virtual HRESULT PrintOut(
            VARIANT From,
            VARIANT To,
            VARIANT Copies,
            VARIANT Preview,
            VARIANT ActivePrinter,
            VARIANT PrintToFile,
            VARIANT Collate,
            VARIANT PrToFileName,
            VARIANT IgnorePrintAreas,
            long lcid) = 0;

        virtual HRESULT Add2(
            VARIANT Before,
            VARIANT After,
            VARIANT Count,
            VARIANT NewLayout,
            IDispatch **RHS /Out/) = 0;

    };
};
