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
    struct ReflectionFormat : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Type(
            MsoReflectionType *Type /Out/) = 0;

        virtual HRESULT put_Type(
            MsoReflectionType Type) = 0;

        virtual HRESULT get_Transparency(
            single *Transparency /Out/) = 0;

        virtual HRESULT put_Transparency(
            single Transparency) = 0;

        virtual HRESULT get_Size(
            single *Size /Out/) = 0;

        virtual HRESULT put_Size(
            single Size) = 0;

        virtual HRESULT get_Offset(
            single *Offset /Out/) = 0;

        virtual HRESULT put_Offset(
            single Offset) = 0;

        virtual HRESULT get_Blur(
            single *Blur /Out/) = 0;

        virtual HRESULT put_Blur(
            single Blur) = 0;

    };
};
