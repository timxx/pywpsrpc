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
    struct TextColumn2 : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Number(
            int *Number /Out/) = 0;

        virtual HRESULT put_Number(
            int Number) = 0;

        virtual HRESULT get_Spacing(
            single *Spacing /Out/) = 0;

        virtual HRESULT put_Spacing(
            single Spacing) = 0;

        virtual HRESULT get_TextDirection(
            MsoTextDirection *Direction /Out/) = 0;

        virtual HRESULT put_TextDirection(
            MsoTextDirection Direction) = 0;

    };
};
