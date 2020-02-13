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
    struct DropCap : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Position(
            WdDropPosition *prop /Out/) = 0;

        virtual HRESULT put_Position(
            WdDropPosition prop) = 0;

        virtual HRESULT get_FontName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_FontName(
            BSTR prop) = 0;

        virtual HRESULT get_LinesToDrop(
            long *prop /Out/) = 0;

        virtual HRESULT put_LinesToDrop(
            long prop) = 0;

        virtual HRESULT get_DistanceFromText(
            single *prop /Out/) = 0;

        virtual HRESULT put_DistanceFromText(
            single prop) = 0;

        virtual HRESULT Clear() = 0;

        virtual HRESULT Enable() = 0;

    };
};
