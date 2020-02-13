/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace ksoapi
{
    struct MetaProperty : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Value(
            VARIANT *pvarValue /Out/) = 0;

        virtual HRESULT put_Value(
            VARIANT pvarValue) = 0;

        virtual HRESULT get_Name(
            BSTR *pbstrName /Out/) = 0;

        virtual HRESULT get_Id(
            BSTR *pbstrID /Out/) = 0;

        virtual HRESULT get_IsReadOnly(
            VARIANT_BOOL *pfReadOnly /Out/) = 0;

        virtual HRESULT get_IsRequired(
            VARIANT_BOOL *pfRequired /Out/) = 0;

        virtual HRESULT get_Type(
            MsoMetaPropertyType *ptype /Out/) = 0;

        virtual HRESULT Validate(
            BSTR *pbstrError /Out/) = 0;

        virtual HRESULT get_ValidationError(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **ppidisp /Out/) = 0;

    };
};
