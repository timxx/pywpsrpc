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
    struct BuildingBlock : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Index(
            long *prop /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR prop) = 0;

        virtual HRESULT get_Type(
            BuildingBlockType **prop /Out/) = 0;

        virtual HRESULT get_Description(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Description(
            BSTR prop) = 0;

        virtual HRESULT get_ID(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Category(
            Category **prop /Out/) = 0;

        virtual HRESULT get_Value(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Value(
            BSTR prop) = 0;

        virtual HRESULT get_InsertOptions(
            long *prop /Out/) = 0;

        virtual HRESULT put_InsertOptions(
            long prop) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Insert(
            Range *Where,
            VARIANT *RichText = argMissing(),
            Range **prop /Out/ = 0) = 0;

    };
};
