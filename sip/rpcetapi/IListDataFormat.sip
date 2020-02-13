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
    struct IListDataFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get__Default(
            XlListDataType *RHS /Out/) = 0;

        virtual HRESULT get_Choices(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_DecimalPlaces(
            long *RHS /Out/) = 0;

        virtual HRESULT get_DefaultValue(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_IsPercent(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_lcid(
            long *RHS /Out/) = 0;

        virtual HRESULT get_MaxCharacters(
            long *RHS /Out/) = 0;

        virtual HRESULT get_MaxNumber(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_MinNumber(
            VARIANT *RHS /Out/) = 0;

        virtual HRESULT get_Required(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_Type(
            XlListDataType *RHS /Out/) = 0;

        virtual HRESULT get_ReadOnly(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_AllowFillIn(
            VARIANT_BOOL *RHS /Out/) = 0;

    };
};
