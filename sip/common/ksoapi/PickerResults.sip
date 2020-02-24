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
    struct PickerResults : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Item(
            int Index,
            PickerResult **Result /Out/) = 0;

        virtual HRESULT get_Count(
            long *Count /Out/) = 0;

        virtual HRESULT Add(
            BSTR Id,
            BSTR DisplayName,
            BSTR Type,
            BSTR SIPId = 0,
            VARIANT ItemData = argMissing2(),
            VARIANT SubItems = argMissing2(),
            PickerResult **Result /Out/ = 0) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **_NewEnum /Out/) = 0;

    };
};
