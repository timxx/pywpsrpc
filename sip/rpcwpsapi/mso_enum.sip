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
    enum MsoLineDashStyle
    {
        msoLineDashStyleMixed = -2,
        msoLineSolid = 1,
        msoLineSquareDot = 2,
        msoLineRoundDot = 3,
        msoLineDash = 4,
        msoLineDashDot = 5,
        msoLineDashDotDot = 6,
        msoLineLongDash = 7,
        msoLineLongDashDot = 8,
        msoLineLongDashDotDot = 9,
        msoLineSysDash = 10,
        msoLineSysDot = 11,
        msoLineSysDashDot = 12
    };

    enum MsoLineStyle
    {
        msoLineStyleMixed = -2,
        msoLineSingle = 1,
        msoLineThinThin = 2,
        msoLineThinThick = 3,
        msoLineThickThin = 4,
        msoLineThickBetweenThin = 5
    };

    enum MsoArrowheadStyle
    {
        msoArrowheadStyleMixed = -2,
        msoArrowheadNone = 1,
        msoArrowheadTriangle = 2,
        msoArrowheadOpen = 3,
        msoArrowheadStealth = 4,
        msoArrowheadDiamond = 5,
        msoArrowheadOval = 6
    };

    enum MsoArrowheadWidth
    {
        msoArrowheadWidthMixed = -2,
        msoArrowheadNarrow = 1,
        msoArrowheadWidthMedium = 2,
        msoArrowheadWide = 3
    };

    enum MsoArrowheadLength
    {
        msoArrowheadLengthMixed = -2,
        msoArrowheadShort = 1,
        msoArrowheadLengthMedium = 2,
        msoArrowheadLong = 3
    };

    enum MsoFillType
    {
        msoFillMixed = -2,
        msoFillSolid = 1,
        msoFillPatterned = 2,
        msoFillGradient = 3,
        msoFillTextured = 4,
        msoFillBackground = 5,
        msoFillPicture = 6
    };

    enum MsoGradientStyle
    {
        msoGradientMixed = -2,
        msoGradientHorizontal = 1,
        msoGradientVertical = 2,
        msoGradientDiagonalUp = 3,
        msoGradientDiagonalDown = 4,
        msoGradientFromCorner = 5,
        msoGradientFromTitle = 6,
        msoGradientFromCenter = 7
    };

    enum MsoGradientColorType
    {
        msoGradientColorMixed = -2,
        msoGradientOneColor = 1,
        msoGradientTwoColors = 2,
        msoGradientPresetColors = 3,
        msoGradientMultiColor = 4
    };

    enum MsoTextureType
    {
        msoTextureTypeMixed = -2,
        msoTexturePreset = 1,
        msoTextureUserDefined = 2
    };

    enum MsoPresetTexture
    {
        msoPresetTextureMixed = -2,
        msoTexturePapyrus = 1,
        msoTextureCanvas = 2,
        msoTextureDenim = 3,
        msoTextureWovenMat = 4,
        msoTextureWaterDroplets = 5,
        msoTexturePaperBag = 6,
        msoTextureFishFossil = 7,
        msoTextureSand = 8,
        msoTextureGreenMarble = 9,
        msoTextureWhiteMarble = 10,
        msoTextureBrownMarble = 11,
        msoTextureGranite = 12,
        msoTextureNewsprint = 13,
        msoTextureRecycledPaper = 14,
        msoTextureParchment = 15,
        msoTextureStationery = 16,
        msoTextureBlueTissuePaper = 17,
        msoTexturePinkTissuePaper = 18,
        msoTexturePurpleMesh = 19,
        msoTextureBouquet = 20,
        msoTextureCork = 21,
        msoTextureWalnut = 22,
        msoTextureOak = 23,
        msoTextureMediumWood = 24
    };

    enum MsoPatternType
    {
        msoPatternMixed = -2,
        msoPattern5Percent = 1,
        msoPattern10Percent = 2,
        msoPattern20Percent = 3,
        msoPattern25Percent = 4,
        msoPattern30Percent = 5,
        msoPattern40Percent = 6,
        msoPattern50Percent = 7,
        msoPattern60Percent = 8,
        msoPattern70Percent = 9,
        msoPattern75Percent = 10,
        msoPattern80Percent = 11,
        msoPattern90Percent = 12,
        msoPatternDarkHorizontal = 13,
        msoPatternDarkVertical = 14,
        msoPatternDarkDownwardDiagonal = 15,
        msoPatternDarkUpwardDiagonal = 16,
        msoPatternSmallCheckerBoard = 17,
        msoPatternTrellis = 18,
        msoPatternLightHorizontal = 19,
        msoPatternLightVertical = 20,
        msoPatternLightDownwardDiagonal = 21,
        msoPatternLightUpwardDiagonal = 22,
        msoPatternSmallGrid = 23,
        msoPatternDottedDiamond = 24,
        msoPatternWideDownwardDiagonal = 25,
        msoPatternWideUpwardDiagonal = 26,
        msoPatternDashedUpwardDiagonal = 27,
        msoPatternDashedDownwardDiagonal = 28,
        msoPatternNarrowVertical = 29,
        msoPatternNarrowHorizontal = 30,
        msoPatternDashedVertical = 31,
        msoPatternDashedHorizontal = 32,
        msoPatternLargeConfetti = 33,
        msoPatternLargeGrid = 34,
        msoPatternHorizontalBrick = 35,
        msoPatternLargeCheckerBoard = 36,
        msoPatternSmallConfetti = 37,
        msoPatternZigZag = 38,
        msoPatternSolidDiamond = 39,
        msoPatternDiagonalBrick = 40,
        msoPatternOutlinedDiamond = 41,
        msoPatternPlaid = 42,
        msoPatternSphere = 43,
        msoPatternWeave = 44,
        msoPatternDottedGrid = 45,
        msoPatternDivot = 46,
        msoPatternShingle = 47,
        msoPatternWave = 48,
        msoPatternHorizontal = 49,
        msoPatternVertical = 50,
        msoPatternCross = 51,
        msoPatternDownwardDiagonal = 52,
        msoPatternUpwardDiagonal = 53,
        msoPatternDiagonalCross = 54
    };

    enum MsoPresetGradientType
    {
        msoPresetGradientMixed = -2,
        msoGradientEarlySunset = 1,
        msoGradientLateSunset = 2,
        msoGradientNightfall = 3,
        msoGradientDaybreak = 4,
        msoGradientHorizon = 5,
        msoGradientDesert = 6,
        msoGradientOcean = 7,
        msoGradientCalmWater = 8,
        msoGradientFire = 9,
        msoGradientFog = 10,
        msoGradientMoss = 11,
        msoGradientPeacock = 12,
        msoGradientWheat = 13,
        msoGradientParchment = 14,
        msoGradientMahogany = 15,
        msoGradientRainbow = 16,
        msoGradientRainbowII = 17,
        msoGradientGold = 18,
        msoGradientGoldII = 19,
        msoGradientBrass = 20,
        msoGradientChrome = 21,
        msoGradientChromeII = 22,
        msoGradientSilver = 23,
        msoGradientSapphire = 24
    };

    enum MsoShadowType
    {
        msoShadowMixed = -2,
        msoShadow1 = 1,
        msoShadow2 = 2,
        msoShadow3 = 3,
        msoShadow4 = 4,
        msoShadow5 = 5,
        msoShadow6 = 6,
        msoShadow7 = 7,
        msoShadow8 = 8,
        msoShadow9 = 9,
        msoShadow10 = 10,
        msoShadow11 = 11,
        msoShadow12 = 12,
        msoShadow13 = 13,
        msoShadow14 = 14,
        msoShadow15 = 15,
        msoShadow16 = 16,
        msoShadow17 = 17,
        msoShadow18 = 18,
        msoShadow19 = 19,
        msoShadow20 = 20,
        msoShadow21 = 21,
        msoShadow22 = 22,
        msoShadow23 = 23,
        msoShadow24 = 24,
        msoShadow25 = 25,
        msoShadow26 = 26,
        msoShadow27 = 27,
        msoShadow28 = 28,
        msoShadow29 = 29,
        msoShadow30 = 30,
        msoShadow31 = 31,
        msoShadow32 = 32,
        msoShadow33 = 33,
        msoShadow34 = 34,
        msoShadow35 = 35,
        msoShadow36 = 36,
        msoShadow37 = 37,
        msoShadow38 = 38,
        msoShadow39 = 39,
        msoShadow40 = 40,
        msoShadow41 = 41,
        msoShadow42 = 42,
        msoShadow43 = 43
    };

    enum MsoPresetTextEffect
    {
        msoTextEffectMixed = -2,
        msoTextEffect1 = 0,
        msoTextEffect2 = 1,
        msoTextEffect3 = 2,
        msoTextEffect4 = 3,
        msoTextEffect5 = 4,
        msoTextEffect6 = 5,
        msoTextEffect7 = 6,
        msoTextEffect8 = 7,
        msoTextEffect9 = 8,
        msoTextEffect10 = 9,
        msoTextEffect11 = 10,
        msoTextEffect12 = 11,
        msoTextEffect13 = 12,
        msoTextEffect14 = 13,
        msoTextEffect15 = 14,
        msoTextEffect16 = 15,
        msoTextEffect17 = 16,
        msoTextEffect18 = 17,
        msoTextEffect19 = 18,
        msoTextEffect20 = 19,
        msoTextEffect21 = 20,
        msoTextEffect22 = 21,
        msoTextEffect23 = 22,
        msoTextEffect24 = 23,
        msoTextEffect25 = 24,
        msoTextEffect26 = 25,
        msoTextEffect27 = 26,
        msoTextEffect28 = 27,
        msoTextEffect29 = 28,
        msoTextEffect30 = 29,
        msoTextEffect31 = 30,
        msoTextEffect32 = 31,
        msoTextEffect33 = 32,
        msoTextEffect34 = 33,
        msoTextEffect35 = 34,
        msoTextEffect36 = 35,
        msoTextEffect37 = 36,
        msoTextEffect38 = 37,
        msoTextEffect39 = 38,
        msoTextEffect40 = 39,
        msoTextEffect41 = 40,
        msoTextEffect42 = 41,
        msoTextEffect43 = 42,
        msoTextEffect44 = 43,
        msoTextEffect45 = 44,
        msoTextEffect46 = 45,
        msoTextEffect47 = 46,
        msoTextEffect48 = 47,
        msoTextEffect49 = 48,
        msoTextEffect50 = 49
    };

    enum MsoPresetTextEffectShape
    {
        msoTextEffectShapeMixed = -2,
        msoTextEffectShapePlainText = 1,
        msoTextEffectShapeStop = 2,
        msoTextEffectShapeTriangleUp = 3,
        msoTextEffectShapeTriangleDown = 4,
        msoTextEffectShapeChevronUp = 5,
        msoTextEffectShapeChevronDown = 6,
        msoTextEffectShapeRingInside = 7,
        msoTextEffectShapeRingOutside = 8,
        msoTextEffectShapeArchUpCurve = 9,
        msoTextEffectShapeArchDownCurve = 10,
        msoTextEffectShapeCircleCurve = 11,
        msoTextEffectShapeButtonCurve = 12,
        msoTextEffectShapeArchUpPour = 13,
        msoTextEffectShapeArchDownPour = 14,
        msoTextEffectShapeCirclePour = 15,
        msoTextEffectShapeButtonPour = 16,
        msoTextEffectShapeCurveUp = 17,
        msoTextEffectShapeCurveDown = 18,
        msoTextEffectShapeCanUp = 19,
        msoTextEffectShapeCanDown = 20,
        msoTextEffectShapeWave1 = 21,
        msoTextEffectShapeWave2 = 22,
        msoTextEffectShapeDoubleWave1 = 23,
        msoTextEffectShapeDoubleWave2 = 24,
        msoTextEffectShapeInflate = 25,
        msoTextEffectShapeDeflate = 26,
        msoTextEffectShapeInflateBottom = 27,
        msoTextEffectShapeDeflateBottom = 28,
        msoTextEffectShapeInflateTop = 29,
        msoTextEffectShapeDeflateTop = 30,
        msoTextEffectShapeDeflateInflate = 31,
        msoTextEffectShapeDeflateInflateDeflate = 32,
        msoTextEffectShapeFadeRight = 33,
        msoTextEffectShapeFadeLeft = 34,
        msoTextEffectShapeFadeUp = 35,
        msoTextEffectShapeFadeDown = 36,
        msoTextEffectShapeSlantUp = 37,
        msoTextEffectShapeSlantDown = 38,
        msoTextEffectShapeCascadeUp = 39,
        msoTextEffectShapeCascadeDown = 40
    };

    enum MsoTextEffectAlignment
    {
        msoTextEffectAlignmentMixed = -2,
        msoTextEffectAlignmentLeft = 1,
        msoTextEffectAlignmentCentered = 2,
        msoTextEffectAlignmentRight = 3,
        msoTextEffectAlignmentLetterJustify = 4,
        msoTextEffectAlignmentWordJustify = 5,
        msoTextEffectAlignmentStretchJustify = 6
    };

    enum MsoPresetLightingDirection
    {
        msoPresetLightingDirectionMixed = -2,
        msoLightingTopLeft = 1,
        msoLightingTop = 2,
        msoLightingTopRight = 3,
        msoLightingLeft = 4,
        msoLightingNone = 5,
        msoLightingRight = 6,
        msoLightingBottomLeft = 7,
        msoLightingBottom = 8,
        msoLightingBottomRight = 9
    };

    enum MsoPresetLightingSoftness
    {
        msoPresetLightingSoftnessMixed = -2,
        msoLightingDim = 1,
        msoLightingNormal = 2,
        msoLightingBright = 3
    };

    enum MsoPresetMaterial
    {
        msoPresetMaterialMixed = -2,
        msoMaterialMatte = 1,
        msoMaterialPlastic = 2,
        msoMaterialMetal = 3,
        msoMaterialWireFrame = 4,
        msoMaterialMatte2 = 5,
        msoMaterialPlastic2 = 6,
        msoMaterialMetal2 = 7,
        msoMaterialWarmMatte = 8,
        msoMaterialTranslucentPowder = 9,
        msoMaterialPowder = 10,
        msoMaterialDarkEdge = 11,
        msoMaterialSoftEdge = 12,
        msoMaterialClear = 13,
        msoMaterialFlat = 14,
        msoMaterialSoftMetal = 15
    };

    enum MsoPresetExtrusionDirection
    {
        msoPresetExtrusionDirectionMixed = -2,
        msoExtrusionBottomRight = 1,
        msoExtrusionBottom = 2,
        msoExtrusionBottomLeft = 3,
        msoExtrusionRight = 4,
        msoExtrusionNone = 5,
        msoExtrusionLeft = 6,
        msoExtrusionTopRight = 7,
        msoExtrusionTop = 8,
        msoExtrusionTopLeft = 9
    };

    enum MsoPresetThreeDFormat
    {
        msoPresetThreeDFormatMixed = -2,
        msoThreeD1 = 1,
        msoThreeD2 = 2,
        msoThreeD3 = 3,
        msoThreeD4 = 4,
        msoThreeD5 = 5,
        msoThreeD6 = 6,
        msoThreeD7 = 7,
        msoThreeD8 = 8,
        msoThreeD9 = 9,
        msoThreeD10 = 10,
        msoThreeD11 = 11,
        msoThreeD12 = 12,
        msoThreeD13 = 13,
        msoThreeD14 = 14,
        msoThreeD15 = 15,
        msoThreeD16 = 16,
        msoThreeD17 = 17,
        msoThreeD18 = 18,
        msoThreeD19 = 19,
        msoThreeD20 = 20
    };

    enum MsoExtrusionColorType
    {
        msoExtrusionColorTypeMixed = -2,
        msoExtrusionColorAutomatic = 1,
        msoExtrusionColorCustom = 2
    };

    enum MsoAlignCmd
    {
        msoAlignLefts = 0,
        msoAlignCenters = 1,
        msoAlignRights = 2,
        msoAlignTops = 3,
        msoAlignMiddles = 4,
        msoAlignBottoms = 5
    };

    enum MsoDistributeCmd
    {
        msoDistributeHorizontally = 0,
        msoDistributeVertically = 1
    };

    enum MsoConnectorType
    {
        msoConnectorTypeMixed = -2,
        msoConnectorStraight = 1,
        msoConnectorElbow = 2,
        msoConnectorCurve = 3
    };

    enum MsoHorizontalAnchor
    {
        msoHorizontalAnchorMixed = -2,
        msoAnchorNone = 1,
        msoAnchorCenter = 2
    };

    enum MsoVerticalAnchor
    {
        msoVerticalAnchorMixed = -2,
        msoAnchorTop = 1,
        msoAnchorTopBaseline = 2,
        msoAnchorMiddle = 3,
        msoAnchorBottom = 4,
        msoAnchorBottomBaseLine = 5
    };

    enum MsoOrientation
    {
        msoOrientationMixed = -2,
        msoOrientationHorizontal = 1,
        msoOrientationVertical = 2
    };

    enum MsoZOrderCmd
    {
        msoBringToFront = 0,
        msoSendToBack = 1,
        msoBringForward = 2,
        msoSendBackward = 3,
        msoBringInFrontOfText = 4,
        msoSendBehindText = 5
    };

    enum MsoSegmentType
    {
        msoSegmentLine = 0,
        msoSegmentCurve = 1
    };

    enum MsoEditingType
    {
        msoEditingAuto = 0,
        msoEditingCorner = 1,
        msoEditingSmooth = 2,
        msoEditingSymmetric = 3
    };

    enum MsoAutoShapeType
    {
        msoShapeMixed = -2,
        msoShapeRectangle = 1,
        msoShapeParallelogram = 2,
        msoShapeTrapezoid = 3,
        msoShapeDiamond = 4,
        msoShapeRoundedRectangle = 5,
        msoShapeOctagon = 6,
        msoShapeIsoscelesTriangle = 7,
        msoShapeRightTriangle = 8,
        msoShapeOval = 9,
        msoShapeHexagon = 10,
        msoShapeCross = 11,
        msoShapeRegularPentagon = 12,
        msoShapeCan = 13,
        msoShapeCube = 14,
        msoShapeBevel = 15,
        msoShapeFoldedCorner = 16,
        msoShapeSmileyFace = 17,
        msoShapeDonut = 18,
        msoShapeNoSymbol = 19,
        msoShapeBlockArc = 20,
        msoShapeHeart = 21,
        msoShapeLightningBolt = 22,
        msoShapeSun = 23,
        msoShapeMoon = 24,
        msoShapeArc = 25,
        msoShapeDoubleBracket = 26,
        msoShapeDoubleBrace = 27,
        msoShapePlaque = 28,
        msoShapeLeftBracket = 29,
        msoShapeRightBracket = 30,
        msoShapeLeftBrace = 31,
        msoShapeRightBrace = 32,
        msoShapeRightArrow = 33,
        msoShapeLeftArrow = 34,
        msoShapeUpArrow = 35,
        msoShapeDownArrow = 36,
        msoShapeLeftRightArrow = 37,
        msoShapeUpDownArrow = 38,
        msoShapeQuadArrow = 39,
        msoShapeLeftRightUpArrow = 40,
        msoShapeBentArrow = 41,
        msoShapeUTurnArrow = 42,
        msoShapeLeftUpArrow = 43,
        msoShapeBentUpArrow = 44,
        msoShapeCurvedRightArrow = 45,
        msoShapeCurvedLeftArrow = 46,
        msoShapeCurvedUpArrow = 47,
        msoShapeCurvedDownArrow = 48,
        msoShapeStripedRightArrow = 49,
        msoShapeNotchedRightArrow = 50,
        msoShapePentagon = 51,
        msoShapeChevron = 52,
        msoShapeRightArrowCallout = 53,
        msoShapeLeftArrowCallout = 54,
        msoShapeUpArrowCallout = 55,
        msoShapeDownArrowCallout = 56,
        msoShapeLeftRightArrowCallout = 57,
        msoShapeUpDownArrowCallout = 58,
        msoShapeQuadArrowCallout = 59,
        msoShapeCircularArrow = 60,
        msoShapeFlowchartProcess = 61,
        msoShapeFlowchartAlternateProcess = 62,
        msoShapeFlowchartDecision = 63,
        msoShapeFlowchartData = 64,
        msoShapeFlowchartPredefinedProcess = 65,
        msoShapeFlowchartInternalStorage = 66,
        msoShapeFlowchartDocument = 67,
        msoShapeFlowchartMultidocument = 68,
        msoShapeFlowchartTerminator = 69,
        msoShapeFlowchartPreparation = 70,
        msoShapeFlowchartManualInput = 71,
        msoShapeFlowchartManualOperation = 72,
        msoShapeFlowchartConnector = 73,
        msoShapeFlowchartOffpageConnector = 74,
        msoShapeFlowchartCard = 75,
        msoShapeFlowchartPunchedTape = 76,
        msoShapeFlowchartSummingJunction = 77,
        msoShapeFlowchartOr = 78,
        msoShapeFlowchartCollate = 79,
        msoShapeFlowchartSort = 80,
        msoShapeFlowchartExtract = 81,
        msoShapeFlowchartMerge = 82,
        msoShapeFlowchartStoredData = 83,
        msoShapeFlowchartDelay = 84,
        msoShapeFlowchartSequentialAccessStorage = 85,
        msoShapeFlowchartMagneticDisk = 86,
        msoShapeFlowchartDirectAccessStorage = 87,
        msoShapeFlowchartDisplay = 88,
        msoShapeExplosion1 = 89,
        msoShapeExplosion2 = 90,
        msoShape4pointStar = 91,
        msoShape5pointStar = 92,
        msoShape8pointStar = 93,
        msoShape16pointStar = 94,
        msoShape24pointStar = 95,
        msoShape32pointStar = 96,
        msoShapeUpRibbon = 97,
        msoShapeDownRibbon = 98,
        msoShapeCurvedUpRibbon = 99,
        msoShapeCurvedDownRibbon = 100,
        msoShapeVerticalScroll = 101,
        msoShapeHorizontalScroll = 102,
        msoShapeWave = 103,
        msoShapeDoubleWave = 104,
        msoShapeRectangularCallout = 105,
        msoShapeRoundedRectangularCallout = 106,
        msoShapeOvalCallout = 107,
        msoShapeCloudCallout = 108,
        msoShapeLineCallout1 = 109,
        msoShapeLineCallout2 = 110,
        msoShapeLineCallout3 = 111,
        msoShapeLineCallout4 = 112,
        msoShapeLineCallout1AccentBar = 113,
        msoShapeLineCallout2AccentBar = 114,
        msoShapeLineCallout3AccentBar = 115,
        msoShapeLineCallout4AccentBar = 116,
        msoShapeLineCallout1NoBorder = 117,
        msoShapeLineCallout2NoBorder = 118,
        msoShapeLineCallout3NoBorder = 119,
        msoShapeLineCallout4NoBorder = 120,
        msoShapeLineCallout1BorderandAccentBar = 121,
        msoShapeLineCallout2BorderandAccentBar = 122,
        msoShapeLineCallout3BorderandAccentBar = 123,
        msoShapeLineCallout4BorderandAccentBar = 124,
        msoShapeActionButtonCustom = 125,
        msoShapeActionButtonHome = 126,
        msoShapeActionButtonHelp = 127,
        msoShapeActionButtonInformation = 128,
        msoShapeActionButtonBackorPrevious = 129,
        msoShapeActionButtonForwardorNext = 130,
        msoShapeActionButtonBeginning = 131,
        msoShapeActionButtonEnd = 132,
        msoShapeActionButtonReturn = 133,
        msoShapeActionButtonDocument = 134,
        msoShapeActionButtonSound = 135,
        msoShapeActionButtonMovie = 136,
        msoShapeBalloon = 137,
        msoShapeNotPrimitive = 138,
        msoShapeFlowchartOfflineStorage = 139,
        msoShapeLeftRightRibbon = 140,
        msoShapeDiagonalStripe = 141,
        msoShapePie = 142,
        msoShapeNonIsoscelesTrapezoid = 143,
        msoShapeDecagon = 144,
        msoShapeHeptagon = 145,
        msoShapeDodecagon = 146,
        msoShape6pointStar = 147,
        msoShape7pointStar = 148,
        msoShape10pointStar = 149,
        msoShape12pointStar = 150,
        msoShapeRound1Rectangle = 151,
        msoShapeRound2SameRectangle = 152,
        msoShapeRound2DiagRectangle = 153,
        msoShapeSnipRoundRectangle = 154,
        msoShapeSnip1Rectangle = 155,
        msoShapeSnip2SameRectangle = 156,
        msoShapeSnip2DiagRectangle = 157,
        msoShapeFrame = 158,
        msoShapeHalfFrame = 159,
        msoShapeTear = 160,
        msoShapeChord = 161,
        msoShapeCorner = 162,
        msoShapeMathPlus = 163,
        msoShapeMathMinus = 164,
        msoShapeMathMultiply = 165,
        msoShapeMathDivide = 166,
        msoShapeMathEqual = 167,
        msoShapeMathNotEqual = 168,
        msoShapeCornerTabs = 169,
        msoShapeSquareTabs = 170,
        msoShapePlaqueTabs = 171,
        msoShapeGear6 = 172,
        msoShapeGear9 = 173,
        msoShapeFunnel = 174,
        msoShapePieWedge = 175,
        msoShapeLeftCircularArrow = 176,
        msoShapeLeftRightCircularArrow = 177,
        msoShapeSwooshArrow = 178,
        msoShapeCloud = 179,
        msoShapeChartX = 180,
        msoShapeChartStar = 181,
        msoShapeChartPlus = 182,
        msoShapeLineInverse = 183
    };

    enum MsoShapeType
    {
        msoShapeTypeMixed = -2,
        msoAutoShape = 1,
        msoCallout = 2,
        msoChart = 3,
        msoComment = 4,
        msoFreeform = 5,
        msoGroup = 6,
        msoEmbeddedOLEObject = 7,
        msoFormControl = 8,
        msoLine = 9,
        msoLinkedOLEObject = 10,
        msoLinkedPicture = 11,
        msoOLEControlObject = 12,
        msoPicture = 13,
        msoPlaceholder = 14,
        msoTextEffect = 15,
        msoMedia = 16,
        msoTextBox = 17,
        msoScriptAnchor = 18,
        msoTable = 19,
        msoCanvas = 20,
        msoDiagram = 21,
        msoInk = 22,
        msoInkComment = 23,
        msoSmartArt = 24,
        msoSlicer = 25,
        msoWebVideo = 26
    };

    enum MsoFlipCmd
    {
        msoFlipHorizontal = 0,
        msoFlipVertical = 1
    };

    enum MsoTriState
    {
        msoTrue = -1,
        msoFalse = 0,
        msoCTrue = 1,
        msoTriStateToggle = -3,
        msoTriStateMixed = -2
    };

    enum MsoColorType
    {
        msoColorTypeMixed = -2,
        msoColorTypeRGB = 1,
        msoColorTypeScheme = 2,
        msoColorTypeCMYK = 3,
        msoColorTypeCMS = 4,
        msoColorTypeInk = 5
    };

    enum MsoPictureColorType
    {
        msoPictureMixed = -2,
        msoPictureAutomatic = 1,
        msoPictureGrayscale = 2,
        msoPictureBlackAndWhite = 3,
        msoPictureWatermark = 4
    };

    enum MsoCalloutAngleType
    {
        msoCalloutAngleMixed = -2,
        msoCalloutAngleAutomatic = 1,
        msoCalloutAngle30 = 2,
        msoCalloutAngle45 = 3,
        msoCalloutAngle60 = 4,
        msoCalloutAngle90 = 5
    };

    enum MsoCalloutDropType
    {
        msoCalloutDropMixed = -2,
        msoCalloutDropCustom = 1,
        msoCalloutDropTop = 2,
        msoCalloutDropCenter = 3,
        msoCalloutDropBottom = 4
    };

    enum MsoCalloutType
    {
        msoCalloutMixed = -2,
        msoCalloutOne = 1,
        msoCalloutTwo = 2,
        msoCalloutThree = 3,
        msoCalloutFour = 4
    };

    enum MsoBlackWhiteMode
    {
        msoBlackWhiteMixed = -2,
        msoBlackWhiteAutomatic = 1,
        msoBlackWhiteGrayScale = 2,
        msoBlackWhiteLightGrayScale = 3,
        msoBlackWhiteInverseGrayScale = 4,
        msoBlackWhiteGrayOutline = 5,
        msoBlackWhiteBlackTextAndLine = 6,
        msoBlackWhiteHighContrast = 7,
        msoBlackWhiteBlack = 8,
        msoBlackWhiteWhite = 9,
        msoBlackWhiteDontShow = 10
    };

    enum MsoMixedType
    {
        msoIntegerMixed = 32768,
        msoSingleMixed = 0x80000000
    };

    enum MsoTextOrientation
    {
        msoTextOrientationMixed = -2,
        msoTextOrientationHorizontal = 1,
        msoTextOrientationUpward = 2,
        msoTextOrientationDownward = 3,
        msoTextOrientationVerticalFarEast = 4,
        msoTextOrientationVertical = 5,
        msoTextOrientationHorizontalRotatedFarEast = 6
    };

    enum MsoScaleFrom
    {
        msoScaleFromTopLeft = 0,
        msoScaleFromMiddle = 1,
        msoScaleFromBottomRight = 2
    };

    typedef long MsoRGBType;

    enum MsoBarPosition
    {
        msoBarLeft = 0,
        msoBarTop = 1,
        msoBarRight = 2,
        msoBarBottom = 3,
        msoBarFloating = 4,
        msoBarPopup = 5,
        msoBarMenuBar = 6
    };

    enum MsoBarProtection
    {
        msoBarNoProtection = 0,
        msoBarNoCustomize = 1,
        msoBarNoResize = 2,
        msoBarNoMove = 4,
        msoBarNoChangeVisible = 8,
        msoBarNoChangeDock = 16,
        msoBarNoVerticalDock = 32,
        msoBarNoHorizontalDock = 64
    };

    enum MsoBarType
    {
        msoBarTypeNormal = 0,
        msoBarTypeMenuBar = 1,
        msoBarTypePopup = 2
    };

    enum MsoControlType
    {
        msoControlCustom = 0,
        msoControlButton = 1,
        msoControlEdit = 2,
        msoControlDropdown = 3,
        msoControlComboBox = 4,
        msoControlButtonDropdown = 5,
        msoControlSplitDropdown = 6,
        msoControlOCXDropdown = 7,
        msoControlGenericDropdown = 8,
        msoControlGraphicDropdown = 9,
        msoControlPopup = 10,
        msoControlGraphicPopup = 11,
        msoControlButtonPopup = 12,
        msoControlSplitButtonPopup = 13,
        msoControlSplitButtonMRUPopup = 14,
        msoControlLabel = 15,
        msoControlExpandingGrid = 16,
        msoControlSplitExpandingGrid = 17,
        msoControlGrid = 18,
        msoControlGauge = 19,
        msoControlGraphicCombo = 20,
        msoControlPane = 21,
        msoControlActiveX = 22,
        msoControlSpinner = 23,
        msoControlLabelEx = 24,
        msoControlWorkPane = 25,
        msoControlAutoCompleteCombo = 26
    };

    enum MsoButtonState
    {
        msoButtonUp = 0,
        msoButtonDown = -1,
        msoButtonMixed = 2
    };

    enum MsoControlOLEUsage
    {
        msoControlOLEUsageNeither = 0,
        msoControlOLEUsageServer = 1,
        msoControlOLEUsageClient = 2,
        msoControlOLEUsageBoth = 3
    };

    enum MsoButtonStyleHidden
    {
        msoButtonWrapText = 4,
        msoButtonTextBelow = 8
    };

    enum MsoButtonStyle
    {
        msoButtonAutomatic = 0,
        msoButtonIcon = 1,
        msoButtonCaption = 2,
        msoButtonIconAndCaption = 3,
        msoButtonIconAndWrapCaption = 7,
        msoButtonIconAndCaptionBelow = 11,
        msoButtonWrapCaption = 14,
        msoButtonIconAndWrapCaptionBelow = 15
    };

    enum MsoComboStyle
    {
        msoComboNormal = 0,
        msoComboLabel = 1
    };

    enum MsoOLEMenuGroup
    {
        msoOLEMenuGroupNone = -1,
        msoOLEMenuGroupFile = 0,
        msoOLEMenuGroupEdit = 1,
        msoOLEMenuGroupContainer = 2,
        msoOLEMenuGroupObject = 3,
        msoOLEMenuGroupWindow = 4,
        msoOLEMenuGroupHelp = 5
    };

    enum MsoMenuAnimation
    {
        msoMenuAnimationNone = 0,
        msoMenuAnimationRandom = 1,
        msoMenuAnimationUnfold = 2,
        msoMenuAnimationSlide = 3
    };

    enum MsoBarRow
    {
        msoBarRowFirst = 0,
        msoBarRowLast = -1
    };

    enum MsoCommandBarButtonHyperlinkType
    {
        msoCommandBarButtonHyperlinkNone = 0,
        msoCommandBarButtonHyperlinkOpen = 1,
        msoCommandBarButtonHyperlinkInsertPicture = 2
    };

    enum MsoHyperlinkType
    {
        msoHyperlinkRange = 0,
        msoHyperlinkShape = 1,
        msoHyperlinkInlineShape = 2
    };

    enum MsoExtraInfoMethod
    {
        msoMethodGet = 0,
        msoMethodPost = 1
    };

    enum MsoAnimationType
    {
        msoAnimationIdle = 1,
        msoAnimationGreeting = 2,
        msoAnimationGoodbye = 3,
        msoAnimationBeginSpeaking = 4,
        msoAnimationRestPose = 5,
        msoAnimationCharacterSuccessMajor = 6,
        msoAnimationGetAttentionMajor = 11,
        msoAnimationGetAttentionMinor = 12,
        msoAnimationSearching = 13,
        msoAnimationPrinting = 18,
        msoAnimationGestureRight = 19,
        msoAnimationWritingNotingSomething = 22,
        msoAnimationWorkingAtSomething = 23,
        msoAnimationThinking = 24,
        msoAnimationSendingMail = 25,
        msoAnimationListensToComputer = 26,
        msoAnimationDisappear = 31,
        msoAnimationAppear = 32,
        msoAnimationGetArtsy = 100,
        msoAnimationGetTechy = 101,
        msoAnimationGetWizardy = 102,
        msoAnimationCheckingSomething = 103,
        msoAnimationLookDown = 104,
        msoAnimationLookDownLeft = 105,
        msoAnimationLookDownRight = 106,
        msoAnimationLookLeft = 107,
        msoAnimationLookRight = 108,
        msoAnimationLookUp = 109,
        msoAnimationLookUpLeft = 110,
        msoAnimationLookUpRight = 111,
        msoAnimationSaving = 112,
        msoAnimationGestureDown = 113,
        msoAnimationGestureLeft = 114,
        msoAnimationGestureUp = 115,
        msoAnimationEmptyTrash = 116
    };

    enum MsoButtonSetType
    {
        msoButtonSetNone = 0,
        msoButtonSetOK = 1,
        msoButtonSetCancel = 2,
        msoButtonSetOkCancel = 3,
        msoButtonSetYesNo = 4,
        msoButtonSetYesNoCancel = 5,
        msoButtonSetBackClose = 6,
        msoButtonSetNextClose = 7,
        msoButtonSetBackNextClose = 8,
        msoButtonSetRetryCancel = 9,
        msoButtonSetAbortRetryIgnore = 10,
        msoButtonSetSearchClose = 11,
        msoButtonSetBackNextSnooze = 12,
        msoButtonSetTipsOptionsClose = 13,
        msoButtonSetYesAllNoCancel = 14
    };

    enum MsoIconType
    {
        msoIconNone = 0,
        msoIconAlert = 2,
        msoIconTip = 3,
        msoIconAlertInfo = 4,
        msoIconAlertWarning = 5,
        msoIconAlertQuery = 6,
        msoIconAlertCritical = 7
    };

    enum MsoBalloonType
    {
        msoBalloonTypeButtons = 0,
        msoBalloonTypeBullets = 1,
        msoBalloonTypeNumbers = 2
    };

    enum MsoModeType
    {
        msoModeModal = 0,
        msoModeAutoDown = 1,
        msoModeModeless = 2
    };

    enum MsoBalloonErrorType
    {
        msoBalloonErrorNone = 0,
        msoBalloonErrorOther = 1,
        msoBalloonErrorTooBig = 2,
        msoBalloonErrorOutOfMemory = 3,
        msoBalloonErrorBadPictureRef = 4,
        msoBalloonErrorBadReference = 5,
        msoBalloonErrorButtonlessModal = 6,
        msoBalloonErrorButtonModeless = 7,
        msoBalloonErrorBadCharacter = 8,
        msoBalloonErrorCOMFailure = 9,
        msoBalloonErrorCharNotTopmostForModal = 10,
        msoBalloonErrorTooManyControls = 11
    };

    enum MsoWizardActType
    {
        msoWizardActInactive = 0,
        msoWizardActActive = 1,
        msoWizardActSuspend = 2,
        msoWizardActResume = 3
    };

    enum MsoWizardMsgType
    {
        msoWizardMsgLocalStateOn = 1,
        msoWizardMsgLocalStateOff = 2,
        msoWizardMsgShowHelp = 3,
        msoWizardMsgSuspending = 4,
        msoWizardMsgResuming = 5
    };

    enum MsoBalloonButtonType
    {
        msoBalloonButtonYesToAll = -15,
        msoBalloonButtonOptions = -14,
        msoBalloonButtonTips = -13,
        msoBalloonButtonClose = -12,
        msoBalloonButtonSnooze = -11,
        msoBalloonButtonSearch = -10,
        msoBalloonButtonIgnore = -9,
        msoBalloonButtonAbort = -8,
        msoBalloonButtonRetry = -7,
        msoBalloonButtonNext = -6,
        msoBalloonButtonBack = -5,
        msoBalloonButtonNo = -4,
        msoBalloonButtonYes = -3,
        msoBalloonButtonCancel = -2,
        msoBalloonButtonOK = -1,
        msoBalloonButtonNull = 0
    };

    enum DocProperties
    {
        offPropertyTypeNumber = 1,
        offPropertyTypeBoolean = 2,
        offPropertyTypeDate = 3,
        offPropertyTypeString = 4,
        offPropertyTypeFloat = 5
    };

    enum MsoDocProperties
    {
        msoPropertyTypeNumber = 1,
        msoPropertyTypeBoolean = 2,
        msoPropertyTypeDate = 3,
        msoPropertyTypeString = 4,
        msoPropertyTypeFloat = 5
    };

    enum MsoAppLanguageID
    {
        msoLanguageIDInstall = 1,
        msoLanguageIDUI = 2,
        msoLanguageIDHelp = 3,
        msoLanguageIDExeMode = 4,
        msoLanguageIDUIPrevious = 5
    };

    enum MsoFarEastLineBreakLanguageID
    {
        MsoFarEastLineBreakLanguageJapanese = 1041,
        MsoFarEastLineBreakLanguageKorean = 1042,
        MsoFarEastLineBreakLanguageSimplifiedChinese = 2052,
        MsoFarEastLineBreakLanguageTraditionalChinese = 1028
    };

    enum MsoFeatureInstall
    {
        msoFeatureInstallNone = 0,
        msoFeatureInstallOnDemand = 1,
        msoFeatureInstallOnDemandWithUI = 2
    };

    enum MsoScriptLanguage
    {
        msoScriptLanguageJava = 1,
        msoScriptLanguageVisualBasic = 2,
        msoScriptLanguageASP = 3,
        msoScriptLanguageOther = 4
    };

    enum MsoScriptLocation
    {
        msoScriptLocationInHead = 1,
        msoScriptLocationInBody = 2
    };

    enum MsoFileFindOptions
    {
        msoOptionsNew = 1,
        msoOptionsAdd = 2,
        msoOptionsWithin = 3
    };

    enum MsoFileFindView
    {
        msoViewFileInfo = 1,
        msoViewPreview = 2,
        msoViewSummaryInfo = 3
    };

    enum MsoFileFindSortBy
    {
        msoFileFindSortbyAuthor = 1,
        msoFileFindSortbyDateCreated = 2,
        msoFileFindSortbyLastSavedBy = 3,
        msoFileFindSortbyDateSaved = 4,
        msoFileFindSortbyFileName = 5,
        msoFileFindSortbySize = 6,
        msoFileFindSortbyTitle = 7
    };

    enum MsoFileFindListBy
    {
        msoListbyName = 1,
        msoListbyTitle = 2
    };

    enum MsoLastModified
    {
        msoLastModifiedYesterday = 1,
        msoLastModifiedToday = 2,
        msoLastModifiedLastWeek = 3,
        msoLastModifiedThisWeek = 4,
        msoLastModifiedLastMonth = 5,
        msoLastModifiedThisMonth = 6,
        msoLastModifiedAnyTime = 7
    };

    enum MsoSortBy
    {
        msoSortByFileName = 1,
        msoSortBySize = 2,
        msoSortByFileType = 3,
        msoSortByLastModified = 4,
        msoSortByNone = 5
    };

    enum MsoSortOrder
    {
        msoSortOrderAscending = 1,
        msoSortOrderDescending = 2
    };

    enum MsoConnector
    {
        msoConnectorAnd = 1,
        msoConnectorOr = 2
    };

    enum MsoCondition
    {
        msoConditionFileTypeAllFiles = 1,
        msoConditionFileTypeOfficeFiles = 2,
        msoConditionFileTypeWordDocuments = 3,
        msoConditionFileTypeExcelWorkbooks = 4,
        msoConditionFileTypePowerPointPresentations = 5,
        msoConditionFileTypeBinders = 6,
        msoConditionFileTypeDatabases = 7,
        msoConditionFileTypeTemplates = 8,
        msoConditionIncludes = 9,
        msoConditionIncludesPhrase = 10,
        msoConditionBeginsWith = 11,
        msoConditionEndsWith = 12,
        msoConditionIncludesNearEachOther = 13,
        msoConditionIsExactly = 14,
        msoConditionIsNot = 15,
        msoConditionYesterday = 16,
        msoConditionToday = 17,
        msoConditionTomorrow = 18,
        msoConditionLastWeek = 19,
        msoConditionThisWeek = 20,
        msoConditionNextWeek = 21,
        msoConditionLastMonth = 22,
        msoConditionThisMonth = 23,
        msoConditionNextMonth = 24,
        msoConditionAnytime = 25,
        msoConditionAnytimeBetween = 26,
        msoConditionOn = 27,
        msoConditionOnOrAfter = 28,
        msoConditionOnOrBefore = 29,
        msoConditionInTheNext = 30,
        msoConditionInTheLast = 31,
        msoConditionEquals = 32,
        msoConditionDoesNotEqual = 33,
        msoConditionAnyNumberBetween = 34,
        msoConditionAtMost = 35,
        msoConditionAtLeast = 36,
        msoConditionMoreThan = 37,
        msoConditionLessThan = 38,
        msoConditionIsYes = 39,
        msoConditionIsNo = 40,
        msoConditionIncludesFormsOf = 41,
        msoConditionFreeText = 42,
        msoConditionFileTypeOutlookItems = 43,
        msoConditionFileTypeMailItem = 44,
        msoConditionFileTypeCalendarItem = 45,
        msoConditionFileTypeContactItem = 46,
        msoConditionFileTypeNoteItem = 47,
        msoConditionFileTypeJournalItem = 48,
        msoConditionFileTypeTaskItem = 49,
        msoConditionFileTypePhotoDrawFiles = 50,
        msoConditionFileTypeDataConnectionFiles = 51,
        msoConditionFileTypePublisherFiles = 52,
        msoConditionFileTypeProjectFiles = 53,
        msoConditionFileTypeDocumentImagingFiles = 54,
        msoConditionFileTypeVisioFiles = 55,
        msoConditionFileTypeDesignerFiles = 56,
        msoConditionFileTypeWebPages = 57,
        msoConditionEqualsLow = 58,
        msoConditionEqualsNormal = 59,
        msoConditionEqualsHigh = 60,
        msoConditionNotEqualToLow = 61,
        msoConditionNotEqualToNormal = 62,
        msoConditionNotEqualToHigh = 63,
        msoConditionEqualsNotStarted = 64,
        msoConditionEqualsInProgress = 65,
        msoConditionEqualsCompleted = 66,
        msoConditionEqualsWaitingForSomeoneElse = 67,
        msoConditionEqualsDeferred = 68,
        msoConditionNotEqualToNotStarted = 69,
        msoConditionNotEqualToInProgress = 70,
        msoConditionNotEqualToCompleted = 71,
        msoConditionNotEqualToWaitingForSomeoneElse = 72,
        msoConditionNotEqualToDeferred = 73
    };

    enum MsoFileType
    {
        msoFileTypeAllFiles = 1,
        msoFileTypeOfficeFiles = 2,
        msoFileTypeWordDocuments = 3,
        msoFileTypeExcelWorkbooks = 4,
        msoFileTypePowerPointPresentations = 5,
        msoFileTypeBinders = 6,
        msoFileTypeDatabases = 7,
        msoFileTypeTemplates = 8,
        msoFileTypeOutlookItems = 9,
        msoFileTypeMailItem = 10,
        msoFileTypeCalendarItem = 11,
        msoFileTypeContactItem = 12,
        msoFileTypeNoteItem = 13,
        msoFileTypeJournalItem = 14,
        msoFileTypeTaskItem = 15,
        msoFileTypePhotoDrawFiles = 16,
        msoFileTypeDataConnectionFiles = 17,
        msoFileTypePublisherFiles = 18,
        msoFileTypeProjectFiles = 19,
        msoFileTypeDocumentImagingFiles = 20,
        msoFileTypeVisioFiles = 21,
        msoFileTypeDesignerFiles = 22,
        msoFileTypeWebPages = 23
    };

    enum MsoLanguageID
    {
        msoLanguageIDMixed = -2,
        msoLanguageIDNone = 0,
        msoLanguageIDNoProofing = 1024,
        msoLanguageIDAfrikaans = 1078,
        msoLanguageIDAlbanian = 1052,
        msoLanguageIDAmharic = 1118,
        msoLanguageIDArabicAlgeria = 5121,
        msoLanguageIDArabicBahrain = 15361,
        msoLanguageIDArabicEgypt = 3073,
        msoLanguageIDArabicIraq = 2049,
        msoLanguageIDArabicJordan = 11265,
        msoLanguageIDArabicKuwait = 13313,
        msoLanguageIDArabicLebanon = 12289,
        msoLanguageIDArabicLibya = 4097,
        msoLanguageIDArabicMorocco = 6145,
        msoLanguageIDArabicOman = 8193,
        msoLanguageIDArabicQatar = 16385,
        msoLanguageIDArabic = 1025,
        msoLanguageIDArabicSyria = 10241,
        msoLanguageIDArabicTunisia = 7169,
        msoLanguageIDArabicUAE = 14337,
        msoLanguageIDArabicYemen = 9217,
        msoLanguageIDArmenian = 1067,
        msoLanguageIDAssamese = 1101,
        msoLanguageIDAzeriCyrillic = 2092,
        msoLanguageIDAzeriLatin = 1068,
        msoLanguageIDBasque = 1069,
        msoLanguageIDByelorussian = 1059,
        msoLanguageIDBengali = 1093,
        msoLanguageIDBosnian = 4122,
        msoLanguageIDBosnianBosniaHerzegovinaCyrillic = 8218,
        msoLanguageIDBosnianBosniaHerzegovinaLatin = 5146,
        msoLanguageIDBulgarian = 1026,
        msoLanguageIDBurmese = 1109,
        msoLanguageIDCatalan = 1027,
        msoLanguageIDChineseHongKongSAR = 3076,
        msoLanguageIDChineseMacaoSAR = 5124,
        msoLanguageIDSimplifiedChinese = 2052,
        msoLanguageIDChineseSingapore = 4100,
        msoLanguageIDTraditionalChinese = 1028,
        msoLanguageIDCherokee = 1116,
        msoLanguageIDCroatian = 1050,
        msoLanguageIDCzech = 1029,
        msoLanguageIDDanish = 1030,
        msoLanguageIDDivehi = 1125,
        msoLanguageIDBelgianDutch = 2067,
        msoLanguageIDDutch = 1043,
        msoLanguageIDDzongkhaBhutan = 2129,
        msoLanguageIDEdo = 1126,
        msoLanguageIDEnglishAUS = 3081,
        msoLanguageIDEnglishBelize = 10249,
        msoLanguageIDEnglishCanadian = 4105,
        msoLanguageIDEnglishCaribbean = 9225,
        msoLanguageIDEnglishIndonesia = 14345,
        msoLanguageIDEnglishIreland = 6153,
        msoLanguageIDEnglishJamaica = 8201,
        msoLanguageIDEnglishNewZealand = 5129,
        msoLanguageIDEnglishPhilippines = 13321,
        msoLanguageIDEnglishSouthAfrica = 7177,
        msoLanguageIDEnglishTrinidadTobago = 11273,
        msoLanguageIDEnglishUK = 2057,
        msoLanguageIDEnglishUS = 1033,
        msoLanguageIDEnglishZimbabwe = 12297,
        msoLanguageIDEstonian = 1061,
        msoLanguageIDFaeroese = 1080,
        msoLanguageIDFarsi = 1065,
        msoLanguageIDFilipino = 1124,
        msoLanguageIDFinnish = 1035,
        msoLanguageIDBelgianFrench = 2060,
        msoLanguageIDFrenchCameroon = 11276,
        msoLanguageIDFrenchCanadian = 3084,
        msoLanguageIDFrenchCotedIvoire = 12300,
        msoLanguageIDFrench = 1036,
        msoLanguageIDFrenchHaiti = 15372,
        msoLanguageIDFrenchLuxembourg = 5132,
        msoLanguageIDFrenchMali = 13324,
        msoLanguageIDFrenchMonaco = 6156,
        msoLanguageIDFrenchMorocco = 14348,
        msoLanguageIDFrenchReunion = 8204,
        msoLanguageIDFrenchSenegal = 10252,
        msoLanguageIDSwissFrench = 4108,
        msoLanguageIDFrenchWestIndies = 7180,
        msoLanguageIDFrenchZaire = 9228,
        msoLanguageIDFrenchCongoDRC = 9228,
        msoLanguageIDFrisianNetherlands = 1122,
        msoLanguageIDFulfulde = 1127,
        msoLanguageIDGaelicIreland = 2108,
        msoLanguageIDGaelicScotland = 1084,
        msoLanguageIDGalician = 1110,
        msoLanguageIDGeorgian = 1079,
        msoLanguageIDGermanAustria = 3079,
        msoLanguageIDGerman = 1031,
        msoLanguageIDGermanLiechtenstein = 5127,
        msoLanguageIDGermanLuxembourg = 4103,
        msoLanguageIDSwissGerman = 2055,
        msoLanguageIDGreek = 1032,
        msoLanguageIDGuarani = 1140,
        msoLanguageIDGujarati = 1095,
        msoLanguageIDHausa = 1128,
        msoLanguageIDHawaiian = 1141,
        msoLanguageIDHebrew = 1037,
        msoLanguageIDHindi = 1081,
        msoLanguageIDHungarian = 1038,
        msoLanguageIDIbibio = 1129,
        msoLanguageIDIcelandic = 1039,
        msoLanguageIDIgbo = 1136,
        msoLanguageIDIndonesian = 1057,
        msoLanguageIDInuktitut = 1117,
        msoLanguageIDItalian = 1040,
        msoLanguageIDSwissItalian = 2064,
        msoLanguageIDJapanese = 1041,
        msoLanguageIDKannada = 1099,
        msoLanguageIDKanuri = 1137,
        msoLanguageIDKashmiri = 1120,
        msoLanguageIDKashmiriDevanagari = 2144,
        msoLanguageIDKazakh = 1087,
        msoLanguageIDKhmer = 1107,
        msoLanguageIDKirghiz = 1088,
        msoLanguageIDKonkani = 1111,
        msoLanguageIDKorean = 1042,
        msoLanguageIDKyrgyz = 1088,
        msoLanguageIDLatin = 1142,
        msoLanguageIDLao = 1108,
        msoLanguageIDLatvian = 1062,
        msoLanguageIDLithuanian = 1063,
        msoLanguageIDMacedonian = 1071,
        msoLanguageIDMacedonianFYROM = 1071,
        msoLanguageIDMalaysian = 1086,
        msoLanguageIDMalayBruneiDarussalam = 2110,
        msoLanguageIDMalayalam = 1100,
        msoLanguageIDMaltese = 1082,
        msoLanguageIDManipuri = 1112,
        msoLanguageIDMaori = 1153,
        msoLanguageIDMarathi = 1102,
        msoLanguageIDMongolian = 1104,
        msoLanguageIDNepali = 1121,
        msoLanguageIDNorwegianBokmol = 1044,
        msoLanguageIDNorwegianNynorsk = 2068,
        msoLanguageIDOriya = 1096,
        msoLanguageIDOromo = 1138,
        msoLanguageIDPashto = 1123,
        msoLanguageIDPolish = 1045,
        msoLanguageIDBrazilianPortuguese = 1046,
        msoLanguageIDPortuguese = 2070,
        msoLanguageIDPunjabi = 1094,
        msoLanguageIDQuechuaBolivia = 1131,
        msoLanguageIDQuechuaEcuador = 2155,
        msoLanguageIDQuechuaPeru = 3179,
        msoLanguageIDRhaetoRomanic = 1047,
        msoLanguageIDRomanianMoldova = 2072,
        msoLanguageIDRomanian = 1048,
        msoLanguageIDRussianMoldova = 2073,
        msoLanguageIDRussian = 1049,
        msoLanguageIDSamiLappish = 1083,
        msoLanguageIDSanskrit = 1103,
        msoLanguageIDSepedi = 1132,
        msoLanguageIDSerbianBosniaHerzegovinaCyrillic = 7194,
        msoLanguageIDSerbianBosniaHerzegovinaLatin = 6170,
        msoLanguageIDSerbianCyrillic = 3098,
        msoLanguageIDSerbianLatin = 2074,
        msoLanguageIDSesotho = 1072,
        msoLanguageIDSindhi = 1113,
        msoLanguageIDSindhiPakistan = 2137,
        msoLanguageIDSinhalese = 1115,
        msoLanguageIDSlovak = 1051,
        msoLanguageIDSlovenian = 1060,
        msoLanguageIDSomali = 1143,
        msoLanguageIDSorbian = 1070,
        msoLanguageIDSpanishArgentina = 11274,
        msoLanguageIDSpanishBolivia = 16394,
        msoLanguageIDSpanishChile = 13322,
        msoLanguageIDSpanishColombia = 9226,
        msoLanguageIDSpanishCostaRica = 5130,
        msoLanguageIDSpanishDominicanRepublic = 7178,
        msoLanguageIDSpanishEcuador = 12298,
        msoLanguageIDSpanishElSalvador = 17418,
        msoLanguageIDSpanishGuatemala = 4106,
        msoLanguageIDSpanishHonduras = 18442,
        msoLanguageIDMexicanSpanish = 2058,
        msoLanguageIDSpanishNicaragua = 19466,
        msoLanguageIDSpanishPanama = 6154,
        msoLanguageIDSpanishParaguay = 15370,
        msoLanguageIDSpanishPeru = 10250,
        msoLanguageIDSpanishPuertoRico = 20490,
        msoLanguageIDSpanishModernSort = 3082,
        msoLanguageIDSpanish = 1034,
        msoLanguageIDSpanishUruguay = 14346,
        msoLanguageIDSpanishVenezuela = 8202,
        msoLanguageIDSutu = 1072,
        msoLanguageIDSwahili = 1089,
        msoLanguageIDSwedishFinland = 2077,
        msoLanguageIDSwedish = 1053,
        msoLanguageIDSyriac = 1114,
        msoLanguageIDTajik = 1064,
        msoLanguageIDTamil = 1097,
        msoLanguageIDTamazight = 1119,
        msoLanguageIDTamazightLatin = 2143,
        msoLanguageIDTatar = 1092,
        msoLanguageIDTelugu = 1098,
        msoLanguageIDThai = 1054,
        msoLanguageIDTibetan = 1105,
        msoLanguageIDTigrignaEthiopic = 1139,
        msoLanguageIDTigrignaEritrea = 2163,
        msoLanguageIDTsonga = 1073,
        msoLanguageIDTswana = 1074,
        msoLanguageIDTurkish = 1055,
        msoLanguageIDTurkmen = 1090,
        msoLanguageIDUkrainian = 1058,
        msoLanguageIDUrdu = 1056,
        msoLanguageIDUzbekCyrillic = 2115,
        msoLanguageIDUzbekLatin = 1091,
        msoLanguageIDVenda = 1075,
        msoLanguageIDVietnamese = 1066,
        msoLanguageIDWelsh = 1106,
        msoLanguageIDXhosa = 1076,
        msoLanguageIDYi = 1144,
        msoLanguageIDYiddish = 1085,
        msoLanguageIDYoruba = 1130,
        msoLanguageIDZulu = 1077
    };

    enum MsoScreenSize
    {
        msoScreenSize544x376 = 0,
        msoScreenSize640x480 = 1,
        msoScreenSize720x512 = 2,
        msoScreenSize800x600 = 3,
        msoScreenSize1024x768 = 4,
        msoScreenSize1152x882 = 5,
        msoScreenSize1152x900 = 6,
        msoScreenSize1280x1024 = 7,
        msoScreenSize1600x1200 = 8,
        msoScreenSize1800x1440 = 9,
        msoScreenSize1920x1200 = 10
    };

    enum MsoCharacterSet
    {
        msoCharacterSetArabic = 1,
        msoCharacterSetCyrillic = 2,
        msoCharacterSetEnglishWesternEuropeanOtherLatinScript = 3,
        msoCharacterSetGreek = 4,
        msoCharacterSetHebrew = 5,
        msoCharacterSetJapanese = 6,
        msoCharacterSetKorean = 7,
        msoCharacterSetMultilingualUnicode = 8,
        msoCharacterSetSimplifiedChinese = 9,
        msoCharacterSetThai = 10,
        msoCharacterSetTraditionalChinese = 11,
        msoCharacterSetVietnamese = 12
    };

    enum MsoEncoding
    {
        msoEncodingThai = 874,
        msoEncodingJapaneseShiftJIS = 932,
        msoEncodingSimplifiedChineseGBK = 936,
        msoEncodingKorean = 949,
        msoEncodingTraditionalChineseBig5 = 950,
        msoEncodingUnicodeLittleEndian = 1200,
        msoEncodingUnicodeBigEndian = 1201,
        msoEncodingCentralEuropean = 1250,
        msoEncodingCyrillic = 1251,
        msoEncodingWestern = 1252,
        msoEncodingGreek = 1253,
        msoEncodingTurkish = 1254,
        msoEncodingHebrew = 1255,
        msoEncodingArabic = 1256,
        msoEncodingBaltic = 1257,
        msoEncodingVietnamese = 1258,
        msoEncodingAutoDetect = 50001,
        msoEncodingJapaneseAutoDetect = 50932,
        msoEncodingSimplifiedChineseAutoDetect = 50936,
        msoEncodingKoreanAutoDetect = 50949,
        msoEncodingTraditionalChineseAutoDetect = 50950,
        msoEncodingCyrillicAutoDetect = 51251,
        msoEncodingGreekAutoDetect = 51253,
        msoEncodingArabicAutoDetect = 51256,
        msoEncodingISO88591Latin1 = 28591,
        msoEncodingISO88592CentralEurope = 28592,
        msoEncodingISO88593Latin3 = 28593,
        msoEncodingISO88594Baltic = 28594,
        msoEncodingISO88595Cyrillic = 28595,
        msoEncodingISO88596Arabic = 28596,
        msoEncodingISO88597Greek = 28597,
        msoEncodingISO88598Hebrew = 28598,
        msoEncodingISO88599Turkish = 28599,
        msoEncodingISO885915Latin9 = 28605,
        msoEncodingISO88598HebrewLogical = 38598,
        msoEncodingISO2022JPNoHalfwidthKatakana = 50220,
        msoEncodingISO2022JPJISX02021984 = 50221,
        msoEncodingISO2022JPJISX02011989 = 50222,
        msoEncodingISO2022KR = 50225,
        msoEncodingISO2022CNTraditionalChinese = 50227,
        msoEncodingISO2022CNSimplifiedChinese = 50229,
        msoEncodingMacRoman = 10000,
        msoEncodingMacJapanese = 10001,
        msoEncodingMacTraditionalChineseBig5 = 10002,
        msoEncodingMacKorean = 10003,
        msoEncodingMacArabic = 10004,
        msoEncodingMacHebrew = 10005,
        msoEncodingMacGreek1 = 10006,
        msoEncodingMacCyrillic = 10007,
        msoEncodingMacSimplifiedChineseGB2312 = 10008,
        msoEncodingMacRomania = 10010,
        msoEncodingMacUkraine = 10017,
        msoEncodingMacLatin2 = 10029,
        msoEncodingMacIcelandic = 10079,
        msoEncodingMacTurkish = 10081,
        msoEncodingMacCroatia = 10082,
        msoEncodingEBCDICUSCanada = 37,
        msoEncodingEBCDICInternational = 500,
        msoEncodingEBCDICMultilingualROECELatin2 = 870,
        msoEncodingEBCDICGreekModern = 875,
        msoEncodingEBCDICTurkishLatin5 = 1026,
        msoEncodingEBCDICGermany = 20273,
        msoEncodingEBCDICDenmarkNorway = 20277,
        msoEncodingEBCDICFinlandSweden = 20278,
        msoEncodingEBCDICItaly = 20280,
        msoEncodingEBCDICLatinAmericaSpain = 20284,
        msoEncodingEBCDICUnitedKingdom = 20285,
        msoEncodingEBCDICJapaneseKatakanaExtended = 20290,
        msoEncodingEBCDICFrance = 20297,
        msoEncodingEBCDICArabic = 20420,
        msoEncodingEBCDICGreek = 20423,
        msoEncodingEBCDICHebrew = 20424,
        msoEncodingEBCDICKoreanExtended = 20833,
        msoEncodingEBCDICThai = 20838,
        msoEncodingEBCDICIcelandic = 20871,
        msoEncodingEBCDICTurkish = 20905,
        msoEncodingEBCDICRussian = 20880,
        msoEncodingEBCDICSerbianBulgarian = 21025,
        msoEncodingEBCDICJapaneseKatakanaExtendedAndJapanese = 50930,
        msoEncodingEBCDICUSCanadaAndJapanese = 50931,
        msoEncodingEBCDICKoreanExtendedAndKorean = 50933,
        msoEncodingEBCDICSimplifiedChineseExtendedAndSimplifiedChinese = 50935,
        msoEncodingEBCDICUSCanadaAndTraditionalChinese = 50937,
        msoEncodingEBCDICJapaneseLatinExtendedAndJapanese = 50939,
        msoEncodingOEMUnitedStates = 437,
        msoEncodingOEMGreek437G = 737,
        msoEncodingOEMBaltic = 775,
        msoEncodingOEMMultilingualLatinI = 850,
        msoEncodingOEMMultilingualLatinII = 852,
        msoEncodingOEMCyrillic = 855,
        msoEncodingOEMTurkish = 857,
        msoEncodingOEMPortuguese = 860,
        msoEncodingOEMIcelandic = 861,
        msoEncodingOEMHebrew = 862,
        msoEncodingOEMCanadianFrench = 863,
        msoEncodingOEMArabic = 864,
        msoEncodingOEMNordic = 865,
        msoEncodingOEMCyrillicII = 866,
        msoEncodingOEMModernGreek = 869,
        msoEncodingEUCJapanese = 51932,
        msoEncodingEUCChineseSimplifiedChinese = 51936,
        msoEncodingEUCKorean = 51949,
        msoEncodingEUCTaiwaneseTraditionalChinese = 51950,
        msoEncodingISCIIDevanagari = 57002,
        msoEncodingISCIIBengali = 57003,
        msoEncodingISCIITamil = 57004,
        msoEncodingISCIITelugu = 57005,
        msoEncodingISCIIAssamese = 57006,
        msoEncodingISCIIOriya = 57007,
        msoEncodingISCIIKannada = 57008,
        msoEncodingISCIIMalayalam = 57009,
        msoEncodingISCIIGujarati = 57010,
        msoEncodingISCIIPunjabi = 57011,
        msoEncodingArabicASMO = 708,
        msoEncodingArabicTransparentASMO = 720,
        msoEncodingKoreanJohab = 1361,
        msoEncodingTaiwanCNS = 20000,
        msoEncodingTaiwanTCA = 20001,
        msoEncodingTaiwanEten = 20002,
        msoEncodingTaiwanIBM5550 = 20003,
        msoEncodingTaiwanTeleText = 20004,
        msoEncodingTaiwanWang = 20005,
        msoEncodingIA5IRV = 20105,
        msoEncodingIA5German = 20106,
        msoEncodingIA5Swedish = 20107,
        msoEncodingIA5Norwegian = 20108,
        msoEncodingUSASCII = 20127,
        msoEncodingT61 = 20261,
        msoEncodingISO6937NonSpacingAccent = 20269,
        msoEncodingKOI8R = 20866,
        msoEncodingExtAlphaLowercase = 21027,
        msoEncodingKOI8U = 21866,
        msoEncodingEuropa3 = 29001,
        msoEncodingHZGBSimplifiedChinese = 52936,
        msoEncodingSimplifiedChineseGB18030 = 54936,
        msoEncodingUTF7 = 65000,
        msoEncodingUTF8 = 65001
    };

    enum MsoHTMLProjectOpen
    {
        msoHTMLProjectOpenSourceView = 1,
        msoHTMLProjectOpenTextView = 2
    };

    enum MsoHTMLProjectState
    {
        msoHTMLProjectStateDocumentLocked = 1,
        msoHTMLProjectStateProjectLocked = 2,
        msoHTMLProjectStateDocumentProjectUnlocked = 3
    };

    enum MsoFileDialogType
    {
        msoFileDialogOpen = 1,
        msoFileDialogSaveAs = 2,
        msoFileDialogFilePicker = 3,
        msoFileDialogFolderPicker = 4
    };

    enum MsoFileDialogView
    {
        msoFileDialogViewList = 1,
        msoFileDialogViewDetails = 2,
        msoFileDialogViewProperties = 3,
        msoFileDialogViewPreview = 4,
        msoFileDialogViewThumbnail = 5,
        msoFileDialogViewLargeIcons = 6,
        msoFileDialogViewSmallIcons = 7,
        msoFileDialogViewWebView = 8,
        msoFileDialogViewTiles = 9
    };

    enum MsoAutomationSecurity
    {
        msoAutomationSecurityLow = 1,
        msoAutomationSecurityByUI = 2,
        msoAutomationSecurityForceDisable = 3
    };

    enum MailFormat
    {
        mfPlainText = 1,
        mfHTML = 2,
        mfRTF = 3
    };

    enum MsoAlertButtonType
    {
        msoAlertButtonOK = 0,
        msoAlertButtonOKCancel = 1,
        msoAlertButtonAbortRetryIgnore = 2,
        msoAlertButtonYesNoCancel = 3,
        msoAlertButtonYesNo = 4,
        msoAlertButtonRetryCancel = 5,
        msoAlertButtonYesAllNoCancel = 6
    };

    enum MsoAlertIconType
    {
        msoAlertIconNoIcon = 0,
        msoAlertIconCritical = 1,
        msoAlertIconQuery = 2,
        msoAlertIconWarning = 3,
        msoAlertIconInfo = 4
    };

    enum MsoAlertDefaultType
    {
        msoAlertDefaultFirst = 0,
        msoAlertDefaultSecond = 1,
        msoAlertDefaultThird = 2,
        msoAlertDefaultFourth = 3,
        msoAlertDefaultFifth = 4
    };

    enum MsoAlertCancelType
    {
        msoAlertCancelDefault = -1,
        msoAlertCancelFirst = 0,
        msoAlertCancelSecond = 1,
        msoAlertCancelThird = 2,
        msoAlertCancelFourth = 3,
        msoAlertCancelFifth = 4
    };

    enum MsoSearchIn
    {
        msoSearchInMyComputer = 0,
        msoSearchInOutlook = 1,
        msoSearchInMyNetworkPlaces = 2,
        msoSearchInCustom = 3
    };

    enum MsoTargetBrowser
    {
        msoTargetBrowserV3 = 0,
        msoTargetBrowserV4 = 1,
        msoTargetBrowserIE4 = 2,
        msoTargetBrowserIE5 = 3,
        msoTargetBrowserIE6 = 4
    };

    enum MsoOrgChartOrientation
    {
        msoOrgChartOrientationMixed = -2,
        msoOrgChartOrientationVertical = 1
    };

    enum MsoOrgChartLayoutType
    {
        msoOrgChartLayoutMixed = -2,
        msoOrgChartLayoutStandard = 1,
        msoOrgChartLayoutBothHanging = 2,
        msoOrgChartLayoutLeftHanging = 3,
        msoOrgChartLayoutRightHanging = 4,
        msoOrgChartLayoutDefault = 5
    };

    enum MsoRelativeNodePosition
    {
        msoBeforeNode = 1,
        msoAfterNode = 2,
        msoBeforeFirstSibling = 3,
        msoAfterLastSibling = 4
    };

    enum MsoDiagramType
    {
        msoDiagramMixed = -2,
        msoDiagramOrgChart = 1,
        msoDiagramCycle = 2,
        msoDiagramRadial = 3,
        msoDiagramPyramid = 4,
        msoDiagramVenn = 5,
        msoDiagramTarget = 6
    };

    enum MsoDiagramNodeType
    {
        msoDiagramNode = 1,
        msoDiagramAssistant = 2
    };

    enum MsoMoveRow
    {
        msoMoveRowFirst = -4,
        msoMoveRowPrev = -3,
        msoMoveRowNext = -2,
        msoMoveRowNbr = -1
    };

    enum MsoFilterComparison
    {
        msoFilterComparisonEqual = 0,
        msoFilterComparisonNotEqual = 1,
        msoFilterComparisonLessThan = 2,
        msoFilterComparisonGreaterThan = 3,
        msoFilterComparisonLessThanEqual = 4,
        msoFilterComparisonGreaterThanEqual = 5,
        msoFilterComparisonIsBlank = 6,
        msoFilterComparisonIsNotBlank = 7,
        msoFilterComparisonContains = 8,
        msoFilterComparisonNotContains = 9
    };

    enum MsoFilterConjunction
    {
        msoFilterConjunctionAnd = 0,
        msoFilterConjunctionOr = 1
    };

    enum MsoFileNewSection
    {
        msoOpenDocument = 0,
        msoNew = 1,
        msoNewfromExistingFile = 2,
        msoNewfromTemplate = 3,
        msoBottomSection = 4
    };

    enum MsoFileNewAction
    {
        msoEditFile = 0,
        msoCreateNewFile = 1,
        msoOpenFile = 2
    };

    enum MsoLanguageIDHidden
    {
        msoLanguageIDChineseHongKong = 3076,
        msoLanguageIDChineseMacao = 5124,
        msoLanguageIDEnglishTrinidad = 11273
    };

    enum MsoSharedWorkspaceTaskStatus
    {
        msoSharedWorkspaceTaskStatusNotStarted = 1,
        msoSharedWorkspaceTaskStatusInProgress = 2,
        msoSharedWorkspaceTaskStatusCompleted = 3,
        msoSharedWorkspaceTaskStatusDeferred = 4,
        msoSharedWorkspaceTaskStatusWaiting = 5
    };

    enum MsoSharedWorkspaceTaskPriority
    {
        msoSharedWorkspaceTaskPriorityHigh = 1,
        msoSharedWorkspaceTaskPriorityNormal = 2,
        msoSharedWorkspaceTaskPriorityLow = 3
    };

    enum MsoSyncVersionType
    {
        msoSyncVersionLastViewed = 0,
        msoSyncVersionServer = 1
    };

    enum MsoSyncConflictResolutionType
    {
        msoSyncConflictClientWins = 0,
        msoSyncConflictServerWins = 1,
        msoSyncConflictMerge = 2
    };

    enum MsoSyncCompareType
    {
        msoSyncCompareAndMerge = 0,
        msoSyncCompareSideBySide = 1
    };

    enum MsoSyncAvailableType
    {
        msoSyncAvailableNone = 0,
        msoSyncAvailableOffline = 1,
        msoSyncAvailableAnywhere = 2
    };

    enum MsoSyncEventType
    {
        msoSyncEventDownloadInitiated = 0,
        msoSyncEventDownloadSucceeded = 1,
        msoSyncEventDownloadFailed = 2,
        msoSyncEventUploadInitiated = 3,
        msoSyncEventUploadSucceeded = 4,
        msoSyncEventUploadFailed = 5,
        msoSyncEventDownloadNoChange = 6,
        msoSyncEventOffline = 7
    };

    enum MsoSyncErrorType
    {
        msoSyncErrorNone = 0,
        msoSyncErrorUnauthorizedUser = 1,
        msoSyncErrorCouldNotConnect = 2,
        msoSyncErrorOutOfSpace = 3,
        msoSyncErrorFileNotFound = 4,
        msoSyncErrorFileTooLarge = 5,
        msoSyncErrorFileInUse = 6,
        msoSyncErrorVirusUpload = 7,
        msoSyncErrorVirusDownload = 8,
        msoSyncErrorUnknownUpload = 9,
        msoSyncErrorUnknownDownload = 10,
        msoSyncErrorCouldNotOpen = 11,
        msoSyncErrorCouldNotUpdate = 12,
        msoSyncErrorCouldNotCompare = 13,
        msoSyncErrorCouldNotResolve = 14,
        msoSyncErrorNoNetwork = 15,
        msoSyncErrorUnknown = 16
    };

    enum MsoSyncStatusType
    {
        msoSyncStatusNoSharedWorkspace = 0,
        msoSyncStatusNotRoaming = 0,
        msoSyncStatusLatest = 1,
        msoSyncStatusNewerAvailable = 2,
        msoSyncStatusLocalChanges = 3,
        msoSyncStatusConflict = 4,
        msoSyncStatusSuspended = 5,
        msoSyncStatusError = 6
    };

    enum MsoPermission
    {
        msoPermissionView = 1,
        msoPermissionRead = 1,
        msoPermissionEdit = 2,
        msoPermissionSave = 4,
        msoPermissionExtract = 8,
        msoPermissionChange = 15,
        msoPermissionPrint = 16,
        msoPermissionObjModel = 32,
        msoPermissionFullControl = 64,
        msoPermissionAllCommon = 127
    };

    enum MsoMetaPropertyType
    {
        msoMetaPropertyTypeUnknown = 0,
        msoMetaPropertyTypeBoolean = 1,
        msoMetaPropertyTypeChoice = 2,
        msoMetaPropertyTypeCalculated = 3,
        msoMetaPropertyTypeComputed = 4,
        msoMetaPropertyTypeCurrency = 5,
        msoMetaPropertyTypeDateTime = 6,
        msoMetaPropertyTypeFillInChoice = 7,
        msoMetaPropertyTypeGuid = 8,
        msoMetaPropertyTypeInteger = 9,
        msoMetaPropertyTypeLookup = 10,
        msoMetaPropertyTypeMultiChoiceLookup = 11,
        msoMetaPropertyTypeMultiChoice = 12,
        msoMetaPropertyTypeMultiChoiceFillIn = 13,
        msoMetaPropertyTypeNote = 14,
        msoMetaPropertyTypeNumber = 15,
        msoMetaPropertyTypeText = 16,
        msoMetaPropertyTypeUrl = 17,
        msoMetaPropertyTypeUser = 18,
        msoMetaPropertyTypeUserMulti = 19,
        msoMetaPropertyTypeBusinessData = 20,
        msoMetaPropertyTypeBusinessDataSecondary = 21,
        msoMetaPropertyTypeMax = 22
    };

    enum MsoSignatureSubset
    {
        msoSignatureSubsetSignaturesAllSigs = 0,
        msoSignatureSubsetSignaturesNonVisible = 1,
        msoSignatureSubsetSignatureLines = 2,
        msoSignatureSubsetSignatureLinesSigned = 3,
        msoSignatureSubsetSignatureLinesUnsigned = 4,
        msoSignatureSubsetAll = 5
    };

    enum MsoDocInspectorStatus
    {
        msoDocInspectorStatusDocOk = 0,
        msoDocInspectorStatusIssueFound = 1,
        msoDocInspectorStatusError = 2
    };

    enum SignatureDetail
    {
        sigdetLocalSigningTime = 0,
        sigdetApplicationName = 1,
        sigdetApplicationVersion = 2,
        sigdetOfficeVersion = 3,
        sigdetWindowsVersion = 4,
        sigdetNumberOfMonitors = 5,
        sigdetHorizResolution = 6,
        sigdetVertResolution = 7,
        sigdetColorDepth = 8,
        sigdetSignedData = 9,
        sigdetDocPreviewImg = 10,
        sigdetIPFormHash = 11,
        sigdetIPCurrentView = 12,
        sigdetSignatureType = 13,
        sigdetHashAlgorithm = 14,
        sigdetShouldShowViewWarning = 15,
        sigdetDelSuggSigner = 16,
        sigdetDelSuggSignerSet = 17,
        sigdetDelSuggSignerLine2 = 18,
        sigdetDelSuggSignerLine2Set = 19,
        sigdetDelSuggSignerEmail = 20,
        sigdetDelSuggSignerEmailSet = 21
    };

    enum CertificateDetail
    {
        certdetAvailable = 0,
        certdetSubject = 1,
        certdetIssuer = 2,
        certdetExpirationDate = 3,
        certdetThumbprint = 4
    };

    enum ContentVerificationResults
    {
        contverresError = 0,
        contverresVerifying = 1,
        contverresUnverified = 2,
        contverresValid = 3,
        contverresModified = 4
    };

    enum CertificateVerificationResults
    {
        certverresError = 0,
        certverresVerifying = 1,
        certverresUnverified = 2,
        certverresValid = 3,
        certverresInvalid = 4,
        certverresExpired = 5,
        certverresRevoked = 6,
        certverresUntrusted = 7
    };

    enum SignatureLineImage
    {
        siglnimgSoftwareRequired = 0,
        siglnimgUnsigned = 1,
        siglnimgSignedValid = 2,
        siglnimgSignedInvalid = 3,
        siglnimgSigned = 4
    };

    enum SignatureProviderDetail
    {
        sigprovdetUrl = 0,
        sigprovdetHashAlgorithm = 1,
        sigprovdetUIOnly = 2,
        sigprovdetUseOfficeUI = 3,
        sigprovdetUseOfficeStampUI = 4
    };

    enum SignatureType
    {
        sigtypeUnknown = 0,
        sigtypeNonVisible = 1,
        sigtypeSignatureLine = 2,
        sigtypeMax = 3
    };

    enum MsoCustomXMLNodeType
    {
        msoCustomXMLNodeElement = 1,
        msoCustomXMLNodeAttribute = 2,
        msoCustomXMLNodeText = 3,
        msoCustomXMLNodeCData = 4,
        msoCustomXMLNodeProcessingInstruction = 7,
        msoCustomXMLNodeComment = 8,
        msoCustomXMLNodeDocument = 9
    };

    enum MsoCustomXMLValidationErrorType
    {
        msoCustomXMLValidationErrorSchemaGenerated = 0,
        msoCustomXMLValidationErrorAutomaticallyCleared = 1,
        msoCustomXMLValidationErrorManual = 2
    };

    enum MsoTextureAlignment
    {
        msoTextureAlignmentMixed = -2,
        msoTextureTopLeft = 0,
        msoTextureTop = 1,
        msoTextureTopRight = 2,
        msoTextureLeft = 3,
        msoTextureCenter = 4,
        msoTextureRight = 5,
        msoTextureBottomLeft = 6,
        msoTextureBottom = 7,
        msoTextureBottomRight = 8
    };

    enum MsoSoftEdgeType
    {
        msoSoftEdgeTypeMixed = -2,
        msoSoftEdgeTypeNone = 0,
        msoSoftEdgeType1 = 1,
        msoSoftEdgeType2 = 2,
        msoSoftEdgeType3 = 3,
        msoSoftEdgeType4 = 4,
        msoSoftEdgeType5 = 5,
        msoSoftEdgeType6 = 6
    };

    enum MsoReflectionType
    {
        msoReflectionTypeMixed = -2,
        msoReflectionTypeNone = 0,
        msoReflectionType1 = 1,
        msoReflectionType2 = 2,
        msoReflectionType3 = 3,
        msoReflectionType4 = 4,
        msoReflectionType5 = 5,
        msoReflectionType6 = 6,
        msoReflectionType7 = 7,
        msoReflectionType8 = 8,
        msoReflectionType9 = 9
    };

    enum MsoPresetCamera
    {
        msoPresetCameraMixed = -2,
        msoCameraLegacyObliqueTopLeft = 1,
        msoCameraLegacyObliqueTop = 2,
        msoCameraLegacyObliqueTopRight = 3,
        msoCameraLegacyObliqueLeft = 4,
        msoCameraLegacyObliqueFront = 5,
        msoCameraLegacyObliqueRight = 6,
        msoCameraLegacyObliqueBottomLeft = 7,
        msoCameraLegacyObliqueBottom = 8,
        msoCameraLegacyObliqueBottomRight = 9,
        msoCameraLegacyPerspectiveTopLeft = 10,
        msoCameraLegacyPerspectiveTop = 11,
        msoCameraLegacyPerspectiveTopRight = 12,
        msoCameraLegacyPerspectiveLeft = 13,
        msoCameraLegacyPerspectiveFront = 14,
        msoCameraLegacyPerspectiveRight = 15,
        msoCameraLegacyPerspectiveBottomLeft = 16,
        msoCameraLegacyPerspectiveBottom = 17,
        msoCameraLegacyPerspectiveBottomRight = 18,
        msoCameraOrthographicFront = 19,
        msoCameraIsometricTopUp = 20,
        msoCameraIsometricTopDown = 21,
        msoCameraIsometricBottomUp = 22,
        msoCameraIsometricBottomDown = 23,
        msoCameraIsometricLeftUp = 24,
        msoCameraIsometricLeftDown = 25,
        msoCameraIsometricRightUp = 26,
        msoCameraIsometricRightDown = 27,
        msoCameraIsometricOffAxis1Left = 28,
        msoCameraIsometricOffAxis1Right = 29,
        msoCameraIsometricOffAxis1Top = 30,
        msoCameraIsometricOffAxis2Left = 31,
        msoCameraIsometricOffAxis2Right = 32,
        msoCameraIsometricOffAxis2Top = 33,
        msoCameraIsometricOffAxis3Left = 34,
        msoCameraIsometricOffAxis3Right = 35,
        msoCameraIsometricOffAxis3Bottom = 36,
        msoCameraIsometricOffAxis4Left = 37,
        msoCameraIsometricOffAxis4Right = 38,
        msoCameraIsometricOffAxis4Bottom = 39,
        msoCameraObliqueTopLeft = 40,
        msoCameraObliqueTop = 41,
        msoCameraObliqueTopRight = 42,
        msoCameraObliqueLeft = 43,
        msoCameraObliqueRight = 44,
        msoCameraObliqueBottomLeft = 45,
        msoCameraObliqueBottom = 46,
        msoCameraObliqueBottomRight = 47,
        msoCameraPerspectiveFront = 48,
        msoCameraPerspectiveLeft = 49,
        msoCameraPerspectiveRight = 50,
        msoCameraPerspectiveAbove = 51,
        msoCameraPerspectiveBelow = 52,
        msoCameraPerspectiveAboveLeftFacing = 53,
        msoCameraPerspectiveAboveRightFacing = 54,
        msoCameraPerspectiveContrastingLeftFacing = 55,
        msoCameraPerspectiveContrastingRightFacing = 56,
        msoCameraPerspectiveHeroicLeftFacing = 57,
        msoCameraPerspectiveHeroicRightFacing = 58,
        msoCameraPerspectiveHeroicExtremeLeftFacing = 59,
        msoCameraPerspectiveHeroicExtremeRightFacing = 60,
        msoCameraPerspectiveRelaxed = 61,
        msoCameraPerspectiveRelaxedModerately = 62
    };

    enum MsoBevelType
    {
        msoBevelTypeMixed = -2,
        msoBevelNone = 1,
        msoBevelRelaxedInset = 2,
        msoBevelCircle = 3,
        msoBevelSlope = 4,
        msoBevelCross = 5,
        msoBevelAngle = 6,
        msoBevelSoftRound = 7,
        msoBevelConvex = 8,
        msoBevelCoolSlant = 9,
        msoBevelDivot = 10,
        msoBevelRiblet = 11,
        msoBevelHardEdge = 12,
        msoBevelArtDeco = 13
    };

    enum MsoLightRigType
    {
        msoLightRigMixed = -2,
        msoLightRigLegacyFlat1 = 1,
        msoLightRigLegacyFlat2 = 2,
        msoLightRigLegacyFlat3 = 3,
        msoLightRigLegacyFlat4 = 4,
        msoLightRigLegacyNormal1 = 5,
        msoLightRigLegacyNormal2 = 6,
        msoLightRigLegacyNormal3 = 7,
        msoLightRigLegacyNormal4 = 8,
        msoLightRigLegacyHarsh1 = 9,
        msoLightRigLegacyHarsh2 = 10,
        msoLightRigLegacyHarsh3 = 11,
        msoLightRigLegacyHarsh4 = 12,
        msoLightRigThreePoint = 13,
        msoLightRigBalanced = 14,
        msoLightRigSoft = 15,
        msoLightRigHarsh = 16,
        msoLightRigFlood = 17,
        msoLightRigContrasting = 18,
        msoLightRigMorning = 19,
        msoLightRigSunrise = 20,
        msoLightRigSunset = 21,
        msoLightRigChilly = 22,
        msoLightRigFreezing = 23,
        msoLightRigFlat = 24,
        msoLightRigTwoPoint = 25,
        msoLightRigGlow = 26,
        msoLightRigBrightRoom = 27
    };

    enum MsoParagraphAlignment
    {
        msoAlignMixed = -2,
        msoAlignLeft = 1,
        msoAlignCenter = 2,
        msoAlignRight = 3,
        msoAlignJustify = 4,
        msoAlignDistribute = 5,
        msoAlignThaiDistribute = 6,
        msoAlignJustifyLow = 7
    };

    enum MsoTextStrike
    {
        msoStrikeMixed = -2,
        msoNoStrike = 0,
        msoSingleStrike = 1,
        msoDoubleStrike = 2
    };

    enum MsoTextCaps
    {
        msoCapsMixed = -2,
        msoNoCaps = 0,
        msoSmallCaps = 1,
        msoAllCaps = 2
    };

    enum MsoTextUnderlineType
    {
        msoUnderlineMixed = -2,
        msoNoUnderline = 0,
        msoUnderlineWords = 1,
        msoUnderlineSingleLine = 2,
        msoUnderlineDoubleLine = 3,
        msoUnderlineHeavyLine = 4,
        msoUnderlineDottedLine = 5,
        msoUnderlineDottedHeavyLine = 6,
        msoUnderlineDashLine = 7,
        msoUnderlineDashHeavyLine = 8,
        msoUnderlineDashLongLine = 9,
        msoUnderlineDashLongHeavyLine = 10,
        msoUnderlineDotDashLine = 11,
        msoUnderlineDotDashHeavyLine = 12,
        msoUnderlineDotDotDashLine = 13,
        msoUnderlineDotDotDashHeavyLine = 14,
        msoUnderlineWavyLine = 15,
        msoUnderlineWavyHeavyLine = 16,
        msoUnderlineWavyDoubleLine = 17
    };

    enum MsoTextTabAlign
    {
        msoTabAlignMixed = -2,
        msoTabAlignLeft = 0,
        msoTabAlignCenter = 1,
        msoTabAlignRight = 2,
        msoTabAlignDecimal = 3
    };

    enum MsoTextCharWrap
    {
        msoCharWrapMixed = -2,
        msoNoCharWrap = 0,
        msoStandardCharWrap = 1,
        msoStrictCharWrap = 2,
        msoCustomCharWrap = 3
    };

    enum MsoTextFontAlign
    {
        msoFontAlignMixed = -2,
        msoFontAlignAuto = 0,
        msoFontAlignTop = 1,
        msoFontAlignCenter = 2,
        msoFontAlignBaseline = 3,
        msoFontAlignBottom = 4
    };

    enum MsoAutoSize
    {
        msoAutoSizeMixed = -2,
        msoAutoSizeNone = 0,
        msoAutoSizeShapeToFitText = 1,
        msoAutoSizeTextToFitShape = 2
    };

    enum MsoPathFormat
    {
        msoPathTypeMixed = -2,
        msoPathTypeNone = 0,
        msoPathType1 = 1,
        msoPathType2 = 2,
        msoPathType3 = 3,
        msoPathType4 = 4
    };

    enum MsoWarpFormat
    {
        msoWarpFormatMixed = -2,
        msoWarpFormat1 = 0,
        msoWarpFormat2 = 1,
        msoWarpFormat3 = 2,
        msoWarpFormat4 = 3,
        msoWarpFormat5 = 4,
        msoWarpFormat6 = 5,
        msoWarpFormat7 = 6,
        msoWarpFormat8 = 7,
        msoWarpFormat9 = 8,
        msoWarpFormat10 = 9,
        msoWarpFormat11 = 10,
        msoWarpFormat12 = 11,
        msoWarpFormat13 = 12,
        msoWarpFormat14 = 13,
        msoWarpFormat15 = 14,
        msoWarpFormat16 = 15,
        msoWarpFormat17 = 16,
        msoWarpFormat18 = 17,
        msoWarpFormat19 = 18,
        msoWarpFormat20 = 19,
        msoWarpFormat21 = 20,
        msoWarpFormat22 = 21,
        msoWarpFormat23 = 22,
        msoWarpFormat24 = 23,
        msoWarpFormat25 = 24,
        msoWarpFormat26 = 25,
        msoWarpFormat27 = 26,
        msoWarpFormat28 = 27,
        msoWarpFormat29 = 28,
        msoWarpFormat30 = 29,
        msoWarpFormat31 = 30,
        msoWarpFormat32 = 31,
        msoWarpFormat33 = 32,
        msoWarpFormat34 = 33,
        msoWarpFormat35 = 34,
        msoWarpFormat36 = 35,
        msoWarpFormat37 = 36
    };

    enum MsoTextChangeCase
    {
        msoCaseSentence = 1,
        msoCaseLower = 2,
        msoCaseUpper = 3,
        msoCaseTitle = 4,
        msoCaseToggle = 5
    };

    enum MsoDateTimeFormat
    {
        msoDateTimeFormatMixed = -2,
        msoDateTimeMdyy = 1,
        msoDateTimeddddMMMMddyyyy = 2,
        msoDateTimedMMMMyyyy = 3,
        msoDateTimeMMMMdyyyy = 4,
        msoDateTimedMMMyy = 5,
        msoDateTimeMMMMyy = 6,
        msoDateTimeMMyy = 7,
        msoDateTimeMMddyyHmm = 8,
        msoDateTimeMMddyyhmmAMPM = 9,
        msoDateTimeHmm = 10,
        msoDateTimeHmmss = 11,
        msoDateTimehmmAMPM = 12,
        msoDateTimehmmssAMPM = 13,
        msoDateTimeFigureOut = 14
    };

    enum MsoThemeColorSchemeIndex
    {
        msoThemeDark1 = 1,
        msoThemeLight1 = 2,
        msoThemeDark2 = 3,
        msoThemeLight2 = 4,
        msoThemeAccent1 = 5,
        msoThemeAccent2 = 6,
        msoThemeAccent3 = 7,
        msoThemeAccent4 = 8,
        msoThemeAccent5 = 9,
        msoThemeAccent6 = 10,
        msoThemeHyperlink = 11,
        msoThemeFollowedHyperlink = 12
    };

    enum MsoThemeColorIndex
    {
        msoThemeColorMixed = -2,
        msoNotThemeColor = 0,
        msoThemeColorDark1 = 1,
        msoThemeColorLight1 = 2,
        msoThemeColorDark2 = 3,
        msoThemeColorLight2 = 4,
        msoThemeColorAccent1 = 5,
        msoThemeColorAccent2 = 6,
        msoThemeColorAccent3 = 7,
        msoThemeColorAccent4 = 8,
        msoThemeColorAccent5 = 9,
        msoThemeColorAccent6 = 10,
        msoThemeColorHyperlink = 11,
        msoThemeColorFollowedHyperlink = 12,
        msoThemeColorText1 = 13,
        msoThemeColorBackground1 = 14,
        msoThemeColorText2 = 15,
        msoThemeColorBackground2 = 16
    };

    enum MsoFontLanguageIndex
    {
        msoThemeLatin = 1,
        msoThemeComplexScript = 2,
        msoThemeEastAsian = 3
    };

    enum MsoShapeStyleIndex
    {
        msoShapeStyleMixed = -2,
        msoShapeStyleNotAPreset = 0,
        msoShapeStylePreset1 = 1,
        msoShapeStylePreset2 = 2,
        msoShapeStylePreset3 = 3,
        msoShapeStylePreset4 = 4,
        msoShapeStylePreset5 = 5,
        msoShapeStylePreset6 = 6,
        msoShapeStylePreset7 = 7,
        msoShapeStylePreset8 = 8,
        msoShapeStylePreset9 = 9,
        msoShapeStylePreset10 = 10,
        msoShapeStylePreset11 = 11,
        msoShapeStylePreset12 = 12,
        msoShapeStylePreset13 = 13,
        msoShapeStylePreset14 = 14,
        msoShapeStylePreset15 = 15,
        msoShapeStylePreset16 = 16,
        msoShapeStylePreset17 = 17,
        msoShapeStylePreset18 = 18,
        msoShapeStylePreset19 = 19,
        msoShapeStylePreset20 = 20,
        msoShapeStylePreset21 = 21,
        msoShapeStylePreset22 = 22,
        msoShapeStylePreset23 = 23,
        msoShapeStylePreset24 = 24,
        msoShapeStylePreset25 = 25,
        msoShapeStylePreset26 = 26,
        msoShapeStylePreset27 = 27,
        msoShapeStylePreset28 = 28,
        msoShapeStylePreset29 = 29,
        msoShapeStylePreset30 = 30,
        msoShapeStylePreset31 = 31,
        msoShapeStylePreset32 = 32,
        msoShapeStylePreset33 = 33,
        msoShapeStylePreset34 = 34,
        msoShapeStylePreset35 = 35,
        msoShapeStylePreset36 = 36,
        msoShapeStylePreset37 = 37,
        msoShapeStylePreset38 = 38,
        msoShapeStylePreset39 = 39,
        msoShapeStylePreset40 = 40,
        msoShapeStylePreset41 = 41,
        msoShapeStylePreset42 = 42,
        msoLineStylePreset1 = 10001,
        msoLineStylePreset2 = 10002,
        msoLineStylePreset3 = 10003,
        msoLineStylePreset4 = 10004,
        msoLineStylePreset5 = 10005,
        msoLineStylePreset6 = 10006,
        msoLineStylePreset7 = 10007,
        msoLineStylePreset8 = 10008,
        msoLineStylePreset9 = 10009,
        msoLineStylePreset10 = 10010,
        msoLineStylePreset11 = 10011,
        msoLineStylePreset12 = 10012,
        msoLineStylePreset13 = 10013,
        msoLineStylePreset14 = 10014,
        msoLineStylePreset15 = 10015,
        msoLineStylePreset16 = 10016,
        msoLineStylePreset17 = 10017,
        msoLineStylePreset18 = 10018,
        msoLineStylePreset19 = 10019,
        msoLineStylePreset20 = 10020,
        msoLineStylePreset21 = 10021
    };

    enum MsoBackgroundStyleIndex
    {
        msoBackgroundStyleMixed = -2,
        msoBackgroundStyleNotAPreset = 0,
        msoBackgroundStylePreset1 = 1,
        msoBackgroundStylePreset2 = 2,
        msoBackgroundStylePreset3 = 3,
        msoBackgroundStylePreset4 = 4,
        msoBackgroundStylePreset5 = 5,
        msoBackgroundStylePreset6 = 6,
        msoBackgroundStylePreset7 = 7,
        msoBackgroundStylePreset8 = 8,
        msoBackgroundStylePreset9 = 9,
        msoBackgroundStylePreset10 = 10,
        msoBackgroundStylePreset11 = 11,
        msoBackgroundStylePreset12 = 12
    };

    enum MsoCTPDockPosition
    {
        msoCTPDockPositionLeft = 0,
        msoCTPDockPositionTop = 1,
        msoCTPDockPositionRight = 2,
        msoCTPDockPositionBottom = 3,
        msoCTPDockPositionFloating = 4
    };

    enum MsoCTPDockPositionRestrict
    {
        msoCTPDockPositionRestrictNone = 0,
        msoCTPDockPositionRestrictNoChange = 1,
        msoCTPDockPositionRestrictNoHorizontal = 2,
        msoCTPDockPositionRestrictNoVertical = 3
    };

    enum RibbonControlSize
    {
        RibbonControlSizeRegular = 0,
        RibbonControlSizeLarge = 1
    };

    enum MsoShadowStyle
    {
        msoShadowStyleMixed = -2,
        msoShadowStyleInnerShadow = 1,
        msoShadowStyleOuterShadow = 2
    };

    enum MsoTextDirection
    {
        msoTextDirectionMixed = -2,
        msoTextDirectionLeftToRight = 1,
        msoTextDirectionRightToLeft = 2
    };

    enum MsoChartElementType
    {
        msoElementChartTitleNone = 0,
        msoElementChartTitleCenteredOverlay = 1,
        msoElementChartTitleAboveChart = 2,
        msoElementLegendNone = 100,
        msoElementLegendRight = 101,
        msoElementLegendTop = 102,
        msoElementLegendLeft = 103,
        msoElementLegendBottom = 104,
        msoElementLegendRightOverlay = 105,
        msoElementLegendLeftOverlay = 106,
        msoElementDataLabelNone = 200,
        msoElementDataLabelShow = 201,
        msoElementDataLabelCenter = 202,
        msoElementDataLabelInsideEnd = 203,
        msoElementDataLabelInsideBase = 204,
        msoElementDataLabelOutSideEnd = 205,
        msoElementDataLabelLeft = 206,
        msoElementDataLabelRight = 207,
        msoElementDataLabelTop = 208,
        msoElementDataLabelBottom = 209,
        msoElementDataLabelBestFit = 210,
        msoElementDataLabelCallout = 211,
        msoElementPrimaryCategoryAxisTitleNone = 300,
        msoElementPrimaryCategoryAxisTitleAdjacentToAxis = 301,
        msoElementPrimaryCategoryAxisTitleBelowAxis = 302,
        msoElementPrimaryCategoryAxisTitleRotated = 303,
        msoElementPrimaryCategoryAxisTitleVertical = 304,
        msoElementPrimaryCategoryAxisTitleHorizontal = 305,
        msoElementPrimaryValueAxisTitleNone = 306,
        msoElementPrimaryValueAxisTitleAdjacentToAxis = 306,
        msoElementPrimaryValueAxisTitleBelowAxis = 308,
        msoElementPrimaryValueAxisTitleRotated = 309,
        msoElementPrimaryValueAxisTitleVertical = 310,
        msoElementPrimaryValueAxisTitleHorizontal = 311,
        msoElementSecondaryCategoryAxisTitleNone = 312,
        msoElementSecondaryCategoryAxisTitleAdjacentToAxis = 313,
        msoElementSecondaryCategoryAxisTitleBelowAxis = 314,
        msoElementSecondaryCategoryAxisTitleRotated = 315,
        msoElementSecondaryCategoryAxisTitleVertical = 316,
        msoElementSecondaryCategoryAxisTitleHorizontal = 317,
        msoElementSecondaryValueAxisTitleNone = 318,
        msoElementSecondaryValueAxisTitleAdjacentToAxis = 319,
        msoElementSecondaryValueAxisTitleBelowAxis = 320,
        msoElementSecondaryValueAxisTitleRotated = 321,
        msoElementSecondaryValueAxisTitleVertical = 322,
        msoElementSecondaryValueAxisTitleHorizontal = 323,
        msoElementSeriesAxisTitleNone = 324,
        msoElementSeriesAxisTitleRotated = 325,
        msoElementSeriesAxisTitleVertical = 326,
        msoElementSeriesAxisTitleHorizontal = 327,
        msoElementPrimaryValueGridLinesNone = 328,
        msoElementPrimaryValueGridLinesMinor = 329,
        msoElementPrimaryValueGridLinesMajor = 330,
        msoElementPrimaryValueGridLinesMinorMajor = 331,
        msoElementPrimaryCategoryGridLinesNone = 332,
        msoElementPrimaryCategoryGridLinesMinor = 333,
        msoElementPrimaryCategoryGridLinesMajor = 334,
        msoElementPrimaryCategoryGridLinesMinorMajor = 335,
        msoElementSecondaryValueGridLinesNone = 336,
        msoElementSecondaryValueGridLinesMinor = 337,
        msoElementSecondaryValueGridLinesMajor = 338,
        msoElementSecondaryValueGridLinesMinorMajor = 339,
        msoElementSecondaryCategoryGridLinesNone = 340,
        msoElementSecondaryCategoryGridLinesMinor = 341,
        msoElementSecondaryCategoryGridLinesMajor = 342,
        msoElementSecondaryCategoryGridLinesMinorMajor = 343,
        msoElementSeriesAxisGridLinesNone = 344,
        msoElementSeriesAxisGridLinesMinor = 345,
        msoElementSeriesAxisGridLinesMajor = 346,
        msoElementSeriesAxisGridLinesMinorMajor = 347,
        msoElementPrimaryCategoryAxisNone = 348,
        msoElementPrimaryCategoryAxisShow = 349,
        msoElementPrimaryCategoryAxisWithoutLabels = 350,
        msoElementPrimaryCategoryAxisReverse = 351,
        msoElementPrimaryValueAxisNone = 352,
        msoElementPrimaryValueAxisShow = 353,
        msoElementPrimaryValueAxisThousands = 354,
        msoElementPrimaryValueAxisMillions = 355,
        msoElementPrimaryValueAxisBillions = 356,
        msoElementPrimaryValueAxisLogScale = 357,
        msoElementSecondaryCategoryAxisNone = 358,
        msoElementSecondaryCategoryAxisShow = 359,
        msoElementSecondaryCategoryAxisWithoutLabels = 360,
        msoElementSecondaryCategoryAxisReverse = 361,
        msoElementSecondaryValueAxisNone = 362,
        msoElementSecondaryValueAxisShow = 363,
        msoElementSecondaryValueAxisThousands = 364,
        msoElementSecondaryValueAxisMillions = 365,
        msoElementSecondaryValueAxisBillions = 366,
        msoElementSecondaryValueAxisLogScale = 367,
        msoElementSeriesAxisNone = 368,
        msoElementSeriesAxisShow = 369,
        msoElementSeriesAxisWithoutLabeling = 370,
        msoElementSeriesAxisReverse = 371,
        msoElementPrimaryCategoryAxisThousands = 372,
        msoElementPrimaryCategoryAxisMillions = 373,
        msoElementPrimaryCategoryAxisBillions = 374,
        msoElementPrimaryCategoryAxisLogScale = 375,
        msoElementSecondaryCategoryAxisThousands = 376,
        msoElementSecondaryCategoryAxisMillions = 377,
        msoElementSecondaryCategoryAxisBillions = 378,
        msoElementSecondaryCategoryAxisLogScale = 379,
        msoElementDataTableNone = 500,
        msoElementDataTableShow = 501,
        msoElementDataTableWithLegendKeys = 502,
        msoElementTrendlineNone = 600,
        msoElementTrendlineAddLinear = 601,
        msoElementTrendlineAddExponential = 602,
        msoElementTrendlineAddLinearForecast = 603,
        msoElementTrendlineAddTwoPeriodMovingAverage = 604,
        msoElementErrorBarNone = 700,
        msoElementErrorBarStandardError = 701,
        msoElementErrorBarPercentage = 702,
        msoElementErrorBarStandardDeviation = 703,
        msoElementLineNone = 800,
        msoElementLineDropLine = 801,
        msoElementLineHiLoLine = 802,
        msoElementLineSeriesLine = 803,
        msoElementLineDropHiLoLine = 804,
        msoElementUpDownBarsNone = 900,
        msoElementUpDownBarsShow = 901,
        msoElementPlotAreaNone = 1000,
        msoElementPlotAreaShow = 1001,
        msoElementChartWallNone = 1100,
        msoElementChartWallShow = 1101,
        msoElementChartFloorNone = 1200,
        msoElementChartFloorShow = 1201
    };

    enum MsoBulletType
    {
        msoBulletMixed = -2,
        msoBulletNone = 0,
        msoBulletUnnumbered = 1,
        msoBulletNumbered = 2,
        msoBulletPicture = 3
    };

    enum MsoNumberedBulletStyle
    {
        msoBulletStyleMixed = -2,
        msoBulletAlphaLCPeriod = 0,
        msoBulletAlphaUCPeriod = 1,
        msoBulletArabicParenRight = 2,
        msoBulletArabicPeriod = 3,
        msoBulletRomanLCParenBoth = 4,
        msoBulletRomanLCParenRight = 5,
        msoBulletRomanLCPeriod = 6,
        msoBulletRomanUCPeriod = 7,
        msoBulletAlphaLCParenBoth = 8,
        msoBulletAlphaLCParenRight = 9,
        msoBulletAlphaUCParenBoth = 10,
        msoBulletAlphaUCParenRight = 11,
        msoBulletArabicParenBoth = 12,
        msoBulletArabicPlain = 13,
        msoBulletRomanUCParenBoth = 14,
        msoBulletRomanUCParenRight = 15,
        msoBulletSimpChinPlain = 16,
        msoBulletSimpChinPeriod = 17,
        msoBulletCircleNumDBPlain = 18,
        msoBulletCircleNumWDWhitePlain = 19,
        msoBulletCircleNumWDBlackPlain = 20,
        msoBulletTradChinPlain = 21,
        msoBulletTradChinPeriod = 22,
        msoBulletArabicAlphaDash = 23,
        msoBulletArabicAbjadDash = 24,
        msoBulletHebrewAlphaDash = 25,
        msoBulletKanjiKoreanPlain = 26,
        msoBulletKanjiKoreanPeriod = 27,
        msoBulletArabicDBPlain = 28,
        msoBulletArabicDBPeriod = 29,
        msoBulletThaiAlphaPeriod = 30,
        msoBulletThaiAlphaParenRight = 31,
        msoBulletThaiAlphaParenBoth = 32,
        msoBulletThaiNumPeriod = 33,
        msoBulletThaiNumParenRight = 34,
        msoBulletThaiNumParenBoth = 35,
        msoBulletHindiAlphaPeriod = 36,
        msoBulletHindiNumPeriod = 37,
        msoBulletKanjiSimpChinDBPeriod = 38,
        msoBulletHindiNumParenRight = 39,
        msoBulletHindiAlpha1Period = 40
    };

    enum MsoTabStopType
    {
        msoTabStopMixed = -2,
        msoTabStopLeft = 1,
        msoTabStopCenter = 2,
        msoTabStopRight = 3,
        msoTabStopDecimal = 4
    };

    enum MsoBaselineAlignment
    {
        msoBaselineAlignMixed = -2,
        msoBaselineAlignBaseline = 1,
        msoBaselineAlignTop = 2,
        msoBaselineAlignCenter = 3,
        msoBaselineAlignFarEast50 = 4,
        msoBaselineAlignAuto = 5
    };

    enum EncryptionProviderDetail
    {
        encprovdetUrl = 0,
        encprovdetAlgorithm = 1,
        encprovdetBlockCipher = 2,
        encprovdetCipherBlockSize = 3,
        encprovdetCipherMode = 4
    };

    enum EncryptionCipherMode
    {
        cipherModeECB = 0,
        cipherModeCBC = 1
    };

    enum MsoClipboardFormat
    {
        msoClipboardFormatMixed = -2,
        msoClipboardFormatNative = 1,
        msoClipboardFormatHTML = 2,
        msoClipboardFormatRTF = 3,
        msoClipboardFormatPlainText = 4
    };

    enum MsoBlogCategorySupport
    {
        msoBlogNoCategories = 0,
        msoBlogOneCategory = 1,
        msoBlogMultipleCategories = 2
    };

    enum MsoBlogImageType
    {
        msoblogImageTypeJPEG = 1,
        msoblogImageTypeGIF = 2,
        msoblogImageTypePNG = 3
    };

    enum MsoSmartArtNodePosition
    {
        msoSmartArtNodeDefault = 1,
        msoSmartArtNodeAfter = 2,
        msoSmartArtNodeBefore = 3,
        msoSmartArtNodeAbove = 4,
        msoSmartArtNodeBelow = 5
    };

    enum MsoSmartArtNodeType
    {
        msoSmartArtNodeTypeDefault = 1,
        msoSmartArtNodeTypeAssistant = 2
    };

    enum MsoPickerField
    {
        msoPickerFieldUnknown = 0,
        msoPickerFieldDateTime = 1,
        msoPickerFieldNumber = 2,
        msoPickerFieldText = 3,
        msoPickerFieldUser = 4,
        msoPickerFieldMax = 5
    };

    enum MsoContactCardAddressType
    {
        msoContactCardAddressTypeUnknown = 0,
        msoContactCardAddressTypeOutlook = 1,
        msoContactCardAddressTypeSMTP = 2,
        msoContactCardAddressTypeIM = 3
    };

    enum MsoContactCardType
    {
        msoContactCardTypeEnterpriseContact = 0,
        msoContactCardTypePersonalContact = 1,
        msoContactCardTypeUnknownContact = 2,
        msoContactCardTypeEnterpriseGroup = 3,
        msoContactCardTypePersonalDistributionList = 4
    };

    enum MsoPictureEffectType
    {
        msoEffectNone = 0,
        msoEffectBackgroundRemoval = 1,
        msoEffectBlur = 2,
        msoEffectBrightnessContrast = 3,
        msoEffectCement = 4,
        msoEffectCrisscrossEtching = 5,
        msoEffectChalkSketch = 6,
        msoEffectColorTemperature = 7,
        msoEffectCutout = 8,
        msoEffectFilmGrain = 9,
        msoEffectGlass = 10,
        msoEffectGlowDiffused = 11,
        msoEffectGlowEdges = 12,
        msoEffectLightScreen = 13,
        msoEffectLineDrawing = 14,
        msoEffectMarker = 15,
        msoEffectMosiaicBubbles = 16,
        msoEffectPaintBrush = 17,
        msoEffectPaintStrokes = 18,
        msoEffectPastelsSmooth = 19,
        msoEffectPencilGrayscale = 20,
        msoEffectPencilSketch = 21,
        msoEffectPhotocopy = 22,
        msoEffectPlasticWrap = 23,
        msoEffectSaturation = 24,
        msoEffectSharpenSoften = 25,
        msoEffectTexturizer = 26,
        msoEffectWatercolorSponge = 27
    };

    enum MsoIodGroup
    {
        msoIodGroupPIAs = 0,
        msoIodGroupVSTOR35Mgd = 1,
        msoIodGroupVSTOR40Mgd = 2
    };

    enum BackstageGroupStyle
    {
        BackstageGroupStyleNormal = 0,
        BackstageGroupStyleWarning = 1,
        BackstageGroupStyleError = 2
    };

    enum MsoFileValidationMode
    {
        msoFileValidationDefault = 0,
        msoFileValidationSkip = 1
    };

    enum MsoContactCardStyle
    {
        msoContactCardHover = 0,
        msoContactCardFull = 1
    };

    enum MsoMergeCmd
    {
        msoMergeUnion = 1,
        msoMergeCombine = 2,
        msoMergeIntersect = 3,
        msoMergeSubtract = 4,
        msoMergeFragment = 5
    };

    enum MsoLineCapStyle
    {
        msoLineCapMixed = -2,
        msoLineCapSquare = 1,
        msoLineCapRound = 2,
        msoLineCapFlat = 3
    };

    enum MsoLineJoinStyle
    {
        msoLineJoinMixed = -2,
        msoLineJoinRound = 1,
        msoLineJoinBevel = 2,
        msoLineJoinMiter = 3
    };

    enum MsoLineFillType
    {
        msoLineFillMixed = -2,
        msoLineFillNone = 0,
        msoLineFillSolid = 1,
        msoLineFillPatterned = 2,
        msoLineFillGradient = 3,
        msoLineFillTextured = 4,
        msoLineFillBackground = 5,
        msoLineFillPicture = 6
    };

    enum MsoChartFieldType
    {
        msoChartFieldBubbleSize = 1,
        msoChartFieldCategoryName = 2,
        msoChartFieldPercentage = 3,
        msoChartFieldSeriesName = 4,
        msoChartFieldValue = 5,
        msoChartFieldFormula = 6,
        msoChartFieldRange = 7
    };

    enum MsoBroadcastState
    {
        NoBroadcast = 0,
        BroadcastStarted = 1,
        BroadcastPaused = 2
    };

    enum MsoBroadcastCapabilities
    {
        BroadcastCapFileSizeLimited = 1,
        BroadcastCapSupportsMeetingNotes = 2,
        BroadcastCapSupportsUpdateDoc = 4
    };

    enum MsoPictureCompress
    {
        msoPictureCompressDocDefault = -1,
        msoPictureCompressFalse = 0,
        msoPictureCompressTrue = 1
    };

    enum XlChartType
    {
        xlColumnClustered = 51,
        xlColumnStacked = 52,
        xlColumnStacked100 = 53,
        xl3DColumnClustered = 54,
        xl3DColumnStacked = 55,
        xl3DColumnStacked100 = 56,
        xlBarClustered = 57,
        xlBarStacked = 58,
        xlBarStacked100 = 59,
        xl3DBarClustered = 60,
        xl3DBarStacked = 61,
        xl3DBarStacked100 = 62,
        xlLineStacked = 63,
        xlLineStacked100 = 64,
        xlLineMarkers = 65,
        xlLineMarkersStacked = 66,
        xlLineMarkersStacked100 = 67,
        xlPieOfPie = 68,
        xlPieExploded = 69,
        xl3DPieExploded = 70,
        xlBarOfPie = 71,
        xlXYScatterSmooth = 72,
        xlXYScatterSmoothNoMarkers = 73,
        xlXYScatterLines = 74,
        xlXYScatterLinesNoMarkers = 75,
        xlAreaStacked = 76,
        xlAreaStacked100 = 77,
        xl3DAreaStacked = 78,
        xl3DAreaStacked100 = 79,
        xlDoughnutExploded = 80,
        xlRadarMarkers = 81,
        xlRadarFilled = 82,
        xlSurface = 83,
        xlSurfaceWireframe = 84,
        xlSurfaceTopView = 85,
        xlSurfaceTopViewWireframe = 86,
        xlBubble = 15,
        xlBubble3DEffect = 87,
        xlStockHLC = 88,
        xlStockOHLC = 89,
        xlStockVHLC = 90,
        xlStockVOHLC = 91,
        xlCylinderColClustered = 92,
        xlCylinderColStacked = 93,
        xlCylinderColStacked100 = 94,
        xlCylinderBarClustered = 95,
        xlCylinderBarStacked = 96,
        xlCylinderBarStacked100 = 97,
        xlCylinderCol = 98,
        xlConeColClustered = 99,
        xlConeColStacked = 100,
        xlConeColStacked100 = 101,
        xlConeBarClustered = 102,
        xlConeBarStacked = 103,
        xlConeBarStacked100 = 104,
        xlConeCol = 105,
        xlPyramidColClustered = 106,
        xlPyramidColStacked = 107,
        xlPyramidColStacked100 = 108,
        xlPyramidBarClustered = 109,
        xlPyramidBarStacked = 110,
        xlPyramidBarStacked100 = 111,
        xlPyramidCol = 112,
        xl3DColumn = -4100,
        xlLine = 4,
        xl3DLine = -4101,
        xl3DPie = -4102,
        xlPie = 5,
        xlXYScatter = -4169,
        xl3DArea = -4098,
        xlArea = 1,
        xlDoughnut = -4120,
        xlRadar = -4151,
        xlCombo = -4152,
        xlComboColumnClusteredLine = 113,
        xlComboColumnClusteredLineSecondaryAxis = 114,
        xlComboAreaStackedColumnClustered = 115,
        xlOtherCombinations = 116,
        xlSuggestedChart = -2
    };
};