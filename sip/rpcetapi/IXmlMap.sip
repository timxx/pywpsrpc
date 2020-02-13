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
    struct IXmlMap : public IDispatch /Abstract/
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

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR RHS) = 0;

        virtual HRESULT get_IsExportable(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_ShowImportExportValidationErrors(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowImportExportValidationErrors(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_SaveDataSourceDefinition(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_SaveDataSourceDefinition(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_AdjustColumnWidth(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AdjustColumnWidth(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_PreserveColumnFilter(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_PreserveColumnFilter(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_PreserveNumberFormatting(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_PreserveNumberFormatting(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_AppendOnImport(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AppendOnImport(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_RootElementName(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_RootElementNamespace(
            XmlNamespace **RHS /Out/) = 0;

        virtual HRESULT get_Schemas(
            XmlSchemas **RHS /Out/) = 0;

        virtual HRESULT get_DataBinding(
            XmlDataBinding **RHS /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Import(
            BSTR Url,
            VARIANT Overwrite,
            XlXmlImportResult *RHS /Out/) = 0;

        virtual HRESULT ImportXml(
            BSTR XmlData,
            VARIANT Overwrite,
            XlXmlImportResult *RHS /Out/) = 0;

        virtual HRESULT Export(
            BSTR Url,
            VARIANT Overwrite,
            XlXmlExportResult *RHS /Out/) = 0;

        virtual HRESULT ExportXml(
            BSTR *Data /Out/,
            XlXmlExportResult *RHS /Out/) = 0;

        virtual HRESULT get_WorkbookConnection(
            WorkbookConnection **RHS /Out/) = 0;

    };
};
