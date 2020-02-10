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
   struct ConnectorFormat : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT BeginConnect(
            Shape *ConnectedShape,
            int ConnectionSite) = 0;

        virtual HRESULT BeginDisconnect() = 0;

        virtual HRESULT EndConnect(
            Shape *ConnectedShape,
            int ConnectionSite) = 0;

        virtual HRESULT EndDisconnect() = 0;

        virtual HRESULT get_BeginConnected(
            MsoTriState *BeginConnected /Out/) = 0;

        virtual HRESULT get_BeginConnectedShape(
            Shape **BeginConnectedShape /Out/) = 0;

        virtual HRESULT get_BeginConnectionSite(
            int *BeginConnectionSite /Out/) = 0;

        virtual HRESULT get_EndConnected(
            MsoTriState *EndConnected /Out/) = 0;

        virtual HRESULT get_EndConnectedShape(
            Shape **EndConnectedShape /Out/) = 0;

        virtual HRESULT get_EndConnectionSite(
            int *EndConnectionSite /Out/) = 0;

        virtual HRESULT get_Type(
            MsoConnectorType *Type /Out/) = 0;

        virtual HRESULT put_Type(
            MsoConnectorType Type) = 0;
    };

    struct FillFormat : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT Background() = 0;

        virtual HRESULT OneColorGradient(
            MsoGradientStyle Style,
            int Variant,
            single Degree) = 0;

        virtual HRESULT Patterned(
            MsoPatternType Pattern) = 0;

        virtual HRESULT PresetGradient(
            MsoGradientStyle Style,
            int Variant,
            MsoPresetGradientType PresetGradientType) = 0;

        virtual HRESULT PresetTextured(
            MsoPresetTexture PresetTexture) = 0;

        virtual HRESULT Solid() = 0;

        virtual HRESULT TwoColorGradient(
            MsoGradientStyle Style,
            int Variant) = 0;

        virtual HRESULT UserPicture(
            BSTR PictureFile) = 0;

        virtual HRESULT UserTextured(
            BSTR TextureFile) = 0;

        virtual HRESULT get_BackColor(
            ColorFormat **BackColor /Out/) = 0;

        virtual HRESULT put_BackColor(
            ColorFormat *BackColor) = 0;

        virtual HRESULT get_ForeColor(
            ColorFormat **ForeColor /Out/) = 0;

        virtual HRESULT put_ForeColor(
            ColorFormat *ForeColor) = 0;

        virtual HRESULT get_GradientColorType(
            MsoGradientColorType *GradientColorType /Out/) = 0;

        virtual HRESULT get_GradientDegree(
            single *GradientDegree /Out/) = 0;

        virtual HRESULT get_GradientStyle(
            MsoGradientStyle *GradientStyle /Out/) = 0;

        virtual HRESULT get_GradientVariant(
            int *GradientVariant /Out/) = 0;

        virtual HRESULT get_Pattern(
            MsoPatternType *Pattern /Out/) = 0;

        virtual HRESULT get_PresetGradientType(
            MsoPresetGradientType *PresetGradientType /Out/) = 0;

        virtual HRESULT get_PresetTexture(
            MsoPresetTexture *PresetTexture /Out/) = 0;

        virtual HRESULT get_TextureName(
            BSTR *TextureName /Out/) = 0;

        virtual HRESULT get_TextureType(
            MsoTextureType *TextureType /Out/) = 0;

        virtual HRESULT get_Transparency(
            single *Transparency /Out/) = 0;

        virtual HRESULT put_Transparency(
            single Transparency) = 0;

        virtual HRESULT get_Type(
            MsoFillType *Type /Out/) = 0;

        virtual HRESULT get_Visible(
            MsoTriState *Visible /Out/) = 0;

        virtual HRESULT put_Visible(
            MsoTriState Visible) = 0;

        virtual HRESULT get_GradientStops(
            GradientStops **GradientStops /Out/) = 0;

        virtual HRESULT get_TextureOffsetX(
            single *TextureOffsetX /Out/) = 0;

        virtual HRESULT put_TextureOffsetX(
            single TextureOffsetX) = 0;

        virtual HRESULT get_TextureOffsetY(
            single *TextureOffsetY /Out/) = 0;

        virtual HRESULT put_TextureOffsetY(
            single TextureOffsetY) = 0;

        virtual HRESULT get_TextureAlignment(
            MsoTextureAlignment *TextureAlignment /Out/) = 0;

        virtual HRESULT put_TextureAlignment(
            MsoTextureAlignment TextureAlignment) = 0;

        virtual HRESULT get_TextureHorizontalScale(
            single *HorizontalScale /Out/) = 0;

        virtual HRESULT put_TextureHorizontalScale(
            single HorizontalScale) = 0;

        virtual HRESULT get_TextureVerticalScale(
            single *VerticalScale /Out/) = 0;

        virtual HRESULT put_TextureVerticalScale(
            single VerticalScale) = 0;

        virtual HRESULT get_TextureTile(
            MsoTriState *TextureTile /Out/) = 0;

        virtual HRESULT put_TextureTile(
            MsoTriState TextureTile) = 0;

        virtual HRESULT get_RotateWithObject(
            MsoTriState *RotateWithObject /Out/) = 0;

        virtual HRESULT put_RotateWithObject(
            MsoTriState RotateWithObject) = 0;

        virtual HRESULT get_PictureEffects(
            PictureEffects **PictureEffects /Out/) = 0;

        virtual HRESULT get_GradientAngle(
            single *GradientAngle /Out/) = 0;

        virtual HRESULT put_GradientAngle(
            single GradientAngle) = 0;
    };

    struct LineFormat : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_BackColor(
            ColorFormat **BackColor /Out/) = 0;

        virtual HRESULT put_BackColor(
            ColorFormat *BackColor) = 0;

        virtual HRESULT get_BeginArrowheadLength(
            MsoArrowheadLength *BeginArrowheadLength /Out/) = 0;

        virtual HRESULT put_BeginArrowheadLength(
            MsoArrowheadLength BeginArrowheadLength) = 0;

        virtual HRESULT get_BeginArrowheadStyle(
            MsoArrowheadStyle *BeginArrowheadStyle /Out/) = 0;

        virtual HRESULT put_BeginArrowheadStyle(
            MsoArrowheadStyle BeginArrowheadStyle) = 0;

        virtual HRESULT get_BeginArrowheadWidth(
            MsoArrowheadWidth *BeginArrowheadWidth /Out/) = 0;

        virtual HRESULT put_BeginArrowheadWidth(
            MsoArrowheadWidth BeginArrowheadWidth) = 0;

        virtual HRESULT get_DashStyle(
            MsoLineDashStyle *DashStyle /Out/) = 0;

        virtual HRESULT put_DashStyle(
            MsoLineDashStyle DashStyle) = 0;

        virtual HRESULT get_EndArrowheadLength(
            MsoArrowheadLength *EndArrowheadLength /Out/) = 0;

        virtual HRESULT put_EndArrowheadLength(
            MsoArrowheadLength EndArrowheadLength) = 0;

        virtual HRESULT get_EndArrowheadStyle(
            MsoArrowheadStyle *EndArrowheadStyle /Out/) = 0;

        virtual HRESULT put_EndArrowheadStyle(
            MsoArrowheadStyle EndArrowheadStyle) = 0;

        virtual HRESULT get_EndArrowheadWidth(
            MsoArrowheadWidth *EndArrowheadWidth /Out/) = 0;

        virtual HRESULT put_EndArrowheadWidth(
            MsoArrowheadWidth EndArrowheadWidth) = 0;

        virtual HRESULT get_ForeColor(
            ColorFormat **ForeColor /Out/) = 0;

        virtual HRESULT put_ForeColor(
            ColorFormat *ForeColor) = 0;

        virtual HRESULT get_Pattern(
            MsoPatternType *Pattern /Out/) = 0;

        virtual HRESULT put_Pattern(
            MsoPatternType Pattern) = 0;

        virtual HRESULT get_Style(
            MsoLineStyle *Style /Out/) = 0;

        virtual HRESULT put_Style(
            MsoLineStyle Style) = 0;

        virtual HRESULT get_Transparency(
            single *Transparency /Out/) = 0;

        virtual HRESULT put_Transparency(
            single Transparency) = 0;

        virtual HRESULT get_Visible(
            MsoTriState *Visible /Out/) = 0;

        virtual HRESULT put_Visible(
            MsoTriState Visible) = 0;

        virtual HRESULT get_Weight(
            single *Weight /Out/) = 0;

        virtual HRESULT put_Weight(
            single Weight) = 0;

        virtual HRESULT get_InsetPen(
            MsoTriState *InsetPen /Out/) = 0;

        virtual HRESULT put_InsetPen(
            MsoTriState InsetPen) = 0;
    };

    struct PictureFormat : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT IncrementBrightness(
            single Increment) = 0;

        virtual HRESULT IncrementContrast(
            single Increment) = 0;

        virtual HRESULT get_Brightness(
            single *Brightness /Out/) = 0;

        virtual HRESULT put_Brightness(
            single Brightness) = 0;

        virtual HRESULT get_ColorType(
            MsoPictureColorType *ColorType /Out/) = 0;

        virtual HRESULT put_ColorType(
            MsoPictureColorType ColorType) = 0;

        virtual HRESULT get_Contrast(
            single *Contrast /Out/) = 0;

        virtual HRESULT put_Contrast(
            single Contrast) = 0;

        virtual HRESULT get_CropBottom(
            single *CropBottom /Out/) = 0;

        virtual HRESULT put_CropBottom(
            single CropBottom) = 0;

        virtual HRESULT get_CropLeft(
            single *CropLeft /Out/) = 0;

        virtual HRESULT put_CropLeft(
            single CropLeft) = 0;

        virtual HRESULT get_CropRight(
            single *CropRight /Out/) = 0;

        virtual HRESULT put_CropRight(
            single CropRight) = 0;

        virtual HRESULT get_CropTop(
            single *CropTop /Out/) = 0;

        virtual HRESULT put_CropTop(
            single CropTop) = 0;

        virtual HRESULT get_TransparencyColor(
            MsoRGBType *TransparencyColor /Out/) = 0;

        virtual HRESULT put_TransparencyColor(
            MsoRGBType TransparencyColor) = 0;

        virtual HRESULT get_TransparentBackground(
            MsoTriState *TransparentBackground /Out/) = 0;

        virtual HRESULT put_TransparentBackground(
            MsoTriState TransparentBackground) = 0;

        virtual HRESULT get_Crop(
            Crop **Crop /Out/) = 0;
    };

    struct ShadowFormat : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT IncrementOffsetX(
            single Increment) = 0;

        virtual HRESULT IncrementOffsetY(
            single Increment) = 0;

        virtual HRESULT get_ForeColor(
            ColorFormat **ForeColor /Out/) = 0;

        virtual HRESULT put_ForeColor(
            ColorFormat *ForeColor) = 0;

        virtual HRESULT get_Obscured(
            MsoTriState *Obscured /Out/) = 0;

        virtual HRESULT put_Obscured(
            MsoTriState Obscured) = 0;

        virtual HRESULT get_OffsetX(
            single *OffsetX /Out/) = 0;

        virtual HRESULT put_OffsetX(
            single OffsetX) = 0;

        virtual HRESULT get_OffsetY(
            single *OffsetY /Out/) = 0;

        virtual HRESULT put_OffsetY(
            single OffsetY) = 0;

        virtual HRESULT get_Transparency(
            single *Transparency /Out/) = 0;

        virtual HRESULT put_Transparency(
            single Transparency) = 0;

        virtual HRESULT get_Type(
            MsoShadowType *Type /Out/) = 0;

        virtual HRESULT put_Type(
            MsoShadowType Type) = 0;

        virtual HRESULT get_Visible(
            MsoTriState *Visible /Out/) = 0;

        virtual HRESULT put_Visible(
            MsoTriState Visible) = 0;

        virtual HRESULT get_Style(
            MsoShadowStyle *ShadowStyle /Out/) = 0;

        virtual HRESULT put_Style(
            MsoShadowStyle ShadowStyle) = 0;

        virtual HRESULT get_Blur(
            single *Blur /Out/) = 0;

        virtual HRESULT put_Blur(
            single Blur) = 0;

        virtual HRESULT get_Size(
            single *Size /Out/) = 0;

        virtual HRESULT put_Size(
            single Size) = 0;

        virtual HRESULT get_RotateWithShape(
            MsoTriState *RotateWithShape /Out/) = 0;

        virtual HRESULT put_RotateWithShape(
            MsoTriState RotateWithShape) = 0;
    };

    struct TextEffectFormat : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT ToggleVerticalText() = 0;

        virtual HRESULT get_Alignment(
            MsoTextEffectAlignment *Alignment /Out/) = 0;

        virtual HRESULT put_Alignment(
            MsoTextEffectAlignment Alignment) = 0;

        virtual HRESULT get_FontBold(
            MsoTriState *FontBold /Out/) = 0;

        virtual HRESULT put_FontBold(
            MsoTriState FontBold) = 0;

        virtual HRESULT get_FontItalic(
            MsoTriState *FontItalic /Out/) = 0;

        virtual HRESULT put_FontItalic(
            MsoTriState FontItalic) = 0;

        virtual HRESULT get_FontName(
            BSTR *FontName /Out/) = 0;

        virtual HRESULT put_FontName(
            BSTR FontName) = 0;

        virtual HRESULT get_FontSize(
            single *FontSize /Out/) = 0;

        virtual HRESULT put_FontSize(
            single FontSize) = 0;

        virtual HRESULT get_KernedPairs(
            MsoTriState *KernedPairs /Out/) = 0;

        virtual HRESULT put_KernedPairs(
            MsoTriState KernedPairs) = 0;

        virtual HRESULT get_NormalizedHeight(
            MsoTriState *NormalizedHeight /Out/) = 0;

        virtual HRESULT put_NormalizedHeight(
            MsoTriState NormalizedHeight) = 0;

        virtual HRESULT get_PresetShape(
            MsoPresetTextEffectShape *PresetShape /Out/) = 0;

        virtual HRESULT put_PresetShape(
            MsoPresetTextEffectShape PresetShape) = 0;

        virtual HRESULT get_PresetTextEffect(
            MsoPresetTextEffect *Preset /Out/) = 0;

        virtual HRESULT put_PresetTextEffect(
            MsoPresetTextEffect Preset) = 0;

        virtual HRESULT get_RotatedChars(
            MsoTriState *RotatedChars /Out/) = 0;

        virtual HRESULT put_RotatedChars(
            MsoTriState RotatedChars) = 0;

        virtual HRESULT get_Text(
            BSTR *Text /Out/) = 0;

        virtual HRESULT put_Text(
            BSTR Text) = 0;

        virtual HRESULT get_Tracking(
            single *Tracking /Out/) = 0;

        virtual HRESULT put_Tracking(
            single Tracking) = 0;
    };

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

    struct SoftEdgeFormat : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Type(
            MsoSoftEdgeType *Type /Out/) = 0;

        virtual HRESULT put_Type(
            MsoSoftEdgeType Type) = 0;

        virtual HRESULT get_Radius(
            single *Radius /Out/) = 0;

        virtual HRESULT put_Radius(
            single Radius) = 0;
    };

    struct GlowFormat : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Radius(
            single *Radius /Out/) = 0;

        virtual HRESULT put_Radius(
            single Radius) = 0;

        virtual HRESULT get_Color(
            ColorFormat **Color /Out/) = 0;

        virtual HRESULT get_Transparency(
            single *Transparency /Out/) = 0;

        virtual HRESULT put_Transparency(
            single Transparency) = 0;
    };

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