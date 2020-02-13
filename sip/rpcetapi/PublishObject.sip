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
    struct PublishObject : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Publish(
            VARIANT Create) = 0;

        virtual HRESULT get_DivID(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Sheet(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_SourceType(
            XlSourceType *RHS /Out/) = 0;

        virtual HRESULT get_Source(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_HtmlType(
            XlHtmlType *RHS /Out/) = 0;

        virtual HRESULT put_HtmlType(
            XlHtmlType RHS) = 0;

        virtual HRESULT get_Title(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Title(
            BSTR RHS) = 0;

        virtual HRESULT get_Filename(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Filename(
            BSTR RHS) = 0;

        virtual HRESULT get_AutoRepublish(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_AutoRepublish(
            VARIANT_BOOL RHS) = 0;

    };
};
