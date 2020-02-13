/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wpsapi
{
    struct MailingLabel : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_DefaultPrintBarCode(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DefaultPrintBarCode(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_DefaultLaserTray(
            WdPaperTray *prop /Out/) = 0;

        virtual HRESULT put_DefaultLaserTray(
            WdPaperTray prop) = 0;

        virtual HRESULT get_CustomLabels(
            CustomLabels **prop /Out/) = 0;

        virtual HRESULT get_DefaultLabelName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_DefaultLabelName(
            BSTR prop) = 0;

        virtual HRESULT CreateNewDocument2000(
            VARIANT *Name = argMissing(),
            VARIANT *Address = argMissing(),
            VARIANT *AutoText = argMissing(),
            VARIANT *ExtractAddress = argMissing(),
            VARIANT *LaserTray = argMissing(),
            Document **prop /Out/ = 0) = 0;

        virtual HRESULT PrintOut2000(
            VARIANT *Name = argMissing(),
            VARIANT *Address = argMissing(),
            VARIANT *ExtractAddress = argMissing(),
            VARIANT *LaserTray = argMissing(),
            VARIANT *SingleLabel = argMissing(),
            VARIANT *Row = argMissing(),
            VARIANT *Column = argMissing()) = 0;

        virtual HRESULT LabelOptions() = 0;

        virtual HRESULT CreateNewDocument(
            VARIANT *Name = argMissing(),
            VARIANT *Address = argMissing(),
            VARIANT *AutoText = argMissing(),
            VARIANT *ExtractAddress = argMissing(),
            VARIANT *LaserTray = argMissing(),
            VARIANT *PrintEPostageLabel = argMissing(),
            VARIANT *Vertical = argMissing(),
            Document **prop /Out/ = 0) = 0;

        virtual HRESULT PrintOut(
            VARIANT *Name = argMissing(),
            VARIANT *Address = argMissing(),
            VARIANT *ExtractAddress = argMissing(),
            VARIANT *LaserTray = argMissing(),
            VARIANT *SingleLabel = argMissing(),
            VARIANT *Row = argMissing(),
            VARIANT *Column = argMissing(),
            VARIANT *PrintEPostageLabel = argMissing(),
            VARIANT *Vertical = argMissing()) = 0;

        virtual HRESULT get_Vertical(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Vertical(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT CreateNewDocumentByID(
            VARIANT *LabelID = argMissing(),
            VARIANT *Address = argMissing(),
            VARIANT *AutoText = argMissing(),
            VARIANT *ExtractAddress = argMissing(),
            VARIANT *LaserTray = argMissing(),
            VARIANT *PrintEPostageLabel = argMissing(),
            VARIANT *Vertical = argMissing(),
            Document **prop /Out/ = 0) = 0;

        virtual HRESULT PrintOutByID(
            VARIANT *LabelID = argMissing(),
            VARIANT *Address = argMissing(),
            VARIANT *ExtractAddress = argMissing(),
            VARIANT *LaserTray = argMissing(),
            VARIANT *SingleLabel = argMissing(),
            VARIANT *Row = argMissing(),
            VARIANT *Column = argMissing(),
            VARIANT *PrintEPostageLabel = argMissing(),
            VARIANT *Vertical = argMissing()) = 0;

    };
};
