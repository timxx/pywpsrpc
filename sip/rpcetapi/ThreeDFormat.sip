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
    struct ThreeDFormat : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT IncrementRotationX(
            single Increment) = 0;

        virtual HRESULT IncrementRotationY(
            single Increment) = 0;

        virtual HRESULT ResetRotation() = 0;

        virtual HRESULT SetThreeDFormat(
            MsoPresetThreeDFormat PresetThreeDFormat) = 0;

        virtual HRESULT SetExtrusionDirection(
            MsoPresetExtrusionDirection PresetExtrusionDirection) = 0;

        virtual HRESULT get_Depth(
            single *Depth /Out/) = 0;

        virtual HRESULT put_Depth(
            single Depth) = 0;

        virtual HRESULT get_ExtrusionColor(
            ColorFormat **ExtrusionColor /Out/) = 0;

        virtual HRESULT get_ExtrusionColorType(
            MsoExtrusionColorType *ExtrusionColorType /Out/) = 0;

        virtual HRESULT put_ExtrusionColorType(
            MsoExtrusionColorType ExtrusionColorType) = 0;

        virtual HRESULT get_Perspective(
            MsoTriState *Perspective /Out/) = 0;

        virtual HRESULT put_Perspective(
            MsoTriState Perspective) = 0;

        virtual HRESULT get_PresetExtrusionDirection(
            MsoPresetExtrusionDirection *PresetExtrusionDirection /Out/) = 0;

        virtual HRESULT get_PresetLightingDirection(
            MsoPresetLightingDirection *PresetLightingDirection /Out/) = 0;

        virtual HRESULT put_PresetLightingDirection(
            MsoPresetLightingDirection PresetLightingDirection) = 0;

        virtual HRESULT get_PresetLightingSoftness(
            MsoPresetLightingSoftness *PresetLightingSoftness /Out/) = 0;

        virtual HRESULT put_PresetLightingSoftness(
            MsoPresetLightingSoftness PresetLightingSoftness) = 0;

        virtual HRESULT get_PresetMaterial(
            MsoPresetMaterial *PresetMaterial /Out/) = 0;

        virtual HRESULT put_PresetMaterial(
            MsoPresetMaterial PresetMaterial) = 0;

        virtual HRESULT get_PresetThreeDFormat(
            MsoPresetThreeDFormat *PresetThreeDFormat /Out/) = 0;

        virtual HRESULT get_RotationX(
            single *RotationX /Out/) = 0;

        virtual HRESULT put_RotationX(
            single RotationX) = 0;

        virtual HRESULT get_RotationY(
            single *RotationY /Out/) = 0;

        virtual HRESULT put_RotationY(
            single RotationY) = 0;

        virtual HRESULT get_Visible(
            MsoTriState *Visible /Out/) = 0;

        virtual HRESULT put_Visible(
            MsoTriState Visible) = 0;

        virtual HRESULT SetPresetCamera(
            MsoPresetCamera PresetCamera) = 0;

        virtual HRESULT IncrementRotationZ(
            single Increment) = 0;

        virtual HRESULT IncrementRotationHorizontal(
            single Increment) = 0;

        virtual HRESULT IncrementRotationVertical(
            single Increment) = 0;

        virtual HRESULT get_PresetLighting(
            MsoLightRigType *PresetLightRigType /Out/) = 0;

        virtual HRESULT put_PresetLighting(
            MsoLightRigType PresetLightRigType) = 0;

        virtual HRESULT get_Z(
            single *Z /Out/) = 0;

        virtual HRESULT put_Z(
            single Z) = 0;

        virtual HRESULT get_BevelTopType(
            MsoBevelType *BevelTopType /Out/) = 0;

        virtual HRESULT put_BevelTopType(
            MsoBevelType BevelTopType) = 0;

        virtual HRESULT get_BevelTopInset(
            single *BevelTopInset /Out/) = 0;

        virtual HRESULT put_BevelTopInset(
            single BevelTopInset) = 0;

        virtual HRESULT get_BevelTopDepth(
            single *BevelTopDepth /Out/) = 0;

        virtual HRESULT put_BevelTopDepth(
            single BevelTopDepth) = 0;

        virtual HRESULT get_BevelBottomType(
            MsoBevelType *BevelBottomType /Out/) = 0;

        virtual HRESULT put_BevelBottomType(
            MsoBevelType BevelBottomType) = 0;

        virtual HRESULT get_BevelBottomInset(
            single *BevelBottomInset /Out/) = 0;

        virtual HRESULT put_BevelBottomInset(
            single BevelBottomInset) = 0;

        virtual HRESULT get_BevelBottomDepth(
            single *BevelBottomDepth /Out/) = 0;

        virtual HRESULT put_BevelBottomDepth(
            single BevelBottomDepth) = 0;

        virtual HRESULT get_PresetCamera(
            MsoPresetCamera *PresetCamera /Out/) = 0;

        virtual HRESULT get_RotationZ(
            single *RotationZ /Out/) = 0;

        virtual HRESULT put_RotationZ(
            single RotationZ) = 0;

        virtual HRESULT get_ContourWidth(
            single *Width /Out/) = 0;

        virtual HRESULT put_ContourWidth(
            single Width) = 0;

        virtual HRESULT get_ContourColor(
            ColorFormat **ContourColor /Out/) = 0;

        virtual HRESULT get_FieldOfView(
            single *FOV /Out/) = 0;

        virtual HRESULT put_FieldOfView(
            single FOV) = 0;

        virtual HRESULT get_ProjectText(
            MsoTriState *ProjectText /Out/) = 0;

        virtual HRESULT put_ProjectText(
            MsoTriState ProjectText) = 0;

        virtual HRESULT get_LightAngle(
            single *LightAngle /Out/) = 0;

        virtual HRESULT put_LightAngle(
            single LightAngle) = 0;

    };
};
