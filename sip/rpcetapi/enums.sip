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
    enum Constants
    {
        xlAll = -4104,
        xlAutomatic = -4105,
        xlBoth = 1,
        xlCenter = -4108,
        xlChecker = 9,
        xlCircle = 8,
        xlCorner = 2,
        xlCrissCross = 16,
        xlCross = 4,
        xlDiamond = 2,
        xlDistributed = -4117,
        xlDoubleAccounting = 5,
        xlFixedValue = 1,
        xlFormats = -4122,
        xlGray16 = 17,
        xlGray8 = 18,
        xlGrid = 15,
        xlHigh = -4127,
        xlInside = 2,
        xlJustify = -4130,
        xlLightDown = 13,
        xlLightHorizontal = 11,
        xlLightUp = 14,
        xlLightVertical = 12,
        xlLow = -4134,
        xlManual = -4135,
        xlMinusValues = 3,
        xlModule = -4141,
        xlNextToAxis = 4,
        xlNone = -4142,
        xlNotes = -4144,
        xlOff = -4146,
        xlOn = 1,
        xlPercent = 2,
        xlPlus = 9,
        xlPlusValues = 2,
        xlSemiGray75 = 10,
        xlShowLabel = 4,
        xlShowLabelAndPercent = 5,
        xlShowPercent = 3,
        xlShowValue = 2,
        xlSimple = -4154,
        xlSingle = 2,
        xlSingleAccounting = 4,
        xlSolid = 1,
        xlSquare = 1,
        xlStar = 5,
        xlStError = 4,
        xlToolbarButton = 2,
        xlTriangle = 3,
        xlGray25 = -4124,
        xlGray50 = -4125,
        xlGray75 = -4126,
        xlBottom = -4107,
        xlLeft = -4131,
        xlRight = -4152,
        xlTop = -4160,
        xl3DBar = -4099,
        xl3DSurface = -4103,
        xlBar = 2,
        xlColumn = 3,
        xlCombination = -4111,
        xlCustom = -4114,
        xlDefaultAutoFormat = -1,
        xlMaximum = 2,
        xlMinimum = 4,
        xlOpaque = 3,
        xlTransparent = 2,
        xlBidi = -5000,
        xlLatin = -5001,
        xlContext = -5002,
        xlLTR = -5003,
        xlRTL = -5004,
        xlFullScript = 1,
        xlPartialScript = 2,
        xlMixedScript = 3,
        xlMixedAuthorizedScript = 4,
        xlVisualCursor = 2,
        xlLogicalCursor = 1,
        xlSystem = 1,
        xlPartial = 3,
        xlHindiNumerals = 3,
        xlBidiCalendar = 3,
        xlGregorian = 2,
        xlComplete = 4,
        xlScale = 3,
        xlClosed = 3,
        xlColor1 = 7,
        xlColor2 = 8,
        xlColor3 = 9,
        xlConstants = 2,
        xlContents = 2,
        xlBelow = 1,
        xlCascade = 7,
        xlCenterAcrossSelection = 7,
        xlChart4 = 2,
        xlChartSeries = 17,
        xlChartShort = 6,
        xlChartTitles = 18,
        xlClassic1 = 1,
        xlClassic2 = 2,
        xlClassic3 = 3,
        xl3DEffects1 = 13,
        xl3DEffects2 = 14,
        xlAbove = 0,
        xlAccounting1 = 4,
        xlAccounting2 = 5,
        xlAccounting3 = 6,
        xlAccounting4 = 17,
        xlAdd = 2,
        xlDebugCodePane = 13,
        xlDesktop = 9,
        xlDirect = 1,
        xlDivide = 5,
        xlDoubleClosed = 5,
        xlDoubleOpen = 4,
        xlDoubleQuote = 1,
        xlEntireChart = 20,
        xlExcelMenus = 1,
        xlExtended = 3,
        xlFill = 5,
        xlFirst = 0,
        xlFloating = 5,
        xlFormula = 5,
        xlGeneral = 1,
        xlGridline = 22,
        xlIcons = 1,
        xlImmediatePane = 12,
        xlInteger = 2,
        xlLast = 1,
        xlLastCell = 11,
        xlList1 = 10,
        xlList2 = 11,
        xlList3 = 12,
        xlLocalFormat1 = 15,
        xlLocalFormat2 = 16,
        xlLong = 3,
        xlLotusHelp = 2,
        xlMacrosheetCell = 7,
        xlMixed = 2,
        xlMultiply = 4,
        xlNarrow = 1,
        xlNoDocuments = 3,
        xlOpen = 2,
        xlOutside = 3,
        xlReference = 4,
        xlSemiautomatic = 2,
        xlShort = 1,
        xlSingleQuote = 2,
        xlStrict = 2,
        xlSubtract = 3,
        xlTextBox = 16,
        xlTiled = 1,
        xlTitleBar = 8,
        xlToolbar = 1,
        xlVisible = 12,
        xlWatchPane = 11,
        xlWide = 3,
        xlWorkbookTab = 6,
        xlWorksheet4 = 1,
        xlWorksheetCell = 3,
        xlWorksheetShort = 5,
        xlAllExceptBorders = 7,
        xlLeftToRight = 2,
        xlTopToBottom = 1,
        xlVeryHidden = 2,
        xlDrawingObject = 14
    };

    enum XlCreator
    {
        xlCreatorCode = 1480803660
    };

    enum XlChartGallery
    {
        xlBuiltIn = 21,
        xlUserDefined = 22,
        xlAnyGallery = 23
    };

    enum XlColorIndex
    {
        xlColorIndexAutomatic = -4105,
        xlColorIndexNone = -4142
    };

    enum XlEndStyleCap
    {
        xlCap = 1,
        xlNoCap = 2
    };

    enum XlRowCol
    {
        xlColumns = 2,
        xlRows = 1
    };

    enum XlScaleType
    {
        xlScaleLinear = -4132,
        xlScaleLogarithmic = -4133
    };

    enum XlDataSeriesType
    {
        xlAutoFill = 4,
        xlChronological = 3,
        xlGrowth = 2,
        xlDataSeriesLinear = -4132
    };

    enum XlAxisCrosses
    {
        xlAxisCrossesAutomatic = -4105,
        xlAxisCrossesCustom = -4114,
        xlAxisCrossesMaximum = 2,
        xlAxisCrossesMinimum = 4
    };

    enum XlAxisGroup
    {
        xlPrimary = 1,
        xlSecondary = 2
    };

    enum XlBackground
    {
        xlBackgroundAutomatic = -4105,
        xlBackgroundOpaque = 3,
        xlBackgroundTransparent = 2
    };

    enum XlWindowState
    {
        xlMaximized = -4137,
        xlMinimized = -4140,
        xlNormal = -4143
    };

    enum XlAxisType
    {
        xlCategory = 1,
        xlSeriesAxis = 3,
        xlValue = 2
    };

    enum XlArrowHeadLength
    {
        xlArrowHeadLengthLong = 3,
        xlArrowHeadLengthMedium = -4138,
        xlArrowHeadLengthShort = 1
    };

    enum XlVAlign
    {
        xlVAlignBottom = -4107,
        xlVAlignCenter = -4108,
        xlVAlignDistributed = -4117,
        xlVAlignJustify = -4130,
        xlVAlignTop = -4160
    };

    enum XlTickMark
    {
        xlTickMarkCross = 4,
        xlTickMarkInside = 2,
        xlTickMarkNone = -4142,
        xlTickMarkOutside = 3
    };

    enum XlErrorBarDirection
    {
        xlX = -4168,
        xlY = 1
    };

    enum XlErrorBarInclude
    {
        xlErrorBarIncludeBoth = 1,
        xlErrorBarIncludeMinusValues = 3,
        xlErrorBarIncludeNone = -4142,
        xlErrorBarIncludePlusValues = 2
    };

    enum XlDisplayBlanksAs
    {
        xlInterpolated = 3,
        xlNotPlotted = 1,
        xlZero = 2
    };

    enum XlArrowHeadStyle
    {
        xlArrowHeadStyleClosed = 3,
        xlArrowHeadStyleDoubleClosed = 5,
        xlArrowHeadStyleDoubleOpen = 4,
        xlArrowHeadStyleNone = -4142,
        xlArrowHeadStyleOpen = 2
    };

    enum XlArrowHeadWidth
    {
        xlArrowHeadWidthMedium = -4138,
        xlArrowHeadWidthNarrow = 1,
        xlArrowHeadWidthWide = 3
    };

    enum XlHAlign
    {
        xlHAlignCenter = -4108,
        xlHAlignCenterAcrossSelection = 7,
        xlHAlignDistributed = -4117,
        xlHAlignFill = 5,
        xlHAlignGeneral = 1,
        xlHAlignJustify = -4130,
        xlHAlignLeft = -4131,
        xlHAlignRight = -4152
    };

    enum XlTickLabelPosition
    {
        xlTickLabelPositionHigh = -4127,
        xlTickLabelPositionLow = -4134,
        xlTickLabelPositionNextToAxis = 4,
        xlTickLabelPositionNone = -4142
    };

    enum XlLegendPosition
    {
        xlLegendPositionBottom = -4107,
        xlLegendPositionCorner = 2,
        xlLegendPositionLeft = -4131,
        xlLegendPositionRight = -4152,
        xlLegendPositionTop = -4160,
        xlLegendPositionCustom = -4161
    };

    enum XlChartPictureType
    {
        xlStackScale = 3,
        xlStack = 2,
        xlStretch = 1
    };

    enum XlChartPicturePlacement
    {
        xlSides = 1,
        xlEnd = 2,
        xlEndSides = 3,
        xlFront = 4,
        xlFrontSides = 5,
        xlFrontEnd = 6,
        xlAllFaces = 7
    };

    enum XlOrientation
    {
        xlDownward = -4170,
        xlHorizontal = -4128,
        xlUpward = -4171,
        xlVertical = -4166
    };

    enum XlTickLabelOrientation
    {
        xlTickLabelOrientationAutomatic = -4105,
        xlTickLabelOrientationDownward = -4170,
        xlTickLabelOrientationHorizontal = -4128,
        xlTickLabelOrientationUpward = -4171,
        xlTickLabelOrientationVertical = -4166
    };

    enum XlBorderWeight
    {
        xlHairline = 1,
        xlMedium = -4138,
        xlThick = 4,
        xlThin = 2
    };

    enum XlDataSeriesDate
    {
        xlDay = 1,
        xlMonth = 3,
        xlWeekday = 2,
        xlYear = 4
    };

    enum XlUnderlineStyle
    {
        xlUnderlineStyleDouble = -4119,
        xlUnderlineStyleDoubleAccounting = 5,
        xlUnderlineStyleNone = -4142,
        xlUnderlineStyleSingle = 2,
        xlUnderlineStyleSingleAccounting = 4
    };

    enum XlErrorBarType
    {
        xlErrorBarTypeCustom = -4114,
        xlErrorBarTypeFixedValue = 1,
        xlErrorBarTypePercent = 2,
        xlErrorBarTypeStDev = -4155,
        xlErrorBarTypeStError = 4
    };

    enum XlTrendlineType
    {
        xlExponential = 5,
        xlLinear = -4132,
        xlLogarithmic = -4133,
        xlMovingAvg = 6,
        xlPolynomial = 3,
        xlPower = 4
    };

    enum XlLineStyle
    {
        xlContinuous = 1,
        xlDash = -4115,
        xlDashDot = 4,
        xlDashDotDot = 5,
        xlDot = -4118,
        xlDouble = -4119,
        xlSlantDashDot = 13,
        xlLineStyleNone = -4142
    };

    enum XlDataLabelsType
    {
        xlDataLabelsShowNone = -4142,
        xlDataLabelsShowValue = 2,
        xlDataLabelsShowPercent = 3,
        xlDataLabelsShowLabel = 4,
        xlDataLabelsShowLabelAndPercent = 5,
        xlDataLabelsShowBubbleSizes = 6
    };

    enum XlMarkerStyle
    {
        xlMarkerStyleAutomatic = -4105,
        xlMarkerStyleCircle = 8,
        xlMarkerStyleDash = -4115,
        xlMarkerStyleDiamond = 2,
        xlMarkerStyleDot = -4118,
        xlMarkerStyleNone = -4142,
        xlMarkerStylePicture = -4147,
        xlMarkerStylePlus = 9,
        xlMarkerStyleSquare = 1,
        xlMarkerStyleStar = 5,
        xlMarkerStyleTriangle = 3,
        xlMarkerStyleX = -4168
    };

    enum XlPictureConvertorType
    {
        xlBMP = 1,
        xlCGM = 7,
        xlDRW = 4,
        xlDXF = 5,
        xlEPS = 8,
        xlHGL = 6,
        xlPCT = 13,
        xlPCX = 10,
        xlPIC = 11,
        xlPLT = 12,
        xlTIF = 9,
        xlWMF = 2,
        xlWPG = 3
    };

    enum XlPattern
    {
        xlPatternAutomatic = -4105,
        xlPatternChecker = 9,
        xlPatternCrissCross = 16,
        xlPatternDown = -4121,
        xlPatternGray16 = 17,
        xlPatternGray25 = -4124,
        xlPatternGray50 = -4125,
        xlPatternGray75 = -4126,
        xlPatternGray8 = 18,
        xlPatternGrid = 15,
        xlPatternHorizontal = -4128,
        xlPatternLightDown = 13,
        xlPatternLightHorizontal = 11,
        xlPatternLightUp = 14,
        xlPatternLightVertical = 12,
        xlPatternNone = -4142,
        xlPatternSemiGray75 = 10,
        xlPatternSolid = 1,
        xlPatternUp = -4162,
        xlPatternVertical = -4166,
        xlPatternLinearGradient = 4000,
        xlPatternRectangularGradient = 4001
    };

    enum XlChartSplitType
    {
        xlSplitByPosition = 1,
        xlSplitByPercentValue = 3,
        xlSplitByCustomSplit = 4,
        xlSplitByValue = 2
    };

    enum XlDisplayUnit
    {
        xlHundreds = -2,
        xlThousands = -3,
        xlTenThousands = -4,
        xlHundredThousands = -5,
        xlMillions = -6,
        xlTenMillions = -7,
        xlHundredMillions = -8,
        xlThousandMillions = -9,
        xlMillionMillions = -10
    };

    enum XlDataLabelPosition
    {
        xlLabelPositionCenter = -4108,
        xlLabelPositionAbove = 0,
        xlLabelPositionBelow = 1,
        xlLabelPositionLeft = -4131,
        xlLabelPositionRight = -4152,
        xlLabelPositionOutsideEnd = 2,
        xlLabelPositionInsideEnd = 3,
        xlLabelPositionInsideBase = 4,
        xlLabelPositionBestFit = 5,
        xlLabelPositionMixed = 6,
        xlLabelPositionCustom = 7
    };

    enum XlTimeUnit
    {
        xlDays = 0,
        xlMonths = 1,
        xlYears = 2
    };

    enum XlCategoryType
    {
        xlCategoryScale = 2,
        xlTimeScale = 3,
        xlAutomaticScale = -4105
    };

    enum XlBarShape
    {
        xlBox = 0,
        xlPyramidToPoint = 1,
        xlPyramidToMax = 2,
        xlCylinder = 3,
        xlConeToPoint = 4,
        xlConeToMax = 5
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
        xlRadar = -4151
    };

    enum XlChartItem
    {
        xlDataLabel = 0,
        xlChartArea = 2,
        xlSeries = 3,
        xlChartTitle = 4,
        xlWalls = 5,
        xlCorners = 6,
        xlDataTable = 7,
        xlTrendline = 8,
        xlErrorBars = 9,
        xlXErrorBars = 10,
        xlYErrorBars = 11,
        xlLegendEntry = 12,
        xlLegendKey = 13,
        xlShape = 14,
        xlMajorGridlines = 15,
        xlMinorGridlines = 16,
        xlAxisTitle = 17,
        xlUpBars = 18,
        xlPlotArea = 19,
        xlDownBars = 20,
        xlAxis = 21,
        xlSeriesLines = 22,
        xlFloor = 23,
        xlLegend = 24,
        xlHiLoLines = 25,
        xlDropLines = 26,
        xlRadarAxisLabels = 27,
        xlNothing = 28,
        xlLeaderLines = 29,
        xlDisplayUnitLabel = 30,
        xlPivotChartFieldButton = 31,
        xlPivotChartDropZone = 32
    };

    enum XlSizeRepresents
    {
        xlSizeIsWidth = 2,
        xlSizeIsArea = 1
    };

    enum XlInsertShiftDirection
    {
        xlShiftDown = -4121,
        xlShiftToRight = -4161
    };

    enum XlDeleteShiftDirection
    {
        xlShiftToLeft = -4159,
        xlShiftUp = -4162
    };

    enum XlDirection
    {
        xlDown = -4121,
        xlToLeft = -4159,
        xlToRight = -4161,
        xlUp = -4162
    };

    enum XlConsolidationFunction
    {
        xlAverage = -4106,
        xlCount = -4112,
        xlCountNums = -4113,
        xlMax = -4136,
        xlMin = -4139,
        xlProduct = -4149,
        xlStDev = -4155,
        xlStDevP = -4156,
        xlSum = -4157,
        xlVar = -4164,
        xlVarP = -4165,
        xlUnknown = 1000,
        xlDistinctCount = 11
    };

    enum XlSheetType
    {
        xlChart = -4109,
        xlDialogSheet = -4116,
        xlExcel4IntlMacroSheet = 4,
        xlExcel4MacroSheet = 3,
        xlWorksheet = -4167
    };

    enum XlLocationInTable
    {
        xlColumnHeader = -4110,
        xlColumnItem = 5,
        xlDataHeader = 3,
        xlDataItem = 7,
        xlPageHeader = 2,
        xlPageItem = 6,
        xlRowHeader = -4153,
        xlRowItem = 4,
        xlTableBody = 8
    };

    enum XlFindLookIn
    {
        xlFormulas = -4123,
        xlComments = -4144,
        xlValues = -4163
    };

    enum XlWindowType
    {
        xlChartAsWindow = 5,
        xlChartInPlace = 4,
        xlClipboard = 3,
        xlInfo = -4129,
        xlWorkbook = 1
    };

    enum XlPivotFieldDataType
    {
        xlDate = 2,
        xlNumber = -4145,
        xlText = -4158
    };

    enum XlCopyPictureFormat
    {
        xlBitmap = 2,
        xlPicture = -4147
    };

    enum XlPivotTableSourceType
    {
        xlScenario = 4,
        xlConsolidation = 3,
        xlDatabase = 1,
        xlExternal = 2,
        xlPivotTable = -4148
    };

    enum XlReferenceStyle
    {
        xlA1 = 1,
        xlR1C1 = -4150
    };

    enum XlMSApplication
    {
        xlMicrosoftAccess = 4,
        xlMicrosoftFoxPro = 5,
        xlMicrosoftMail = 3,
        xlMicrosoftPowerPoint = 2,
        xlMicrosoftProject = 6,
        xlMicrosoftSchedulePlus = 7,
        xlMicrosoftWord = 1
    };

    enum XlMouseButton
    {
        xlNoButton = 0,
        xlPrimaryButton = 1,
        xlSecondaryButton = 2
    };

    enum XlCutCopyMode
    {
        xlCopy = 1,
        xlCut = 2
    };

    enum XlFillWith
    {
        xlFillWithAll = -4104,
        xlFillWithContents = 2,
        xlFillWithFormats = -4122
    };

    enum XlFilterAction
    {
        xlFilterCopy = 2,
        xlFilterInPlace = 1
    };

    enum XlOrder
    {
        xlDownThenOver = 1,
        xlOverThenDown = 2
    };

    enum XlLinkType
    {
        xlLinkTypeExcelLinks = 1,
        xlLinkTypeOLELinks = 2
    };

    enum XlApplyNamesOrder
    {
        xlColumnThenRow = 2,
        xlRowThenColumn = 1
    };

    enum XlEnableCancelKey
    {
        xlDisabled = 0,
        xlErrorHandler = 2,
        xlInterrupt = 1
    };

    enum XlPageBreak
    {
        xlPageBreakAutomatic = -4105,
        xlPageBreakManual = -4135,
        xlPageBreakNone = -4142
    };

    enum XlOLEType
    {
        xlOLEControl = 2,
        xlOLEEmbed = 1,
        xlOLELink = 0
    };

    enum XlPageOrientation
    {
        xlLandscape = 2,
        xlPortrait = 1
    };

    enum XlLinkInfo
    {
        xlEditionDate = 2,
        xlUpdateState = 1,
        xlLinkInfoStatus = 3
    };

    enum XlCommandUnderlines
    {
        xlCommandUnderlinesAutomatic = -4105,
        xlCommandUnderlinesOff = -4146,
        xlCommandUnderlinesOn = 1
    };

    enum XlOLEVerb
    {
        xlVerbOpen = 2,
        xlVerbPrimary = 1
    };

    enum XlCalculation
    {
        xlCalculationAutomatic = -4105,
        xlCalculationManual = -4135,
        xlCalculationSemiautomatic = 2
    };

    enum XlFileAccess
    {
        xlReadOnly = 3,
        xlReadWrite = 2
    };

    enum XlEditionType
    {
        xlPublisher = 1,
        xlSubscriber = 2
    };

    enum XlObjectSize
    {
        xlFitToPage = 2,
        xlFullPage = 3,
        xlScreenSize = 1
    };

    enum XlLookAt
    {
        xlPart = 2,
        xlWhole = 1
    };

    enum XlMailSystem
    {
        xlMAPI = 1,
        xlNoMailSystem = 0,
        xlPowerTalk = 2
    };

    enum XlLinkInfoType
    {
        xlLinkInfoOLELinks = 2,
        xlLinkInfoPublishers = 5,
        xlLinkInfoSubscribers = 6
    };

    enum XlCVError
    {
        xlErrDiv0 = 2007,
        xlErrNA = 2042,
        xlErrName = 2029,
        xlErrNull = 2000,
        xlErrNum = 2036,
        xlErrRef = 2023,
        xlErrValue = 2015
    };

    enum XlEditionFormat
    {
        xlBIFF = 2,
        xlPICT = 1,
        xlRTF = 4,
        xlVALU = 8
    };

    enum XlLink
    {
        xlExcelLinks = 1,
        xlOLELinks = 2,
        xlPublishers = 5,
        xlSubscribers = 6
    };

    enum XlCellType
    {
        xlCellTypeBlanks = 4,
        xlCellTypeConstants = 2,
        xlCellTypeFormulas = -4123,
        xlCellTypeLastCell = 11,
        xlCellTypeComments = -4144,
        xlCellTypeVisible = 12,
        xlCellTypeAllFormatConditions = -4172,
        xlCellTypeSameFormatConditions = -4173,
        xlCellTypeAllValidation = -4174,
        xlCellTypeSameValidation = -4175
    };

    enum XlArrangeStyle
    {
        xlArrangeStyleCascade = 7,
        xlArrangeStyleHorizontal = -4128,
        xlArrangeStyleTiled = 1,
        xlArrangeStyleVertical = -4166
    };

    enum XlMousePointer
    {
        xlIBeam = 3,
        xlDefault = -4143,
        xlNorthwestArrow = 1,
        xlWait = 2
    };

    enum XlEditionOptionsOption
    {
        xlAutomaticUpdate = 4,
        xlCancel = 1,
        xlChangeAttributes = 6,
        xlManualUpdate = 5,
        xlOpenSource = 3,
        xlSelect = 3,
        xlSendPublisher = 2,
        xlUpdateSubscriber = 2
    };

    enum XlAutoFillType
    {
        xlFillCopy = 1,
        xlFillDays = 5,
        xlFillDefault = 0,
        xlFillFormats = 3,
        xlFillMonths = 7,
        xlFillSeries = 2,
        xlFillValues = 4,
        xlFillWeekdays = 6,
        xlFillYears = 8,
        xlGrowthTrend = 10,
        xlLinearTrend = 9,
        xlFlashFill = 11
    };

    enum XlAutoFilterOperator
    {
        xlAnd = 1,
        xlBottom10Items = 4,
        xlBottom10Percent = 6,
        xlOr = 2,
        xlTop10Items = 3,
        xlTop10Percent = 5,
        xlFilterValues = 7,
        xlFilterCellColor = 8,
        xlFilterFontColor = 9,
        xlFilterIcon = 10,
        xlFilterDynamic = 11,
        xlFilterNoFill = 12,
        xlFilterAutomaticFontColor = 13,
        xlFilterNoIcon = 14
    };

    enum XlClipboardFormat
    {
        xlClipboardFormatBIFF12 = 63,
        xlClipboardFormatBIFF = 8,
        xlClipboardFormatBIFF2 = 18,
        xlClipboardFormatBIFF3 = 20,
        xlClipboardFormatBIFF4 = 30,
        xlClipboardFormatBinary = 15,
        xlClipboardFormatBitmap = 9,
        xlClipboardFormatCGM = 13,
        xlClipboardFormatCSV = 5,
        xlClipboardFormatDIF = 4,
        xlClipboardFormatDspText = 12,
        xlClipboardFormatEmbeddedObject = 21,
        xlClipboardFormatEmbedSource = 22,
        xlClipboardFormatLink = 11,
        xlClipboardFormatLinkSource = 23,
        xlClipboardFormatLinkSourceDesc = 32,
        xlClipboardFormatMovie = 24,
        xlClipboardFormatNative = 14,
        xlClipboardFormatObjectDesc = 31,
        xlClipboardFormatObjectLink = 19,
        xlClipboardFormatOwnerLink = 17,
        xlClipboardFormatPICT = 2,
        xlClipboardFormatPrintPICT = 3,
        xlClipboardFormatRTF = 7,
        xlClipboardFormatScreenPICT = 29,
        xlClipboardFormatStandardFont = 28,
        xlClipboardFormatStandardScale = 27,
        xlClipboardFormatSYLK = 6,
        xlClipboardFormatTable = 16,
        xlClipboardFormatText = 0,
        xlClipboardFormatToolFace = 25,
        xlClipboardFormatToolFacePICT = 26,
        xlClipboardFormatVALU = 1,
        xlClipboardFormatWK1 = 10
    };

    enum XlFileFormat
    {
        xlAddIn = 18,
        xlCSV = 6,
        xlCSVMac = 22,
        xlCSVMSDOS = 24,
        xlCSVWindows = 23,
        xlDBF2 = 7,
        xlDBF3 = 8,
        xlDBF4 = 11,
        xlDIF = 9,
        xlExcel2 = 16,
        xlExcel2FarEast = 27,
        xlExcel3 = 29,
        xlExcel4 = 33,
        xlExcel5 = 39,
        xlExcel7 = 39,
        xlExcel9795 = 43,
        xlExcel4Workbook = 35,
        xlIntlAddIn = 26,
        xlIntlMacro = 25,
        xlWorkbookNormal = -4143,
        xlSYLK = 2,
        xlTemplate = 17,
        xlCurrentPlatformText = -4158,
        xlTextMac = 19,
        xlTextMSDOS = 21,
        xlTextPrinter = 36,
        xlTextWindows = 20,
        xlWJ2WD1 = 14,
        xlWK1 = 5,
        xlWK1ALL = 31,
        xlWK1FMT = 30,
        xlWK3 = 15,
        xlWK4 = 38,
        xlWK3FM3 = 32,
        xlWKS = 4,
        xlWorks2FarEast = 28,
        xlWQ1 = 34,
        xlWJ3 = 40,
        xlWJ3FJ3 = 41,
        xlUnicodeText = 42,
        xlHtml = 44,
        xlWebArchive = 45,
        xlXMLSpreadsheet = 46,
        xlExcel12 = 50,
        xlOpenXMLWorkbook = 51,
        xlOpenXMLWorkbookMacroEnabled = 52,
        xlOpenXMLTemplateMacroEnabled = 53,
        xlTemplate8 = 17,
        xlOpenXMLTemplate = 54,
        xlAddIn8 = 18,
        xlOpenXMLAddIn = 55,
        xlExcel8 = 56,
        xlOpenDocumentSpreadsheet = 60,
        xlOpenXMLStrictWorkbook = 61,
        xlWorkbookDefault = 51,
        xlOFD = 102
    };

    enum XlApplicationInternational
    {
        xl24HourClock = 33,
        xl4DigitYears = 43,
        xlAlternateArraySeparator = 16,
        xlColumnSeparator = 14,
        xlCountryCode = 1,
        xlCountrySetting = 2,
        xlCurrencyBefore = 37,
        xlCurrencyCode = 25,
        xlCurrencyDigits = 27,
        xlCurrencyLeadingZeros = 40,
        xlCurrencyMinusSign = 38,
        xlCurrencyNegative = 28,
        xlCurrencySpaceBefore = 36,
        xlCurrencyTrailingZeros = 39,
        xlDateOrder = 32,
        xlDateSeparator = 17,
        xlDayCode = 21,
        xlDayLeadingZero = 42,
        xlDecimalSeparator = 3,
        xlGeneralFormatName = 26,
        xlHourCode = 22,
        xlLeftBrace = 12,
        xlLeftBracket = 10,
        xlListSeparator = 5,
        xlLowerCaseColumnLetter = 9,
        xlLowerCaseRowLetter = 8,
        xlMDY = 44,
        xlMetric = 35,
        xlMinuteCode = 23,
        xlMonthCode = 20,
        xlMonthLeadingZero = 41,
        xlMonthNameChars = 30,
        xlNoncurrencyDigits = 29,
        xlNonEnglishFunctions = 34,
        xlRightBrace = 13,
        xlRightBracket = 11,
        xlRowSeparator = 15,
        xlSecondCode = 24,
        xlThousandsSeparator = 4,
        xlTimeLeadingZero = 45,
        xlTimeSeparator = 18,
        xlUpperCaseColumnLetter = 7,
        xlUpperCaseRowLetter = 6,
        xlWeekdayNameChars = 31,
        xlYearCode = 19
    };

    enum XlPageBreakExtent
    {
        xlPageBreakFull = 1,
        xlPageBreakPartial = 2
    };

    enum XlCellInsertionMode
    {
        xlOverwriteCells = 0,
        xlInsertDeleteCells = 1,
        xlInsertEntireRows = 2
    };

    enum XlFormulaLabel
    {
        xlNoLabels = -4142,
        xlRowLabels = 1,
        xlColumnLabels = 2,
        xlMixedLabels = 3
    };

    enum XlHighlightChangesTime
    {
        xlSinceMyLastSave = 1,
        xlAllChanges = 2,
        xlNotYetReviewed = 3
    };

    enum XlCommentDisplayMode
    {
        xlNoIndicator = 0,
        xlCommentIndicatorOnly = -1,
        xlCommentAndIndicator = 1
    };

    enum XlFormatConditionType
    {
        xlCellValue = 1,
        xlExpression = 2,
        xlColorScale = 3,
        xlDatabar = 4,
        xlTop10 = 5,
        xlIconSets = 6,
        xlUniqueValues = 8,
        xlTextString = 9,
        xlBlanksCondition = 10,
        xlTimePeriod = 11,
        xlAboveAverageCondition = 12,
        xlNoBlanksCondition = 13,
        xlErrorsCondition = 16,
        xlNoErrorsCondition = 17
    };

    enum XlFormatConditionOperator
    {
        xlBetween = 1,
        xlNotBetween = 2,
        xlEqual = 3,
        xlNotEqual = 4,
        xlGreater = 5,
        xlLess = 6,
        xlGreaterEqual = 7,
        xlLessEqual = 8
    };

    enum XlEnableSelection
    {
        xlNoRestrictions = 0,
        xlUnlockedCells = 1,
        xlNoSelection = -4142
    };

    enum XlDVType
    {
        xlValidateInputOnly = 0,
        xlValidateWholeNumber = 1,
        xlValidateDecimal = 2,
        xlValidateList = 3,
        xlValidateDate = 4,
        xlValidateTime = 5,
        xlValidateTextLength = 6,
        xlValidateCustom = 7
    };

    enum XlIMEMode
    {
        xlIMEModeNoControl = 0,
        xlIMEModeOn = 1,
        xlIMEModeOff = 2,
        xlIMEModeDisable = 3,
        xlIMEModeHiragana = 4,
        xlIMEModeKatakana = 5,
        xlIMEModeKatakanaHalf = 6,
        xlIMEModeAlphaFull = 7,
        xlIMEModeAlpha = 8,
        xlIMEModeHangulFull = 9,
        xlIMEModeHangul = 10
    };

    enum XlDVAlertStyle
    {
        xlValidAlertStop = 1,
        xlValidAlertWarning = 2,
        xlValidAlertInformation = 3
    };

    enum XlChartLocation
    {
        xlLocationAsNewSheet = 1,
        xlLocationAsObject = 2,
        xlLocationAutomatic = 3
    };

    enum XlPaperSize
    {
        xlPaper10x14 = 16,
        xlPaper11x17 = 17,
        xlPaperA3 = 8,
        xlPaperA4 = 9,
        xlPaperA4Small = 10,
        xlPaperA5 = 11,
        xlPaperB4 = 12,
        xlPaperB5 = 13,
        xlPaperCsheet = 24,
        xlPaperDsheet = 25,
        xlPaperEnvelope10 = 20,
        xlPaperEnvelope11 = 21,
        xlPaperEnvelope12 = 22,
        xlPaperEnvelope14 = 23,
        xlPaperEnvelope9 = 19,
        xlPaperEnvelopeB4 = 33,
        xlPaperEnvelopeB5 = 34,
        xlPaperEnvelopeB6 = 35,
        xlPaperEnvelopeC3 = 29,
        xlPaperEnvelopeC4 = 30,
        xlPaperEnvelopeC5 = 28,
        xlPaperEnvelopeC6 = 31,
        xlPaperEnvelopeC65 = 32,
        xlPaperEnvelopeDL = 27,
        xlPaperEnvelopeItaly = 36,
        xlPaperEnvelopeMonarch = 37,
        xlPaperEnvelopePersonal = 38,
        xlPaperEsheet = 26,
        xlPaperExecutive = 7,
        xlPaperFanfoldLegalGerman = 41,
        xlPaperFanfoldStdGerman = 40,
        xlPaperFanfoldUS = 39,
        xlPaperFolio = 14,
        xlPaperLedger = 4,
        xlPaperLegal = 5,
        xlPaperLetter = 1,
        xlPaperLetterSmall = 2,
        xlPaperNote = 18,
        xlPaperQuarto = 15,
        xlPaperStatement = 6,
        xlPaperTabloid = 3,
        xlPaperUser = 256
    };

    enum XlPasteSpecialOperation
    {
        xlPasteSpecialOperationAdd = 2,
        xlPasteSpecialOperationDivide = 5,
        xlPasteSpecialOperationMultiply = 4,
        xlPasteSpecialOperationNone = -4142,
        xlPasteSpecialOperationSubtract = 3
    };

    enum XlPasteType
    {
        xlPasteAll = -4104,
        xlPasteAllUsingSourceTheme = 13,
        xlPasteAllMergingConditionalFormats = 14,
        xlPasteAllExceptBorders = 7,
        xlPasteFormats = -4122,
        xlPasteFormulas = -4123,
        xlPasteComments = -4144,
        xlPasteValues = -4163,
        xlPasteColumnWidths = 8,
        xlPasteValidation = 6,
        xlPasteFormulasAndNumberFormats = 11,
        xlPasteValuesAndNumberFormats = 12
    };

    enum XlPhoneticCharacterType
    {
        xlKatakanaHalf = 0,
        xlKatakana = 1,
        xlHiragana = 2,
        xlNoConversion = 3
    };

    enum XlPhoneticAlignment
    {
        xlPhoneticAlignNoControl = 0,
        xlPhoneticAlignLeft = 1,
        xlPhoneticAlignCenter = 2,
        xlPhoneticAlignDistributed = 3
    };

    enum XlPictureAppearance
    {
        xlPrinter = 2,
        xlScreen = 1
    };

    enum XlPivotFieldOrientation
    {
        xlColumnField = 2,
        xlDataField = 4,
        xlHidden = 0,
        xlPageField = 3,
        xlRowField = 1
    };

    enum XlPivotFieldCalculation
    {
        xlDifferenceFrom = 2,
        xlIndex = 9,
        xlNoAdditionalCalculation = -4143,
        xlPercentDifferenceFrom = 4,
        xlPercentOf = 3,
        xlPercentOfColumn = 7,
        xlPercentOfRow = 6,
        xlPercentOfTotal = 8,
        xlRunningTotal = 5,
        xlPercentOfParentRow = 10,
        xlPercentOfParentColumn = 11,
        xlPercentOfParent = 12,
        xlPercentRunningTotal = 13,
        xlRankAscending = 14,
        xlRankDecending = 15
    };

    enum XlPlacement
    {
        xlFreeFloating = 3,
        xlMove = 2,
        xlMoveAndSize = 1
    };

    enum XlPlatform
    {
        xlMacintosh = 1,
        xlMSDOS = 3,
        xlWindows = 2
    };

    enum XlPrintLocation
    {
        xlPrintSheetEnd = 1,
        xlPrintInPlace = 16,
        xlPrintNoComments = -4142
    };

    enum XlPriority
    {
        xlPriorityHigh = -4127,
        xlPriorityLow = -4134,
        xlPriorityNormal = -4143
    };

    enum XlPTSelectionMode
    {
        xlLabelOnly = 1,
        xlDataAndLabel = 0,
        xlDataOnly = 2,
        xlOrigin = 3,
        xlButton = 15,
        xlBlanks = 4,
        xlFirstRow = 256
    };

    enum XlRangeAutoFormat
    {
        xlRangeAutoFormat3DEffects1 = 13,
        xlRangeAutoFormat3DEffects2 = 14,
        xlRangeAutoFormatAccounting1 = 4,
        xlRangeAutoFormatAccounting2 = 5,
        xlRangeAutoFormatAccounting3 = 6,
        xlRangeAutoFormatAccounting4 = 17,
        xlRangeAutoFormatClassic1 = 1,
        xlRangeAutoFormatClassic2 = 2,
        xlRangeAutoFormatClassic3 = 3,
        xlRangeAutoFormatColor1 = 7,
        xlRangeAutoFormatColor2 = 8,
        xlRangeAutoFormatColor3 = 9,
        xlRangeAutoFormatList1 = 10,
        xlRangeAutoFormatList2 = 11,
        xlRangeAutoFormatList3 = 12,
        xlRangeAutoFormatLocalFormat1 = 15,
        xlRangeAutoFormatLocalFormat2 = 16,
        xlRangeAutoFormatLocalFormat3 = 19,
        xlRangeAutoFormatLocalFormat4 = 20,
        xlRangeAutoFormatReport1 = 21,
        xlRangeAutoFormatReport2 = 22,
        xlRangeAutoFormatReport3 = 23,
        xlRangeAutoFormatReport4 = 24,
        xlRangeAutoFormatReport5 = 25,
        xlRangeAutoFormatReport6 = 26,
        xlRangeAutoFormatReport7 = 27,
        xlRangeAutoFormatReport8 = 28,
        xlRangeAutoFormatReport9 = 29,
        xlRangeAutoFormatReport10 = 30,
        xlRangeAutoFormatClassicPivotTable = 31,
        xlRangeAutoFormatTable1 = 32,
        xlRangeAutoFormatTable2 = 33,
        xlRangeAutoFormatTable3 = 34,
        xlRangeAutoFormatTable4 = 35,
        xlRangeAutoFormatTable5 = 36,
        xlRangeAutoFormatTable6 = 37,
        xlRangeAutoFormatTable7 = 38,
        xlRangeAutoFormatTable8 = 39,
        xlRangeAutoFormatTable9 = 40,
        xlRangeAutoFormatTable10 = 41,
        xlRangeAutoFormatPTNone = 42,
        xlRangeAutoFormatNone = -4142,
        xlRangeAutoFormatSimple = -4154
    };

    enum XlReferenceType
    {
        xlAbsolute = 1,
        xlAbsRowRelColumn = 2,
        xlRelative = 4,
        xlRelRowAbsColumn = 3
    };

    enum XlLayoutFormType
    {
        xlTabular = 0,
        xlOutline = 1
    };

    enum XlRoutingSlipDelivery
    {
        xlAllAtOnce = 2,
        xlOneAfterAnother = 1
    };

    enum XlRoutingSlipStatus
    {
        xlNotYetRouted = 0,
        xlRoutingComplete = 2,
        xlRoutingInProgress = 1
    };

    enum XlRunAutoMacro
    {
        xlAutoActivate = 3,
        xlAutoClose = 2,
        xlAutoDeactivate = 4,
        xlAutoOpen = 1
    };

    enum XlSaveAction
    {
        xlDoNotSaveChanges = 2,
        xlSaveChanges = 1
    };

    enum XlSaveAsAccessMode
    {
        xlExclusive = 3,
        xlNoChange = 1,
        xlShared = 2
    };

    enum XlSaveConflictResolution
    {
        xlLocalSessionChanges = 2,
        xlOtherSessionChanges = 3,
        xlUserResolution = 1
    };

    enum XlSearchDirection
    {
        xlNext = 1,
        xlPrevious = 2
    };

    enum XlSearchOrder
    {
        xlByColumns = 2,
        xlByRows = 1
    };

    enum XlSheetVisibility
    {
        xlSheetVisible = -1,
        xlSheetHidden = 0,
        xlSheetVeryHidden = 2
    };

    enum XlSortMethod
    {
        xlPinYin = 1,
        xlStroke = 2
    };

    enum XlSortMethodOld
    {
        xlCodePage = 2,
        xlSyllabary = 1
    };

    enum XlSortOrder
    {
        xlAscending = 1,
        xlDescending = 2
    };

    enum XlSortOrientation
    {
        xlSortRows = 2,
        xlSortColumns = 1
    };

    enum XlSortType
    {
        xlSortLabels = 2,
        xlSortValues = 1
    };

    enum XlSpecialCellsValue
    {
        xlErrors = 16,
        xlLogical = 4,
        xlNumbers = 1,
        xlTextValues = 2
    };

    enum XlSubscribeToFormat
    {
        xlSubscribeToPicture = -4147,
        xlSubscribeToText = -4158
    };

    enum XlSummaryRow
    {
        xlSummaryAbove = 0,
        xlSummaryBelow = 1
    };

    enum XlSummaryColumn
    {
        xlSummaryOnLeft = -4131,
        xlSummaryOnRight = -4152
    };

    enum XlSummaryReportType
    {
        xlSummaryPivotTable = -4148,
        xlStandardSummary = 1
    };

    enum XlTabPosition
    {
        xlTabPositionFirst = 0,
        xlTabPositionLast = 1
    };

    enum XlTextParsingType
    {
        xlDelimited = 1,
        xlFixedWidth = 2
    };

    enum XlTextQualifier
    {
        xlTextQualifierDoubleQuote = 1,
        xlTextQualifierNone = -4142,
        xlTextQualifierSingleQuote = 2
    };

    enum XlWBATemplate
    {
        xlWBATChart = -4109,
        xlWBATExcel4IntlMacroSheet = 4,
        xlWBATExcel4MacroSheet = 3,
        xlWBATWorksheet = -4167
    };

    enum XlWindowView
    {
        xlNormalView = 1,
        xlPageBreakPreview = 2,
        xlPageLayoutView = 3
    };

    enum XlXLMMacroType
    {
        xlCommand = 2,
        xlFunction = 1,
        xlNotXLM = 3
    };

    enum XlYesNoGuess
    {
        xlGuess = 0,
        xlNo = 2,
        xlYes = 1
    };

    enum XlBordersIndex
    {
        xlInsideHorizontal = 12,
        xlInsideVertical = 11,
        xlDiagonalDown = 5,
        xlDiagonalUp = 6,
        xlEdgeBottom = 9,
        xlEdgeLeft = 7,
        xlEdgeRight = 10,
        xlEdgeTop = 8
    };

    enum XlToolbarProtection
    {
        xlNoButtonChanges = 1,
        xlNoChanges = 4,
        xlNoDockingChanges = 3,
        xlToolbarProtectionNone = -4143,
        xlNoShapeChanges = 2
    };

    enum XlBuiltInDialog
    {
        xlDialogOpen = 1,
        xlDialogOpenLinks = 2,
        xlDialogSaveAs = 5,
        xlDialogFileDelete = 6,
        xlDialogPageSetup = 7,
        xlDialogPrint = 8,
        xlDialogPrinterSetup = 9,
        xlDialogArrangeAll = 12,
        xlDialogWindowSize = 13,
        xlDialogWindowMove = 14,
        xlDialogRun = 17,
        xlDialogSetPrintTitles = 23,
        xlDialogFont = 26,
        xlDialogDisplay = 27,
        xlDialogProtectDocument = 28,
        xlDialogCalculation = 32,
        xlDialogExtract = 35,
        xlDialogDataDelete = 36,
        xlDialogSort = 39,
        xlDialogDataSeries = 40,
        xlDialogTable = 41,
        xlDialogFormatNumber = 42,
        xlDialogAlignment = 43,
        xlDialogStyle = 44,
        xlDialogBorder = 45,
        xlDialogCellProtection = 46,
        xlDialogColumnWidth = 47,
        xlDialogClear = 52,
        xlDialogPasteSpecial = 53,
        xlDialogEditDelete = 54,
        xlDialogInsert = 55,
        xlDialogPasteNames = 58,
        xlDialogDefineName = 61,
        xlDialogCreateNames = 62,
        xlDialogFormulaGoto = 63,
        xlDialogFormulaFind = 64,
        xlDialogGalleryArea = 67,
        xlDialogGalleryBar = 68,
        xlDialogGalleryColumn = 69,
        xlDialogGalleryLine = 70,
        xlDialogGalleryPie = 71,
        xlDialogGalleryScatter = 72,
        xlDialogCombination = 73,
        xlDialogGridlines = 76,
        xlDialogAxes = 78,
        xlDialogAttachText = 80,
        xlDialogPatterns = 84,
        xlDialogMainChart = 85,
        xlDialogOverlay = 86,
        xlDialogScale = 87,
        xlDialogFormatLegend = 88,
        xlDialogFormatText = 89,
        xlDialogParse = 91,
        xlDialogUnhide = 94,
        xlDialogWorkspace = 95,
        xlDialogActivate = 103,
        xlDialogCopyPicture = 108,
        xlDialogDeleteName = 110,
        xlDialogDeleteFormat = 111,
        xlDialogNew = 119,
        xlDialogRowHeight = 127,
        xlDialogFormatMove = 128,
        xlDialogFormatSize = 129,
        xlDialogFormulaReplace = 130,
        xlDialogSelectSpecial = 132,
        xlDialogApplyNames = 133,
        xlDialogReplaceFont = 134,
        xlDialogSplit = 137,
        xlDialogOutline = 142,
        xlDialogSaveWorkbook = 145,
        xlDialogCopyChart = 147,
        xlDialogFormatFont = 150,
        xlDialogNote = 154,
        xlDialogSetUpdateStatus = 159,
        xlDialogColorPalette = 161,
        xlDialogChangeLink = 166,
        xlDialogAppMove = 170,
        xlDialogAppSize = 171,
        xlDialogMainChartType = 185,
        xlDialogOverlayChartType = 186,
        xlDialogOpenMail = 188,
        xlDialogSendMail = 189,
        xlDialogStandardFont = 190,
        xlDialogConsolidate = 191,
        xlDialogSortSpecial = 192,
        xlDialogGallery3dArea = 193,
        xlDialogGallery3dColumn = 194,
        xlDialogGallery3dLine = 195,
        xlDialogGallery3dPie = 196,
        xlDialogView3d = 197,
        xlDialogGoalSeek = 198,
        xlDialogWorkgroup = 199,
        xlDialogFillGroup = 200,
        xlDialogUpdateLink = 201,
        xlDialogPromote = 202,
        xlDialogDemote = 203,
        xlDialogShowDetail = 204,
        xlDialogObjectProperties = 207,
        xlDialogSaveNewObject = 208,
        xlDialogApplyStyle = 212,
        xlDialogAssignToObject = 213,
        xlDialogObjectProtection = 214,
        xlDialogCreatePublisher = 217,
        xlDialogSubscribeTo = 218,
        xlDialogShowToolbar = 220,
        xlDialogPrintPreview = 222,
        xlDialogEditColor = 223,
        xlDialogFormatMain = 225,
        xlDialogFormatOverlay = 226,
        xlDialogEditSeries = 228,
        xlDialogDefineStyle = 229,
        xlDialogGalleryRadar = 249,
        xlDialogEditionOptions = 251,
        xlDialogZoom = 256,
        xlDialogInsertObject = 259,
        xlDialogSize = 261,
        xlDialogMove = 262,
        xlDialogFormatAuto = 269,
        xlDialogGallery3dBar = 272,
        xlDialogGallery3dSurface = 273,
        xlDialogCustomizeToolbar = 276,
        xlDialogWorkbookAdd = 281,
        xlDialogWorkbookMove = 282,
        xlDialogWorkbookCopy = 283,
        xlDialogWorkbookOptions = 284,
        xlDialogSaveWorkspace = 285,
        xlDialogChartWizard = 288,
        xlDialogAssignToTool = 293,
        xlDialogPlacement = 300,
        xlDialogFillWorkgroup = 301,
        xlDialogWorkbookNew = 302,
        xlDialogScenarioCells = 305,
        xlDialogScenarioAdd = 307,
        xlDialogScenarioEdit = 308,
        xlDialogScenarioSummary = 311,
        xlDialogPivotTableWizard = 312,
        xlDialogPivotFieldProperties = 313,
        xlDialogOptionsCalculation = 318,
        xlDialogOptionsEdit = 319,
        xlDialogOptionsView = 320,
        xlDialogAddinManager = 321,
        xlDialogMenuEditor = 322,
        xlDialogAttachToolbars = 323,
        xlDialogOptionsChart = 325,
        xlDialogVbaInsertFile = 328,
        xlDialogVbaProcedureDefinition = 330,
        xlDialogRoutingSlip = 336,
        xlDialogMailLogon = 339,
        xlDialogInsertPicture = 342,
        xlDialogGalleryDoughnut = 344,
        xlDialogChartTrend = 350,
        xlDialogWorkbookInsert = 354,
        xlDialogOptionsTransition = 355,
        xlDialogOptionsGeneral = 356,
        xlDialogFilterAdvanced = 370,
        xlDialogMailNextLetter = 378,
        xlDialogDataLabel = 379,
        xlDialogInsertTitle = 380,
        xlDialogFontProperties = 381,
        xlDialogMacroOptions = 382,
        xlDialogWorkbookUnhide = 384,
        xlDialogWorkbookName = 386,
        xlDialogGalleryCustom = 388,
        xlDialogAddChartAutoformat = 390,
        xlDialogChartAddData = 392,
        xlDialogTabOrder = 394,
        xlDialogSubtotalCreate = 398,
        xlDialogWorkbookTabSplit = 415,
        xlDialogWorkbookProtect = 417,
        xlDialogScrollbarProperties = 420,
        xlDialogPivotShowPages = 421,
        xlDialogTextToColumns = 422,
        xlDialogFormatCharttype = 423,
        xlDialogPivotFieldGroup = 433,
        xlDialogPivotFieldUngroup = 434,
        xlDialogCheckboxProperties = 435,
        xlDialogLabelProperties = 436,
        xlDialogListboxProperties = 437,
        xlDialogEditboxProperties = 438,
        xlDialogOpenText = 441,
        xlDialogPushbuttonProperties = 445,
        xlDialogFilter = 447,
        xlDialogFunctionWizard = 450,
        xlDialogSaveCopyAs = 456,
        xlDialogOptionsListsAdd = 458,
        xlDialogSeriesAxes = 460,
        xlDialogSeriesX = 461,
        xlDialogSeriesY = 462,
        xlDialogErrorbarX = 463,
        xlDialogErrorbarY = 464,
        xlDialogFormatChart = 465,
        xlDialogSeriesOrder = 466,
        xlDialogMailEditMailer = 470,
        xlDialogStandardWidth = 472,
        xlDialogScenarioMerge = 473,
        xlDialogProperties = 474,
        xlDialogSummaryInfo = 474,
        xlDialogFindFile = 475,
        xlDialogActiveCellFont = 476,
        xlDialogVbaMakeAddin = 478,
        xlDialogFileSharing = 481,
        xlDialogAutoCorrect = 485,
        xlDialogCustomViews = 493,
        xlDialogInsertNameLabel = 496,
        xlDialogSeriesShape = 504,
        xlDialogChartOptionsDataLabels = 505,
        xlDialogChartOptionsDataTable = 506,
        xlDialogSetBackgroundPicture = 509,
        xlDialogDataValidation = 525,
        xlDialogChartType = 526,
        xlDialogChartLocation = 527,
        _xlDialogPhonetic = 538,
        xlDialogChartSourceData = 540,
        _xlDialogChartSourceData = 541,
        xlDialogSeriesOptions = 557,
        xlDialogPivotTableOptions = 567,
        xlDialogPivotSolveOrder = 568,
        xlDialogPivotCalculatedField = 570,
        xlDialogPivotCalculatedItem = 572,
        xlDialogConditionalFormatting = 583,
        xlDialogInsertHyperlink = 596,
        xlDialogProtectSharing = 620,
        xlDialogOptionsME = 647,
        xlDialogPublishAsWebPage = 653,
        xlDialogPhonetic = 656,
        xlDialogNewWebQuery = 667,
        xlDialogImportTextFile = 666,
        xlDialogExternalDataProperties = 530,
        xlDialogWebOptionsGeneral = 683,
        xlDialogWebOptionsFiles = 684,
        xlDialogWebOptionsPictures = 685,
        xlDialogWebOptionsEncoding = 686,
        xlDialogWebOptionsFonts = 687,
        xlDialogPivotClientServerSet = 689,
        xlDialogPropertyFields = 754,
        xlDialogSearch = 731,
        xlDialogEvaluateFormula = 709,
        xlDialogDataLabelMultiple = 723,
        xlDialogChartOptionsDataLabelMultiple = 724,
        xlDialogErrorChecking = 732,
        xlDialogWebOptionsBrowsers = 773,
        xlDialogCreateList = 796,
        xlDialogPermission = 832,
        xlDialogMyPermission = 834,
        xlDialogDocumentInspector = 862,
        xlDialogNameManager = 977,
        xlDialogNewName = 978,
        xlDialogSparklineInsertLine = 1133,
        xlDialogSparklineInsertColumn = 1134,
        xlDialogSparklineInsertWinLoss = 1135,
        xlDialogSlicerSettings = 1179,
        xlDialogSlicerCreation = 1182,
        xlDialogSlicerPivotTableConnections = 1184,
        xlDialogPivotTableSlicerConnections = 1183,
        xlDialogPivotTableWhatIfAnalysisSettings = 1153,
        xlDialogSetManager = 1109,
        xlDialogSetMDXEditor = 1208,
        xlDialogSetTupleEditorOnRows = 1107,
        xlDialogSetTupleEditorOnColumns = 1108,
        xlDialogManageRelationships = 1271,
        xlDialogCreateRelationship = 1272,
        xlDialogRecommendedPivotTables = 1258
    };

    enum XlParameterType
    {
        xlPrompt = 0,
        xlConstant = 1,
        xlRange = 2
    };

    enum XlParameterDataType
    {
        xlParamTypeUnknown = 0,
        xlParamTypeChar = 1,
        xlParamTypeNumeric = 2,
        xlParamTypeDecimal = 3,
        xlParamTypeInteger = 4,
        xlParamTypeSmallInt = 5,
        xlParamTypeFloat = 6,
        xlParamTypeReal = 7,
        xlParamTypeDouble = 8,
        xlParamTypeVarChar = 12,
        xlParamTypeDate = 9,
        xlParamTypeTime = 10,
        xlParamTypeTimestamp = 11,
        xlParamTypeLongVarChar = -1,
        xlParamTypeBinary = -2,
        xlParamTypeVarBinary = -3,
        xlParamTypeLongVarBinary = -4,
        xlParamTypeBigInt = -5,
        xlParamTypeTinyInt = -6,
        xlParamTypeBit = -7,
        xlParamTypeWChar = -8
    };

    enum XlFormControl
    {
        xlButtonControl = 0,
        xlCheckBox = 1,
        xlDropDown = 2,
        xlEditBox = 3,
        xlGroupBox = 4,
        xlLabel = 5,
        xlListBox = 6,
        xlOptionButton = 7,
        xlScrollBar = 8,
        xlSpinner = 9
    };

    enum XlSourceType
    {
        xlSourceWorkbook = 0,
        xlSourceSheet = 1,
        xlSourcePrintArea = 2,
        xlSourceAutoFilter = 3,
        xlSourceRange = 4,
        xlSourceChart = 5,
        xlSourcePivotTable = 6,
        xlSourceQuery = 7
    };

    enum XlHtmlType
    {
        xlHtmlStatic = 0,
        xlHtmlCalc = 1,
        xlHtmlList = 2,
        xlHtmlChart = 3
    };

    enum XlPivotFormatType
    {
        xlReport1 = 0,
        xlReport2 = 1,
        xlReport3 = 2,
        xlReport4 = 3,
        xlReport5 = 4,
        xlReport6 = 5,
        xlReport7 = 6,
        xlReport8 = 7,
        xlReport9 = 8,
        xlReport10 = 9,
        xlTable1 = 10,
        xlTable2 = 11,
        xlTable3 = 12,
        xlTable4 = 13,
        xlTable5 = 14,
        xlTable6 = 15,
        xlTable7 = 16,
        xlTable8 = 17,
        xlTable9 = 18,
        xlTable10 = 19,
        xlPTClassic = 20,
        xlPTNone = 21
    };

    enum XlCmdType
    {
        xlCmdCube = 1,
        xlCmdSql = 2,
        xlCmdTable = 3,
        xlCmdDefault = 4,
        xlCmdList = 5,
        xlCmdTableCollection = 6,
        xlCmdExcel = 7,
        xlCmdDAX = 8
    };

    enum XlColumnDataType
    {
        xlGeneralFormat = 1,
        xlTextFormat = 2,
        xlMDYFormat = 3,
        xlDMYFormat = 4,
        xlYMDFormat = 5,
        xlMYDFormat = 6,
        xlDYMFormat = 7,
        xlYDMFormat = 8,
        xlSkipColumn = 9,
        xlEMDFormat = 10
    };

    enum XlQueryType
    {
        xlODBCQuery = 1,
        xlDAORecordset = 2,
        xlWebQuery = 4,
        xlOLEDBQuery = 5,
        xlTextImport = 6,
        xlADORecordset = 7
    };

    enum XlWebSelectionType
    {
        xlEntirePage = 1,
        xlAllTables = 2,
        xlSpecifiedTables = 3
    };

    enum XlCubeFieldType
    {
        xlHierarchy = 1,
        xlMeasure = 2,
        xlSet = 3
    };

    enum XlWebFormatting
    {
        xlWebFormattingAll = 1,
        xlWebFormattingRTF = 2,
        xlWebFormattingNone = 3
    };

    enum XlDisplayDrawingObjects
    {
        xlDisplayShapes = -4104,
        xlHide = 3,
        xlPlaceholders = 2
    };

    enum XlSubtototalLocationType
    {
        xlAtTop = 1,
        xlAtBottom = 2
    };

    enum XlPivotTableVersionList
    {
        xlPivotTableVersion2000 = 0,
        xlPivotTableVersion10 = 1,
        xlPivotTableVersion11 = 2,
        xlPivotTableVersion12 = 3,
        xlPivotTableVersion14 = 4,
        xlPivotTableVersion15 = 5,
        xlPivotTableVersionCurrent = -1
    };

    enum XlPrintErrors
    {
        xlPrintErrorsDisplayed = 0,
        xlPrintErrorsBlank = 1,
        xlPrintErrorsDash = 2,
        xlPrintErrorsNA = 3
    };

    enum XlPivotCellType
    {
        xlPivotCellValue = 0,
        xlPivotCellPivotItem = 1,
        xlPivotCellSubtotal = 2,
        xlPivotCellGrandTotal = 3,
        xlPivotCellDataField = 4,
        xlPivotCellPivotField = 5,
        xlPivotCellPageFieldItem = 6,
        xlPivotCellCustomSubtotal = 7,
        xlPivotCellDataPivotField = 8,
        xlPivotCellBlankCell = 9
    };

    enum XlPivotTableMissingItems
    {
        xlMissingItemsDefault = -1,
        xlMissingItemsNone = 0,
        xlMissingItemsMax = 32500,
        xlMissingItemsMax2 = 1048576
    };

    enum XlCalculationState
    {
        xlDone = 0,
        xlCalculating = 1,
        xlPending = 2
    };

    enum XlCalculationInterruptKey
    {
        xlNoKey = 0,
        xlEscKey = 1,
        xlAnyKey = 2
    };

    enum XlSortDataOption
    {
        xlSortNormal = 0,
        xlSortTextAsNumbers = 1
    };

    enum XlUpdateLinks
    {
        xlUpdateLinksUserSetting = 1,
        xlUpdateLinksNever = 2,
        xlUpdateLinksAlways = 3
    };

    enum XlLinkStatus
    {
        xlLinkStatusOK = 0,
        xlLinkStatusMissingFile = 1,
        xlLinkStatusMissingSheet = 2,
        xlLinkStatusOld = 3,
        xlLinkStatusSourceNotCalculated = 4,
        xlLinkStatusIndeterminate = 5,
        xlLinkStatusNotStarted = 6,
        xlLinkStatusInvalidName = 7,
        xlLinkStatusSourceNotOpen = 8,
        xlLinkStatusSourceOpen = 9,
        xlLinkStatusCopiedValues = 10
    };

    enum XlSearchWithin
    {
        xlWithinSheet = 1,
        xlWithinWorkbook = 2
    };

    enum XlCorruptLoad
    {
        xlNormalLoad = 0,
        xlRepairFile = 1,
        xlExtractData = 2
    };

    enum XlRobustConnect
    {
        xlAsRequired = 0,
        xlAlways = 1,
        xlNever = 2
    };

    enum XlErrorChecks
    {
        xlEvaluateToError = 1,
        xlTextDate = 2,
        xlNumberAsText = 3,
        xlInconsistentFormula = 4,
        xlOmittedCells = 5,
        xlUnlockedFormulaCells = 6,
        xlEmptyCellReferences = 7,
        xlListDataValidation = 8,
        xlInconsistentListFormula = 9
    };

    enum XlDataLabelSeparator
    {
        xlDataLabelSeparatorDefault = 1
    };

    enum XlSmartTagDisplayMode
    {
        xlIndicatorAndButton = 0,
        xlDisplayNone = 1,
        xlButtonOnly = 2
    };

    enum XlRangeValueDataType
    {
        xlRangeValueDefault = 10,
        xlRangeValueXMLSpreadsheet = 11,
        xlRangeValueMSPersistXML = 12
    };

    enum XlSpeakDirection
    {
        xlSpeakByRows = 0,
        xlSpeakByColumns = 1
    };

    enum XlInsertFormatOrigin
    {
        xlFormatFromLeftOrAbove = 0,
        xlFormatFromRightOrBelow = 1
    };

    enum XlArabicModes
    {
        xlArabicNone = 0,
        xlArabicStrictAlefHamza = 1,
        xlArabicStrictFinalYaa = 2,
        xlArabicBothStrict = 3
    };

    enum XlImportDataAs
    {
        xlQueryTable = 0,
        xlPivotTableReport = 1,
        xlTable = 2
    };

    enum XlCalculatedMemberType
    {
        xlCalculatedMember = 0,
        xlCalculatedSet = 1,
        xlCalculatedMeasure = 2
    };

    enum XlHebrewModes
    {
        xlHebrewFullScript = 0,
        xlHebrewPartialScript = 1,
        xlHebrewMixedScript = 2,
        xlHebrewMixedAuthorizedScript = 3
    };

    enum XlListObjectSourceType
    {
        xlSrcExternal = 0,
        xlSrcRange = 1,
        xlSrcXml = 2,
        xlSrcQuery = 3,
        xlSrcModel = 4
    };

    enum XlTextVisualLayoutType
    {
        xlTextVisualLTR = 1,
        xlTextVisualRTL = 2
    };

    enum XlListDataType
    {
        xlListDataTypeNone = 0,
        xlListDataTypeText = 1,
        xlListDataTypeMultiLineText = 2,
        xlListDataTypeNumber = 3,
        xlListDataTypeCurrency = 4,
        xlListDataTypeDateTime = 5,
        xlListDataTypeChoice = 6,
        xlListDataTypeChoiceMulti = 7,
        xlListDataTypeListLookup = 8,
        xlListDataTypeCheckbox = 9,
        xlListDataTypeHyperLink = 10,
        xlListDataTypeCounter = 11,
        xlListDataTypeMultiLineRichText = 12
    };

    enum XlTotalsCalculation
    {
        xlTotalsCalculationNone = 0,
        xlTotalsCalculationSum = 1,
        xlTotalsCalculationAverage = 2,
        xlTotalsCalculationCount = 3,
        xlTotalsCalculationCountNums = 4,
        xlTotalsCalculationMin = 5,
        xlTotalsCalculationMax = 6,
        xlTotalsCalculationStdDev = 7,
        xlTotalsCalculationVar = 8,
        xlTotalsCalculationCustom = 9
    };

    enum XlXmlLoadOption
    {
        xlXmlLoadPromptUser = 0,
        xlXmlLoadOpenXml = 1,
        xlXmlLoadImportToList = 2,
        xlXmlLoadMapXml = 3
    };

    enum XlSmartTagControlType
    {
        xlSmartTagControlSmartTag = 1,
        xlSmartTagControlLink = 2,
        xlSmartTagControlHelp = 3,
        xlSmartTagControlHelpURL = 4,
        xlSmartTagControlSeparator = 5,
        xlSmartTagControlButton = 6,
        xlSmartTagControlLabel = 7,
        xlSmartTagControlImage = 8,
        xlSmartTagControlCheckbox = 9,
        xlSmartTagControlTextbox = 10,
        xlSmartTagControlListbox = 11,
        xlSmartTagControlCombo = 12,
        xlSmartTagControlActiveX = 13,
        xlSmartTagControlRadioGroup = 14
    };

    enum XlListConflict
    {
        xlListConflictDialog = 0,
        xlListConflictRetryAllConflicts = 1,
        xlListConflictDiscardAllConflicts = 2,
        xlListConflictError = 3
    };

    enum XlXmlExportResult
    {
        xlXmlExportSuccess = 0,
        xlXmlExportValidationFailed = 1
    };

    enum XlXmlImportResult
    {
        xlXmlImportSuccess = 0,
        xlXmlImportElementsTruncated = 1,
        xlXmlImportValidationFailed = 2
    };

    enum XlRemoveDocInfoType
    {
        xlRDIComments = 1,
        xlRDIRemovePersonalInformation = 4,
        xlRDIEmailHeader = 5,
        xlRDIRoutingSlip = 6,
        xlRDISendForReview = 7,
        xlRDIDocumentProperties = 8,
        xlRDIDocumentWorkspace = 10,
        xlRDIInkAnnotations = 11,
        xlRDIScenarioComments = 12,
        xlRDIPublishInfo = 13,
        xlRDIDocumentServerProperties = 14,
        xlRDIDocumentManagementPolicy = 15,
        xlRDIContentType = 16,
        xlRDIDefinedNameComments = 18,
        xlRDIInactiveDataConnections = 19,
        xlRDIPrinterPath = 20,
        xlRDIInlineWebExtensions = 21,
        xlRDITaskpaneWebExtensions = 22,
        xlRDIExcelDataModel = 23,
        xlRDIAll = 99
    };

    enum XlRgbColor
    {
        rgbAliceBlue = 16775408,
        rgbAntiqueWhite = 14150650,
        rgbAqua = 16776960,
        rgbAquamarine = 13959039,
        rgbAzure = 16777200,
        rgbBeige = 14480885,
        rgbBisque = 12903679,
        rgbBlack = 0,
        rgbBlanchedAlmond = 13495295,
        rgbBlue = 16711680,
        rgbBlueViolet = 14822282,
        rgbBrown = 2763429,
        rgbBurlyWood = 8894686,
        rgbCadetBlue = 10526303,
        rgbChartreuse = 65407,
        rgbCoral = 5275647,
        rgbCornflowerBlue = 15570276,
        rgbCornsilk = 14481663,
        rgbCrimson = 3937500,
        rgbDarkBlue = 9109504,
        rgbDarkCyan = 9145088,
        rgbDarkGoldenrod = 755384,
        rgbDarkGreen = 25600,
        rgbDarkGray = 11119017,
        rgbDarkGrey = 11119017,
        rgbDarkKhaki = 7059389,
        rgbDarkMagenta = 9109643,
        rgbDarkOliveGreen = 3107669,
        rgbDarkOrange = 36095,
        rgbDarkOrchid = 13382297,
        rgbDarkRed = 139,
        rgbDarkSalmon = 8034025,
        rgbDarkSeaGreen = 9419919,
        rgbDarkSlateBlue = 9125192,
        rgbDarkSlateGray = 5197615,
        rgbDarkSlateGrey = 5197615,
        rgbDarkTurquoise = 13749760,
        rgbDarkViolet = 13828244,
        rgbDeepPink = 9639167,
        rgbDeepSkyBlue = 16760576,
        rgbDimGray = 6908265,
        rgbDimGrey = 6908265,
        rgbDodgerBlue = 16748574,
        rgbFireBrick = 2237106,
        rgbFloralWhite = 15792895,
        rgbForestGreen = 2263842,
        rgbFuchsia = 16711935,
        rgbGainsboro = 14474460,
        rgbGhostWhite = 16775416,
        rgbGold = 55295,
        rgbGoldenrod = 2139610,
        rgbGray = 8421504,
        rgbGreen = 32768,
        rgbGrey = 8421504,
        rgbGreenYellow = 3145645,
        rgbHoneydew = 15794160,
        rgbHotPink = 11823615,
        rgbIndianRed = 6053069,
        rgbIndigo = 8519755,
        rgbIvory = 15794175,
        rgbKhaki = 9234160,
        rgbLavender = 16443110,
        rgbLavenderBlush = 16118015,
        rgbLawnGreen = 64636,
        rgbLemonChiffon = 13499135,
        rgbLightBlue = 15128749,
        rgbLightCoral = 8421616,
        rgbLightCyan = 9145088,
        rgbLightGoldenrodYellow = 13826810,
        rgbLightGray = 13882323,
        rgbLightGreen = 9498256,
        rgbLightGrey = 13882323,
        rgbLightPink = 12695295,
        rgbLightSalmon = 8036607,
        rgbLightSeaGreen = 11186720,
        rgbLightSkyBlue = 16436871,
        rgbLightSlateGray = 10061943,
        rgbLightSlateGrey = 10061943,
        rgbLightSteelBlue = 14599344,
        rgbLightYellow = 14745599,
        rgbLime = 65280,
        rgbLimeGreen = 3329330,
        rgbLinen = 15134970,
        rgbMaroon = 128,
        rgbMediumAquamarine = 11206502,
        rgbMediumBlue = 13434880,
        rgbMediumOrchid = 13850042,
        rgbMediumPurple = 14381203,
        rgbMediumSeaGreen = 7451452,
        rgbMediumSlateBlue = 15624315,
        rgbMediumSpringGreen = 10156544,
        rgbMediumTurquoise = 13422920,
        rgbMediumVioletRed = 8721863,
        rgbMidnightBlue = 7346457,
        rgbMintCream = 16449525,
        rgbMistyRose = 14804223,
        rgbMoccasin = 11920639,
        rgbNavajoWhite = 11394815,
        rgbNavy = 8388608,
        rgbNavyBlue = 8388608,
        rgbOldLace = 15136253,
        rgbOlive = 32896,
        rgbOliveDrab = 2330219,
        rgbOrange = 42495,
        rgbOrangeRed = 17919,
        rgbOrchid = 14053594,
        rgbPaleGoldenrod = 7071982,
        rgbPaleGreen = 10025880,
        rgbPaleTurquoise = 15658671,
        rgbPaleVioletRed = 9662683,
        rgbPapayaWhip = 14020607,
        rgbPeachPuff = 12180223,
        rgbPeru = 4163021,
        rgbPink = 13353215,
        rgbPlum = 14524637,
        rgbPowderBlue = 15130800,
        rgbPurple = 8388736,
        rgbRed = 255,
        rgbRosyBrown = 9408444,
        rgbRoyalBlue = 14772545,
        rgbSalmon = 7504122,
        rgbSandyBrown = 6333684,
        rgbSeaGreen = 5737262,
        rgbSeashell = 15660543,
        rgbSienna = 2970272,
        rgbSilver = 12632256,
        rgbSkyBlue = 15453831,
        rgbSlateBlue = 13458026,
        rgbSlateGray = 9470064,
        rgbSlateGrey = 9470064,
        rgbSnow = 16448255,
        rgbSpringGreen = 8388352,
        rgbSteelBlue = 11829830,
        rgbTan = 9221330,
        rgbTeal = 8421376,
        rgbThistle = 14204888,
        rgbTomato = 4678655,
        rgbTurquoise = 13688896,
        rgbYellow = 65535,
        rgbYellowGreen = 3329434,
        rgbViolet = 15631086,
        rgbWheat = 11788021,
        rgbWhite = 16777215,
        rgbWhiteSmoke = 16119285
    };

    enum XlStdColorScale
    {
        xlColorScaleRYG = 1,
        xlColorScaleGYR = 2,
        xlColorScaleBlackWhite = 3,
        xlColorScaleWhiteBlack = 4
    };

    enum XlConditionValueTypes
    {
        xlConditionValueNone = -1,
        xlConditionValueNumber = 0,
        xlConditionValueLowestValue = 1,
        xlConditionValueHighestValue = 2,
        xlConditionValuePercent = 3,
        xlConditionValueFormula = 4,
        xlConditionValuePercentile = 5,
        xlConditionValueAutomaticMin = 6,
        xlConditionValueAutomaticMax = 7
    };

    enum XlFormatFilterTypes
    {
        xlFilterBottom = 0,
        xlFilterTop = 1,
        xlFilterBottomPercent = 2,
        xlFilterTopPercent = 3
    };

    enum XlContainsOperator
    {
        xlContains = 0,
        xlDoesNotContain = 1,
        xlBeginsWith = 2,
        xlEndsWith = 3
    };

    enum XlAboveBelow
    {
        xlAboveAverage = 0,
        xlBelowAverage = 1,
        xlEqualAboveAverage = 2,
        xlEqualBelowAverage = 3,
        xlAboveStdDev = 4,
        xlBelowStdDev = 5
    };

    enum XlLookFor
    {
        xlLookForBlanks = 0,
        xlLookForErrors = 1,
        xlLookForFormulas = 2
    };

    enum XlTimePeriods
    {
        xlToday = 0,
        xlYesterday = 1,
        xlLast7Days = 2,
        xlThisWeek = 3,
        xlLastWeek = 4,
        xlLastMonth = 5,
        xlTomorrow = 6,
        xlNextWeek = 7,
        xlNextMonth = 8,
        xlThisMonth = 9
    };

    enum XlDupeUnique
    {
        xlUnique = 0,
        xlDuplicate = 1
    };

    enum XlTopBottom
    {
        xlTop10Top = 1,
        xlTop10Bottom = 0
    };

    enum XlIconSet
    {
        xlCustomSet = -1,
        xl3Arrows = 1,
        xl3ArrowsGray = 2,
        xl3Flags = 3,
        xl3TrafficLights1 = 4,
        xl3TrafficLights2 = 5,
        xl3Signs = 6,
        xl3Symbols = 7,
        xl3Symbols2 = 8,
        xl4Arrows = 9,
        xl4ArrowsGray = 10,
        xl4RedToBlack = 11,
        xl4CRV = 12,
        xl4TrafficLights = 13,
        xl5Arrows = 14,
        xl5ArrowsGray = 15,
        xl5CRV = 16,
        xl5Quarters = 17,
        xl3Stars = 18,
        xl3Triangles = 19,
        xl5Boxes = 20
    };

    enum XlThemeFont
    {
        xlThemeFontNone = 0,
        xlThemeFontMajor = 1,
        xlThemeFontMinor = 2
    };

    enum XlPivotLineType
    {
        xlPivotLineRegular = 0,
        xlPivotLineSubtotal = 1,
        xlPivotLineGrandTotal = 2,
        xlPivotLineBlank = 3
    };

    enum XlCheckInVersionType
    {
        xlCheckInMinorVersion = 0,
        xlCheckInMajorVersion = 1,
        xlCheckInOverwriteVersion = 2
    };

    enum XlPropertyDisplayedIn
    {
        xlDisplayPropertyInPivotTable = 1,
        xlDisplayPropertyInTooltip = 2,
        xlDisplayPropertyInPivotTableAndTooltip = 3
    };

    enum XlConnectionType
    {
        xlConnectionTypeOLEDB = 1,
        xlConnectionTypeODBC = 2,
        xlConnectionTypeXMLMAP = 3,
        xlConnectionTypeTEXT = 4,
        xlConnectionTypeWEB = 5,
        xlConnectionTypeDATAFEED = 6,
        xlConnectionTypeMODEL = 7,
        xlConnectionTypeWORKSHEET = 8,
        xlConnectionTypeNOSOURCE = 9
    };

    enum XlActionType
    {
        xlActionTypeUrl = 1,
        xlActionTypeRowset = 16,
        xlActionTypeReport = 128,
        xlActionTypeDrillthrough = 256
    };

    enum XlLayoutRowType
    {
        xlCompactRow = 0,
        xlTabularRow = 1,
        xlOutlineRow = 2
    };

    enum XlMeasurementUnits
    {
        xlInches = 0,
        xlCentimeters = 1,
        xlMillimeters = 2
    };

    enum XlPivotFilterType
    {
        xlTopCount = 1,
        xlBottomCount = 2,
        xlTopPercent = 3,
        xlBottomPercent = 4,
        xlTopSum = 5,
        xlBottomSum = 6,
        xlValueEquals = 7,
        xlValueDoesNotEqual = 8,
        xlValueIsGreaterThan = 9,
        xlValueIsGreaterThanOrEqualTo = 10,
        xlValueIsLessThan = 11,
        xlValueIsLessThanOrEqualTo = 12,
        xlValueIsBetween = 13,
        xlValueIsNotBetween = 14,
        xlCaptionEquals = 15,
        xlCaptionDoesNotEqual = 16,
        xlCaptionBeginsWith = 17,
        xlCaptionDoesNotBeginWith = 18,
        xlCaptionEndsWith = 19,
        xlCaptionDoesNotEndWith = 20,
        xlCaptionContains = 21,
        xlCaptionDoesNotContain = 22,
        xlCaptionIsGreaterThan = 23,
        xlCaptionIsGreaterThanOrEqualTo = 24,
        xlCaptionIsLessThan = 25,
        xlCaptionIsLessThanOrEqualTo = 26,
        xlCaptionIsBetween = 27,
        xlCaptionIsNotBetween = 28,
        xlSpecificDate = 29,
        xlNotSpecificDate = 30,
        xlBefore = 31,
        xlBeforeOrEqualTo = 32,
        xlAfter = 33,
        xlAfterOrEqualTo = 34,
        xlDateBetween = 35,
        xlDateNotBetween = 36,
        xlDateTomorrow = 37,
        xlDateToday = 38,
        xlDateYesterday = 39,
        xlDateNextWeek = 40,
        xlDateThisWeek = 41,
        xlDateLastWeek = 42,
        xlDateNextMonth = 43,
        xlDateThisMonth = 44,
        xlDateLastMonth = 45,
        xlDateNextQuarter = 46,
        xlDateThisQuarter = 47,
        xlDateLastQuarter = 48,
        xlDateNextYear = 49,
        xlDateThisYear = 50,
        xlDateLastYear = 51,
        xlYearToDate = 52,
        xlAllDatesInPeriodQuarter1 = 53,
        xlAllDatesInPeriodQuarter2 = 54,
        xlAllDatesInPeriodQuarter3 = 55,
        xlAllDatesInPeriodQuarter4 = 56,
        xlAllDatesInPeriodJanuary = 57,
        xlAllDatesInPeriodFebruary = 58,
        xlAllDatesInPeriodMarch = 59,
        xlAllDatesInPeriodApril = 60,
        xlAllDatesInPeriodMay = 61,
        xlAllDatesInPeriodJune = 62,
        xlAllDatesInPeriodJuly = 63,
        xlAllDatesInPeriodAugust = 64,
        xlAllDatesInPeriodSeptember = 65,
        xlAllDatesInPeriodOctober = 66,
        xlAllDatesInPeriodNovember = 67,
        xlAllDatesInPeriodDecember = 68
    };

    enum XlCredentialsMethod
    {
        xlCredentialsMethodIntegrated = 0,
        xlCredentialsMethodNone = 1,
        xlCredentialsMethodStored = 2
    };

    enum XlCubeFieldSubType
    {
        xlCubeHierarchy = 1,
        xlCubeMeasure = 2,
        xlCubeSet = 3,
        xlCubeAttribute = 4,
        xlCubeCalculatedMeasure = 5,
        xlCubeKPIValue = 6,
        xlCubeKPIGoal = 7,
        xlCubeKPIStatus = 8,
        xlCubeKPITrend = 9,
        xlCubeKPIWeight = 10,
        xlCubeImplicitMeasure = 11
    };

    enum XlSortOn
    {
        xlSortOnValues = 0,
        xlSortOnCellColor = 1,
        xlSortOnFontColor = 2,
        xlSortOnIcon = 3
    };

    enum XlDynamicFilterCriteria
    {
        xlFilterToday = 1,
        xlFilterYesterday = 2,
        xlFilterTomorrow = 3,
        xlFilterThisWeek = 4,
        xlFilterLastWeek = 5,
        xlFilterNextWeek = 6,
        xlFilterThisMonth = 7,
        xlFilterLastMonth = 8,
        xlFilterNextMonth = 9,
        xlFilterThisQuarter = 10,
        xlFilterLastQuarter = 11,
        xlFilterNextQuarter = 12,
        xlFilterThisYear = 13,
        xlFilterLastYear = 14,
        xlFilterNextYear = 15,
        xlFilterYearToDate = 16,
        xlFilterAllDatesInPeriodQuarter1 = 17,
        xlFilterAllDatesInPeriodQuarter2 = 18,
        xlFilterAllDatesInPeriodQuarter3 = 19,
        xlFilterAllDatesInPeriodQuarter4 = 20,
        xlFilterAllDatesInPeriodJanuary = 21,
        xlFilterAllDatesInPeriodFebruray = 22,
        xlFilterAllDatesInPeriodMarch = 23,
        xlFilterAllDatesInPeriodApril = 24,
        xlFilterAllDatesInPeriodMay = 25,
        xlFilterAllDatesInPeriodJune = 26,
        xlFilterAllDatesInPeriodJuly = 27,
        xlFilterAllDatesInPeriodAugust = 28,
        xlFilterAllDatesInPeriodSeptember = 29,
        xlFilterAllDatesInPeriodOctober = 30,
        xlFilterAllDatesInPeriodNovember = 31,
        xlFilterAllDatesInPeriodDecember = 32,
        xlFilterAboveAverage = 33,
        xlFilterBelowAverage = 34
    };

    enum XlFilterAllDatesInPeriod
    {
        xlFilterAllDatesInPeriodYear = 0,
        xlFilterAllDatesInPeriodMonth = 1,
        xlFilterAllDatesInPeriodDay = 2,
        xlFilterAllDatesInPeriodHour = 3,
        xlFilterAllDatesInPeriodMinute = 4,
        xlFilterAllDatesInPeriodSecond = 5
    };

    enum XlTableStyleElementType
    {
        xlWholeTable = 0,
        xlHeaderRow = 1,
        xlTotalRow = 2,
        xlGrandTotalRow = 2,
        xlFirstColumn = 3,
        xlLastColumn = 4,
        xlGrandTotalColumn = 4,
        xlRowStripe1 = 5,
        xlRowStripe2 = 6,
        xlColumnStripe1 = 7,
        xlColumnStripe2 = 8,
        xlFirstHeaderCell = 9,
        xlLastHeaderCell = 10,
        xlFirstTotalCell = 11,
        xlLastTotalCell = 12,
        xlSubtotalColumn1 = 13,
        xlSubtotalColumn2 = 14,
        xlSubtotalColumn3 = 15,
        xlSubtotalRow1 = 16,
        xlSubtotalRow2 = 17,
        xlSubtotalRow3 = 18,
        xlBlankRow = 19,
        xlColumnSubheading1 = 20,
        xlColumnSubheading2 = 21,
        xlColumnSubheading3 = 22,
        xlRowSubheading1 = 23,
        xlRowSubheading2 = 24,
        xlRowSubheading3 = 25,
        xlPageFieldLabels = 26,
        xlPageFieldValues = 27,
        xlSlicerUnselectedItemWithData = 28,
        xlSlicerUnselectedItemWithNoData = 29,
        xlSlicerSelectedItemWithData = 30,
        xlSlicerSelectedItemWithNoData = 31,
        xlSlicerHoveredUnselectedItemWithData = 32,
        xlSlicerHoveredSelectedItemWithData = 33,
        xlSlicerHoveredUnselectedItemWithNoData = 34,
        xlSlicerHoveredSelectedItemWithNoData = 35,
        xlTimelineSelectionLabel = 36,
        xlTimelineTimeLevel = 37,
        xlTimelinePeriodLabels1 = 38,
        xlTimelinePeriodLabels2 = 39,
        xlTimelineSelectedTimeBlock = 40,
        xlTimelineUnselectedTimeBlock = 41,
        xlTimelineSelectedTimeBlockSpace = 42
    };

    enum XlPivotConditionScope
    {
        xlSelectionScope = 0,
        xlFieldsScope = 1,
        xlDataFieldScope = 2
    };

    enum XlCalcFor
    {
        xlAllValues = 0,
        xlRowGroups = 1,
        xlColGroups = 2
    };

    enum XlThemeColor
    {
        xlThemeColorDark1 = 1,
        xlThemeColorLight1 = 2,
        xlThemeColorDark2 = 3,
        xlThemeColorLight2 = 4,
        xlThemeColorAccent1 = 5,
        xlThemeColorAccent2 = 6,
        xlThemeColorAccent3 = 7,
        xlThemeColorAccent4 = 8,
        xlThemeColorAccent5 = 9,
        xlThemeColorAccent6 = 10,
        xlThemeColorHyperlink = 11,
        xlThemeColorFollowedHyperlink = 12
    };

    enum XlFixedFormatType
    {
        xlTypePDF = 0,
        xlTypeXPS = 1
    };

    enum XlFixedFormatQuality
    {
        xlQualityStandard = 0,
        xlQualityMinimum = 1
    };

    enum XlChartElementPosition
    {
        xlChartElementPositionAutomatic = -4105,
        xlChartElementPositionCustom = -4114
    };

    enum XlGenerateTableRefs
    {
        xlGenerateTableRefA1 = 0,
        xlGenerateTableRefStruct = 1
    };

    enum XlGradientFillType
    {
        xlGradientFillLinear = 0,
        xlGradientFillPath = 1
    };

    enum XlThreadMode
    {
        xlThreadModeAutomatic = 0,
        xlThreadModeManual = 1
    };

    enum XlOartHorizontalOverflow
    {
        xlOartHorizontalOverflowOverflow = 0,
        xlOartHorizontalOverflowClip = 1
    };

    enum XlOartVerticalOverflow
    {
        xlOartVerticalOverflowOverflow = 0,
        xlOartVerticalOverflowClip = 1,
        xlOartVerticalOverflowEllipsis = 2
    };

    enum XlSparkScale
    {
        xlSparkScaleGroup = 1,
        xlSparkScaleSingle = 2,
        xlSparkScaleCustom = 3
    };

    enum XlSparkType
    {
        xlSparkLine = 1,
        xlSparkColumn = 2,
        xlSparkColumnStacked100 = 3
    };

    enum XlSparklineRowCol
    {
        xlSparklineNonSquare = 0,
        xlSparklineRowsSquare = 1,
        xlSparklineColumnsSquare = 2
    };

    enum XlDataBarFillType
    {
        xlDataBarFillSolid = 0,
        xlDataBarFillGradient = 1
    };

    enum XlDataBarBorderType
    {
        xlDataBarBorderNone = 0,
        xlDataBarBorderSolid = 1
    };

    enum XlDataBarAxisPosition
    {
        xlDataBarAxisAutomatic = 0,
        xlDataBarAxisMidpoint = 1,
        xlDataBarAxisNone = 2
    };

    enum XlDataBarNegativeColorType
    {
        xlDataBarColor = 0,
        xlDataBarSameAsPositive = 1
    };

    enum XlAllocation
    {
        xlManualAllocation = 1,
        xlAutomaticAllocation = 2
    };

    enum XlAllocationValue
    {
        xlAllocateValue = 1,
        xlAllocateIncrement = 2
    };

    enum XlAllocationMethod
    {
        xlEqualAllocation = 1,
        xlWeightedAllocation = 2
    };

    enum XlCellChangedState
    {
        xlCellNotChanged = 1,
        xlCellChanged = 2,
        xlCellChangeApplied = 3
    };

    enum XlPivotFieldRepeatLabels
    {
        xlDoNotRepeatLabels = 1,
        xlRepeatLabels = 2
    };

    enum XlPieSliceIndex
    {
        xlOuterCounterClockwisePoint = 1,
        xlOuterCenterPoint = 2,
        xlOuterClockwisePoint = 3,
        xlMidClockwiseRadiusPoint = 4,
        xlCenterPoint = 5,
        xlMidCounterClockwiseRadiusPoint = 6,
        xlInnerClockwisePoint = 7,
        xlInnerCenterPoint = 8,
        xlInnerCounterClockwisePoint = 9
    };

    enum XlSpanishModes
    {
        xlSpanishTuteoOnly = 0,
        xlSpanishTuteoAndVoseo = 1,
        xlSpanishVoseoOnly = 2
    };

    enum XlSlicerCrossFilterType
    {
        xlSlicerNoCrossFilter = 1,
        xlSlicerCrossFilterShowItemsWithDataAtTop = 2,
        xlSlicerCrossFilterShowItemsWithNoData = 3,
        xlSlicerCrossFilterHideButtonsWithNoData = 4
    };

    enum XlSlicerSort
    {
        xlSlicerSortDataSourceOrder = 1,
        xlSlicerSortAscending = 2,
        xlSlicerSortDescending = 3
    };

    enum XlIcon
    {
        xlIconNoCellIcon = -1,
        xlIconGreenUpArrow = 1,
        xlIconYellowSideArrow = 2,
        xlIconRedDownArrow = 3,
        xlIconGrayUpArrow = 4,
        xlIconGraySideArrow = 5,
        xlIconGrayDownArrow = 6,
        xlIconGreenFlag = 7,
        xlIconYellowFlag = 8,
        xlIconRedFlag = 9,
        xlIconGreenCircle = 10,
        xlIconYellowCircle = 11,
        xlIconRedCircleWithBorder = 12,
        xlIconBlackCircleWithBorder = 13,
        xlIconGreenTrafficLight = 14,
        xlIconYellowTrafficLight = 15,
        xlIconRedTrafficLight = 16,
        xlIconYellowTriangle = 17,
        xlIconRedDiamond = 18,
        xlIconGreenCheckSymbol = 19,
        xlIconYellowExclamationSymbol = 20,
        xlIconRedCrossSymbol = 21,
        xlIconGreenCheck = 22,
        xlIconYellowExclamation = 23,
        xlIconRedCross = 24,
        xlIconYellowUpInclineArrow = 25,
        xlIconYellowDownInclineArrow = 26,
        xlIconGrayUpInclineArrow = 27,
        xlIconGrayDownInclineArrow = 28,
        xlIconRedCircle = 29,
        xlIconPinkCircle = 30,
        xlIconGrayCircle = 31,
        xlIconBlackCircle = 32,
        xlIconCircleWithOneWhiteQuarter = 33,
        xlIconCircleWithTwoWhiteQuarters = 34,
        xlIconCircleWithThreeWhiteQuarters = 35,
        xlIconWhiteCircleAllWhiteQuarters = 36,
        xlIcon0Bars = 37,
        xlIcon1Bar = 38,
        xlIcon2Bars = 39,
        xlIcon3Bars = 40,
        xlIcon4Bars = 41,
        xlIconGoldStar = 42,
        xlIconHalfGoldStar = 43,
        xlIconSilverStar = 44,
        xlIconGreenUpTriangle = 45,
        xlIconYellowDash = 46,
        xlIconRedDownTriangle = 47,
        xlIcon4FilledBoxes = 48,
        xlIcon3FilledBoxes = 49,
        xlIcon2FilledBoxes = 50,
        xlIcon1FilledBox = 51,
        xlIcon0FilledBoxes = 52
    };

    enum XlProtectedViewCloseReason
    {
        xlProtectedViewCloseNormal = 0,
        xlProtectedViewCloseEdit = 1,
        xlProtectedViewCloseForced = 2
    };

    enum XlProtectedViewWindowState
    {
        xlProtectedViewWindowNormal = 0,
        xlProtectedViewWindowMinimized = 1,
        xlProtectedViewWindowMaximized = 2
    };

    enum XlFileValidationPivotMode
    {
        xlFileValidationPivotDefault = 0,
        xlFileValidationPivotRun = 1,
        xlFileValidationPivotSkip = 2
    };

    enum XlPieSliceLocation
    {
        xlHorizontalCoordinate = 1,
        xlVerticalCoordinate = 2
    };

    enum XlPortugueseReform
    {
        xlPortuguesePreReform = 1,
        xlPortuguesePostReform = 2,
        xlPortugueseBoth = 3
    };

    enum XlQuickAnalysisMode
    {
        xlLensOnly = 0,
        xlFormatConditions = 1,
        xlRecommendedCharts = 2,
        xlTotals = 3,
        xlTables = 4,
        xlSparklines = 5
    };

    enum XlSlicerCacheType
    {
        xlSlicer = 1,
        xlTimeline = 2
    };

    enum XlCategoryLabelLevel
    {
        xlCategoryLabelLevelNone = -3,
        xlCategoryLabelLevelCustom = -2,
        xlCategoryLabelLevelAll = -1
    };

    enum XlSeriesNameLevel
    {
        xlSeriesNameLevelNone = -3,
        xlSeriesNameLevelCustom = -2,
        xlSeriesNameLevelAll = -1
    };

    enum XlCalcMemNumberFormatType
    {
        xlNumberFormatTypeDefault = 0,
        xlNumberFormatTypeNumber = 1,
        xlNumberFormatTypePercent = 2
    };

    enum XlTimelineLevel
    {
        xlTimelineLevelYears = 0,
        xlTimelineLevelQuarters = 1,
        xlTimelineLevelMonths = 2,
        xlTimelineLevelDays = 3
    };

    enum XlFilterStatus
    {
        xlFilterStatusOK = 0,
        xlFilterStatusDateWrongOrder = 1,
        xlFilterStatusDateHasTime = 2,
        xlFilterStatusInvalidDate = 3
    };

    enum XlModelChangeSource
    {
        xlChangeByExcel = 0,
        xlChangeByPowerPivotAddIn = 1
    };
};
