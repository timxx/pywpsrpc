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
    struct IComment : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_Author(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Shape(
            Shape **RHS /Out/) = 0;

        virtual HRESULT get_Visible(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Visible(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT Text(
            VARIANT Text,
            VARIANT Start,
            VARIANT Overwrite,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Next(
            Comment **RHS /Out/) = 0;

        virtual HRESULT Previous(
            Comment **RHS /Out/) = 0;

    };
};
