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
    struct Field : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Code(
            Range **prop /Out/) = 0;

        virtual HRESULT put_Code(
            Range *prop) = 0;

        virtual HRESULT get_Type(
            WdFieldType *prop /Out/) = 0;

        virtual HRESULT get_Locked(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Locked(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Kind(
            WdFieldKind *prop /Out/) = 0;

        virtual HRESULT get_Result(
            Range **prop /Out/) = 0;

        virtual HRESULT put_Result(
            Range *prop) = 0;

        virtual HRESULT get_Data(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Data(
            BSTR prop) = 0;

        virtual HRESULT get_Next(
            Field **prop /Out/) = 0;

        virtual HRESULT get_Previous(
            Field **prop /Out/) = 0;

        virtual HRESULT get_Index(
            long *prop /Out/) = 0;

        virtual HRESULT get_ShowCodes(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ShowCodes(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_LinkFormat(
            LinkFormat **prop /Out/) = 0;

        virtual HRESULT get_OLEFormat(
            OLEFormat **prop /Out/) = 0;

        virtual HRESULT get_InlineShape(
            InlineShape **prop /Out/) = 0;

        virtual HRESULT Select() = 0;

        virtual HRESULT Update(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT Unlink() = 0;

        virtual HRESULT UpdateSource() = 0;

        virtual HRESULT DoClick() = 0;

        virtual HRESULT Copy() = 0;

        virtual HRESULT Cut() = 0;

        virtual HRESULT Delete() = 0;

    };
};
