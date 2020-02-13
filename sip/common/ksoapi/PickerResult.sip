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
    struct PickerResult : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Id(
            BSTR *Id /Out/) = 0;

        virtual HRESULT get_DisplayName(
            BSTR *DisplayName /Out/) = 0;

        virtual HRESULT put_DisplayName(
            BSTR DisplayName) = 0;

        virtual HRESULT get_Type(
            BSTR *Type /Out/) = 0;

        virtual HRESULT put_Type(
            BSTR Type) = 0;

        virtual HRESULT get_SIPId(
            BSTR *SIPId /Out/) = 0;

        virtual HRESULT put_SIPId(
            BSTR SIPId) = 0;

        virtual HRESULT get_ItemData(
            VARIANT *ItemData /Out/) = 0;

        virtual HRESULT put_ItemData(
            VARIANT ItemData) = 0;

        virtual HRESULT get_SubItems(
            VARIANT *SubItems /Out/) = 0;

        virtual HRESULT put_SubItems(
            VARIANT SubItems) = 0;

        virtual HRESULT get_DuplicateResults(
            VARIANT *DuplicateResults /Out/) = 0;

        virtual HRESULT get_Fields(
            PickerFields **Fields /Out/) = 0;

        virtual HRESULT put_Fields(
            PickerFields *Fields) = 0;

    };
};
