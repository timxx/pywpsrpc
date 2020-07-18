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

        virtual HRESULT Add(
            VARIANT Template = argMissing2(),
            long lcid = 0,
            Workbook **RHS /Out/ = 0) = 0;

        virtual HRESULT Close(
            long lcid) = 0;

        virtual HRESULT get_Count(
            long *RHS /Out/) = 0;

        int __len__() const;
        %MethodCode
            long count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT get_Item(
            VARIANT Index,
            Workbook **RHS /Out/) = 0;

        Workbook* __getitem__(VARIANT index) const;
        %MethodCode
            etapi::Workbook *prop = nullptr;
            if (sipCpp->get_Item(*a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT _Open(
            BSTR Filename,
            VARIANT UpdateLinks = argMissing2(),
            VARIANT ReadOnly = argMissing2(),
            VARIANT Format = argMissing2(),
            VARIANT Password = argMissing2(),
            VARIANT WriteResPassword = argMissing2(),
            VARIANT IgnoreReadOnlyRecommended = argMissing2(),
            VARIANT Origin = argMissing2(),
            VARIANT Delimiter = argMissing2(),
            VARIANT Editable = argMissing2(),
            VARIANT Notify = argMissing2(),
            VARIANT Converter = argMissing2(),
            VARIANT AddToMru = argMissing2(),
            long lcid = 0,
            Workbook **RHS /Out/ = 0) = 0;

        virtual HRESULT __OpenText(
            BSTR Filename,
            VARIANT Origin = argMissing2(),
            VARIANT StartRow = argMissing2(),
            VARIANT DataType = argMissing2(),
            XlTextQualifier TextQualifier = etapi::xlTextQualifierNone,
            VARIANT ConsecutiveDelimiter = argMissing2(),
            VARIANT Tab = argMissing2(),
            VARIANT Semicolon = argMissing2(),
            VARIANT Comma = argMissing2(),
            VARIANT Space = argMissing2(),
            VARIANT Other = argMissing2(),
            VARIANT OtherChar = argMissing2(),
            VARIANT FieldInfo = argMissing2(),
            VARIANT TextVisualLayout = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT get__Default(
            VARIANT Index,
            Workbook **RHS /Out/) = 0;

        virtual HRESULT _OpenText(
            BSTR Filename,
            VARIANT Origin = argMissing2(),
            VARIANT StartRow = argMissing2(),
            VARIANT DataType = argMissing2(),
            XlTextQualifier TextQualifier = etapi::xlTextQualifierNone,
            VARIANT ConsecutiveDelimiter = argMissing2(),
            VARIANT Tab = argMissing2(),
            VARIANT Semicolon = argMissing2(),
            VARIANT Comma = argMissing2(),
            VARIANT Space = argMissing2(),
            VARIANT Other = argMissing2(),
            VARIANT OtherChar = argMissing2(),
            VARIANT FieldInfo = argMissing2(),
            VARIANT TextVisualLayout = argMissing2(),
            VARIANT DecimalSeparator = argMissing2(),
            VARIANT ThousandsSeparator = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT Open(
            BSTR Filename,
            VARIANT UpdateLinks = argMissing2(),
            VARIANT ReadOnly = argMissing2(),
            VARIANT Format = argMissing2(),
            VARIANT Password = argMissing2(),
            VARIANT WriteResPassword = argMissing2(),
            VARIANT IgnoreReadOnlyRecommended = argMissing2(),
            VARIANT Origin = argMissing2(),
            VARIANT Delimiter = argMissing2(),
            VARIANT Editable = argMissing2(),
            VARIANT Notify = argMissing2(),
            VARIANT Converter = argMissing2(),
            VARIANT AddToMru = argMissing2(),
            VARIANT Local = argMissing2(),
            VARIANT CorruptLoad = argMissing2(),
            long lcid = 0,
            Workbook **RHS /Out/ = 0) = 0;

        virtual HRESULT OpenText(
            BSTR Filename,
            VARIANT Origin = argMissing2(),
            VARIANT StartRow = argMissing2(),
            VARIANT DataType = argMissing2(),
            XlTextQualifier TextQualifier = etapi::xlTextQualifierNone,
            VARIANT ConsecutiveDelimiter = argMissing2(),
            VARIANT Tab = argMissing2(),
            VARIANT Semicolon = argMissing2(),
            VARIANT Comma = argMissing2(),
            VARIANT Space = argMissing2(),
            VARIANT Other = argMissing2(),
            VARIANT OtherChar = argMissing2(),
            VARIANT FieldInfo = argMissing2(),
            VARIANT TextVisualLayout = argMissing2(),
            VARIANT DecimalSeparator = argMissing2(),
            VARIANT ThousandsSeparator = argMissing2(),
            VARIANT TrailingMinusNumbers = argMissing2(),
            VARIANT Local = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT OpenDatabase(
            BSTR Filename,
            VARIANT CommandText = argMissing2(),
            VARIANT CommandType = argMissing2(),
            VARIANT BackgroundQuery = argMissing2(),
            VARIANT ImportDataAs = argMissing2(),
            Workbook **RHS /Out/ = 0) = 0;

        virtual HRESULT CheckOut(
            BSTR Filename) = 0;

        virtual HRESULT CanCheckOut(
            BSTR Filename,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT _OpenXML(
            BSTR Filename,
            VARIANT Stylesheets = argMissing2(),
            Workbook **RHS /Out/ = 0) = 0;

        virtual HRESULT OpenXML(
            BSTR Filename,
            VARIANT Stylesheets = argMissing2(),
            VARIANT LoadOption = argMissing2(),
            Workbook **RHS /Out/ = 0) = 0;

        Application* getApplication();
        %MethodCode
            etapi::Application *prop = nullptr;
            HRESULT hr = sipCpp->get_Application(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Application()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Application, get=getApplication)

        XlCreator getCreator();
        %MethodCode
            etapi::XlCreator prop = (etapi::XlCreator)0;
            HRESULT hr = sipCpp->get_Creator(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Creator()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Creator, get=getCreator)

        long getCount();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Count(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Count()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Count, get=getCount)

    };
};
