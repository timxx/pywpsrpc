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
    struct PickerProperty : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Id(
            BSTR *Id /Out/) = 0;

        virtual HRESULT get_Value(
            VARIANT *Value /Out/) = 0;

        virtual HRESULT get_Type(
            MsoPickerField *Type /Out/) = 0;

    };
};
