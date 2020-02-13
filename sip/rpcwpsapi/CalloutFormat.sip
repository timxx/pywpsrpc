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
    struct CalloutFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Accent(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_Accent(
            MsoTriState prop) = 0;

        virtual HRESULT get_Angle(
            MsoCalloutAngleType *prop /Out/) = 0;

        virtual HRESULT put_Angle(
            MsoCalloutAngleType prop) = 0;

        virtual HRESULT get_AutoAttach(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_AutoAttach(
            MsoTriState prop) = 0;

        virtual HRESULT get_AutoLength(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT get_Border(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_Border(
            MsoTriState prop) = 0;

        virtual HRESULT get_Drop(
            single *prop /Out/) = 0;

        virtual HRESULT get_DropType(
            MsoCalloutDropType *prop /Out/) = 0;

        virtual HRESULT get_Gap(
            single *prop /Out/) = 0;

        virtual HRESULT put_Gap(
            single prop) = 0;

        virtual HRESULT get_Length(
            single *prop /Out/) = 0;

        virtual HRESULT get_Type(
            MsoCalloutType *prop /Out/) = 0;

        virtual HRESULT put_Type(
            MsoCalloutType prop) = 0;

        virtual HRESULT AutomaticLength() = 0;

        virtual HRESULT CustomDrop(
            single Drop) = 0;

        virtual HRESULT CustomLength(
            single Length) = 0;

        virtual HRESULT PresetDrop(
            MsoCalloutDropType DropType) = 0;

    };
};
