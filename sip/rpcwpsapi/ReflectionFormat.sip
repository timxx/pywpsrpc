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
    struct ReflectionFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Type(
            MsoReflectionType *prop /Out/) = 0;

        virtual HRESULT put_Type(
            MsoReflectionType prop) = 0;

        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Transparency(
            single *prop /Out/) = 0;

        virtual HRESULT put_Transparency(
            single prop) = 0;

        virtual HRESULT get_Size(
            single *prop /Out/) = 0;

        virtual HRESULT put_Size(
            single prop) = 0;

        virtual HRESULT get_Offset(
            single *prop /Out/) = 0;

        virtual HRESULT put_Offset(
            single prop) = 0;

        virtual HRESULT get_Blur(
            single *prop /Out/) = 0;

        virtual HRESULT put_Blur(
            single prop) = 0;

    };
};
