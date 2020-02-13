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
    struct ThreeDFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Depth(
            single *prop /Out/) = 0;

        virtual HRESULT put_Depth(
            single prop) = 0;

        virtual HRESULT get_ExtrusionColor(
            ColorFormat **prop /Out/) = 0;

        virtual HRESULT get_ExtrusionColorType(
            MsoExtrusionColorType *prop /Out/) = 0;

        virtual HRESULT put_ExtrusionColorType(
            MsoExtrusionColorType prop) = 0;

        virtual HRESULT get_Perspective(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_Perspective(
            MsoTriState prop) = 0;

        virtual HRESULT get_PresetExtrusionDirection(
            MsoPresetExtrusionDirection *prop /Out/) = 0;

        virtual HRESULT get_PresetLightingDirection(
            MsoPresetLightingDirection *prop /Out/) = 0;

        virtual HRESULT put_PresetLightingDirection(
            MsoPresetLightingDirection prop) = 0;

        virtual HRESULT get_PresetLightingSoftness(
            MsoPresetLightingSoftness *prop /Out/) = 0;

        virtual HRESULT put_PresetLightingSoftness(
            MsoPresetLightingSoftness prop) = 0;

        virtual HRESULT get_PresetMaterial(
            MsoPresetMaterial *prop /Out/) = 0;

        virtual HRESULT put_PresetMaterial(
            MsoPresetMaterial prop) = 0;

        virtual HRESULT get_PresetThreeDFormat(
            MsoPresetThreeDFormat *prop /Out/) = 0;

        virtual HRESULT get_RotationX(
            single *prop /Out/) = 0;

        virtual HRESULT put_RotationX(
            single prop) = 0;

        virtual HRESULT get_RotationY(
            single *prop /Out/) = 0;

        virtual HRESULT put_RotationY(
            single prop) = 0;

        virtual HRESULT get_Visible(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_Visible(
            MsoTriState prop) = 0;

        virtual HRESULT IncrementRotationX(
            single Increment) = 0;

        virtual HRESULT IncrementRotationY(
            single Increment) = 0;

        virtual HRESULT ResetRotation() = 0;

        virtual HRESULT SetExtrusionDirection(
            MsoPresetExtrusionDirection PresetExtrusionDirection) = 0;

        virtual HRESULT SetThreeDFormat(
            MsoPresetThreeDFormat PresetThreeDFormat) = 0;

        virtual HRESULT SetPresetCamera(
            MsoPresetCamera PresetCamera) = 0;

        virtual HRESULT IncrementRotationZ(
            single Increment) = 0;

        virtual HRESULT IncrementRotationHorizontal(
            single Increment) = 0;

        virtual HRESULT IncrementRotationVertical(
            single Increment) = 0;

        virtual HRESULT get_PresetLighting(
            MsoLightRigType *prop /Out/) = 0;

        virtual HRESULT put_PresetLighting(
            MsoLightRigType prop) = 0;

        virtual HRESULT get_Z(
            single *prop /Out/) = 0;

        virtual HRESULT put_Z(
            single prop) = 0;

        virtual HRESULT get_BevelTopType(
            MsoBevelType *prop /Out/) = 0;

        virtual HRESULT put_BevelTopType(
            MsoBevelType prop) = 0;

        virtual HRESULT get_BevelTopInset(
            single *prop /Out/) = 0;

        virtual HRESULT put_BevelTopInset(
            single prop) = 0;

        virtual HRESULT get_BevelTopDepth(
            single *prop /Out/) = 0;

        virtual HRESULT put_BevelTopDepth(
            single prop) = 0;

        virtual HRESULT get_BevelBottomType(
            MsoBevelType *prop /Out/) = 0;

        virtual HRESULT put_BevelBottomType(
            MsoBevelType prop) = 0;

        virtual HRESULT get_BevelBottomInset(
            single *prop /Out/) = 0;

        virtual HRESULT put_BevelBottomInset(
            single prop) = 0;

        virtual HRESULT get_BevelBottomDepth(
            single *prop /Out/) = 0;

        virtual HRESULT put_BevelBottomDepth(
            single prop) = 0;

        virtual HRESULT get_PresetCamera(
            MsoPresetCamera *prop /Out/) = 0;

        virtual HRESULT get_RotationZ(
            single *prop /Out/) = 0;

        virtual HRESULT put_RotationZ(
            single prop) = 0;

        virtual HRESULT get_ContourWidth(
            single *prop /Out/) = 0;

        virtual HRESULT put_ContourWidth(
            single prop) = 0;

        virtual HRESULT get_ContourColor(
            ColorFormat **prop /Out/) = 0;

        virtual HRESULT get_FieldOfView(
            single *prop /Out/) = 0;

        virtual HRESULT put_FieldOfView(
            single prop) = 0;

        virtual HRESULT get_ProjectText(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_ProjectText(
            MsoTriState prop) = 0;

        virtual HRESULT get_LightAngle(
            single *prop /Out/) = 0;

        virtual HRESULT put_LightAngle(
            single prop) = 0;

    };
};
