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
    struct PickerDialog : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_DataHandlerId(
            BSTR *Id /Out/) = 0;

        virtual HRESULT put_DataHandlerId(
            BSTR Id) = 0;

        virtual HRESULT get_Title(
            BSTR *Title /Out/) = 0;

        virtual HRESULT put_Title(
            BSTR Title) = 0;

        virtual HRESULT get_Properties(
            PickerProperties **Props /Out/) = 0;

        virtual HRESULT CreatePickerResults(
            PickerResults **Results /Out/) = 0;

        virtual HRESULT Show(
            VARIANT_BOOL IsMultiSelect,
            PickerResults *ExistingResults,
            PickerResults **Results /Out/) = 0;

        virtual HRESULT Resolve(
            BSTR TokenText,
            int duplicateDlgMode,
            PickerResults **Results /Out/) = 0;

    };
};
