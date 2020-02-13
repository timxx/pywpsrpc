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
    struct ISlicerItem : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            SlicerCache **RHS /Out/) = 0;

        virtual HRESULT get_Caption(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_SourceName(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_SourceNameStandard(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Value(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_Selected(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Selected(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_HasData(
            VARIANT_BOOL *RHS /Out/) = 0;

    };
};
