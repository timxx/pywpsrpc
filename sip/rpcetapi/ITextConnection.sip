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

        VARIANT getConnection();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Connection(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Connection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setConnection(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Connection(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Connection()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Connection, get=getConnection, set=setConnection)

        VARIANT_BOOL getTextFileHeaderRow();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_TextFileHeaderRow(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextFileHeaderRow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextFileHeaderRow(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextFileHeaderRow(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextFileHeaderRow()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextFileHeaderRow, get=getTextFileHeaderRow, set=setTextFileHeaderRow)

        VARIANT getTextFileColumnDataTypes();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_TextFileColumnDataTypes(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextFileColumnDataTypes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextFileColumnDataTypes(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextFileColumnDataTypes(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextFileColumnDataTypes()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextFileColumnDataTypes, get=getTextFileColumnDataTypes, set=setTextFileColumnDataTypes)

        VARIANT_BOOL getTextFileCommaDelimiter();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_TextFileCommaDelimiter(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextFileCommaDelimiter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextFileCommaDelimiter(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextFileCommaDelimiter(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextFileCommaDelimiter()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextFileCommaDelimiter, get=getTextFileCommaDelimiter, set=setTextFileCommaDelimiter)

        VARIANT_BOOL getTextFileConsecutiveDelimiter();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_TextFileConsecutiveDelimiter(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextFileConsecutiveDelimiter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextFileConsecutiveDelimiter(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextFileConsecutiveDelimiter(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextFileConsecutiveDelimiter()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextFileConsecutiveDelimiter, get=getTextFileConsecutiveDelimiter, set=setTextFileConsecutiveDelimiter)

        BSTR getTextFileDecimalSeparator();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_TextFileDecimalSeparator(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextFileDecimalSeparator()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextFileDecimalSeparator(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextFileDecimalSeparator(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextFileDecimalSeparator()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextFileDecimalSeparator, get=getTextFileDecimalSeparator, set=setTextFileDecimalSeparator)

        VARIANT getTextFileFixedColumnWidths();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_TextFileFixedColumnWidths(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextFileFixedColumnWidths()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextFileFixedColumnWidths(VARIANT prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextFileFixedColumnWidths(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextFileFixedColumnWidths()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextFileFixedColumnWidths, get=getTextFileFixedColumnWidths, set=setTextFileFixedColumnWidths)

        BSTR getTextFileOtherDelimiter();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_TextFileOtherDelimiter(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextFileOtherDelimiter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextFileOtherDelimiter(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextFileOtherDelimiter(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextFileOtherDelimiter()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextFileOtherDelimiter, get=getTextFileOtherDelimiter, set=setTextFileOtherDelimiter)

        XlTextParsingType getTextFileParseType();
        %MethodCode
            etapi::XlTextParsingType prop = (etapi::XlTextParsingType)0;
            HRESULT hr = sipCpp->get_TextFileParseType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextFileParseType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextFileParseType(XlTextParsingType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextFileParseType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextFileParseType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextFileParseType, get=getTextFileParseType, set=setTextFileParseType)

        XlPlatform getTextFilePlatform();
        %MethodCode
            etapi::XlPlatform prop = (etapi::XlPlatform)0;
            HRESULT hr = sipCpp->get_TextFilePlatform(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextFilePlatform()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextFilePlatform(XlPlatform prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextFilePlatform(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextFilePlatform()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextFilePlatform, get=getTextFilePlatform, set=setTextFilePlatform)

        VARIANT_BOOL getTextFilePromptOnRefresh();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_TextFilePromptOnRefresh(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextFilePromptOnRefresh()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextFilePromptOnRefresh(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextFilePromptOnRefresh(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextFilePromptOnRefresh()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextFilePromptOnRefresh, get=getTextFilePromptOnRefresh, set=setTextFilePromptOnRefresh)

        VARIANT_BOOL getTextFileSemicolonDelimiter();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_TextFileSemicolonDelimiter(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextFileSemicolonDelimiter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextFileSemicolonDelimiter(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextFileSemicolonDelimiter(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextFileSemicolonDelimiter()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextFileSemicolonDelimiter, get=getTextFileSemicolonDelimiter, set=setTextFileSemicolonDelimiter)

        VARIANT_BOOL getTextFileSpaceDelimiter();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_TextFileSpaceDelimiter(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextFileSpaceDelimiter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextFileSpaceDelimiter(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextFileSpaceDelimiter(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextFileSpaceDelimiter()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextFileSpaceDelimiter, get=getTextFileSpaceDelimiter, set=setTextFileSpaceDelimiter)

        long getTextFileStartRow();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_TextFileStartRow(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextFileStartRow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextFileStartRow(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextFileStartRow(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextFileStartRow()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextFileStartRow, get=getTextFileStartRow, set=setTextFileStartRow)

        VARIANT_BOOL getTextFileTabDelimiter();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_TextFileTabDelimiter(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextFileTabDelimiter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextFileTabDelimiter(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextFileTabDelimiter(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextFileTabDelimiter()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextFileTabDelimiter, get=getTextFileTabDelimiter, set=setTextFileTabDelimiter)

        XlTextQualifier getTextFileTextQualifier();
        %MethodCode
            etapi::XlTextQualifier prop = (etapi::XlTextQualifier)0;
            HRESULT hr = sipCpp->get_TextFileTextQualifier(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextFileTextQualifier()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextFileTextQualifier(XlTextQualifier prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextFileTextQualifier(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextFileTextQualifier()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextFileTextQualifier, get=getTextFileTextQualifier, set=setTextFileTextQualifier)

        BSTR getTextFileThousandsSeparator();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_TextFileThousandsSeparator(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextFileThousandsSeparator()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextFileThousandsSeparator(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextFileThousandsSeparator(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextFileThousandsSeparator()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextFileThousandsSeparator, get=getTextFileThousandsSeparator, set=setTextFileThousandsSeparator)

        VARIANT_BOOL getTextFileTrailingMinusNumbers();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_TextFileTrailingMinusNumbers(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextFileTrailingMinusNumbers()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextFileTrailingMinusNumbers(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextFileTrailingMinusNumbers(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextFileTrailingMinusNumbers()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextFileTrailingMinusNumbers, get=getTextFileTrailingMinusNumbers, set=setTextFileTrailingMinusNumbers)

        XlTextVisualLayoutType getTextFileVisualLayout();
        %MethodCode
            etapi::XlTextVisualLayoutType prop = (etapi::XlTextVisualLayoutType)0;
            HRESULT hr = sipCpp->get_TextFileVisualLayout(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextFileVisualLayout()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextFileVisualLayout(XlTextVisualLayoutType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextFileVisualLayout(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextFileVisualLayout()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextFileVisualLayout, get=getTextFileVisualLayout, set=setTextFileVisualLayout)
    };
};
