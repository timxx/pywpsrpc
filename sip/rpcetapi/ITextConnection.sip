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
    struct ITextConnection : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Connection(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_Connection(
            VARIANT RHS) = 0;

        virtual HRESULT get_TextFileHeaderRow(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_TextFileHeaderRow(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_TextFileColumnDataTypes(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_TextFileColumnDataTypes(
            VARIANT RHS) = 0;

        virtual HRESULT get_TextFileCommaDelimiter(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_TextFileCommaDelimiter(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_TextFileConsecutiveDelimiter(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_TextFileConsecutiveDelimiter(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_TextFileDecimalSeparator(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_TextFileDecimalSeparator(
            BSTR RHS) = 0;

        virtual HRESULT get_TextFileFixedColumnWidths(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT put_TextFileFixedColumnWidths(
            VARIANT RHS) = 0;

        virtual HRESULT get_TextFileOtherDelimiter(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_TextFileOtherDelimiter(
            BSTR RHS) = 0;

        virtual HRESULT get_TextFileParseType(
            XlTextParsingType *RHS /Out/) = 0;

        virtual HRESULT put_TextFileParseType(
            XlTextParsingType RHS) = 0;

        virtual HRESULT get_TextFilePlatform(
            XlPlatform *RHS /Out/) = 0;

        virtual HRESULT put_TextFilePlatform(
            XlPlatform RHS) = 0;

        virtual HRESULT get_TextFilePromptOnRefresh(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_TextFilePromptOnRefresh(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_TextFileSemicolonDelimiter(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_TextFileSemicolonDelimiter(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_TextFileSpaceDelimiter(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_TextFileSpaceDelimiter(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_TextFileStartRow(
            long *RHS /Out/) = 0;

        virtual HRESULT put_TextFileStartRow(
            long RHS) = 0;

        virtual HRESULT get_TextFileTabDelimiter(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_TextFileTabDelimiter(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_TextFileTextQualifier(
            XlTextQualifier *RHS /Out/) = 0;

        virtual HRESULT put_TextFileTextQualifier(
            XlTextQualifier RHS) = 0;

        virtual HRESULT get_TextFileThousandsSeparator(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_TextFileThousandsSeparator(
            BSTR RHS) = 0;

        virtual HRESULT get_TextFileTrailingMinusNumbers(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_TextFileTrailingMinusNumbers(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_TextFileVisualLayout(
            XlTextVisualLayoutType *RHS /Out/) = 0;

        virtual HRESULT put_TextFileVisualLayout(
            XlTextVisualLayoutType RHS) = 0;

    };
};
