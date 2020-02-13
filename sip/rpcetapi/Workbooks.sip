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
    struct Workbooks : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT Add(
            VARIANT Template = argMissing2(),
            long lcid = 0,
            Workbook **RHS /Out/ = 0) = 0;

        virtual HRESULT Close(
            long lcid) = 0;

        virtual HRESULT get_Count(
            long *RHS /Out/) = 0;

        virtual HRESULT get_Item(
            VARIANT Index,
            Workbook **RHS /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **RHS /Out/) = 0;

        virtual HRESULT _Open(
            BSTR Filename,
            VARIANT UpdateLinks,
            VARIANT ReadOnly,
            VARIANT Format,
            VARIANT Password,
            VARIANT WriteResPassword,
            VARIANT IgnoreReadOnlyRecommended,
            VARIANT Origin,
            VARIANT Delimiter,
            VARIANT Editable,
            VARIANT Notify,
            VARIANT Converter,
            VARIANT AddToMru,
            long lcid,
            Workbook **RHS /Out/) = 0;

        virtual HRESULT __OpenText(
            BSTR Filename,
            VARIANT Origin,
            VARIANT StartRow,
            VARIANT DataType,
            XlTextQualifier TextQualifier,
            VARIANT ConsecutiveDelimiter,
            VARIANT Tab,
            VARIANT Semicolon,
            VARIANT Comma,
            VARIANT Space,
            VARIANT Other,
            VARIANT OtherChar,
            VARIANT FieldInfo,
            VARIANT TextVisualLayout,
            long lcid) = 0;

        virtual HRESULT get__Default(
            VARIANT Index,
            Workbook **RHS /Out/) = 0;

        virtual HRESULT _OpenText(
            BSTR Filename,
            VARIANT Origin,
            VARIANT StartRow,
            VARIANT DataType,
            XlTextQualifier TextQualifier,
            VARIANT ConsecutiveDelimiter,
            VARIANT Tab,
            VARIANT Semicolon,
            VARIANT Comma,
            VARIANT Space,
            VARIANT Other,
            VARIANT OtherChar,
            VARIANT FieldInfo,
            VARIANT TextVisualLayout,
            VARIANT DecimalSeparator,
            VARIANT ThousandsSeparator,
            long lcid) = 0;

        virtual HRESULT Open(
            BSTR Filename,
            VARIANT UpdateLinks,
            VARIANT ReadOnly,
            VARIANT Format,
            VARIANT Password,
            VARIANT WriteResPassword,
            VARIANT IgnoreReadOnlyRecommended,
            VARIANT Origin,
            VARIANT Delimiter,
            VARIANT Editable,
            VARIANT Notify,
            VARIANT Converter,
            VARIANT AddToMru,
            VARIANT Local,
            VARIANT CorruptLoad,
            long lcid,
            Workbook **RHS /Out/) = 0;

        virtual HRESULT OpenText(
            BSTR Filename,
            VARIANT Origin,
            VARIANT StartRow,
            VARIANT DataType,
            XlTextQualifier TextQualifier,
            VARIANT ConsecutiveDelimiter,
            VARIANT Tab,
            VARIANT Semicolon,
            VARIANT Comma,
            VARIANT Space,
            VARIANT Other,
            VARIANT OtherChar,
            VARIANT FieldInfo,
            VARIANT TextVisualLayout,
            VARIANT DecimalSeparator,
            VARIANT ThousandsSeparator,
            VARIANT TrailingMinusNumbers,
            VARIANT Local,
            long lcid) = 0;

        virtual HRESULT OpenDatabase(
            BSTR Filename,
            VARIANT CommandText,
            VARIANT CommandType,
            VARIANT BackgroundQuery,
            VARIANT ImportDataAs,
            Workbook **RHS /Out/) = 0;

        virtual HRESULT CheckOut(
            BSTR Filename) = 0;

        virtual HRESULT CanCheckOut(
            BSTR Filename,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT _OpenXML(
            BSTR Filename,
            VARIANT Stylesheets,
            Workbook **RHS /Out/) = 0;

        virtual HRESULT OpenXML(
            BSTR Filename,
            VARIANT Stylesheets,
            VARIANT LoadOption,
            Workbook **RHS /Out/) = 0;

    };
};
