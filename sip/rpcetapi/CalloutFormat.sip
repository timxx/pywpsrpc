/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace etapi
{
    struct CalloutFormat : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT AutomaticLength() = 0;

        virtual HRESULT CustomDrop(
            single Drop) = 0;

        virtual HRESULT CustomLength(
            single Length) = 0;

        virtual HRESULT PresetDrop(
            MsoCalloutDropType DropType) = 0;

        virtual HRESULT get_Accent(
            MsoTriState *Accent /Out/) = 0;

        virtual HRESULT put_Accent(
            MsoTriState Accent) = 0;

        virtual HRESULT get_Angle(
            MsoCalloutAngleType *Angle /Out/) = 0;

        virtual HRESULT put_Angle(
            MsoCalloutAngleType Angle) = 0;

        virtual HRESULT get_AutoAttach(
            MsoTriState *AutoAttach /Out/) = 0;

        virtual HRESULT put_AutoAttach(
            MsoTriState AutoAttach) = 0;

        virtual HRESULT get_AutoLength(
            MsoTriState *AutoLength /Out/) = 0;

        virtual HRESULT get_Border(
            MsoTriState *Border /Out/) = 0;

        virtual HRESULT put_Border(
            MsoTriState Border) = 0;

        virtual HRESULT get_Drop(
            single *Drop /Out/) = 0;

        virtual HRESULT get_DropType(
            MsoCalloutDropType *DropType /Out/) = 0;

        virtual HRESULT get_Gap(
            single *Gap /Out/) = 0;

        virtual HRESULT put_Gap(
            single Gap) = 0;

        virtual HRESULT get_Length(
            single *Length /Out/) = 0;

        virtual HRESULT get_Type(
            MsoCalloutType *Type /Out/) = 0;

        virtual HRESULT put_Type(
            MsoCalloutType Type) = 0;

    };
};
