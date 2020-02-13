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
    struct IParameter : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_DataType(
            XlParameterDataType *RHS /Out/) = 0;

        virtual HRESULT put_DataType(
            XlParameterDataType RHS) = 0;

        virtual HRESULT get_Type(
            XlParameterType *RHS /Out/) = 0;

        virtual HRESULT get_PromptString(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Value(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_SourceRange(
            Range **RHS /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR RHS) = 0;

        virtual HRESULT SetParam(
            XlParameterType Type,
            VARIANT Value) = 0;

        virtual HRESULT get_RefreshOnChange(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_RefreshOnChange(
            VARIANT_BOOL RHS) = 0;

    };
};
