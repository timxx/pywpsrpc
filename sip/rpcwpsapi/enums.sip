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
    enum WdMailSystem
    {
        wdNoMailSystem = 0,
        wdMAPI = 1,
        wdPowerTalk = 2,
        wdMAPIandPowerTalk = 3
    };

    enum WdTemplateType
    {
        wdNormalTemplate = 0,
        wdGlobalTemplate = 1,
        wdAttachedTemplate = 2
    };

    enum WdContinue
    {
        wdContinueDisabled = 0,
        wdResetList = 1,
        wdContinueList = 2
    };

    enum WdIMEMode
    {
        wdIMEModeNoControl = 0,
        wdIMEModeOn = 1,
        wdIMEModeOff = 2,
        wdIMEModeHiragana = 4,
        wdIMEModeKatakana = 5,
        wdIMEModeKatakanaHalf = 6,
        wdIMEModeAlphaFull = 7,
        wdIMEModeAlpha = 8,
        wdIMEModeHangulFull = 9,
        wdIMEModeHangul = 10
    };

    enum WdBaselineAlignment
    {
        wdBaselineAlignTop = 0,
        wdBaselineAlignCenter = 1,
        wdBaselineAlignBaseline = 2,
        wdBaselineAlignFarEast50 = 3,
        wdBaselineAlignAuto = 4
    };

    enum WdIndexFilter
    {
        wdIndexFilterNone = 0,
        wdIndexFilterAiueo = 1,
        wdIndexFilterAkasatana = 2,
        wdIndexFilterChosung = 3,
        wdIndexFilterLow = 4,
        wdIndexFilterMedium = 5,
        wdIndexFilterFull = 6
    };

    enum WdIndexSortBy
    {
        wdIndexSortByStroke = 0,
        wdIndexSortBySyllable = 1
    };

    enum WdJustificationMode
    {
        wdJustificationModeExpand = 0,
        wdJustificationModeCompress = 1,
        wdJustificationModeCompressKana = 2
    };

    enum WdFarEastLineBreakLevel
    {
        wdFarEastLineBreakLevelNormal = 0,
        wdFarEastLineBreakLevelStrict = 1,
        wdFarEastLineBreakLevelCustom = 2
    };

    enum WdMultipleWordConversionsMode
    {
        wdHangulToHanja = 0,
        wdHanjaToHangul = 1
    };

    enum WdColorIndex
    {
        wdAuto = 0,
        wdBlack = 1,
        wdBlue = 2,
        wdTurquoise = 3,
        wdBrightGreen = 4,
        wdPink = 5,
        wdRed = 6,
        wdYellow = 7,
        wdWhite = 8,
        wdDarkBlue = 9,
        wdTeal = 10,
        wdGreen = 11,
        wdViolet = 12,
        wdDarkRed = 13,
        wdDarkYellow = 14,
        wdGray50 = 15,
        wdGray25 = 16,
        wdByAuthor = -1,
        wdNoHighlight = 0
    };

    enum WdTextureIndex
    {
        wdTextureNone = 0,
        wdTexture2Pt5Percent = 25,
        wdTexture5Percent = 50,
        wdTexture7Pt5Percent = 75,
        wdTexture10Percent = 100,
        wdTexture12Pt5Percent = 125,
        wdTexture15Percent = 150,
        wdTexture17Pt5Percent = 175,
        wdTexture20Percent = 200,
        wdTexture22Pt5Percent = 225,
        wdTexture25Percent = 250,
        wdTexture27Pt5Percent = 275,
        wdTexture30Percent = 300,
        wdTexture32Pt5Percent = 325,
        wdTexture35Percent = 350,
        wdTexture37Pt5Percent = 375,
        wdTexture40Percent = 400,
        wdTexture42Pt5Percent = 425,
        wdTexture45Percent = 450,
        wdTexture47Pt5Percent = 475,
        wdTexture50Percent = 500,
        wdTexture52Pt5Percent = 525,
        wdTexture55Percent = 550,
        wdTexture57Pt5Percent = 575,
        wdTexture60Percent = 600,
        wdTexture62Pt5Percent = 625,
        wdTexture65Percent = 650,
        wdTexture67Pt5Percent = 675,
        wdTexture70Percent = 700,
        wdTexture72Pt5Percent = 725,
        wdTexture75Percent = 750,
        wdTexture77Pt5Percent = 775,
        wdTexture80Percent = 800,
        wdTexture82Pt5Percent = 825,
        wdTexture85Percent = 850,
        wdTexture87Pt5Percent = 875,
        wdTexture90Percent = 900,
        wdTexture92Pt5Percent = 925,
        wdTexture95Percent = 950,
        wdTexture97Pt5Percent = 975,
        wdTextureSolid = 1000,
        wdTextureDarkHorizontal = -1,
        wdTextureDarkVertical = -2,
        wdTextureDarkDiagonalDown = -3,
        wdTextureDarkDiagonalUp = -4,
        wdTextureDarkCross = -5,
        wdTextureDarkDiagonalCross = -6,
        wdTextureHorizontal = -7,
        wdTextureVertical = -8,
        wdTextureDiagonalDown = -9,
        wdTextureDiagonalUp = -10,
        wdTextureCross = -11,
        wdTextureDiagonalCross = -12
    };

    enum WdUnderline
    {
        wdUnderlineNone = 0,
        wdUnderlineSingle = 1,
        wdUnderlineWords = 2,
        wdUnderlineDouble = 3,
        wdUnderlineDotted = 4,
        wdUnderlineThick = 6,
        wdUnderlineDash = 7,
        wdUnderlineDotDash = 9,
        wdUnderlineDotDotDash = 10,
        wdUnderlineWavy = 11,
        wdUnderlineWavyHeavy = 27,
        wdUnderlineDottedHeavy = 20,
        wdUnderlineDashHeavy = 23,
        wdUnderlineDotDashHeavy = 25,
        wdUnderlineDotDotDashHeavy = 26,
        wdUnderlineDashLong = 39,
        wdUnderlineDashLongHeavy = 55,
        wdUnderlineWavyDouble = 43
    };

    enum WdEmphasisMark
    {
        wdEmphasisMarkNone = 0,
        wdEmphasisMarkOverSolidCircle = 1,
        wdEmphasisMarkOverComma = 2,
        wdEmphasisMarkOverWhiteCircle = 3,
        wdEmphasisMarkUnderSolidCircle = 4
    };

    enum WdInternationalIndex
    {
        wdListSeparator = 17,
        wdDecimalSeparator = 18,
        wdThousandsSeparator = 19,
        wdCurrencyCode = 20,
        wd24HourClock = 21,
        wdInternationalAM = 22,
        wdInternationalPM = 23,
        wdTimeSeparator = 24,
        wdDateSeparator = 25,
        wdProductLanguageID = 26
    };

    enum WdAutoMacros
    {
        wdAutoExec = 0,
        wdAutoNew = 1,
        wdAutoOpen = 2,
        wdAutoClose = 3,
        wdAutoExit = 4,
        wdAutoSync = 5
    };

    enum WdCaptionPosition
    {
        wdCaptionPositionAbove = 0,
        wdCaptionPositionBelow = 1
    };

    enum WdCountry
    {
        wdUS = 1,
        wdCanada = 2,
        wdLatinAmerica = 3,
        wdNetherlands = 31,
        wdFrance = 33,
        wdSpain = 34,
        wdItaly = 39,
        wdUK = 44,
        wdDenmark = 45,
        wdSweden = 46,
        wdNorway = 47,
        wdGermany = 49,
        wdPeru = 51,
        wdMexico = 52,
        wdArgentina = 54,
        wdBrazil = 55,
        wdChile = 56,
        wdVenezuela = 58,
        wdJapan = 81,
        wdTaiwan = 886,
        wdChina = 86,
        wdKorea = 82,
        wdFinland = 358,
        wdIceland = 354
    };

    enum WdHeadingSeparator
    {
        wdHeadingSeparatorNone = 0,
        wdHeadingSeparatorBlankLine = 1,
        wdHeadingSeparatorLetter = 2,
        wdHeadingSeparatorLetterLow = 3,
        wdHeadingSeparatorLetterFull = 4
    };

    enum WdSeparatorType
    {
        wdSeparatorHyphen = 0,
        wdSeparatorPeriod = 1,
        wdSeparatorColon = 2,
        wdSeparatorEmDash = 3,
        wdSeparatorEnDash = 4
    };

    enum WdPageNumberAlignment
    {
        wdAlignPageNumberLeft = 0,
        wdAlignPageNumberCenter = 1,
        wdAlignPageNumberRight = 2,
        wdAlignPageNumberInside = 3,
        wdAlignPageNumberOutside = 4
    };

    enum WdBorderType
    {
        wdBorderTop = -1,
        wdBorderLeft = -2,
        wdBorderBottom = -3,
        wdBorderRight = -4,
        wdBorderHorizontal = -5,
        wdBorderVertical = -6,
        wdBorderDiagonalDown = -7,
        wdBorderDiagonalUp = -8
    };

    enum WdFramePosition
    {
        wdFrameTop = -999999,
        wdFrameLeft = -999998,
        wdFrameBottom = -999997,
        wdFrameRight = -999996,
        wdFrameCenter = -999995,
        wdFrameInside = -999994,
        wdFrameOutside = -999993
    };

    enum WdAnimation
    {
        wdAnimationNone = 0,
        wdAnimationLasVegasLights = 1,
        wdAnimationBlinkingBackground = 2,
        wdAnimationSparkleText = 3,
        wdAnimationMarchingBlackAnts = 4,
        wdAnimationMarchingRedAnts = 5,
        wdAnimationShimmer = 6
    };

    enum WdCharacterCase
    {
        wdNextCase = -1,
        wdLowerCase = 0,
        wdUpperCase = 1,
        wdTitleWord = 2,
        wdTitleSentence = 4,
        wdToggleCase = 5,
        wdHalfWidth = 6,
        wdFullWidth = 7,
        wdKatakana = 8,
        wdHiragana = 9
    };

    enum WdSummaryMode
    {
        wdSummaryModeHighlight = 0,
        wdSummaryModeHideAllButSummary = 1,
        wdSummaryModeInsert = 2,
        wdSummaryModeCreateNew = 3
    };

    enum WdSummaryLength
    {
        wd10Sentences = -2,
        wd20Sentences = -3,
        wd100Words = -4,
        wd500Words = -5,
        wd10Percent = -6,
        wd25Percent = -7,
        wd50Percent = -8,
        wd75Percent = -9
    };

    enum WdStyleType
    {
        wdStyleTypeParagraph = 1,
        wdStyleTypeCharacter = 2,
        wdStyleTypeTable = 3,
        wdStyleTypeList = 4,
        wdStyleTypeParagraphOnly = 5,
        wdStyleTypeLinked = 6
    };

    enum WdUnits
    {
        wdCharacter = 1,
        wdWord = 2,
        wdSentence = 3,
        wdParagraph = 4,
        wdLine = 5,
        wdStory = 6,
        wdScreen = 7,
        wdSection = 8,
        wdColumn = 9,
        wdRow = 10,
        wdWindow = 11,
        wdCell = 12,
        wdCharacterFormatting = 13,
        wdParagraphFormatting = 14,
        wdTable = 15,
        wdItem = 16
    };

    enum WdGoToItem
    {
        wdGoToBookmark = -1,
        wdGoToSection = 0,
        wdGoToPage = 1,
        wdGoToTable = 2,
        wdGoToLine = 3,
        wdGoToFootnote = 4,
        wdGoToEndnote = 5,
        wdGoToComment = 6,
        wdGoToField = 7,
        wdGoToGraphic = 8,
        wdGoToObject = 9,
        wdGoToEquation = 10,
        wdGoToHeading = 11,
        wdGoToPercent = 12,
        wdGoToSpellingError = 13,
        wdGoToGrammaticalError = 14,
        wdGoToProofreadingError = 15
    };

    enum WdGoToDirection
    {
        wdGoToFirst = 1,
        wdGoToLast = -1,
        wdGoToNext = 2,
        wdGoToRelative = 2,
        wdGoToPrevious = 3,
        wdGoToAbsolute = 1
    };

    enum WdCollapseDirection
    {
        wdCollapseStart = 1,
        wdCollapseEnd = 0
    };

    enum WdRowHeightRule
    {
        wdRowHeightAuto = 0,
        wdRowHeightAtLeast = 1,
        wdRowHeightExactly = 2
    };

    enum WdFrameSizeRule
    {
        wdFrameAuto = 0,
        wdFrameAtLeast = 1,
        wdFrameExact = 2
    };

    enum WdInsertCells
    {
        wdInsertCellsShiftRight = 0,
        wdInsertCellsShiftDown = 1,
        wdInsertCellsEntireRow = 2,
        wdInsertCellsEntireColumn = 3
    };

    enum WdDeleteCells
    {
        wdDeleteCellsShiftLeft = 0,
        wdDeleteCellsShiftUp = 1,
        wdDeleteCellsEntireRow = 2,
        wdDeleteCellsEntireColumn = 3
    };

    enum WdListApplyTo
    {
        wdListApplyToWholeList = 0,
        wdListApplyToThisPointForward = 1,
        wdListApplyToSelection = 2
    };

    enum WdAlertLevel
    {
        wdAlertsNone = 0,
        wdAlertsMessageBox = -2,
        wdAlertsAll = -1
    };

    enum WdCursorType
    {
        wdCursorWait = 0,
        wdCursorIBeam = 1,
        wdCursorNormal = 2,
        wdCursorNorthwestArrow = 3
    };

    enum WdEnableCancelKey
    {
        wdCancelDisabled = 0,
        wdCancelInterrupt = 1
    };

    enum WdRulerStyle
    {
        wdAdjustNone = 0,
        wdAdjustProportional = 1,
        wdAdjustFirstColumn = 2,
        wdAdjustSameWidth = 3
    };

    enum WdParagraphAlignment
    {
        wdAlignParagraphLeft = 0,
        wdAlignParagraphCenter = 1,
        wdAlignParagraphRight = 2,
        wdAlignParagraphJustify = 3,
        wdAlignParagraphDistribute = 4,
        wdAlignParagraphJustifyMed = 5,
        wdAlignParagraphJustifyHi = 7,
        wdAlignParagraphJustifyLow = 8,
        wdAlignParagraphThaiJustify = 9
    };

    enum WdListLevelAlignment
    {
        wdListLevelAlignLeft = 0,
        wdListLevelAlignCenter = 1,
        wdListLevelAlignRight = 2
    };

    enum WdRowAlignment
    {
        wdAlignRowLeft = 0,
        wdAlignRowCenter = 1,
        wdAlignRowRight = 2
    };

    enum WdTabAlignment
    {
        wdAlignTabLeft = 0,
        wdAlignTabCenter = 1,
        wdAlignTabRight = 2,
        wdAlignTabDecimal = 3,
        wdAlignTabBar = 4,
        wdAlignTabList = 6
    };

    enum WdVerticalAlignment
    {
        wdAlignVerticalTop = 0,
        wdAlignVerticalCenter = 1,
        wdAlignVerticalJustify = 2,
        wdAlignVerticalBottom = 3
    };

    enum WdCellVerticalAlignment
    {
        wdCellAlignVerticalTop = 0,
        wdCellAlignVerticalCenter = 1,
        wdCellAlignVerticalBottom = 3
    };

    enum WdTrailingCharacter
    {
        wdTrailingTab = 0,
        wdTrailingSpace = 1,
        wdTrailingNone = 2
    };

    enum WdListGalleryType
    {
        wdBulletGallery = 1,
        wdNumberGallery = 2,
        wdOutlineNumberGallery = 3
    };

    enum WdListNumberStyle
    {
        wdListNumberStyleArabic = 0,
        wdListNumberStyleUppercaseRoman = 1,
        wdListNumberStyleLowercaseRoman = 2,
        wdListNumberStyleUppercaseLetter = 3,
        wdListNumberStyleLowercaseLetter = 4,
        wdListNumberStyleOrdinal = 5,
        wdListNumberStyleCardinalText = 6,
        wdListNumberStyleOrdinalText = 7,
        wdListNumberStyleKanji = 10,
        wdListNumberStyleKanjiDigit = 11,
        wdListNumberStyleAiueoHalfWidth = 12,
        wdListNumberStyleIrohaHalfWidth = 13,
        wdListNumberStyleArabicFullWidth = 14,
        wdListNumberStyleKanjiTraditional = 16,
        wdListNumberStyleKanjiTraditional2 = 17,
        wdListNumberStyleNumberInCircle = 18,
        wdListNumberStyleAiueo = 20,
        wdListNumberStyleIroha = 21,
        wdListNumberStyleArabicLZ = 22,
        wdListNumberStyleBullet = 23,
        wdListNumberStyleGanada = 24,
        wdListNumberStyleChosung = 25,
        wdListNumberStyleGBNum1 = 26,
        wdListNumberStyleGBNum2 = 27,
        wdListNumberStyleGBNum3 = 28,
        wdListNumberStyleGBNum4 = 29,
        wdListNumberStyleZodiac1 = 30,
        wdListNumberStyleZodiac2 = 31,
        wdListNumberStyleZodiac3 = 32,
        wdListNumberStyleTradChinNum1 = 33,
        wdListNumberStyleTradChinNum2 = 34,
        wdListNumberStyleTradChinNum3 = 35,
        wdListNumberStyleTradChinNum4 = 36,
        wdListNumberStyleSimpChinNum1 = 37,
        wdListNumberStyleSimpChinNum2 = 38,
        wdListNumberStyleSimpChinNum3 = 39,
        wdListNumberStyleSimpChinNum4 = 40,
        wdListNumberStyleHanjaRead = 41,
        wdListNumberStyleHanjaReadDigit = 42,
        wdListNumberStyleHangul = 43,
        wdListNumberStyleHanja = 44,
        wdListNumberStyleHebrew1 = 45,
        wdListNumberStyleArabic1 = 46,
        wdListNumberStyleHebrew2 = 47,
        wdListNumberStyleArabic2 = 48,
        wdListNumberStyleHindiLetter1 = 49,
        wdListNumberStyleHindiLetter2 = 50,
        wdListNumberStyleHindiArabic = 51,
        wdListNumberStyleHindiCardinalText = 52,
        wdListNumberStyleThaiLetter = 53,
        wdListNumberStyleThaiArabic = 54,
        wdListNumberStyleThaiCardinalText = 55,
        wdListNumberStyleVietCardinalText = 56,
        wdListNumberStyleLowercaseRussian = 58,
        wdListNumberStyleUppercaseRussian = 59,
        wdListNumberStyleLowercaseGreek = 60,
        wdListNumberStyleUppercaseGreek = 61,
        wdListNumberStyleArabicLZ2 = 62,
        wdListNumberStyleArabicLZ3 = 63,
        wdListNumberStyleArabicLZ4 = 64,
        wdListNumberStyleLowercaseTurkish = 65,
        wdListNumberStyleUppercaseTurkish = 66,
        wdListNumberStyleLowercaseBulgarian = 67,
        wdListNumberStyleUppercaseBulgarian = 68,
        wdListNumberStylePictureBullet = 249,
        wdListNumberStyleLegal = 253,
        wdListNumberStyleLegalLZ = 254,
        wdListNumberStyleNone = 255
    };

    enum WdNoteNumberStyle
    {
        wdNoteNumberStyleArabic = 0,
        wdNoteNumberStyleUppercaseRoman = 1,
        wdNoteNumberStyleLowercaseRoman = 2,
        wdNoteNumberStyleUppercaseLetter = 3,
        wdNoteNumberStyleLowercaseLetter = 4,
        wdNoteNumberStyleSymbol = 9,
        wdNoteNumberStyleArabicFullWidth = 14,
        wdNoteNumberStyleKanji = 10,
        wdNoteNumberStyleKanjiDigit = 11,
        wdNoteNumberStyleKanjiTraditional = 16,
        wdNoteNumberStyleNumberInCircle = 18,
        wdNoteNumberStyleHanjaRead = 41,
        wdNoteNumberStyleHanjaReadDigit = 42,
        wdNoteNumberStyleTradChinNum1 = 33,
        wdNoteNumberStyleTradChinNum2 = 34,
        wdNoteNumberStyleSimpChinNum1 = 37,
        wdNoteNumberStyleSimpChinNum2 = 38,
        wdNoteNumberStyleHebrewLetter1 = 45,
        wdNoteNumberStyleArabicLetter1 = 46,
        wdNoteNumberStyleHebrewLetter2 = 47,
        wdNoteNumberStyleArabicLetter2 = 48,
        wdNoteNumberStyleHindiLetter1 = 49,
        wdNoteNumberStyleHindiLetter2 = 50,
        wdNoteNumberStyleHindiArabic = 51,
        wdNoteNumberStyleHindiCardinalText = 52,
        wdNoteNumberStyleThaiLetter = 53,
        wdNoteNumberStyleThaiArabic = 54,
        wdNoteNumberStyleThaiCardinalText = 55,
        wdNoteNumberStyleVietCardinalText = 56
    };

    enum WdCaptionNumberStyle
    {
        wdCaptionNumberStyleArabic = 0,
        wdCaptionNumberStyleUppercaseRoman = 1,
        wdCaptionNumberStyleLowercaseRoman = 2,
        wdCaptionNumberStyleUppercaseLetter = 3,
        wdCaptionNumberStyleLowercaseLetter = 4,
        wdCaptionNumberStyleArabicFullWidth = 14,
        wdCaptionNumberStyleKanji = 10,
        wdCaptionNumberStyleKanjiDigit = 11,
        wdCaptionNumberStyleKanjiTraditional = 16,
        wdCaptionNumberStyleNumberInCircle = 18,
        wdCaptionNumberStyleGanada = 24,
        wdCaptionNumberStyleChosung = 25,
        wdCaptionNumberStyleZodiac1 = 30,
        wdCaptionNumberStyleZodiac2 = 31,
        wdCaptionNumberStyleHanjaRead = 41,
        wdCaptionNumberStyleHanjaReadDigit = 42,
        wdCaptionNumberStyleTradChinNum2 = 34,
        wdCaptionNumberStyleTradChinNum3 = 35,
        wdCaptionNumberStyleSimpChinNum2 = 38,
        wdCaptionNumberStyleSimpChinNum3 = 39,
        wdCaptionNumberStyleHebrewLetter1 = 45,
        wdCaptionNumberStyleArabicLetter1 = 46,
        wdCaptionNumberStyleHebrewLetter2 = 47,
        wdCaptionNumberStyleArabicLetter2 = 48,
        wdCaptionNumberStyleHindiLetter1 = 49,
        wdCaptionNumberStyleHindiLetter2 = 50,
        wdCaptionNumberStyleHindiArabic = 51,
        wdCaptionNumberStyleHindiCardinalText = 52,
        wdCaptionNumberStyleThaiLetter = 53,
        wdCaptionNumberStyleThaiArabic = 54,
        wdCaptionNumberStyleThaiCardinalText = 55,
        wdCaptionNumberStyleVietCardinalText = 56
    };

    enum WdPageNumberStyle
    {
        wdPageNumberStyleArabic = 0,
        wdPageNumberStyleUppercaseRoman = 1,
        wdPageNumberStyleLowercaseRoman = 2,
        wdPageNumberStyleUppercaseLetter = 3,
        wdPageNumberStyleLowercaseLetter = 4,
        wdPageNumberStyleArabicFullWidth = 14,
        wdPageNumberStyleKanji = 10,
        wdPageNumberStyleKanjiDigit = 11,
        wdPageNumberStyleKanjiTraditional = 16,
        wdPageNumberStyleNumberInCircle = 18,
        wdPageNumberStyleHanjaRead = 41,
        wdPageNumberStyleHanjaReadDigit = 42,
        wdPageNumberStyleTradChinNum1 = 33,
        wdPageNumberStyleTradChinNum2 = 34,
        wdPageNumberStyleSimpChinNum1 = 37,
        wdPageNumberStyleSimpChinNum2 = 38,
        wdPageNumberStyleHebrewLetter1 = 45,
        wdPageNumberStyleArabicLetter1 = 46,
        wdPageNumberStyleHebrewLetter2 = 47,
        wdPageNumberStyleArabicLetter2 = 48,
        wdPageNumberStyleHindiLetter1 = 49,
        wdPageNumberStyleHindiLetter2 = 50,
        wdPageNumberStyleHindiArabic = 51,
        wdPageNumberStyleHindiCardinalText = 52,
        wdPageNumberStyleThaiLetter = 53,
        wdPageNumberStyleThaiArabic = 54,
        wdPageNumberStyleThaiCardinalText = 55,
        wdPageNumberStyleVietCardinalText = 56,
        wdPageNumberStyleNumberInDash = 57
    };

    enum WdStatistic
    {
        wdStatisticWords = 0,
        wdStatisticLines = 1,
        wdStatisticPages = 2,
        wdStatisticCharacters = 3,
        wdStatisticParagraphs = 4,
        wdStatisticCharactersWithSpaces = 5,
        wdStatisticFarEastCharacters = 6
    };

    enum WdBuiltInProperty
    {
        wdPropertyTitle = 1,
        wdPropertySubject = 2,
        wdPropertyAuthor = 3,
        wdPropertyKeywords = 4,
        wdPropertyComments = 5,
        wdPropertyTemplate = 6,
        wdPropertyLastAuthor = 7,
        wdPropertyRevision = 8,
        wdPropertyAppName = 9,
        wdPropertyTimeLastPrinted = 10,
        wdPropertyTimeCreated = 11,
        wdPropertyTimeLastSaved = 12,
        wdPropertyVBATotalEdit = 13,
        wdPropertyPages = 14,
        wdPropertyWords = 15,
        wdPropertyCharacters = 16,
        wdPropertySecurity = 17,
        wdPropertyCategory = 18,
        wdPropertyFormat = 19,
        wdPropertyManager = 20,
        wdPropertyCompany = 21,
        wdPropertyBytes = 22,
        wdPropertyLines = 23,
        wdPropertyParas = 24,
        wdPropertySlides = 25,
        wdPropertyNotes = 26,
        wdPropertyHiddenSlides = 27,
        wdPropertyMMClips = 28,
        wdPropertyHyperlinkBase = 29,
        wdPropertyCharsWSpaces = 30
    };

    enum WdLineSpacing
    {
        wdLineSpaceSingle = 0,
        wdLineSpace1pt5 = 1,
        wdLineSpaceDouble = 2,
        wdLineSpaceAtLeast = 3,
        wdLineSpaceExactly = 4,
        wdLineSpaceMultiple = 5
    };

    enum WdNumberType
    {
        wdNumberParagraph = 1,
        wdNumberListNum = 2,
        wdNumberAllNumbers = 3
    };

    enum WdListType
    {
        wdListNoNumbering = 0,
        wdListListNumOnly = 1,
        wdListBullet = 2,
        wdListSimpleNumbering = 3,
        wdListOutlineNumbering = 4,
        wdListMixedNumbering = 5,
        wdListPictureBullet = 6
    };

    enum WdStoryType
    {
        wdMainTextStory = 1,
        wdFootnotesStory = 2,
        wdEndnotesStory = 3,
        wdCommentsStory = 4,
        wdTextFrameStory = 5,
        wdEvenPagesHeaderStory = 6,
        wdPrimaryHeaderStory = 7,
        wdEvenPagesFooterStory = 8,
        wdPrimaryFooterStory = 9,
        wdFirstPageHeaderStory = 10,
        wdFirstPageFooterStory = 11,
        wdFootnoteSeparatorStory = 12,
        wdFootnoteContinuationSeparatorStory = 13,
        wdFootnoteContinuationNoticeStory = 14,
        wdEndnoteSeparatorStory = 15,
        wdEndnoteContinuationSeparatorStory = 16,
        wdEndnoteContinuationNoticeStory = 17
    };

    enum WdSaveFormat
    {
        wdFormatDocument = 0,
        wdFormatDocument97 = 0,
        wdFormatTemplate = 1,
        wdFormatTemplate97 = 1,
        wdFormatText = 2,
        wdFormatTextLineBreaks = 3,
        wdFormatDOSText = 4,
        wdFormatDOSTextLineBreaks = 5,
        wdFormatRTF = 6,
        wdFormatUnicodeText = 7,
        wdFormatEncodedText = 7,
        wdFormatHTML = 8,
        wdFormatWebArchive = 9,
        wdFormatFilteredHTML = 10,
        wdFormatXML = 11,
        wdFormatXMLDocument = 12,
        wdFormatXMLDocumentMacroEnabled = 13,
        wdFormatXMLTemplate = 14,
        wdFormatXMLTemplateMacroEnabled = 15,
        wdFormatDocumentDefault = 16,
        wdFormatPDF = 17,
        wdFormatXPS = 18,
        wdFormatFlatXML = 19,
        wdFormatFlatXMLMacroEnabled = 20,
        wdFormatFlatXMLTemplate = 21,
        wdFormatFlatXMLTemplateMacroEnabled = 22,
        wdFormatOpenDocumentText = 23,
        wdFormatStrictOpenXMLDocument = 24
    };

    enum WdOpenFormat
    {
        wdOpenFormatAuto = 0,
        wdOpenFormatDocument = 1,
        wdOpenFormatTemplate = 2,
        wdOpenFormatRTF = 3,
        wdOpenFormatText = 4,
        wdOpenFormatUnicodeText = 5,
        wdOpenFormatEncodedText = 5,
        wdOpenFormatAllWord = 6,
        wdOpenFormatWebPages = 7,
        wdOpenFormatXML = 8,
        wdOpenFormatXMLDocument = 9,
        wdOpenFormatXMLDocumentMacroEnabled = 10,
        wdOpenFormatXMLTemplate = 11,
        wdOpenFormatXMLTemplateMacroEnabled = 12,
        wdOpenFormatDocument97 = 1,
        wdOpenFormatTemplate97 = 2,
        wdOpenFormatAllWordTemplates = 13,
        wdOpenFormatXMLDocumentSerialized = 14,
        wdOpenFormatXMLDocumentMacroEnabledSerialized = 15,
        wdOpenFormatXMLTemplateSerialized = 16,
        wdOpenFormatXMLTemplateMacroEnabledSerialized = 17,
        wdOpenFormatOpenDocumentText = 18
    };

    enum WdHeaderFooterIndex
    {
        wdHeaderFooterPrimary = 1,
        wdHeaderFooterFirstPage = 2,
        wdHeaderFooterEvenPages = 3
    };

    enum WdTocFormat
    {
        wdTOCTemplate = 0,
        wdTOCClassic = 1,
        wdTOCDistinctive = 2,
        wdTOCFancy = 3,
        wdTOCModern = 4,
        wdTOCFormal = 5,
        wdTOCSimple = 6
    };

    enum WdTofFormat
    {
        wdTOFTemplate = 0,
        wdTOFClassic = 1,
        wdTOFDistinctive = 2,
        wdTOFCentered = 3,
        wdTOFFormal = 4,
        wdTOFSimple = 5
    };

    enum WdToaFormat
    {
        wdTOATemplate = 0,
        wdTOAClassic = 1,
        wdTOADistinctive = 2,
        wdTOAFormal = 3,
        wdTOASimple = 4
    };

    enum WdLineStyle
    {
        wdLineStyleNone = 0,
        wdLineStyleSingle = 1,
        wdLineStyleDot = 2,
        wdLineStyleDashSmallGap = 3,
        wdLineStyleDashLargeGap = 4,
        wdLineStyleDashDot = 5,
        wdLineStyleDashDotDot = 6,
        wdLineStyleDouble = 7,
        wdLineStyleTriple = 8,
        wdLineStyleThinThickSmallGap = 9,
        wdLineStyleThickThinSmallGap = 10,
        wdLineStyleThinThickThinSmallGap = 11,
        wdLineStyleThinThickMedGap = 12,
        wdLineStyleThickThinMedGap = 13,
        wdLineStyleThinThickThinMedGap = 14,
        wdLineStyleThinThickLargeGap = 15,
        wdLineStyleThickThinLargeGap = 16,
        wdLineStyleThinThickThinLargeGap = 17,
        wdLineStyleSingleWavy = 18,
        wdLineStyleDoubleWavy = 19,
        wdLineStyleDashDotStroked = 20,
        wdLineStyleEmboss3D = 21,
        wdLineStyleEngrave3D = 22,
        wdLineStyleOutset = 23,
        wdLineStyleInset = 24
    };

    enum WdLineWidth
    {
        wdLineWidth025pt = 2,
        wdLineWidth050pt = 4,
        wdLineWidth075pt = 6,
        wdLineWidth100pt = 8,
        wdLineWidth150pt = 12,
        wdLineWidth225pt = 18,
        wdLineWidth300pt = 24,
        wdLineWidth450pt = 36,
        wdLineWidth600pt = 48
    };

    enum WdBreakType
    {
        wdSectionBreakNextPage = 2,
        wdSectionBreakContinuous = 3,
        wdSectionBreakEvenPage = 4,
        wdSectionBreakOddPage = 5,
        wdLineBreak = 6,
        wdPageBreak = 7,
        wdColumnBreak = 8,
        wdLineBreakClearLeft = 9,
        wdLineBreakClearRight = 10,
        wdTextWrappingBreak = 11
    };

    enum WdTabLeader
    {
        wdTabLeaderSpaces = 0,
        wdTabLeaderDots = 1,
        wdTabLeaderDashes = 2,
        wdTabLeaderLines = 3,
        wdTabLeaderHeavy = 4,
        wdTabLeaderMiddleDot = 5
    };

    enum WdMeasurementUnits
    {
        wdInches = 0,
        wdCentimeters = 1,
        wdMillimeters = 2,
        wdPoints = 3,
        wdPicas = 4
    };

    enum WdDropPosition
    {
        wdDropNone = 0,
        wdDropNormal = 1,
        wdDropMargin = 2
    };

    enum WdNumberingRule
    {
        wdRestartContinuous = 0,
        wdRestartSection = 1,
        wdRestartPage = 2
    };

    enum WdFootnoteLocation
    {
        wdBottomOfPage = 0,
        wdBeneathText = 1
    };

    enum WdEndnoteLocation
    {
        wdEndOfSection = 0,
        wdEndOfDocument = 1
    };

    enum WdSortSeparator
    {
        wdSortSeparateByTabs = 0,
        wdSortSeparateByCommas = 1,
        wdSortSeparateByDefaultTableSeparator = 2
    };

    enum WdTableFieldSeparator
    {
        wdSeparateByParagraphs = 0,
        wdSeparateByTabs = 1,
        wdSeparateByCommas = 2,
        wdSeparateByDefaultListSeparator = 3
    };

    enum WdSortFieldType
    {
        wdSortFieldAlphanumeric = 0,
        wdSortFieldNumeric = 1,
        wdSortFieldDate = 2,
        wdSortFieldSyllable = 3,
        wdSortFieldJapanJIS = 4,
        wdSortFieldStroke = 5,
        wdSortFieldKoreaKS = 6
    };

    enum WdSortOrder
    {
        wdSortOrderAscending = 0,
        wdSortOrderDescending = 1
    };

    enum WdTableFormat
    {
        wdTableFormatNone = 0,
        wdTableFormatSimple1 = 1,
        wdTableFormatSimple2 = 2,
        wdTableFormatSimple3 = 3,
        wdTableFormatClassic1 = 4,
        wdTableFormatClassic2 = 5,
        wdTableFormatClassic3 = 6,
        wdTableFormatClassic4 = 7,
        wdTableFormatColorful1 = 8,
        wdTableFormatColorful2 = 9,
        wdTableFormatColorful3 = 10,
        wdTableFormatColumns1 = 11,
        wdTableFormatColumns2 = 12,
        wdTableFormatColumns3 = 13,
        wdTableFormatColumns4 = 14,
        wdTableFormatColumns5 = 15,
        wdTableFormatGrid1 = 16,
        wdTableFormatGrid2 = 17,
        wdTableFormatGrid3 = 18,
        wdTableFormatGrid4 = 19,
        wdTableFormatGrid5 = 20,
        wdTableFormatGrid6 = 21,
        wdTableFormatGrid7 = 22,
        wdTableFormatGrid8 = 23,
        wdTableFormatList1 = 24,
        wdTableFormatList2 = 25,
        wdTableFormatList3 = 26,
        wdTableFormatList4 = 27,
        wdTableFormatList5 = 28,
        wdTableFormatList6 = 29,
        wdTableFormatList7 = 30,
        wdTableFormatList8 = 31,
        wdTableFormat3DEffects1 = 32,
        wdTableFormat3DEffects2 = 33,
        wdTableFormat3DEffects3 = 34,
        wdTableFormatContemporary = 35,
        wdTableFormatElegant = 36,
        wdTableFormatProfessional = 37,
        wdTableFormatSubtle1 = 38,
        wdTableFormatSubtle2 = 39,
        wdTableFormatWeb1 = 40,
        wdTableFormatWeb2 = 41,
        wdTableFormatWeb3 = 42
    };

    enum WdTableFormatApply
    {
        wdTableFormatApplyBorders = 1,
        wdTableFormatApplyShading = 2,
        wdTableFormatApplyFont = 4,
        wdTableFormatApplyColor = 8,
        wdTableFormatApplyAutoFit = 16,
        wdTableFormatApplyHeadingRows = 32,
        wdTableFormatApplyLastRow = 64,
        wdTableFormatApplyFirstColumn = 128,
        wdTableFormatApplyLastColumn = 256
    };

    enum WdLanguageID
    {
        wdLanguageNone = 0,
        wdNoProofing = 1024,
        wdAfrikaans = 1078,
        wdAlbanian = 1052,
        wdAmharic = 1118,
        wdArabicAlgeria = 5121,
        wdArabicBahrain = 15361,
        wdArabicEgypt = 3073,
        wdArabicIraq = 2049,
        wdArabicJordan = 11265,
        wdArabicKuwait = 13313,
        wdArabicLebanon = 12289,
        wdArabicLibya = 4097,
        wdArabicMorocco = 6145,
        wdArabicOman = 8193,
        wdArabicQatar = 16385,
        wdArabic = 1025,
        wdArabicSyria = 10241,
        wdArabicTunisia = 7169,
        wdArabicUAE = 14337,
        wdArabicYemen = 9217,
        wdArmenian = 1067,
        wdAssamese = 1101,
        wdAzeriCyrillic = 2092,
        wdAzeriLatin = 1068,
        wdBasque = 1069,
        wdByelorussian = 1059,
        wdBengali = 1093,
        wdBulgarian = 1026,
        wdBurmese = 1109,
        wdCatalan = 1027,
        wdCherokee = 1116,
        wdChineseHongKongSAR = 3076,
        wdChineseMacaoSAR = 5124,
        wdSimplifiedChinese = 2052,
        wdChineseSingapore = 4100,
        wdTraditionalChinese = 1028,
        wdCroatian = 1050,
        wdCzech = 1029,
        wdDanish = 1030,
        wdDivehi = 1125,
        wdBelgianDutch = 2067,
        wdDutch = 1043,
        wdEdo = 1126,
        wdEnglishAUS = 3081,
        wdEnglishBelize = 10249,
        wdEnglishCanadian = 4105,
        wdEnglishCaribbean = 9225,
        wdEnglishIreland = 6153,
        wdEnglishJamaica = 8201,
        wdEnglishNewZealand = 5129,
        wdEnglishPhilippines = 13321,
        wdEnglishSouthAfrica = 7177,
        wdEnglishTrinidadTobago = 11273,
        wdEnglishUK = 2057,
        wdEnglishUS = 1033,
        wdEnglishZimbabwe = 12297,
        wdEnglishIndonesia = 14345,
        wdEstonian = 1061,
        wdFaeroese = 1080,
        wdPersian = 1065,
        wdFilipino = 1124,
        wdFinnish = 1035,
        wdFulfulde = 1127,
        wdBelgianFrench = 2060,
        wdFrenchCameroon = 11276,
        wdFrenchCanadian = 3084,
        wdFrenchCotedIvoire = 12300,
        wdFrench = 1036,
        wdFrenchLuxembourg = 5132,
        wdFrenchMali = 13324,
        wdFrenchMonaco = 6156,
        wdFrenchReunion = 8204,
        wdFrenchSenegal = 10252,
        wdFrenchMorocco = 14348,
        wdFrenchHaiti = 15372,
        wdSwissFrench = 4108,
        wdFrenchWestIndies = 7180,
        wdFrenchCongoDRC = 9228,
        wdFrisianNetherlands = 1122,
        wdGaelicIreland = 2108,
        wdGaelicScotland = 1084,
        wdGalician = 1110,
        wdGeorgian = 1079,
        wdGermanAustria = 3079,
        wdGerman = 1031,
        wdGermanLiechtenstein = 5127,
        wdGermanLuxembourg = 4103,
        wdSwissGerman = 2055,
        wdGreek = 1032,
        wdGuarani = 1140,
        wdGujarati = 1095,
        wdHausa = 1128,
        wdHawaiian = 1141,
        wdHebrew = 1037,
        wdHindi = 1081,
        wdHungarian = 1038,
        wdIbibio = 1129,
        wdIcelandic = 1039,
        wdIgbo = 1136,
        wdIndonesian = 1057,
        wdInuktitut = 1117,
        wdItalian = 1040,
        wdSwissItalian = 2064,
        wdJapanese = 1041,
        wdKannada = 1099,
        wdKanuri = 1137,
        wdKashmiri = 1120,
        wdKazakh = 1087,
        wdKhmer = 1107,
        wdKirghiz = 1088,
        wdKonkani = 1111,
        wdKorean = 1042,
        wdKyrgyz = 1088,
        wdLao = 1108,
        wdLatin = 1142,
        wdLatvian = 1062,
        wdLithuanian = 1063,
        wdMacedonianFYROM = 1071,
        wdMalaysian = 1086,
        wdMalayBruneiDarussalam = 2110,
        wdMalayalam = 1100,
        wdMaltese = 1082,
        wdManipuri = 1112,
        wdMarathi = 1102,
        wdMongolian = 1104,
        wdNepali = 1121,
        wdNorwegianBokmol = 1044,
        wdNorwegianNynorsk = 2068,
        wdOriya = 1096,
        wdOromo = 1138,
        wdPashto = 1123,
        wdPolish = 1045,
        wdPortugueseBrazil = 1046,
        wdPortuguese = 2070,
        wdPunjabi = 1094,
        wdRhaetoRomanic = 1047,
        wdRomanianMoldova = 2072,
        wdRomanian = 1048,
        wdRussianMoldova = 2073,
        wdRussian = 1049,
        wdSamiLappish = 1083,
        wdSanskrit = 1103,
        wdSerbianCyrillic = 3098,
        wdSerbianLatin = 2074,
        wdSinhalese = 1115,
        wdSindhi = 1113,
        wdSindhiPakistan = 2137,
        wdSlovak = 1051,
        wdSlovenian = 1060,
        wdSomali = 1143,
        wdSorbian = 1070,
        wdSpanishArgentina = 11274,
        wdSpanishBolivia = 16394,
        wdSpanishChile = 13322,
        wdSpanishColombia = 9226,
        wdSpanishCostaRica = 5130,
        wdSpanishDominicanRepublic = 7178,
        wdSpanishEcuador = 12298,
        wdSpanishElSalvador = 17418,
        wdSpanishGuatemala = 4106,
        wdSpanishHonduras = 18442,
        wdMexicanSpanish = 2058,
        wdSpanishNicaragua = 19466,
        wdSpanishPanama = 6154,
        wdSpanishParaguay = 15370,
        wdSpanishPeru = 10250,
        wdSpanishPuertoRico = 20490,
        wdSpanishModernSort = 3082,
        wdSpanish = 1034,
        wdSpanishUruguay = 14346,
        wdSpanishVenezuela = 8202,
        wdSesotho = 1072,
        wdSutu = 1072,
        wdSwahili = 1089,
        wdSwedishFinland = 2077,
        wdSwedish = 1053,
        wdSyriac = 1114,
        wdTajik = 1064,
        wdTamazight = 1119,
        wdTamazightLatin = 2143,
        wdTamil = 1097,
        wdTatar = 1092,
        wdTelugu = 1098,
        wdThai = 1054,
        wdTibetan = 1105,
        wdTigrignaEthiopic = 1139,
        wdTigrignaEritrea = 2163,
        wdTsonga = 1073,
        wdTswana = 1074,
        wdTurkish = 1055,
        wdTurkmen = 1090,
        wdUkrainian = 1058,
        wdUrdu = 1056,
        wdUzbekCyrillic = 2115,
        wdUzbekLatin = 1091,
        wdVenda = 1075,
        wdVietnamese = 1066,
        wdWelsh = 1106,
        wdXhosa = 1076,
        wdYi = 1144,
        wdYiddish = 1085,
        wdYoruba = 1130,
        wdZulu = 1077
    };

    enum WdFieldType
    {
        wdFieldEmpty = -1,
        wdFieldRef = 3,
        wdFieldIndexEntry = 4,
        wdFieldFootnoteRef = 5,
        wdFieldSet = 6,
        wdFieldIf = 7,
        wdFieldIndex = 8,
        wdFieldTOCEntry = 9,
        wdFieldStyleRef = 10,
        wdFieldRefDoc = 11,
        wdFieldSequence = 12,
        wdFieldTOC = 13,
        wdFieldInfo = 14,
        wdFieldTitle = 15,
        wdFieldSubject = 16,
        wdFieldAuthor = 17,
        wdFieldKeyWord = 18,
        wdFieldComments = 19,
        wdFieldLastSavedBy = 20,
        wdFieldCreateDate = 21,
        wdFieldSaveDate = 22,
        wdFieldPrintDate = 23,
        wdFieldRevisionNum = 24,
        wdFieldEditTime = 25,
        wdFieldNumPages = 26,
        wdFieldNumWords = 27,
        wdFieldNumChars = 28,
        wdFieldFileName = 29,
        wdFieldTemplate = 30,
        wdFieldDate = 31,
        wdFieldTime = 32,
        wdFieldPage = 33,
        wdFieldExpression = 34,
        wdFieldQuote = 35,
        wdFieldInclude = 36,
        wdFieldPageRef = 37,
        wdFieldAsk = 38,
        wdFieldFillIn = 39,
        wdFieldData = 40,
        wdFieldNext = 41,
        wdFieldNextIf = 42,
        wdFieldSkipIf = 43,
        wdFieldMergeRec = 44,
        wdFieldDDE = 45,
        wdFieldDDEAuto = 46,
        wdFieldGlossary = 47,
        wdFieldPrint = 48,
        wdFieldFormula = 49,
        wdFieldGoToButton = 50,
        wdFieldMacroButton = 51,
        wdFieldAutoNumOutline = 52,
        wdFieldAutoNumLegal = 53,
        wdFieldAutoNum = 54,
        wdFieldImport = 55,
        wdFieldLink = 56,
        wdFieldSymbol = 57,
        wdFieldEmbed = 58,
        wdFieldMergeField = 59,
        wdFieldUserName = 60,
        wdFieldUserInitials = 61,
        wdFieldUserAddress = 62,
        wdFieldBarCode = 63,
        wdFieldDocVariable = 64,
        wdFieldSection = 65,
        wdFieldSectionPages = 66,
        wdFieldIncludePicture = 67,
        wdFieldIncludeText = 68,
        wdFieldFileSize = 69,
        wdFieldFormTextInput = 70,
        wdFieldFormCheckBox = 71,
        wdFieldNoteRef = 72,
        wdFieldTOA = 73,
        wdFieldTOAEntry = 74,
        wdFieldMergeSeq = 75,
        wdFieldPrivate = 77,
        wdFieldDatabase = 78,
        wdFieldAutoText = 79,
        wdFieldCompare = 80,
        wdFieldAddin = 81,
        wdFieldSubscriber = 82,
        wdFieldFormDropDown = 83,
        wdFieldAdvance = 84,
        wdFieldDocProperty = 85,
        wdFieldOCX = 87,
        wdFieldHyperlink = 88,
        wdFieldAutoTextList = 89,
        wdFieldListNum = 90,
        wdFieldHTMLActiveX = 91,
        wdFieldBidiOutline = 92,
        wdFieldAddressBlock = 93,
        wdFieldGreetingLine = 94,
        wdFieldShape = 95,
        wdFieldCitation = 96,
        wdFieldBibliography = 97,
        wdFieldMergeBarcode = 98,
        wdFieldDisplayBarcode = 99
    };

    enum WdBuiltinStyle
    {
        wdStyleNormal = -1,
        wdStyleEnvelopeAddress = -37,
        wdStyleEnvelopeReturn = -38,
        wdStyleBodyText = -67,
        wdStyleHeading1 = -2,
        wdStyleHeading2 = -3,
        wdStyleHeading3 = -4,
        wdStyleHeading4 = -5,
        wdStyleHeading5 = -6,
        wdStyleHeading6 = -7,
        wdStyleHeading7 = -8,
        wdStyleHeading8 = -9,
        wdStyleHeading9 = -10,
        wdStyleIndex1 = -11,
        wdStyleIndex2 = -12,
        wdStyleIndex3 = -13,
        wdStyleIndex4 = -14,
        wdStyleIndex5 = -15,
        wdStyleIndex6 = -16,
        wdStyleIndex7 = -17,
        wdStyleIndex8 = -18,
        wdStyleIndex9 = -19,
        wdStyleTOC1 = -20,
        wdStyleTOC2 = -21,
        wdStyleTOC3 = -22,
        wdStyleTOC4 = -23,
        wdStyleTOC5 = -24,
        wdStyleTOC6 = -25,
        wdStyleTOC7 = -26,
        wdStyleTOC8 = -27,
        wdStyleTOC9 = -28,
        wdStyleNormalIndent = -29,
        wdStyleFootnoteText = -30,
        wdStyleCommentText = -31,
        wdStyleHeader = -32,
        wdStyleFooter = -33,
        wdStyleIndexHeading = -34,
        wdStyleCaption = -35,
        wdStyleTableOfFigures = -36,
        wdStyleFootnoteReference = -39,
        wdStyleCommentReference = -40,
        wdStyleLineNumber = -41,
        wdStylePageNumber = -42,
        wdStyleEndnoteReference = -43,
        wdStyleEndnoteText = -44,
        wdStyleTableOfAuthorities = -45,
        wdStyleMacroText = -46,
        wdStyleTOAHeading = -47,
        wdStyleList = -48,
        wdStyleListBullet = -49,
        wdStyleListNumber = -50,
        wdStyleList2 = -51,
        wdStyleList3 = -52,
        wdStyleList4 = -53,
        wdStyleList5 = -54,
        wdStyleListBullet2 = -55,
        wdStyleListBullet3 = -56,
        wdStyleListBullet4 = -57,
        wdStyleListBullet5 = -58,
        wdStyleListNumber2 = -59,
        wdStyleListNumber3 = -60,
        wdStyleListNumber4 = -61,
        wdStyleListNumber5 = -62,
        wdStyleTitle = -63,
        wdStyleClosing = -64,
        wdStyleSignature = -65,
        wdStyleDefaultParagraphFont = -66,
        wdStyleBodyTextIndent = -68,
        wdStyleListContinue = -69,
        wdStyleListContinue2 = -70,
        wdStyleListContinue3 = -71,
        wdStyleListContinue4 = -72,
        wdStyleListContinue5 = -73,
        wdStyleMessageHeader = -74,
        wdStyleSubtitle = -75,
        wdStyleSalutation = -76,
        wdStyleDate = -77,
        wdStyleBodyTextFirstIndent = -78,
        wdStyleBodyTextFirstIndent2 = -79,
        wdStyleNoteHeading = -80,
        wdStyleBodyText2 = -81,
        wdStyleBodyText3 = -82,
        wdStyleBodyTextIndent2 = -83,
        wdStyleBodyTextIndent3 = -84,
        wdStyleBlockQuotation = -85,
        wdStyleHyperlink = -86,
        wdStyleHyperlinkFollowed = -87,
        wdStyleStrong = -88,
        wdStyleEmphasis = -89,
        wdStyleNavPane = -90,
        wdStylePlainText = -91,
        wdStyleHtmlNormal = -95,
        wdStyleHtmlAcronym = -96,
        wdStyleHtmlAddress = -97,
        wdStyleHtmlCite = -98,
        wdStyleHtmlCode = -99,
        wdStyleHtmlDfn = -100,
        wdStyleHtmlKbd = -101,
        wdStyleHtmlPre = -102,
        wdStyleHtmlSamp = -103,
        wdStyleHtmlTt = -104,
        wdStyleHtmlVar = -105,
        wdStyleNormalTable = -106,
        wdStyleNormalObject = -158,
        wdStyleTableLightShading = -159,
        wdStyleTableLightList = -160,
        wdStyleTableLightGrid = -161,
        wdStyleTableMediumShading1 = -162,
        wdStyleTableMediumShading2 = -163,
        wdStyleTableMediumList1 = -164,
        wdStyleTableMediumList2 = -165,
        wdStyleTableMediumGrid1 = -166,
        wdStyleTableMediumGrid2 = -167,
        wdStyleTableMediumGrid3 = -168,
        wdStyleTableDarkList = -169,
        wdStyleTableColorfulShading = -170,
        wdStyleTableColorfulList = -171,
        wdStyleTableColorfulGrid = -172,
        wdStyleTableLightShadingAccent1 = -173,
        wdStyleTableLightListAccent1 = -174,
        wdStyleTableLightGridAccent1 = -175,
        wdStyleTableMediumShading1Accent1 = -176,
        wdStyleTableMediumShading2Accent1 = -177,
        wdStyleTableMediumList1Accent1 = -178,
        wdStyleListParagraph = -180,
        wdStyleQuote = -181,
        wdStyleIntenseQuote = -182,
        wdStyleSubtleEmphasis = -261,
        wdStyleIntenseEmphasis = -262,
        wdStyleSubtleReference = -263,
        wdStyleIntenseReference = -264,
        wdStyleBookTitle = -265,
        wdStyleBibliography = -266,
        wdStyleTocHeading = -267
    };

    enum WdWordDialogTab
    {
        wdDialogToolsOptionsTabView = 204,
        wdDialogToolsOptionsTabGeneral = 203,
        wdDialogToolsOptionsTabEdit = 224,
        wdDialogToolsOptionsTabPrint = 208,
        wdDialogToolsOptionsTabSave = 209,
        wdDialogToolsOptionsTabProofread = 211,
        wdDialogToolsOptionsTabTrackChanges = 386,
        wdDialogToolsOptionsTabUserInfo = 213,
        wdDialogToolsOptionsTabCompatibility = 525,
        wdDialogToolsOptionsTabTypography = 739,
        wdDialogToolsOptionsTabFileLocations = 225,
        wdDialogToolsOptionsTabFuzzy = 790,
        wdDialogToolsOptionsTabHangulHanjaConversion = 786,
        wdDialogToolsOptionsTabBidi = 1029,
        wdDialogToolsOptionsTabSecurity = 1361,
        wdDialogFilePageSetupTabMargins = 150000,
        wdDialogFilePageSetupTabPaper = 150001,
        wdDialogFilePageSetupTabLayout = 150003,
        wdDialogFilePageSetupTabCharsLines = 150004,
        wdDialogInsertSymbolTabSymbols = 200000,
        wdDialogInsertSymbolTabSpecialCharacters = 200001,
        wdDialogNoteOptionsTabAllFootnotes = 300000,
        wdDialogNoteOptionsTabAllEndnotes = 300001,
        wdDialogInsertIndexAndTablesTabIndex = 400000,
        wdDialogInsertIndexAndTablesTabTableOfContents = 400001,
        wdDialogInsertIndexAndTablesTabTableOfFigures = 400002,
        wdDialogInsertIndexAndTablesTabTableOfAuthorities = 400003,
        wdDialogOrganizerTabStyles = 500000,
        wdDialogOrganizerTabAutoText = 500001,
        wdDialogOrganizerTabCommandBars = 500002,
        wdDialogOrganizerTabMacros = 500003,
        wdDialogFormatFontTabFont = 600000,
        wdDialogFormatFontTabCharacterSpacing = 600001,
        wdDialogFormatFontTabAnimation = 600002,
        wdDialogFormatBordersAndShadingTabBorders = 700000,
        wdDialogFormatBordersAndShadingTabPageBorder = 700001,
        wdDialogFormatBordersAndShadingTabShading = 700002,
        wdDialogToolsEnvelopesAndLabelsTabEnvelopes = 800000,
        wdDialogToolsEnvelopesAndLabelsTabLabels = 800001,
        wdDialogFormatParagraphTabIndentsAndSpacing = 1000000,
        wdDialogFormatParagraphTabTextFlow = 1000001,
        wdDialogFormatParagraphTabTeisai = 1000002,
        wdDialogFormatDrawingObjectTabColorsAndLines = 1200000,
        wdDialogFormatDrawingObjectTabSize = 1200001,
        wdDialogFormatDrawingObjectTabPosition = 1200002,
        wdDialogFormatDrawingObjectTabWrapping = 1200003,
        wdDialogFormatDrawingObjectTabPicture = 1200004,
        wdDialogFormatDrawingObjectTabTextbox = 1200005,
        wdDialogFormatDrawingObjectTabWeb = 1200006,
        wdDialogFormatDrawingObjectTabHR = 1200007,
        wdDialogToolsAutoCorrectExceptionsTabFirstLetter = 1400000,
        wdDialogToolsAutoCorrectExceptionsTabInitialCaps = 1400001,
        wdDialogToolsAutoCorrectExceptionsTabHangulAndAlphabet = 1400002,
        wdDialogToolsAutoCorrectExceptionsTabIac = 1400003,
        wdDialogFormatBulletsAndNumberingTabBulleted = 1500000,
        wdDialogFormatBulletsAndNumberingTabNumbered = 1500001,
        wdDialogFormatBulletsAndNumberingTabOutlineNumbered = 1500002,
        wdDialogLetterWizardTabLetterFormat = 1600000,
        wdDialogLetterWizardTabRecipientInfo = 1600001,
        wdDialogLetterWizardTabOtherElements = 1600002,
        wdDialogLetterWizardTabSenderInfo = 1600003,
        wdDialogToolsAutoManagerTabAutoCorrect = 1700000,
        wdDialogToolsAutoManagerTabAutoFormatAsYouType = 1700001,
        wdDialogToolsAutoManagerTabAutoText = 1700002,
        wdDialogToolsAutoManagerTabAutoFormat = 1700003,
        wdDialogToolsAutoManagerTabSmartTags = 1700004,
        wdDialogTablePropertiesTabTable = 1800000,
        wdDialogTablePropertiesTabRow = 1800001,
        wdDialogTablePropertiesTabColumn = 1800002,
        wdDialogTablePropertiesTabCell = 1800003,
        wdDialogEmailOptionsTabSignature = 1900000,
        wdDialogEmailOptionsTabStationary = 1900001,
        wdDialogEmailOptionsTabQuoting = 1900002,
        wdDialogWebOptionsBrowsers = 2000000,
        wdDialogWebOptionsGeneral = 2000000,
        wdDialogWebOptionsFiles = 2000001,
        wdDialogWebOptionsPictures = 2000002,
        wdDialogWebOptionsEncoding = 2000003,
        wdDialogWebOptionsFonts = 2000004,
        wdDialogToolsOptionsTabAcetate = 1266,
        wdDialogTemplates = 2100000,
        wdDialogTemplatesXMLSchema = 2100001,
        wdDialogTemplatesXMLExpansionPacks = 2100002,
        wdDialogTemplatesLinkedCSS = 2100003,
        wdDialogStyleManagementTabEdit = 2200000,
        wdDialogStyleManagementTabRecommend = 2200001,
        wdDialogStyleManagementTabRestrict = 2200002
    };

    enum WdWordDialogTabHID
    {
        wdDialogFilePageSetupTabPaperSize = 150001,
        wdDialogFilePageSetupTabPaperSource = 150002
    };

    enum WdWordDialog
    {
        wdDialogHelpAbout = 9,
        wdDialogHelpWordPerfectHelp = 10,
        wdDialogDocumentStatistics = 78,
        wdDialogFileNew = 79,
        wdDialogFileOpen = 80,
        wdDialogMailMergeOpenDataSource = 81,
        wdDialogMailMergeOpenHeaderSource = 82,
        wdDialogFileSaveAs = 84,
        wdDialogFileSummaryInfo = 86,
        wdDialogToolsTemplates = 87,
        wdDialogFilePrint = 88,
        wdDialogFilePrintSetup = 97,
        wdDialogFileFind = 99,
        wdDialogFormatAddrFonts = 103,
        wdDialogEditPasteSpecial = 111,
        wdDialogEditFind = 112,
        wdDialogEditReplace = 117,
        wdDialogEditStyle = 120,
        wdDialogEditLinks = 124,
        wdDialogEditObject = 125,
        wdDialogTableToText = 128,
        wdDialogTextToTable = 127,
        wdDialogTableInsertTable = 129,
        wdDialogTableInsertCells = 130,
        wdDialogTableInsertRow = 131,
        wdDialogTableDeleteCells = 133,
        wdDialogTableSplitCells = 137,
        wdDialogTableRowHeight = 142,
        wdDialogTableColumnWidth = 143,
        wdDialogToolsCustomize = 152,
        wdDialogInsertBreak = 159,
        wdDialogInsertSymbol = 162,
        wdDialogInsertPicture = 163,
        wdDialogInsertFile = 164,
        wdDialogInsertDateTime = 165,
        wdDialogInsertField = 166,
        wdDialogInsertMergeField = 167,
        wdDialogInsertBookmark = 168,
        wdDialogMarkIndexEntry = 169,
        wdDialogInsertIndex = 170,
        wdDialogInsertTableOfContents = 171,
        wdDialogInsertObject = 172,
        wdDialogToolsCreateEnvelope = 173,
        wdDialogFormatFont = 174,
        wdDialogFormatParagraph = 175,
        wdDialogFormatSectionLayout = 176,
        wdDialogFormatColumns = 177,
        wdDialogFileDocumentLayout = 178,
        wdDialogFilePageSetup = 178,
        wdDialogFormatTabs = 179,
        wdDialogFormatStyle = 180,
        wdDialogFormatDefineStyleFont = 181,
        wdDialogFormatDefineStylePara = 182,
        wdDialogFormatDefineStyleTabs = 183,
        wdDialogFormatDefineStyleFrame = 184,
        wdDialogFormatDefineStyleBorders = 185,
        wdDialogFormatDefineStyleLang = 186,
        wdDialogFormatPicture = 187,
        wdDialogToolsLanguage = 188,
        wdDialogFormatBordersAndShading = 189,
        wdDialogFormatFrame = 190,
        wdDialogToolsThesaurus = 194,
        wdDialogToolsHyphenation = 195,
        wdDialogToolsBulletsNumbers = 196,
        wdDialogToolsHighlightChanges = 197,
        wdDialogToolsRevisions = 197,
        wdDialogToolsCompareDocuments = 198,
        wdDialogTableSort = 199,
        wdDialogToolsOptionsGeneral = 203,
        wdDialogToolsOptionsView = 204,
        wdDialogToolsAdvancedSettings = 206,
        wdDialogToolsOptionsPrint = 208,
        wdDialogToolsOptionsSave = 209,
        wdDialogToolsOptionsSpellingAndGrammar = 211,
        wdDialogToolsOptionsUserInfo = 213,
        wdDialogToolsMacroRecord = 214,
        wdDialogToolsMacro = 215,
        wdDialogWindowActivate = 220,
        wdDialogFormatRetAddrFonts = 221,
        wdDialogOrganizer = 222,
        wdDialogToolsOptionsEdit = 224,
        wdDialogToolsOptionsFileLocations = 225,
        wdDialogToolsWordCount = 228,
        wdDialogControlRun = 235,
        wdDialogInsertPageNumbers = 294,
        wdDialogFormatPageNumber = 298,
        wdDialogCopyFile = 300,
        wdDialogFormatChangeCase = 322,
        wdDialogUpdateTOC = 331,
        wdDialogInsertDatabase = 341,
        wdDialogTableFormula = 348,
        wdDialogFormFieldOptions = 353,
        wdDialogInsertCaption = 357,
        wdDialogInsertCaptionNumbering = 358,
        wdDialogInsertAutoCaption = 359,
        wdDialogFormFieldHelp = 361,
        wdDialogInsertCrossReference = 367,
        wdDialogInsertFootnote = 370,
        wdDialogNoteOptions = 373,
        wdDialogToolsAutoCorrect = 378,
        wdDialogToolsOptionsTrackChanges = 386,
        wdDialogConvertObject = 392,
        wdDialogInsertAddCaption = 402,
        wdDialogConnect = 420,
        wdDialogToolsCustomizeKeyboard = 432,
        wdDialogToolsCustomizeMenus = 433,
        wdDialogToolsMergeDocuments = 435,
        wdDialogMarkTableOfContentsEntry = 442,
        wdDialogFileMacPageSetupGX = 444,
        wdDialogFilePrintOneCopy = 445,
        wdDialogEditFrame = 458,
        wdDialogMarkCitation = 463,
        wdDialogTableOfContentsOptions = 470,
        wdDialogInsertTableOfAuthorities = 471,
        wdDialogInsertTableOfFigures = 472,
        wdDialogInsertIndexAndTables = 473,
        wdDialogInsertFormField = 483,
        wdDialogFormatDropCap = 488,
        wdDialogToolsCreateLabels = 489,
        wdDialogToolsProtectDocument = 503,
        wdDialogFormatStyleGallery = 505,
        wdDialogToolsAcceptRejectChanges = 506,
        wdDialogHelpWordPerfectHelpOptions = 511,
        wdDialogToolsUnprotectDocument = 521,
        wdDialogToolsOptionsCompatibility = 525,
        wdDialogTableOfCaptionsOptions = 551,
        wdDialogTableAutoFormat = 563,
        wdDialogMailMergeFindRecord = 569,
        wdDialogReviewAfmtRevisions = 570,
        wdDialogViewZoom = 577,
        wdDialogToolsProtectSection = 578,
        wdDialogFontSubstitution = 581,
        wdDialogInsertSubdocument = 583,
        wdDialogNewToolbar = 586,
        wdDialogToolsEnvelopesAndLabels = 607,
        wdDialogFormatCallout = 610,
        wdDialogTableFormatCell = 612,
        wdDialogToolsCustomizeMenuBar = 615,
        wdDialogFileRoutingSlip = 624,
        wdDialogEditTOACategory = 625,
        wdDialogToolsManageFields = 631,
        wdDialogDrawSnapToGrid = 633,
        wdDialogDrawAlign = 634,
        wdDialogMailMergeCreateDataSource = 642,
        wdDialogMailMergeCreateHeaderSource = 643,
        wdDialogMailMerge = 676,
        wdDialogMailMergeCheck = 677,
        wdDialogMailMergeHelper = 680,
        wdDialogMailMergeQueryOptions = 681,
        wdDialogFileMacPageSetup = 685,
        wdDialogListCommands = 723,
        wdDialogEditCreatePublisher = 732,
        wdDialogEditSubscribeTo = 733,
        wdDialogEditPublishOptions = 735,
        wdDialogEditSubscribeOptions = 736,
        wdDialogFileMacCustomPageSetupGX = 737,
        wdDialogToolsOptionsTypography = 739,
        wdDialogToolsAutoCorrectExceptions = 762,
        wdDialogToolsOptionsAutoFormatAsYouType = 778,
        wdDialogMailMergeUseAddressBook = 779,
        wdDialogToolsHangulHanjaConversion = 784,
        wdDialogToolsOptionsFuzzy = 790,
        wdDialogEditGoToOld = 811,
        wdDialogInsertNumber = 812,
        wdDialogLetterWizard = 821,
        wdDialogFormatBulletsAndNumbering = 824,
        wdDialogToolsSpellingAndGrammar = 828,
        wdDialogToolsCreateDirectory = 833,
        wdDialogTableWrapping = 854,
        wdDialogFormatTheme = 855,
        wdDialogTableProperties = 861,
        wdDialogEmailOptions = 863,
        wdDialogCreateAutoText = 872,
        wdDialogToolsAutoSummarize = 874,
        wdDialogToolsGrammarSettings = 885,
        wdDialogEditGoTo = 896,
        wdDialogWebOptions = 898,
        wdDialogInsertHyperlink = 925,
        wdDialogToolsAutoManager = 915,
        wdDialogFileVersions = 945,
        wdDialogToolsOptionsAutoFormat = 959,
        wdDialogFormatDrawingObject = 960,
        wdDialogToolsOptions = 974,
        wdDialogFitText = 983,
        wdDialogEditAutoText = 985,
        wdDialogPhoneticGuide = 986,
        wdDialogToolsDictionary = 989,
        wdDialogFileSaveVersion = 1007,
        wdDialogToolsOptionsBidi = 1029,
        wdDialogFrameSetProperties = 1074,
        wdDialogTableTableOptions = 1080,
        wdDialogTableCellOptions = 1081,
        wdDialogIMESetDefault = 1094,
        wdDialogTCSCTranslator = 1156,
        wdDialogHorizontalInVertical = 1160,
        wdDialogTwoLinesInOne = 1161,
        wdDialogFormatEncloseCharacters = 1162,
        wdDialogConsistencyChecker = 1121,
        wdDialogToolsOptionsSmartTag = 1395,
        wdDialogFormatStylesCustom = 1248,
        wdDialogCSSLinks = 1261,
        wdDialogInsertWebComponent = 1324,
        wdDialogToolsOptionsEditCopyPaste = 1356,
        wdDialogToolsOptionsSecurity = 1361,
        wdDialogSearch = 1363,
        wdDialogShowRepairs = 1381,
        wdDialogMailMergeInsertAsk = 4047,
        wdDialogMailMergeInsertFillIn = 4048,
        wdDialogMailMergeInsertIf = 4049,
        wdDialogMailMergeInsertNextIf = 4053,
        wdDialogMailMergeInsertSet = 4054,
        wdDialogMailMergeInsertSkipIf = 4055,
        wdDialogMailMergeFieldMapping = 1304,
        wdDialogMailMergeInsertAddressBlock = 1305,
        wdDialogMailMergeInsertGreetingLine = 1306,
        wdDialogMailMergeInsertFields = 1307,
        wdDialogMailMergeRecipients = 1308,
        wdDialogMailMergeFindRecipient = 1326,
        wdDialogMailMergeSetDocumentType = 1339,
        wdDialogLabelOptions = 1367,
        wdDialogXMLElementAttributes = 1460,
        wdDialogSchemaLibrary = 1417,
        wdDialogPermission = 1469,
        wdDialogMyPermission = 1437,
        wdDialogXMLOptions = 1425,
        wdDialogFormattingRestrictions = 1427,
        wdDialogSourceManager = 1920,
        wdDialogCreateSource = 1922,
        wdDialogDocumentInspector = 1482,
        wdDialogStyleManagement = 1948,
        wdDialogInsertSource = 2120,
        wdDialogOMathRecognizedFunctions = 2165,
        wdDialogInsertPlaceholder = 2348,
        wdDialogBuildingBlockOrganizer = 2067,
        wdDialogContentControlProperties = 2394,
        wdDialogCompatibilityChecker = 2439,
        wdDialogExportAsFixedFormat = 2349,
        wdDialogFileNew2007 = 1116
    };

    enum WdFieldKind
    {
        wdFieldKindNone = 0,
        wdFieldKindHot = 1,
        wdFieldKindWarm = 2,
        wdFieldKindCold = 3
    };

    enum WdTextFormFieldType
    {
        wdRegularText = 0,
        wdNumberText = 1,
        wdDateText = 2,
        wdCurrentDateText = 3,
        wdCurrentTimeText = 4,
        wdCalculationText = 5
    };

    enum WdChevronConvertRule
    {
        wdNeverConvert = 0,
        wdAlwaysConvert = 1,
        wdAskToNotConvert = 2,
        wdAskToConvert = 3
    };

    enum WdMailMergeMainDocType
    {
        wdNotAMergeDocument = -1,
        wdFormLetters = 0,
        wdMailingLabels = 1,
        wdEnvelopes = 2,
        wdCatalog = 3,
        wdEMail = 4,
        wdFax = 5,
        wdDirectory = 3
    };

    enum WdMailMergeState
    {
        wdNormalDocument = 0,
        wdMainDocumentOnly = 1,
        wdMainAndDataSource = 2,
        wdMainAndHeader = 3,
        wdMainAndSourceAndHeader = 4,
        wdDataSource = 5
    };

    enum WdMailMergeDestination
    {
        wdSendToNewDocument = 0,
        wdSendToPrinter = 1,
        wdSendToEmail = 2,
        wdSendToFax = 3
    };

    enum WdMailMergeActiveRecord
    {
        wdNoActiveRecord = -1,
        wdNextRecord = -2,
        wdPreviousRecord = -3,
        wdFirstRecord = -4,
        wdLastRecord = -5,
        wdFirstDataSourceRecord = -6,
        wdLastDataSourceRecord = -7,
        wdNextDataSourceRecord = -8,
        wdPreviousDataSourceRecord = -9
    };

    enum WdMailMergeDefaultRecord
    {
        wdDefaultFirstRecord = 1,
        wdDefaultLastRecord = -16
    };

    enum WdMailMergeDataSource
    {
        wdNoMergeInfo = -1,
        wdMergeInfoFromWord = 0,
        wdMergeInfoFromAccessDDE = 1,
        wdMergeInfoFromExcelDDE = 2,
        wdMergeInfoFromMSQueryDDE = 3,
        wdMergeInfoFromODBC = 4,
        wdMergeInfoFromODSO = 5
    };

    enum WdMailMergeComparison
    {
        wdMergeIfEqual = 0,
        wdMergeIfNotEqual = 1,
        wdMergeIfLessThan = 2,
        wdMergeIfGreaterThan = 3,
        wdMergeIfLessThanOrEqual = 4,
        wdMergeIfGreaterThanOrEqual = 5,
        wdMergeIfIsBlank = 6,
        wdMergeIfIsNotBlank = 7
    };

    enum WdBookmarkSortBy
    {
        wdSortByName = 0,
        wdSortByLocation = 1
    };

    enum WdWindowState
    {
        wdWindowStateNormal = 0,
        wdWindowStateMaximize = 1,
        wdWindowStateMinimize = 2
    };

    enum WdPictureLinkType
    {
        wdLinkNone = 0,
        wdLinkDataInDoc = 1,
        wdLinkDataOnDisk = 2
    };

    enum WdLinkType
    {
        wdLinkTypeOLE = 0,
        wdLinkTypePicture = 1,
        wdLinkTypeText = 2,
        wdLinkTypeReference = 3,
        wdLinkTypeInclude = 4,
        wdLinkTypeImport = 5,
        wdLinkTypeDDE = 6,
        wdLinkTypeDDEAuto = 7,
        wdLinkTypeChart = 8
    };

    enum WdWindowType
    {
        wdWindowDocument = 0,
        wdWindowTemplate = 1
    };

    enum WdViewType
    {
        wdNormalView = 1,
        wdOutlineView = 2,
        wdPrintView = 3,
        wdPrintPreview = 4,
        wdMasterView = 5,
        wdWebView = 6,
        wdReadingView = 7,
        wdConflictView = 8
    };

    enum WdSeekView
    {
        wdSeekMainDocument = 0,
        wdSeekPrimaryHeader = 1,
        wdSeekFirstPageHeader = 2,
        wdSeekEvenPagesHeader = 3,
        wdSeekPrimaryFooter = 4,
        wdSeekFirstPageFooter = 5,
        wdSeekEvenPagesFooter = 6,
        wdSeekFootnotes = 7,
        wdSeekEndnotes = 8,
        wdSeekCurrentPageHeader = 9,
        wdSeekCurrentPageFooter = 10
    };

    enum WdSpecialPane
    {
        wdPaneNone = 0,
        wdPanePrimaryHeader = 1,
        wdPaneFirstPageHeader = 2,
        wdPaneEvenPagesHeader = 3,
        wdPanePrimaryFooter = 4,
        wdPaneFirstPageFooter = 5,
        wdPaneEvenPagesFooter = 6,
        wdPaneFootnotes = 7,
        wdPaneEndnotes = 8,
        wdPaneFootnoteContinuationNotice = 9,
        wdPaneFootnoteContinuationSeparator = 10,
        wdPaneFootnoteSeparator = 11,
        wdPaneEndnoteContinuationNotice = 12,
        wdPaneEndnoteContinuationSeparator = 13,
        wdPaneEndnoteSeparator = 14,
        wdPaneComments = 15,
        wdPaneCurrentPageHeader = 16,
        wdPaneCurrentPageFooter = 17,
        wdPaneRevisions = 18,
        wdPaneRevisionsHoriz = 19,
        wdPaneRevisionsVert = 20
    };

    enum WdPageFit
    {
        wdPageFitNone = 0,
        wdPageFitFullPage = 1,
        wdPageFitBestFit = 2,
        wdPageFitTextFit = 3
    };

    enum WdBrowseTarget
    {
        wdBrowsePage = 1,
        wdBrowseSection = 2,
        wdBrowseComment = 3,
        wdBrowseFootnote = 4,
        wdBrowseEndnote = 5,
        wdBrowseField = 6,
        wdBrowseTable = 7,
        wdBrowseGraphic = 8,
        wdBrowseHeading = 9,
        wdBrowseEdit = 10,
        wdBrowseFind = 11,
        wdBrowseGoTo = 12
    };

    enum WdPaperTray
    {
        wdPrinterDefaultBin = 0,
        wdPrinterUpperBin = 1,
        wdPrinterOnlyBin = 1,
        wdPrinterLowerBin = 2,
        wdPrinterMiddleBin = 3,
        wdPrinterManualFeed = 4,
        wdPrinterEnvelopeFeed = 5,
        wdPrinterManualEnvelopeFeed = 6,
        wdPrinterAutomaticSheetFeed = 7,
        wdPrinterTractorFeed = 8,
        wdPrinterSmallFormatBin = 9,
        wdPrinterLargeFormatBin = 10,
        wdPrinterLargeCapacityBin = 11,
        wdPrinterPaperCassette = 14,
        wdPrinterFormSource = 15
    };

    enum WdOrientation
    {
        wdOrientPortrait = 0,
        wdOrientLandscape = 1
    };

    enum WdSelectionType
    {
        wdNoSelection = 0,
        wdSelectionIP = 1,
        wdSelectionNormal = 2,
        wdSelectionFrame = 3,
        wdSelectionColumn = 4,
        wdSelectionRow = 5,
        wdSelectionBlock = 6,
        wdSelectionInlineShape = 7,
        wdSelectionShape = 8
    };

    enum WdCaptionLabelID
    {
        wdCaptionFigure = -1,
        wdCaptionTable = -2,
        wdCaptionEquation = -3
    };

    enum WdReferenceType
    {
        wdRefTypeNumberedItem = 0,
        wdRefTypeHeading = 1,
        wdRefTypeBookmark = 2,
        wdRefTypeFootnote = 3,
        wdRefTypeEndnote = 4
    };

    enum WdReferenceKind
    {
        wdContentText = -1,
        wdNumberRelativeContext = -2,
        wdNumberNoContext = -3,
        wdNumberFullContext = -4,
        wdEntireCaption = 2,
        wdOnlyLabelAndNumber = 3,
        wdOnlyCaptionText = 4,
        wdFootnoteNumber = 5,
        wdEndnoteNumber = 6,
        wdPageNumber = 7,
        wdPosition = 15,
        wdFootnoteNumberFormatted = 16,
        wdEndnoteNumberFormatted = 17
    };

    enum WdIndexFormat
    {
        wdIndexTemplate = 0,
        wdIndexClassic = 1,
        wdIndexFancy = 2,
        wdIndexModern = 3,
        wdIndexBulleted = 4,
        wdIndexFormal = 5,
        wdIndexSimple = 6
    };

    enum WdIndexType
    {
        wdIndexIndent = 0,
        wdIndexRunin = 1
    };

    enum WdRevisionsWrap
    {
        wdWrapNever = 0,
        wdWrapAlways = 1,
        wdWrapAsk = 2
    };

    enum WdRevisionType
    {
        wdNoRevision = 0,
        wdRevisionInsert = 1,
        wdRevisionDelete = 2,
        wdRevisionProperty = 3,
        wdRevisionParagraphNumber = 4,
        wdRevisionDisplayField = 5,
        wdRevisionReconcile = 6,
        wdRevisionConflict = 7,
        wdRevisionStyle = 8,
        wdRevisionReplace = 9,
        wdRevisionParagraphProperty = 10,
        wdRevisionTableProperty = 11,
        wdRevisionSectionProperty = 12,
        wdRevisionStyleDefinition = 13,
        wdRevisionMovedFrom = 14,
        wdRevisionMovedTo = 15,
        wdRevisionCellInsertion = 16,
        wdRevisionCellDeletion = 17,
        wdRevisionCellMerge = 18,
        wdRevisionCellSplit = 19,
        wdRevisionConflictInsert = 20,
        wdRevisionConflictDelete = 21
    };

    enum WdRoutingSlipDelivery
    {
        wdOneAfterAnother = 0,
        wdAllAtOnce = 1
    };

    enum WdRoutingSlipStatus
    {
        wdNotYetRouted = 0,
        wdRouteInProgress = 1,
        wdRouteComplete = 2
    };

    enum WdSectionStart
    {
        wdSectionContinuous = 0,
        wdSectionNewColumn = 1,
        wdSectionNewPage = 2,
        wdSectionEvenPage = 3,
        wdSectionOddPage = 4
    };

    enum WdSaveOptions
    {
        wdDoNotSaveChanges = 0,
        wdSaveChanges = -1,
        wdPromptToSaveChanges = -2
    };

    enum WdDocumentKind
    {
        wdDocumentNotSpecified = 0,
        wdDocumentLetter = 1,
        wdDocumentEmail = 2
    };

    enum WdDocumentType
    {
        wdTypeDocument = 0,
        wdTypeTemplate = 1,
        wdTypeFrameset = 2
    };

    enum WdOriginalFormat
    {
        wdWordDocument = 0,
        wdOriginalDocumentFormat = 1,
        wdPromptUser = 2
    };

    enum WdRelocate
    {
        wdRelocateUp = 0,
        wdRelocateDown = 1
    };

    enum WdInsertedTextMark
    {
        wdInsertedTextMarkNone = 0,
        wdInsertedTextMarkBold = 1,
        wdInsertedTextMarkItalic = 2,
        wdInsertedTextMarkUnderline = 3,
        wdInsertedTextMarkDoubleUnderline = 4,
        wdInsertedTextMarkColorOnly = 5,
        wdInsertedTextMarkStrikeThrough = 6,
        wdInsertedTextMarkDoubleStrikeThrough = 7
    };

    enum WdRevisedLinesMark
    {
        wdRevisedLinesMarkNone = 0,
        wdRevisedLinesMarkLeftBorder = 1,
        wdRevisedLinesMarkRightBorder = 2,
        wdRevisedLinesMarkOutsideBorder = 3
    };

    enum WdDeletedTextMark
    {
        wdDeletedTextMarkHidden = 0,
        wdDeletedTextMarkStrikeThrough = 1,
        wdDeletedTextMarkCaret = 2,
        wdDeletedTextMarkPound = 3,
        wdDeletedTextMarkNone = 4,
        wdDeletedTextMarkBold = 5,
        wdDeletedTextMarkItalic = 6,
        wdDeletedTextMarkUnderline = 7,
        wdDeletedTextMarkDoubleUnderline = 8,
        wdDeletedTextMarkColorOnly = 9,
        wdDeletedTextMarkDoubleStrikeThrough = 10
    };

    enum WdRevisedPropertiesMark
    {
        wdRevisedPropertiesMarkNone = 0,
        wdRevisedPropertiesMarkBold = 1,
        wdRevisedPropertiesMarkItalic = 2,
        wdRevisedPropertiesMarkUnderline = 3,
        wdRevisedPropertiesMarkDoubleUnderline = 4,
        wdRevisedPropertiesMarkColorOnly = 5,
        wdRevisedPropertiesMarkStrikeThrough = 6,
        wdRevisedPropertiesMarkDoubleStrikeThrough = 7
    };

    enum WdFieldShading
    {
        wdFieldShadingNever = 0,
        wdFieldShadingAlways = 1,
        wdFieldShadingWhenSelected = 2
    };

    enum WdDefaultFilePath
    {
        wdDocumentsPath = 0,
        wdPicturesPath = 1,
        wdUserTemplatesPath = 2,
        wdWorkgroupTemplatesPath = 3,
        wdUserOptionsPath = 4,
        wdAutoRecoverPath = 5,
        wdToolsPath = 6,
        wdTutorialPath = 7,
        wdStartupPath = 8,
        wdProgramPath = 9,
        wdGraphicsFiltersPath = 10,
        wdTextConvertersPath = 11,
        wdProofingToolsPath = 12,
        wdTempFilePath = 13,
        wdCurrentFolderPath = 14,
        wdStyleGalleryPath = 15,
        wdBorderArtPath = 19
    };

    enum WdCompatibility
    {
        wdNoTabHangIndent = 1,
        wdNoSpaceRaiseLower = 2,
        wdPrintColBlack = 3,
        wdWrapTrailSpaces = 4,
        wdNoColumnBalance = 5,
        wdConvMailMergeEsc = 6,
        wdSuppressSpBfAfterPgBrk = 7,
        wdSuppressTopSpacing = 8,
        wdOrigWordTableRules = 9,
        wdTransparentMetafiles = 10,
        wdShowBreaksInFrames = 11,
        wdSwapBordersFacingPages = 12,
        wdLeaveBackslashAlone = 13,
        wdExpandShiftReturn = 14,
        wdDontULTrailSpace = 15,
        wdDontBalanceSingleByteDoubleByteWidth = 16,
        wdSuppressTopSpacingMac5 = 17,
        wdSpacingInWholePoints = 18,
        wdPrintBodyTextBeforeHeader = 19,
        wdNoLeading = 20,
        wdNoSpaceForUL = 21,
        wdMWSmallCaps = 22,
        wdNoExtraLineSpacing = 23,
        wdTruncateFontHeight = 24,
        wdSubFontBySize = 25,
        wdUsePrinterMetrics = 26,
        wdWW6BorderRules = 27,
        wdExactOnTop = 28,
        wdSuppressBottomSpacing = 29,
        wdWPSpaceWidth = 30,
        wdWPJustification = 31,
        wdLineWrapLikeWord6 = 32,
        wdShapeLayoutLikeWW8 = 33,
        wdFootnoteLayoutLikeWW8 = 34,
        wdDontUseHTMLParagraphAutoSpacing = 35,
        wdDontAdjustLineHeightInTable = 36,
        wdForgetLastTabAlignment = 37,
        wdAutospaceLikeWW7 = 38,
        wdAlignTablesRowByRow = 39,
        wdLayoutRawTableWidth = 40,
        wdLayoutTableRowsApart = 41,
        wdUseWord97LineBreakingRules = 42,
        wdDontBreakWrappedTables = 43,
        wdDontSnapTextToGridInTableWithObjects = 44,
        wdSelectFieldWithFirstOrLastCharacter = 45,
        wdApplyBreakingRules = 46,
        wdDontWrapTextWithPunctuation = 47,
        wdDontUseAsianBreakRulesInGrid = 48,
        wdUseWord2002TableStyleRules = 49,
        wdGrowAutofit = 50,
        wdUseNormalStyleForList = 51,
        wdDontUseIndentAsNumberingTabStop = 52,
        wdFELineBreak11 = 53,
        wdAllowSpaceOfSameStyleInTable = 54,
        wdWW11IndentRules = 55,
        wdDontAutofitConstrainedTables = 56,
        wdAutofitLikeWW11 = 57,
        wdUnderlineTabInNumList = 58,
        wdHangulWidthLikeWW11 = 59,
        wdSplitPgBreakAndParaMark = 60,
        wdDontVertAlignCellWithShape = 61,
        wdDontBreakConstrainedForcedTables = 62,
        wdDontVertAlignInTextbox = 63,
        wdWord11KerningPairs = 64,
        wdCachedColBalance = 65,
        wdDisableOTKerning = 66,
        wdFlipMirrorIndents = 67,
        wdDontOverrideTableStyleFontSzAndJustification = 68,
        wdUseWord2010TableStyleRules = 69
    };

    enum WdPaperSize
    {
        wdPaper10x14 = 0,
        wdPaper11x17 = 1,
        wdPaperLetter = 2,
        wdPaperLetterSmall = 3,
        wdPaperLegal = 4,
        wdPaperExecutive = 5,
        wdPaperA3 = 6,
        wdPaperA4 = 7,
        wdPaperA4Small = 8,
        wdPaperA5 = 9,
        wdPaperB4 = 10,
        wdPaperB5 = 11,
        wdPaperCSheet = 12,
        wdPaperDSheet = 13,
        wdPaperESheet = 14,
        wdPaperFanfoldLegalGerman = 15,
        wdPaperFanfoldStdGerman = 16,
        wdPaperFanfoldUS = 17,
        wdPaperFolio = 18,
        wdPaperLedger = 19,
        wdPaperNote = 20,
        wdPaperQuarto = 21,
        wdPaperStatement = 22,
        wdPaperTabloid = 23,
        wdPaperEnvelope9 = 24,
        wdPaperEnvelope10 = 25,
        wdPaperEnvelope11 = 26,
        wdPaperEnvelope12 = 27,
        wdPaperEnvelope14 = 28,
        wdPaperEnvelopeB4 = 29,
        wdPaperEnvelopeB5 = 30,
        wdPaperEnvelopeB6 = 31,
        wdPaperEnvelopeC3 = 32,
        wdPaperEnvelopeC4 = 33,
        wdPaperEnvelopeC5 = 34,
        wdPaperEnvelopeC6 = 35,
        wdPaperEnvelopeC65 = 36,
        wdPaperEnvelopeDL = 37,
        wdPaperEnvelopeItaly = 38,
        wdPaperEnvelopeMonarch = 39,
        wdPaperEnvelopePersonal = 40,
        wdPaperCustom = 41
    };

    enum WdCustomLabelPageSize
    {
        wdCustomLabelLetter = 0,
        wdCustomLabelLetterLS = 1,
        wdCustomLabelA4 = 2,
        wdCustomLabelA4LS = 3,
        wdCustomLabelA5 = 4,
        wdCustomLabelA5LS = 5,
        wdCustomLabelB5 = 6,
        wdCustomLabelMini = 7,
        wdCustomLabelFanfold = 8,
        wdCustomLabelVertHalfSheet = 9,
        wdCustomLabelVertHalfSheetLS = 10,
        wdCustomLabelHigaki = 11,
        wdCustomLabelHigakiLS = 12,
        wdCustomLabelB4JIS = 13
    };

    enum WdProtectionType
    {
        wdNoProtection = -1,
        wdAllowOnlyRevisions = 0,
        wdAllowOnlyComments = 1,
        wdAllowOnlyFormFields = 2,
        wdAllowOnlyReading = 3
    };

    enum WdPartOfSpeech
    {
        wdAdjective = 0,
        wdNoun = 1,
        wdAdverb = 2,
        wdVerb = 3,
        wdPronoun = 4,
        wdConjunction = 5,
        wdPreposition = 6,
        wdInterjection = 7,
        wdIdiom = 8,
        wdOther = 9
    };

    enum WdSubscriberFormats
    {
        wdSubscriberBestFormat = 0,
        wdSubscriberRTF = 1,
        wdSubscriberText = 2,
        wdSubscriberPict = 4
    };

    enum WdEditionType
    {
        wdPublisher = 0,
        wdSubscriber = 1
    };

    enum WdEditionOption
    {
        wdCancelPublisher = 0,
        wdSendPublisher = 1,
        wdSelectPublisher = 2,
        wdAutomaticUpdate = 3,
        wdManualUpdate = 4,
        wdChangeAttributes = 5,
        wdUpdateSubscriber = 6,
        wdOpenSource = 7
    };

    enum WdRelativeHorizontalPosition
    {
        wdRelativeHorizontalPositionMargin = 0,
        wdRelativeHorizontalPositionPage = 1,
        wdRelativeHorizontalPositionColumn = 2,
        wdRelativeHorizontalPositionCharacter = 3,
        wdRelativeHorizontalPositionLeftMarginArea = 4,
        wdRelativeHorizontalPositionRightMarginArea = 5,
        wdRelativeHorizontalPositionInnerMarginArea = 6,
        wdRelativeHorizontalPositionOuterMarginArea = 7
    };

    enum WdRelativeVerticalPosition
    {
        wdRelativeVerticalPositionMargin = 0,
        wdRelativeVerticalPositionPage = 1,
        wdRelativeVerticalPositionParagraph = 2,
        wdRelativeVerticalPositionLine = 3,
        wdRelativeVerticalPositionTopMarginArea = 4,
        wdRelativeVerticalPositionBottomMarginArea = 5,
        wdRelativeVerticalPositionInnerMarginArea = 6,
        wdRelativeVerticalPositionOuterMarginArea = 7
    };

    enum WdHelpType
    {
        wdHelp = 0,
        wdHelpAbout = 1,
        wdHelpActiveWindow = 2,
        wdHelpContents = 3,
        wdHelpExamplesAndDemos = 4,
        wdHelpIndex = 5,
        wdHelpKeyboard = 6,
        wdHelpPSSHelp = 7,
        wdHelpQuickPreview = 8,
        wdHelpSearch = 9,
        wdHelpUsingHelp = 10,
        wdHelpIchitaro = 11,
        wdHelpPE2 = 12,
        wdHelpHWP = 13
    };

    enum WdKeyCategory
    {
        wdKeyCategoryNil = -1,
        wdKeyCategoryDisable = 0,
        wdKeyCategoryCommand = 1,
        wdKeyCategoryMacro = 2,
        wdKeyCategoryFont = 3,
        wdKeyCategoryAutoText = 4,
        wdKeyCategoryStyle = 5,
        wdKeyCategorySymbol = 6,
        wdKeyCategoryPrefix = 7
    };

    enum WdKey
    {
        wdNoKey = 255,
        wdKeyShift = 256,
        wdKeyControl = 512,
        wdKeyCommand = 512,
        wdKeyAlt = 1024,
        wdKeyOption = 1024,
        wdKeyA = 65,
        wdKeyB = 66,
        wdKeyC = 67,
        wdKeyD = 68,
        wdKeyE = 69,
        wdKeyF = 70,
        wdKeyG = 71,
        wdKeyH = 72,
        wdKeyI = 73,
        wdKeyJ = 74,
        wdKeyK = 75,
        wdKeyL = 76,
        wdKeyM = 77,
        wdKeyN = 78,
        wdKeyO = 79,
        wdKeyP = 80,
        wdKeyQ = 81,
        wdKeyR = 82,
        wdKeyS = 83,
        wdKeyT = 84,
        wdKeyU = 85,
        wdKeyV = 86,
        wdKeyW = 87,
        wdKeyX = 88,
        wdKeyY = 89,
        wdKeyZ = 90,
        wdKey0 = 48,
        wdKey1 = 49,
        wdKey2 = 50,
        wdKey3 = 51,
        wdKey4 = 52,
        wdKey5 = 53,
        wdKey6 = 54,
        wdKey7 = 55,
        wdKey8 = 56,
        wdKey9 = 57,
        wdKeyBackspace = 8,
        wdKeyTab = 9,
        wdKeyNumeric5Special = 12,
        wdKeyReturn = 13,
        wdKeyPause = 19,
        wdKeyEsc = 27,
        wdKeySpacebar = 32,
        wdKeyPageUp = 33,
        wdKeyPageDown = 34,
        wdKeyEnd = 35,
        wdKeyHome = 36,
        wdKeyInsert = 45,
        wdKeyDelete = 46,
        wdKeyNumeric0 = 96,
        wdKeyNumeric1 = 97,
        wdKeyNumeric2 = 98,
        wdKeyNumeric3 = 99,
        wdKeyNumeric4 = 100,
        wdKeyNumeric5 = 101,
        wdKeyNumeric6 = 102,
        wdKeyNumeric7 = 103,
        wdKeyNumeric8 = 104,
        wdKeyNumeric9 = 105,
        wdKeyNumericMultiply = 106,
        wdKeyNumericAdd = 107,
        wdKeyNumericSubtract = 109,
        wdKeyNumericDecimal = 110,
        wdKeyNumericDivide = 111,
        wdKeyF1 = 112,
        wdKeyF2 = 113,
        wdKeyF3 = 114,
        wdKeyF4 = 115,
        wdKeyF5 = 116,
        wdKeyF6 = 117,
        wdKeyF7 = 118,
        wdKeyF8 = 119,
        wdKeyF9 = 120,
        wdKeyF10 = 121,
        wdKeyF11 = 122,
        wdKeyF12 = 123,
        wdKeyF13 = 124,
        wdKeyF14 = 125,
        wdKeyF15 = 126,
        wdKeyF16 = 127,
        wdKeyScrollLock = 145,
        wdKeySemiColon = 186,
        wdKeyEquals = 187,
        wdKeyComma = 188,
        wdKeyHyphen = 189,
        wdKeyPeriod = 190,
        wdKeySlash = 191,
        wdKeyBackSingleQuote = 192,
        wdKeyOpenSquareBrace = 219,
        wdKeyBackSlash = 220,
        wdKeyCloseSquareBrace = 221,
        wdKeySingleQuote = 222
    };

    enum WdOLEType
    {
        wdOLELink = 0,
        wdOLEEmbed = 1,
        wdOLEControl = 2
    };

    enum WdOLEVerb
    {
        wdOLEVerbPrimary = 0,
        wdOLEVerbShow = -1,
        wdOLEVerbOpen = -2,
        wdOLEVerbHide = -3,
        wdOLEVerbUIActivate = -4,
        wdOLEVerbInPlaceActivate = -5,
        wdOLEVerbDiscardUndoState = -6
    };

    enum WdOLEPlacement
    {
        wdInLine = 0,
        wdFloatOverText = 1
    };

    enum WdEnvelopeOrientation
    {
        wdLeftPortrait = 0,
        wdCenterPortrait = 1,
        wdRightPortrait = 2,
        wdLeftLandscape = 3,
        wdCenterLandscape = 4,
        wdRightLandscape = 5,
        wdLeftClockwise = 6,
        wdCenterClockwise = 7,
        wdRightClockwise = 8
    };

    enum WdLetterStyle
    {
        wdFullBlock = 0,
        wdModifiedBlock = 1,
        wdSemiBlock = 2
    };

    enum WdLetterheadLocation
    {
        wdLetterTop = 0,
        wdLetterBottom = 1,
        wdLetterLeft = 2,
        wdLetterRight = 3
    };

    enum WdSalutationType
    {
        wdSalutationInformal = 0,
        wdSalutationFormal = 1,
        wdSalutationBusiness = 2,
        wdSalutationOther = 3
    };

    enum WdSalutationGender
    {
        wdGenderFemale = 0,
        wdGenderMale = 1,
        wdGenderNeutral = 2,
        wdGenderUnknown = 3
    };

    enum WdMovementType
    {
        wdMove = 0,
        wdExtend = 1
    };

    enum WdConstants
    {
        wdUndefined = 9999999,
        wdToggle = 9999998,
        wdForward = 1073741823,
        wdBackward = -1073741823,
        wdAutoPosition = 0,
        wdFirst = 1,
        wdCreatorCode = 1297307460
    };

    enum WdPasteDataType
    {
        wdPasteOLEObject = 0,
        wdPasteRTF = 1,
        wdPasteText = 2,
        wdPasteMetafilePicture = 3,
        wdPasteBitmap = 4,
        wdPasteDeviceIndependentBitmap = 5,
        wdPasteHyperlink = 7,
        wdPasteShape = 8,
        wdPasteEnhancedMetafile = 9,
        wdPasteHTML = 10
    };

    enum WdPrintOutItem
    {
        wdPrintDocumentContent = 0,
        wdPrintProperties = 1,
        wdPrintComments = 2,
        wdPrintMarkup = 2,
        wdPrintStyles = 3,
        wdPrintAutoTextEntries = 4,
        wdPrintKeyAssignments = 5,
        wdPrintEnvelope = 6,
        wdPrintDocumentWithMarkup = 7
    };

    enum WdPrintOutPages
    {
        wdPrintAllPages = 0,
        wdPrintOddPagesOnly = 1,
        wdPrintEvenPagesOnly = 2
    };

    enum WdPrintOutRange
    {
        wdPrintAllDocument = 0,
        wdPrintSelection = 1,
        wdPrintCurrentPage = 2,
        wdPrintFromTo = 3,
        wdPrintRangeOfPages = 4
    };

    enum WdDictionaryType
    {
        wdSpelling = 0,
        wdGrammar = 1,
        wdThesaurus = 2,
        wdHyphenation = 3,
        wdSpellingComplete = 4,
        wdSpellingCustom = 5,
        wdSpellingLegal = 6,
        wdSpellingMedical = 7,
        wdHangulHanjaConversion = 8,
        wdHangulHanjaConversionCustom = 9
    };

    enum WdSpellingWordType
    {
        wdSpellword = 0,
        wdWildcard = 1,
        wdAnagram = 2
    };

    enum WdSpellingErrorType
    {
        wdSpellingCorrect = 0,
        wdSpellingNotInDictionary = 1,
        wdSpellingCapitalization = 2
    };

    enum WdProofreadingErrorType
    {
        wdSpellingError = 0,
        wdGrammaticalError = 1
    };

    enum WdInlineShapeType
    {
        wdInlineShapeEmbeddedOLEObject = 1,
        wdInlineShapeLinkedOLEObject = 2,
        wdInlineShapePicture = 3,
        wdInlineShapeLinkedPicture = 4,
        wdInlineShapeOLEControlObject = 5,
        wdInlineShapeHorizontalLine = 6,
        wdInlineShapePictureHorizontalLine = 7,
        wdInlineShapeLinkedPictureHorizontalLine = 8,
        wdInlineShapePictureBullet = 9,
        wdInlineShapeScriptAnchor = 10,
        wdInlineShapeOWSAnchor = 11,
        wdInlineShapeChart = 12,
        wdInlineShapeDiagram = 13,
        wdInlineShapeLockedCanvas = 14,
        wdInlineShapeSmartArt = 15,
        wdInlineShapeWebVideo = 16
    };

    enum WdArrangeStyle
    {
        wdTiled = 0,
        wdIcons = 1
    };

    enum WdSelectionFlags
    {
        wdSelStartActive = 1,
        wdSelAtEOL = 2,
        wdSelOvertype = 4,
        wdSelActive = 8,
        wdSelReplace = 16
    };

    enum WdAutoVersions
    {
        wdAutoVersionOff = 0,
        wdAutoVersionOnClose = 1
    };

    enum WdOrganizerObject
    {
        wdOrganizerObjectStyles = 0,
        wdOrganizerObjectAutoText = 1,
        wdOrganizerObjectCommandBars = 2,
        wdOrganizerObjectProjectItems = 3
    };

    enum WdFindMatch
    {
        wdMatchParagraphMark = 65551,
        wdMatchTabCharacter = 9,
        wdMatchCommentMark = 5,
        wdMatchAnyCharacter = 65599,
        wdMatchAnyDigit = 65567,
        wdMatchAnyLetter = 65583,
        wdMatchCaretCharacter = 11,
        wdMatchColumnBreak = 14,
        wdMatchEmDash = 8212,
        wdMatchEnDash = 8211,
        wdMatchEndnoteMark = 65555,
        wdMatchField = 19,
        wdMatchFootnoteMark = 65554,
        wdMatchGraphic = 1,
        wdMatchManualLineBreak = 65551,
        wdMatchManualPageBreak = 65564,
        wdMatchNonbreakingHyphen = 30,
        wdMatchNonbreakingSpace = 160,
        wdMatchOptionalHyphen = 31,
        wdMatchSectionBreak = 65580,
        wdMatchWhiteSpace = 65655
    };

    enum WdFindWrap
    {
        wdFindStop = 0,
        wdFindContinue = 1,
        wdFindAsk = 2
    };

    enum WdInformation
    {
        wdActiveEndAdjustedPageNumber = 1,
        wdActiveEndSectionNumber = 2,
        wdActiveEndPageNumber = 3,
        wdNumberOfPagesInDocument = 4,
        wdHorizontalPositionRelativeToPage = 5,
        wdVerticalPositionRelativeToPage = 6,
        wdHorizontalPositionRelativeToTextBoundary = 7,
        wdVerticalPositionRelativeToTextBoundary = 8,
        wdFirstCharacterColumnNumber = 9,
        wdFirstCharacterLineNumber = 10,
        wdFrameIsSelected = 11,
        wdWithInTable = 12,
        wdStartOfRangeRowNumber = 13,
        wdEndOfRangeRowNumber = 14,
        wdMaximumNumberOfRows = 15,
        wdStartOfRangeColumnNumber = 16,
        wdEndOfRangeColumnNumber = 17,
        wdMaximumNumberOfColumns = 18,
        wdZoomPercentage = 19,
        wdSelectionMode = 20,
        wdCapsLock = 21,
        wdNumLock = 22,
        wdOverType = 23,
        wdRevisionMarking = 24,
        wdInFootnoteEndnotePane = 25,
        wdInCommentPane = 26,
        wdInHeaderFooter = 28,
        wdAtEndOfRowMarker = 31,
        wdReferenceOfType = 32,
        wdHeaderFooterType = 33,
        wdInMasterDocument = 34,
        wdInFootnote = 35,
        wdInEndnote = 36,
        wdInWordMail = 37,
        wdInClipboard = 38,
        wdInCoverPage = 41,
        wdInBibliography = 42,
        wdInCitation = 43,
        wdInFieldCode = 44,
        wdInFieldResult = 45,
        wdInContentControl = 46
    };

    enum WdWrapType
    {
        wdWrapSquare = 0,
        wdWrapTight = 1,
        wdWrapThrough = 2,
        wdWrapNone = 3,
        wdWrapTopBottom = 4,
        wdWrapBehind = 5,
        wdWrapFront = 3,
        wdWrapInline = 7
    };

    enum WdWrapSideType
    {
        wdWrapBoth = 0,
        wdWrapLeft = 1,
        wdWrapRight = 2,
        wdWrapLargest = 3
    };

    enum WdOutlineLevel
    {
        wdOutlineLevel1 = 1,
        wdOutlineLevel2 = 2,
        wdOutlineLevel3 = 3,
        wdOutlineLevel4 = 4,
        wdOutlineLevel5 = 5,
        wdOutlineLevel6 = 6,
        wdOutlineLevel7 = 7,
        wdOutlineLevel8 = 8,
        wdOutlineLevel9 = 9,
        wdOutlineLevelBodyText = 10
    };

    enum WdTextOrientation
    {
        wdTextOrientationHorizontal = 0,
        wdTextOrientationUpward = 2,
        wdTextOrientationDownward = 3,
        wdTextOrientationVerticalFarEast = 1,
        wdTextOrientationHorizontalRotatedFarEast = 4,
        wdTextOrientationVertical = 5
    };

    enum WdPageBorderArt
    {
        wdArtApples = 1,
        wdArtMapleMuffins = 2,
        wdArtCakeSlice = 3,
        wdArtCandyCorn = 4,
        wdArtIceCreamCones = 5,
        wdArtChampagneBottle = 6,
        wdArtPartyGlass = 7,
        wdArtChristmasTree = 8,
        wdArtTrees = 9,
        wdArtPalmsColor = 10,
        wdArtBalloons3Colors = 11,
        wdArtBalloonsHotAir = 12,
        wdArtPartyFavor = 13,
        wdArtConfettiStreamers = 14,
        wdArtHearts = 15,
        wdArtHeartBalloon = 16,
        wdArtStars3D = 17,
        wdArtStarsShadowed = 18,
        wdArtStars = 19,
        wdArtSun = 20,
        wdArtEarth2 = 21,
        wdArtEarth1 = 22,
        wdArtPeopleHats = 23,
        wdArtSombrero = 24,
        wdArtPencils = 25,
        wdArtPackages = 26,
        wdArtClocks = 27,
        wdArtFirecrackers = 28,
        wdArtRings = 29,
        wdArtMapPins = 30,
        wdArtConfetti = 31,
        wdArtCreaturesButterfly = 32,
        wdArtCreaturesLadyBug = 33,
        wdArtCreaturesFish = 34,
        wdArtBirdsFlight = 35,
        wdArtScaredCat = 36,
        wdArtBats = 37,
        wdArtFlowersRoses = 38,
        wdArtFlowersRedRose = 39,
        wdArtPoinsettias = 40,
        wdArtHolly = 41,
        wdArtFlowersTiny = 42,
        wdArtFlowersPansy = 43,
        wdArtFlowersModern2 = 44,
        wdArtFlowersModern1 = 45,
        wdArtWhiteFlowers = 46,
        wdArtVine = 47,
        wdArtFlowersDaisies = 48,
        wdArtFlowersBlockPrint = 49,
        wdArtDecoArchColor = 50,
        wdArtFans = 51,
        wdArtFilm = 52,
        wdArtLightning1 = 53,
        wdArtCompass = 54,
        wdArtDoubleD = 55,
        wdArtClassicalWave = 56,
        wdArtShadowedSquares = 57,
        wdArtTwistedLines1 = 58,
        wdArtWaveline = 59,
        wdArtQuadrants = 60,
        wdArtCheckedBarColor = 61,
        wdArtSwirligig = 62,
        wdArtPushPinNote1 = 63,
        wdArtPushPinNote2 = 64,
        wdArtPumpkin1 = 65,
        wdArtEggsBlack = 66,
        wdArtCup = 67,
        wdArtHeartGray = 68,
        wdArtGingerbreadMan = 69,
        wdArtBabyPacifier = 70,
        wdArtBabyRattle = 71,
        wdArtCabins = 72,
        wdArtHouseFunky = 73,
        wdArtStarsBlack = 74,
        wdArtSnowflakes = 75,
        wdArtSnowflakeFancy = 76,
        wdArtSkyrocket = 77,
        wdArtSeattle = 78,
        wdArtMusicNotes = 79,
        wdArtPalmsBlack = 80,
        wdArtMapleLeaf = 81,
        wdArtPaperClips = 82,
        wdArtShorebirdTracks = 83,
        wdArtPeople = 84,
        wdArtPeopleWaving = 85,
        wdArtEclipsingSquares2 = 86,
        wdArtHypnotic = 87,
        wdArtDiamondsGray = 88,
        wdArtDecoArch = 89,
        wdArtDecoBlocks = 90,
        wdArtCirclesLines = 91,
        wdArtPapyrus = 92,
        wdArtWoodwork = 93,
        wdArtWeavingBraid = 94,
        wdArtWeavingRibbon = 95,
        wdArtWeavingAngles = 96,
        wdArtArchedScallops = 97,
        wdArtSafari = 98,
        wdArtCelticKnotwork = 99,
        wdArtCrazyMaze = 100,
        wdArtEclipsingSquares1 = 101,
        wdArtBirds = 102,
        wdArtFlowersTeacup = 103,
        wdArtNorthwest = 104,
        wdArtSouthwest = 105,
        wdArtTribal6 = 106,
        wdArtTribal4 = 107,
        wdArtTribal3 = 108,
        wdArtTribal2 = 109,
        wdArtTribal5 = 110,
        wdArtXIllusions = 111,
        wdArtZanyTriangles = 112,
        wdArtPyramids = 113,
        wdArtPyramidsAbove = 114,
        wdArtConfettiGrays = 115,
        wdArtConfettiOutline = 116,
        wdArtConfettiWhite = 117,
        wdArtMosaic = 118,
        wdArtLightning2 = 119,
        wdArtHeebieJeebies = 120,
        wdArtLightBulb = 121,
        wdArtGradient = 122,
        wdArtTriangleParty = 123,
        wdArtTwistedLines2 = 124,
        wdArtMoons = 125,
        wdArtOvals = 126,
        wdArtDoubleDiamonds = 127,
        wdArtChainLink = 128,
        wdArtTriangles = 129,
        wdArtTribal1 = 130,
        wdArtMarqueeToothed = 131,
        wdArtSharksTeeth = 132,
        wdArtSawtooth = 133,
        wdArtSawtoothGray = 134,
        wdArtPostageStamp = 135,
        wdArtWeavingStrips = 136,
        wdArtZigZag = 137,
        wdArtCrossStitch = 138,
        wdArtGems = 139,
        wdArtCirclesRectangles = 140,
        wdArtCornerTriangles = 141,
        wdArtCreaturesInsects = 142,
        wdArtZigZagStitch = 143,
        wdArtCheckered = 144,
        wdArtCheckedBarBlack = 145,
        wdArtMarquee = 146,
        wdArtBasicWhiteDots = 147,
        wdArtBasicWideMidline = 148,
        wdArtBasicWideOutline = 149,
        wdArtBasicWideInline = 150,
        wdArtBasicThinLines = 151,
        wdArtBasicWhiteDashes = 152,
        wdArtBasicWhiteSquares = 153,
        wdArtBasicBlackSquares = 154,
        wdArtBasicBlackDashes = 155,
        wdArtBasicBlackDots = 156,
        wdArtStarsTop = 157,
        wdArtCertificateBanner = 158,
        wdArtHandmade1 = 159,
        wdArtHandmade2 = 160,
        wdArtTornPaper = 161,
        wdArtTornPaperBlack = 162,
        wdArtCouponCutoutDashes = 163,
        wdArtCouponCutoutDots = 164
    };

    enum WdBorderDistanceFrom
    {
        wdBorderDistanceFromText = 0,
        wdBorderDistanceFromPageEdge = 1
    };

    enum WdReplace
    {
        wdReplaceNone = 0,
        wdReplaceOne = 1,
        wdReplaceAll = 2
    };

    enum WdFontBias
    {
        wdFontBiasDontCare = 255,
        wdFontBiasDefault = 0,
        wdFontBiasFareast = 1
    };

    enum WdBrowserLevel
    {
        wdBrowserLevelV4 = 0,
        wdBrowserLevelMicrosoftInternetExplorer5 = 1,
        wdBrowserLevelMicrosoftInternetExplorer6 = 2
    };

    enum WdEnclosureType
    {
        wdEnclosureCircle = 0,
        wdEnclosureSquare = 1,
        wdEnclosureTriangle = 2,
        wdEnclosureDiamond = 3
    };

    enum WdEncloseStyle
    {
        wdEncloseStyleNone = 0,
        wdEncloseStyleSmall = 1,
        wdEncloseStyleLarge = 2
    };

    enum WdHighAnsiText
    {
        wdHighAnsiIsFarEast = 0,
        wdHighAnsiIsHighAnsi = 1,
        wdAutoDetectHighAnsiFarEast = 2
    };

    enum WdLayoutMode
    {
        wdLayoutModeDefault = 0,
        wdLayoutModeGrid = 1,
        wdLayoutModeLineGrid = 2,
        wdLayoutModeGenko = 3
    };

    enum WdDocumentMedium
    {
        wdEmailMessage = 0,
        wdDocument = 1,
        wdWebPage = 2
    };

    enum WdMailerPriority
    {
        wdPriorityNormal = 1,
        wdPriorityLow = 2,
        wdPriorityHigh = 3
    };

    enum WdDocumentViewDirection
    {
        wdDocumentViewRtl = 0,
        wdDocumentViewLtr = 1
    };

    enum WdArabicNumeral
    {
        wdNumeralArabic = 0,
        wdNumeralHindi = 1,
        wdNumeralContext = 2,
        wdNumeralSystem = 3
    };

    enum WdMonthNames
    {
        wdMonthNamesArabic = 0,
        wdMonthNamesEnglish = 1,
        wdMonthNamesFrench = 2
    };

    enum WdCursorMovement
    {
        wdCursorMovementLogical = 0,
        wdCursorMovementVisual = 1
    };

    enum WdVisualSelection
    {
        wdVisualSelectionBlock = 0,
        wdVisualSelectionContinuous = 1
    };

    enum WdTableDirection
    {
        wdTableDirectionRtl = 0,
        wdTableDirectionLtr = 1
    };

    enum WdFlowDirection
    {
        wdFlowLtr = 0,
        wdFlowRtl = 1
    };

    enum WdDiacriticColor
    {
        wdDiacriticColorBidi = 0,
        wdDiacriticColorLatin = 1
    };

    enum WdGutterStyle
    {
        wdGutterPosLeft = 0,
        wdGutterPosTop = 1,
        wdGutterPosRight = 2
    };

    enum WdGutterStyleOld
    {
        wdGutterStyleLatin = -10,
        wdGutterStyleBidi = 2
    };

    enum WdSectionDirection
    {
        wdSectionDirectionRtl = 0,
        wdSectionDirectionLtr = 1
    };

    enum WdDateLanguage
    {
        wdDateLanguageBidi = 10,
        wdDateLanguageLatin = 1033
    };

    enum WdCalendarTypeBi
    {
        wdCalendarTypeBidi = 99,
        wdCalendarTypeGregorian = 100
    };

    enum WdCalendarType
    {
        wdCalendarWestern = 0,
        wdCalendarArabic = 1,
        wdCalendarHebrew = 2,
        wdCalendarTaiwan = 3,
        wdCalendarJapan = 4,
        wdCalendarThai = 5,
        wdCalendarKorean = 6,
        wdCalendarSakaEra = 7,
        wdCalendarTranslitEnglish = 8,
        wdCalendarTranslitFrench = 9,
        wdCalendarUmalqura = 13
    };

    enum WdReadingOrder
    {
        wdReadingOrderRtl = 0,
        wdReadingOrderLtr = 1
    };

    enum WdHebSpellStart
    {
        wdFullScript = 0,
        wdPartialScript = 1,
        wdMixedScript = 2,
        wdMixedAuthorizedScript = 3
    };

    enum WdAraSpeller
    {
        wdNone = 0,
        wdInitialAlef = 1,
        wdFinalYaa = 2,
        wdBoth = 3
    };

    enum WdColor
    {
        wdColorAutomatic = -16777216,
        wdColorBlack = 0,
        wdColorBlue = 16711680,
        wdColorTurquoise = 16776960,
        wdColorBrightGreen = 65280,
        wdColorPink = 16711935,
        wdColorRed = 255,
        wdColorYellow = 65535,
        wdColorWhite = 16777215,
        wdColorDarkBlue = 8388608,
        wdColorTeal = 8421376,
        wdColorGreen = 32768,
        wdColorViolet = 8388736,
        wdColorDarkRed = 128,
        wdColorDarkYellow = 32896,
        wdColorBrown = 13209,
        wdColorOliveGreen = 13107,
        wdColorDarkGreen = 13056,
        wdColorDarkTeal = 6697728,
        wdColorIndigo = 10040115,
        wdColorOrange = 26367,
        wdColorBlueGray = 10053222,
        wdColorLightOrange = 39423,
        wdColorLime = 52377,
        wdColorSeaGreen = 6723891,
        wdColorAqua = 13421619,
        wdColorLightBlue = 16737843,
        wdColorGold = 52479,
        wdColorSkyBlue = 16763904,
        wdColorPlum = 6697881,
        wdColorRose = 13408767,
        wdColorTan = 10079487,
        wdColorLightYellow = 10092543,
        wdColorLightGreen = 13434828,
        wdColorLightTurquoise = 16777164,
        wdColorPaleBlue = 16764057,
        wdColorLavender = 16751052,
        wdColorGray05 = 15987699,
        wdColorGray10 = 15132390,
        wdColorGray125 = 14737632,
        wdColorGray15 = 14277081,
        wdColorGray20 = 13421772,
        wdColorGray25 = 12632256,
        wdColorGray30 = 11776947,
        wdColorGray35 = 10921638,
        wdColorGray375 = 10526880,
        wdColorGray40 = 10066329,
        wdColorGray45 = 9211020,
        wdColorGray50 = 8421504,
        wdColorGray55 = 7566195,
        wdColorGray60 = 6710886,
        wdColorGray625 = 6316128,
        wdColorGray65 = 5855577,
        wdColorGray70 = 5000268,
        wdColorGray75 = 4210752,
        wdColorGray80 = 3355443,
        wdColorGray85 = 2500134,
        wdColorGray875 = 2105376,
        wdColorGray90 = 1644825,
        wdColorGray95 = 789516
    };

    enum WdShapePosition
    {
        wdShapeTop = -999999,
        wdShapeLeft = -999998,
        wdShapeBottom = -999997,
        wdShapeRight = -999996,
        wdShapeCenter = -999995,
        wdShapeInside = -999994,
        wdShapeOutside = -999993
    };

    enum WdTablePosition
    {
        wdTableTop = -999999,
        wdTableLeft = -999998,
        wdTableBottom = -999997,
        wdTableRight = -999996,
        wdTableCenter = -999995,
        wdTableInside = -999994,
        wdTableOutside = -999993
    };

    enum WdDefaultListBehavior
    {
        wdWord8ListBehavior = 0,
        wdWord9ListBehavior = 1,
        wdWord10ListBehavior = 2
    };

    enum WdDefaultTableBehavior
    {
        wdWord8TableBehavior = 0,
        wdWord9TableBehavior = 1
    };

    enum WdAutoFitBehavior
    {
        wdAutoFitFixed = 0,
        wdAutoFitContent = 1,
        wdAutoFitWindow = 2
    };

    enum WdPreferredWidthType
    {
        wdPreferredWidthAuto = 1,
        wdPreferredWidthPercent = 2,
        wdPreferredWidthPoints = 3
    };

    enum WdFarEastLineBreakLanguageID
    {
        wdLineBreakJapanese = 1041,
        wdLineBreakKorean = 1042,
        wdLineBreakSimplifiedChinese = 2052,
        wdLineBreakTraditionalChinese = 1028
    };

    enum WdViewTypeOld
    {
        wdPageView = 3,
        wdOnlineView = 6
    };

    enum WdFramesetType
    {
        wdFramesetTypeFrameset = 0,
        wdFramesetTypeFrame = 1
    };

    enum WdFramesetSizeType
    {
        wdFramesetSizeTypePercent = 0,
        wdFramesetSizeTypeFixed = 1,
        wdFramesetSizeTypeRelative = 2
    };

    enum WdFramesetNewFrameLocation
    {
        wdFramesetNewFrameAbove = 0,
        wdFramesetNewFrameBelow = 1,
        wdFramesetNewFrameRight = 2,
        wdFramesetNewFrameLeft = 3
    };

    enum WdScrollbarType
    {
        wdScrollbarTypeAuto = 0,
        wdScrollbarTypeYes = 1,
        wdScrollbarTypeNo = 2
    };

    enum WdTwoLinesInOneType
    {
        wdTwoLinesInOneNone = 0,
        wdTwoLinesInOneNoBrackets = 1,
        wdTwoLinesInOneParentheses = 2,
        wdTwoLinesInOneSquareBrackets = 3,
        wdTwoLinesInOneAngleBrackets = 4,
        wdTwoLinesInOneCurlyBrackets = 5
    };

    enum WdHorizontalInVerticalType
    {
        wdHorizontalInVerticalNone = 0,
        wdHorizontalInVerticalFitInLine = 1,
        wdHorizontalInVerticalResizeLine = 2
    };

    enum WdHorizontalLineAlignment
    {
        wdHorizontalLineAlignLeft = 0,
        wdHorizontalLineAlignCenter = 1,
        wdHorizontalLineAlignRight = 2
    };

    enum WdHorizontalLineWidthType
    {
        wdHorizontalLinePercentWidth = -1,
        wdHorizontalLineFixedWidth = -2
    };

    enum WdPhoneticGuideAlignmentType
    {
        wdPhoneticGuideAlignmentCenter = 0,
        wdPhoneticGuideAlignmentZeroOneZero = 1,
        wdPhoneticGuideAlignmentOneTwoOne = 2,
        wdPhoneticGuideAlignmentLeft = 3,
        wdPhoneticGuideAlignmentRight = 4,
        wdPhoneticGuideAlignmentRightVertical = 5
    };

    enum WdNewDocumentType
    {
        wdNewBlankDocument = 0,
        wdNewWebPage = 1,
        wdNewEmailMessage = 2,
        wdNewFrameset = 3,
        wdNewXMLDocument = 4
    };

    enum WdKana
    {
        wdKanaKatakana = 8,
        wdKanaHiragana = 9
    };

    enum WdCharacterWidth
    {
        wdWidthHalfWidth = 6,
        wdWidthFullWidth = 7
    };

    enum WdNumberStyleWordBasicBiDi
    {
        wdListNumberStyleBidi1 = 49,
        wdListNumberStyleBidi2 = 50,
        wdCaptionNumberStyleBidiLetter1 = 49,
        wdCaptionNumberStyleBidiLetter2 = 50,
        wdNoteNumberStyleBidiLetter1 = 49,
        wdNoteNumberStyleBidiLetter2 = 50,
        wdPageNumberStyleBidiLetter1 = 49,
        wdPageNumberStyleBidiLetter2 = 50
    };

    enum WdTCSCConverterDirection
    {
        wdTCSCConverterDirectionSCTC = 0,
        wdTCSCConverterDirectionTCSC = 1,
        wdTCSCConverterDirectionAuto = 2
    };

    enum WdDisableFeaturesIntroducedAfter
    {
        wd70 = 0,
        wd70FE = 1,
        wd80 = 2
    };

    enum WdWrapTypeMerged
    {
        wdWrapMergeInline = 0,
        wdWrapMergeSquare = 1,
        wdWrapMergeTight = 2,
        wdWrapMergeBehind = 3,
        wdWrapMergeFront = 4,
        wdWrapMergeThrough = 5,
        wdWrapMergeTopBottom = 6
    };

    enum WdRecoveryType
    {
        wdPasteDefault = 0,
        wdSingleCellText = 5,
        wdSingleCellTable = 6,
        wdListContinueNumbering = 7,
        wdListRestartNumbering = 8,
        wdTableInsertAsRows = 11,
        wdTableAppendTable = 10,
        wdTableOriginalFormatting = 12,
        wdChartPicture = 13,
        wdChart = 14,
        wdChartLinked = 15,
        wdFormatOriginalFormatting = 16,
        wdFormatSurroundingFormattingWithEmphasis = 20,
        wdFormatPlainText = 22,
        wdTableOverwriteCells = 23,
        wdListCombineWithExistingList = 24,
        wdListDontMerge = 25,
        wdUseDestinationStylesRecovery = 19
    };

    enum WdLineEndingType
    {
        wdCRLF = 0,
        wdCROnly = 1,
        wdLFOnly = 2,
        wdLFCR = 3,
        wdLSPS = 4
    };

    enum WdStyleSheetLinkType
    {
        wdStyleSheetLinkTypeLinked = 0,
        wdStyleSheetLinkTypeImported = 1
    };

    enum WdStyleSheetPrecedence
    {
        wdStyleSheetPrecedenceHigher = -1,
        wdStyleSheetPrecedenceLower = -2,
        wdStyleSheetPrecedenceHighest = 1,
        wdStyleSheetPrecedenceLowest = 0
    };

    enum WdEmailHTMLFidelity
    {
        wdEmailHTMLFidelityLow = 1,
        wdEmailHTMLFidelityMedium = 2,
        wdEmailHTMLFidelityHigh = 3
    };

    enum WdMailMergeMailFormat
    {
        wdMailFormatPlainText = 0,
        wdMailFormatHTML = 1
    };

    enum WdMappedDataFields
    {
        wdUniqueIdentifier = 1,
        wdCourtesyTitle = 2,
        wdFirstName = 3,
        wdMiddleName = 4,
        wdLastName = 5,
        wdSuffix = 6,
        wdNickname = 7,
        wdJobTitle = 8,
        wdCompany = 9,
        wdAddress1 = 10,
        wdAddress2 = 11,
        wdCity = 12,
        wdState = 13,
        wdPostalCode = 14,
        wdCountryRegion = 15,
        wdBusinessPhone = 16,
        wdBusinessFax = 17,
        wdHomePhone = 18,
        wdHomeFax = 19,
        wdEmailAddress = 20,
        wdWebPageURL = 21,
        wdSpouseCourtesyTitle = 22,
        wdSpouseFirstName = 23,
        wdSpouseMiddleName = 24,
        wdSpouseLastName = 25,
        wdSpouseNickname = 26,
        wdRubyFirstName = 27,
        wdRubyLastName = 28,
        wdAddress3 = 29,
        wdDepartment = 30
    };

    enum WdConditionCode
    {
        wdFirstRow = 0,
        wdLastRow = 1,
        wdOddRowBanding = 2,
        wdEvenRowBanding = 3,
        wdFirstColumn = 4,
        wdLastColumn = 5,
        wdOddColumnBanding = 6,
        wdEvenColumnBanding = 7,
        wdNECell = 8,
        wdNWCell = 9,
        wdSECell = 10,
        wdSWCell = 11
    };

    enum WdCompareTarget
    {
        wdCompareTargetSelected = 0,
        wdCompareTargetCurrent = 1,
        wdCompareTargetNew = 2
    };

    enum WdMergeTarget
    {
        wdMergeTargetSelected = 0,
        wdMergeTargetCurrent = 1,
        wdMergeTargetNew = 2
    };

    enum WdUseFormattingFrom
    {
        wdFormattingFromCurrent = 0,
        wdFormattingFromSelected = 1,
        wdFormattingFromPrompt = 2
    };

    enum WdRevisionsView
    {
        wdRevisionsViewFinal = 0,
        wdRevisionsViewOriginal = 1
    };

    enum WdRevisionsMode
    {
        wdBalloonRevisions = 0,
        wdInLineRevisions = 1,
        wdMixedRevisions = 2
    };

    enum WdRevisionsBalloonWidthType
    {
        wdBalloonWidthPercent = 0,
        wdBalloonWidthPoints = 1
    };

    enum WdRevisionsBalloonPrintOrientation
    {
        wdBalloonPrintOrientationAuto = 0,
        wdBalloonPrintOrientationPreserve = 1,
        wdBalloonPrintOrientationForceLandscape = 2
    };

    enum WdRevisionsBalloonMargin
    {
        wdLeftMargin = 0,
        wdRightMargin = 1
    };

    enum WdTaskPanes
    {
        wdTaskPaneFormatting = 0,
        wdTaskPaneRevealFormatting = 1,
        wdTaskPaneMailMerge = 2,
        wdTaskPaneTranslate = 3,
        wdTaskPaneSearch = 4,
        wdTaskPaneXMLStructure = 5,
        wdTaskPaneDocumentProtection = 6,
        wdTaskPaneDocumentActions = 7,
        wdTaskPaneSharedWorkspace = 8,
        wdTaskPaneHelp = 9,
        wdTaskPaneResearch = 10,
        wdTaskPaneFaxService = 11,
        wdTaskPaneXMLDocument = 12,
        wdTaskPaneDocumentUpdates = 13,
        wdTaskPaneSignature = 14,
        wdTaskPaneStyleInspector = 15,
        wdTaskPaneDocumentManagement = 16,
        wdTaskPaneApplyStyles = 17,
        wdTaskPaneNav = 18,
        wdTaskPaneSelection = 19,
        wdTaskPaneProofing = 20,
        wdTaskPaneXMLMapping = 21,
        wdTaskPaneRevPaneFlex = 22,
        wdTaskPaneThesaurus = 23
    };

    enum WdShowFilter
    {
        wdShowFilterStylesAvailable = 0,
        wdShowFilterStylesInUse = 1,
        wdShowFilterStylesAll = 2,
        wdShowFilterFormattingInUse = 3,
        wdShowFilterFormattingAvailable = 4,
        wdShowFilterFormattingRecommended = 5
    };

    enum WdMergeSubType
    {
        wdMergeSubTypeOther = 0,
        wdMergeSubTypeAccess = 1,
        wdMergeSubTypeOAL = 2,
        wdMergeSubTypeOLEDBWord = 3,
        wdMergeSubTypeWorks = 4,
        wdMergeSubTypeOLEDBText = 5,
        wdMergeSubTypeOutlook = 6,
        wdMergeSubTypeWord = 7,
        wdMergeSubTypeWord2000 = 8
    };

    enum WdDocumentDirection
    {
        wdLeftToRight = 0,
        wdRightToLeft = 1
    };

    enum WdLanguageID2000
    {
        wdChineseHongKong = 3076,
        wdChineseMacao = 5124,
        wdEnglishTrinidad = 11273
    };

    enum WdRectangleType
    {
        wdTextRectangle = 0,
        wdShapeRectangle = 1,
        wdMarkupRectangle = 2,
        wdMarkupRectangleButton = 3,
        wdPageBorderRectangle = 4,
        wdLineBetweenColumnRectangle = 5,
        wdSelection = 6,
        wdSystem = 7,
        wdMarkupRectangleArea = 8,
        wdReadingModeNavigation = 9,
        wdMarkupRectangleMoveMatch = 10,
        wdReadingModePanningArea = 11,
        wdMailNavArea = 12,
        wdDocumentControlRectangle = 13
    };

    enum WdLineType
    {
        wdTextLine = 0,
        wdTableRow = 1
    };

    enum WdXMLNodeType
    {
        wdXMLNodeElement = 1,
        wdXMLNodeAttribute = 2
    };

    enum WdXMLSelectionChangeReason
    {
        wdXMLSelectionChangeReasonMove = 0,
        wdXMLSelectionChangeReasonInsert = 1,
        wdXMLSelectionChangeReasonDelete = 2
    };

    enum WdXMLNodeLevel
    {
        wdXMLNodeLevelInline = 0,
        wdXMLNodeLevelParagraph = 1,
        wdXMLNodeLevelRow = 2,
        wdXMLNodeLevelCell = 3
    };

    enum WdSmartTagControlType
    {
        wdControlSmartTag = 1,
        wdControlLink = 2,
        wdControlHelp = 3,
        wdControlHelpURL = 4,
        wdControlSeparator = 5,
        wdControlButton = 6,
        wdControlLabel = 7,
        wdControlImage = 8,
        wdControlCheckbox = 9,
        wdControlTextbox = 10,
        wdControlListbox = 11,
        wdControlCombo = 12,
        wdControlActiveX = 13,
        wdControlDocumentFragment = 14,
        wdControlDocumentFragmentURL = 15,
        wdControlRadioGroup = 16
    };

    enum WdEditorType
    {
        wdEditorEveryone = -1,
        wdEditorOwners = -4,
        wdEditorEditors = -5,
        wdEditorCurrent = -6
    };

    enum WdXMLValidationStatus
    {
        wdXMLValidationStatusOK = 0,
        wdXMLValidationStatusCustom = -1072898048
    };

    enum WdStyleSort
    {
        wdStyleSortByName = 0,
        wdStyleSortRecommended = 1,
        wdStyleSortByFont = 2,
        wdStyleSortByBasedOn = 3,
        wdStyleSortByType = 4
    };

    enum WdRemoveDocInfoType
    {
        wdRDIComments = 1,
        wdRDIRevisions = 2,
        wdRDIVersions = 3,
        wdRDIRemovePersonalInformation = 4,
        wdRDIEmailHeader = 5,
        wdRDIRoutingSlip = 6,
        wdRDISendForReview = 7,
        wdRDIDocumentProperties = 8,
        wdRDITemplate = 9,
        wdRDIDocumentWorkspace = 10,
        wdRDIInkAnnotations = 11,
        wdRDIDocumentServerProperties = 14,
        wdRDIDocumentManagementPolicy = 15,
        wdRDIContentType = 16,
        wdRDITaskpaneWebExtensions = 17,
        wdRDIAll = 99
    };

    enum WdCheckInVersionType
    {
        wdCheckInMinorVersion = 0,
        wdCheckInMajorVersion = 1,
        wdCheckInOverwriteVersion = 2
    };

    enum WdMoveToTextMark
    {
        wdMoveToTextMarkNone = 0,
        wdMoveToTextMarkBold = 1,
        wdMoveToTextMarkItalic = 2,
        wdMoveToTextMarkUnderline = 3,
        wdMoveToTextMarkDoubleUnderline = 4,
        wdMoveToTextMarkColorOnly = 5,
        wdMoveToTextMarkStrikeThrough = 6,
        wdMoveToTextMarkDoubleStrikeThrough = 7
    };

    enum WdMoveFromTextMark
    {
        wdMoveFromTextMarkHidden = 0,
        wdMoveFromTextMarkDoubleStrikeThrough = 1,
        wdMoveFromTextMarkStrikeThrough = 2,
        wdMoveFromTextMarkCaret = 3,
        wdMoveFromTextMarkPound = 4,
        wdMoveFromTextMarkNone = 5,
        wdMoveFromTextMarkBold = 6,
        wdMoveFromTextMarkItalic = 7,
        wdMoveFromTextMarkUnderline = 8,
        wdMoveFromTextMarkDoubleUnderline = 9,
        wdMoveFromTextMarkColorOnly = 10
    };

    enum WdOMathFunctionType
    {
        wdOMathFunctionAcc = 1,
        wdOMathFunctionBar = 2,
        wdOMathFunctionBox = 3,
        wdOMathFunctionBorderBox = 4,
        wdOMathFunctionDelim = 5,
        wdOMathFunctionEqArray = 6,
        wdOMathFunctionFrac = 7,
        wdOMathFunctionFunc = 8,
        wdOMathFunctionGroupChar = 9,
        wdOMathFunctionLimLow = 10,
        wdOMathFunctionLimUpp = 11,
        wdOMathFunctionMat = 12,
        wdOMathFunctionNary = 13,
        wdOMathFunctionPhantom = 14,
        wdOMathFunctionScrPre = 15,
        wdOMathFunctionRad = 16,
        wdOMathFunctionScrSub = 17,
        wdOMathFunctionScrSubSup = 18,
        wdOMathFunctionScrSup = 19,
        wdOMathFunctionText = 20,
        wdOMathFunctionNormalText = 21,
        wdOMathFunctionLiteralText = 22
    };

    enum WdOMathHorizAlignType
    {
        wdOMathHorizAlignCenter = 0,
        wdOMathHorizAlignLeft = 1,
        wdOMathHorizAlignRight = 2
    };

    enum WdOMathVertAlignType
    {
        wdOMathVertAlignCenter = 0,
        wdOMathVertAlignTop = 1,
        wdOMathVertAlignBottom = 2
    };

    enum WdOMathFracType
    {
        wdOMathFracBar = 0,
        wdOMathFracNoBar = 1,
        wdOMathFracSkw = 2,
        wdOMathFracLin = 3
    };

    enum WdOMathSpacingRule
    {
        wdOMathSpacingSingle = 0,
        wdOMathSpacing1pt5 = 1,
        wdOMathSpacingDouble = 2,
        wdOMathSpacingExactly = 3,
        wdOMathSpacingMultiple = 4
    };

    enum WdOMathType
    {
        wdOMathDisplay = 0,
        wdOMathInline = 1
    };

    enum WdOMathShapeType
    {
        wdOMathShapeCentered = 0,
        wdOMathShapeMatch = 1
    };

    enum WdOMathJc
    {
        wdOMathJcCenterGroup = 1,
        wdOMathJcCenter = 2,
        wdOMathJcLeft = 3,
        wdOMathJcRight = 4,
        wdOMathJcInline = 7
    };

    enum WdOMathBreakBin
    {
        wdOMathBreakBinBefore = 0,
        wdOMathBreakBinAfter = 1,
        wdOMathBreakBinRepeat = 2
    };

    enum WdOMathBreakSub
    {
        wdOMathBreakSubMinusMinus = 0,
        wdOMathBreakSubPlusMinus = 1,
        wdOMathBreakSubMinusPlus = 2
    };

    enum WdReadingLayoutMargin
    {
        wdAutomaticMargin = 0,
        wdSuppressMargin = 1,
        wdFullMargin = 2
    };

    enum WdContentControlType
    {
        wdContentControlRichText = 0,
        wdContentControlText = 1,
        wdContentControlPicture = 2,
        wdContentControlComboBox = 3,
        wdContentControlDropdownList = 4,
        wdContentControlBuildingBlockGallery = 5,
        wdContentControlDate = 6,
        wdContentControlGroup = 7,
        wdContentControlCheckBox = 8,
        wdContentControlRepeatingSection = 9
    };

    enum WdCompareDestination
    {
        wdCompareDestinationOriginal = 0,
        wdCompareDestinationRevised = 1,
        wdCompareDestinationNew = 2
    };

    enum WdGranularity
    {
        wdGranularityCharLevel = 0,
        wdGranularityWordLevel = 1
    };

    enum WdMergeFormatFrom
    {
        wdMergeFormatFromOriginal = 0,
        wdMergeFormatFromRevised = 1,
        wdMergeFormatFromPrompt = 2
    };

    enum WdShowSourceDocuments
    {
        wdShowSourceDocumentsNone = 0,
        wdShowSourceDocumentsOriginal = 1,
        wdShowSourceDocumentsRevised = 2,
        wdShowSourceDocumentsBoth = 3
    };

    enum WdPasteOptions
    {
        wdKeepSourceFormatting = 0,
        wdMatchDestinationFormatting = 1,
        wdKeepTextOnly = 2,
        wdUseDestinationStyles = 3
    };

    enum WdBuildingBlockTypes
    {
        wdTypeQuickParts = 1,
        wdTypeCoverPage = 2,
        wdTypeEquations = 3,
        wdTypeFooters = 4,
        wdTypeHeaders = 5,
        wdTypePageNumber = 6,
        wdTypeTables = 7,
        wdTypeWatermarks = 8,
        wdTypeAutoText = 9,
        wdTypeTextBox = 10,
        wdTypePageNumberTop = 11,
        wdTypePageNumberBottom = 12,
        wdTypePageNumberPage = 13,
        wdTypeTableOfContents = 14,
        wdTypeCustomQuickParts = 15,
        wdTypeCustomCoverPage = 16,
        wdTypeCustomEquations = 17,
        wdTypeCustomFooters = 18,
        wdTypeCustomHeaders = 19,
        wdTypeCustomPageNumber = 20,
        wdTypeCustomTables = 21,
        wdTypeCustomWatermarks = 22,
        wdTypeCustomAutoText = 23,
        wdTypeCustomTextBox = 24,
        wdTypeCustomPageNumberTop = 25,
        wdTypeCustomPageNumberBottom = 26,
        wdTypeCustomPageNumberPage = 27,
        wdTypeCustomTableOfContents = 28,
        wdTypeCustom1 = 29,
        wdTypeCustom2 = 30,
        wdTypeCustom3 = 31,
        wdTypeCustom4 = 32,
        wdTypeCustom5 = 33,
        wdTypeBibliography = 34,
        wdTypeCustomBibliography = 35
    };

    enum WdAlignmentTabRelative
    {
        wdMargin = 0,
        wdIndent = 1
    };

    enum WdAlignmentTabAlignment
    {
        wdLeft = 0,
        wdCenter = 1,
        wdRight = 2
    };

    enum WdCellColor
    {
        wdCellColorByAuthor = -1,
        wdCellColorNoHighlight = 0,
        wdCellColorPink = 1,
        wdCellColorLightBlue = 2,
        wdCellColorLightYellow = 3,
        wdCellColorLightPurple = 4,
        wdCellColorLightOrange = 5,
        wdCellColorLightGreen = 6,
        wdCellColorLightGray = 7
    };

    enum WdTextboxTightWrap
    {
        wdTightNone = 0,
        wdTightAll = 1,
        wdTightFirstAndLastLines = 2,
        wdTightFirstLineOnly = 3,
        wdTightLastLineOnly = 4
    };

    enum WdShapePositionRelative
    {
        wdShapePositionRelativeNone = -999999
    };

    enum WdShapeSizeRelative
    {
        wdShapeSizeRelativeNone = -999999
    };

    enum WdRelativeHorizontalSize
    {
        wdRelativeHorizontalSizeMargin = 0,
        wdRelativeHorizontalSizePage = 1,
        wdRelativeHorizontalSizeLeftMarginArea = 2,
        wdRelativeHorizontalSizeRightMarginArea = 3,
        wdRelativeHorizontalSizeInnerMarginArea = 4,
        wdRelativeHorizontalSizeOuterMarginArea = 5
    };

    enum WdRelativeVerticalSize
    {
        wdRelativeVerticalSizeMargin = 0,
        wdRelativeVerticalSizePage = 1,
        wdRelativeVerticalSizeTopMarginArea = 2,
        wdRelativeVerticalSizeBottomMarginArea = 3,
        wdRelativeVerticalSizeInnerMarginArea = 4,
        wdRelativeVerticalSizeOuterMarginArea = 5
    };

    enum WdThemeColorIndex
    {
        wdNotThemeColor = -1,
        wdThemeColorMainDark1 = 0,
        wdThemeColorMainLight1 = 1,
        wdThemeColorMainDark2 = 2,
        wdThemeColorMainLight2 = 3,
        wdThemeColorAccent1 = 4,
        wdThemeColorAccent2 = 5,
        wdThemeColorAccent3 = 6,
        wdThemeColorAccent4 = 7,
        wdThemeColorAccent5 = 8,
        wdThemeColorAccent6 = 9,
        wdThemeColorHyperlink = 10,
        wdThemeColorHyperlinkFollowed = 11,
        wdThemeColorBackground1 = 12,
        wdThemeColorText1 = 13,
        wdThemeColorBackground2 = 14,
        wdThemeColorText2 = 15
    };

    enum WdExportFormat
    {
        wdExportFormatPDF = 17,
        wdExportFormatXPS = 18
    };

    enum WdExportOptimizeFor
    {
        wdExportOptimizeForPrint = 0,
        wdExportOptimizeForOnScreen = 1
    };

    enum WdExportCreateBookmarks
    {
        wdExportCreateNoBookmarks = 0,
        wdExportCreateHeadingBookmarks = 1,
        wdExportCreateWordBookmarks = 2
    };

    enum WdExportItem
    {
        wdExportDocumentContent = 0,
        wdExportDocumentWithMarkup = 7
    };

    enum WdExportRange
    {
        wdExportAllDocument = 0,
        wdExportSelection = 1,
        wdExportCurrentPage = 2,
        wdExportFromTo = 3
    };

    enum WdFrenchSpeller
    {
        wdFrenchBoth = 0,
        wdFrenchPreReform = 1,
        wdFrenchPostReform = 2
    };

    enum WdDocPartInsertOptions
    {
        wdInsertContent = 0,
        wdInsertParagraph = 1,
        wdInsertPage = 2
    };

    enum WdContentControlDateStorageFormat
    {
        wdContentControlDateStorageText = 0,
        wdContentControlDateStorageDate = 1,
        wdContentControlDateStorageDateTime = 2
    };

    enum XlChartSplitType
    {
        xlSplitByPosition = 1,
        xlSplitByPercentValue = 3,
        xlSplitByCustomSplit = 4,
        xlSplitByValue = 2
    };

    enum XlSizeRepresents
    {
        xlSizeIsWidth = 2,
        xlSizeIsArea = 1
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

    enum XlChartGallery
    {
        xlBuiltIn = 21,
        xlUserDefined = 22,
        xlAnyGallery = 23
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

    enum XlDataLabelSeparator
    {
        xlDataLabelSeparatorDefault = 1
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

    enum XlPictureAppearance
    {
        xlPrinter = 2,
        xlScreen = 1
    };

    enum XlCopyPictureFormat
    {
        xlBitmap = 2,
        xlPicture = -4147
    };

    enum XlRgbColor
    {
        xlAliceBlue = 16775408,
        xlAntiqueWhite = 14150650,
        xlAqua = 16776960,
        xlAquamarine = 13959039,
        xlAzure = 16777200,
        xlBeige = 14480885,
        xlBisque = 12903679,
        xlBlack = 0,
        xlBlanchedAlmond = 13495295,
        xlBlue = 16711680,
        xlBlueViolet = 14822282,
        xlBrown = 2763429,
        xlBurlyWood = 8894686,
        xlCadetBlue = 10526303,
        xlChartreuse = 65407,
        xlCoral = 5275647,
        xlCornflowerBlue = 15570276,
        xlCornsilk = 14481663,
        xlCrimson = 3937500,
        xlDarkBlue = 9109504,
        xlDarkCyan = 9145088,
        xlDarkGoldenrod = 755384,
        xlDarkGreen = 25600,
        xlDarkGray = 11119017,
        xlDarkGrey = 11119017,
        xlDarkKhaki = 7059389,
        xlDarkMagenta = 9109643,
        xlDarkOliveGreen = 3107669,
        xlDarkOrange = 36095,
        xlDarkOrchid = 13382297,
        xlDarkRed = 139,
        xlDarkSalmon = 8034025,
        xlDarkSeaGreen = 9419919,
        xlDarkSlateBlue = 9125192,
        xlDarkSlateGray = 5197615,
        xlDarkSlateGrey = 5197615,
        xlDarkTurquoise = 13749760,
        xlDarkViolet = 13828244,
        xlDeepPink = 9639167,
        xlDeepSkyBlue = 16760576,
        xlDimGray = 6908265,
        xlDimGrey = 6908265,
        xlDodgerBlue = 16748574,
        xlFireBrick = 2237106,
        xlFloralWhite = 15792895,
        xlForestGreen = 2263842,
        xlFuchsia = 16711935,
        xlGainsboro = 14474460,
        xlGhostWhite = 16775416,
        xlGold = 55295,
        xlGoldenrod = 2139610,
        xlGray = 8421504,
        xlGreen = 32768,
        xlGrey = 8421504,
        xlGreenYellow = 3145645,
        xlHoneydew = 15794160,
        xlHotPink = 11823615,
        xlIndianRed = 6053069,
        xlIndigo = 8519755,
        xlIvory = 15794175,
        xlKhaki = 9234160,
        xlLavender = 16443110,
        xlLavenderBlush = 16118015,
        xlLawnGreen = 64636,
        xlLemonChiffon = 13499135,
        xlLightBlue = 15128749,
        xlLightCoral = 8421616,
        xlLightCyan = 9145088,
        xlLightGoldenrodYellow = 13826810,
        xlLightGray = 13882323,
        xlLightGreen = 9498256,
        xlLightGrey = 13882323,
        xlLightPink = 12695295,
        xlLightSalmon = 8036607,
        xlLightSeaGreen = 11186720,
        xlLightSkyBlue = 16436871,
        xlLightSlateGray = 10061943,
        xlLightSlateGrey = 10061943,
        xlLightSteelBlue = 14599344,
        xlLightYellow = 14745599,
        xlLime = 65280,
        xlLimeGreen = 3329330,
        xlLinen = 15134970,
        xlMaroon = 128,
        xlMediumAquamarine = 11206502,
        xlMediumBlue = 13434880,
        xlMediumOrchid = 13850042,
        xlMediumPurple = 14381203,
        xlMediumSeaGreen = 7451452,
        xlMediumSlateBlue = 15624315,
        xlMediumSpringGreen = 10156544,
        xlMediumTurquoise = 13422920,
        xlMediumVioletRed = 8721863,
        xlMidnightBlue = 7346457,
        xlMintCream = 16449525,
        xlMistyRose = 14804223,
        xlMoccasin = 11920639,
        xlNavajoWhite = 11394815,
        xlNavy = 8388608,
        xlNavyBlue = 8388608,
        xlOldLace = 15136253,
        xlOlive = 32896,
        xlOliveDrab = 2330219,
        xlOrange = 42495,
        xlOrangeRed = 17919,
        xlOrchid = 14053594,
        xlPaleGoldenrod = 7071982,
        xlPaleGreen = 10025880,
        xlPaleTurquoise = 15658671,
        xlPaleVioletRed = 9662683,
        xlPapayaWhip = 14020607,
        xlPeachPuff = 12180223,
        xlPeru = 4163021,
        xlPink = 13353215,
        xlPlum = 14524637,
        xlPowderBlue = 15130800,
        xlPurple = 8388736,
        xlRed = 255,
        xlRosyBrown = 9408444,
        xlRoyalBlue = 14772545,
        xlSalmon = 7504122,
        xlSandyBrown = 6333684,
        xlSeaGreen = 5737262,
        xlSeashell = 15660543,
        xlSienna = 2970272,
        xlSilver = 12632256,
        xlSkyBlue = 15453831,
        xlSlateBlue = 13458026,
        xlSlateGray = 9470064,
        xlSlateGrey = 9470064,
        xlSnow = 16448255,
        xlSpringGreen = 8388352,
        xlSteelBlue = 11829830,
        xlTan = 9221330,
        xlTeal = 8421376,
        xlThistle = 14204888,
        xlTomato = 4678655,
        xlTurquoise = 13688896,
        xlYellow = 65535,
        xlYellowGreen = 3329434,
        xlViolet = 15631086,
        xlWheat = 11788021,
        xlWhite = 16777215,
        xlWhiteSmoke = 16119285
    };

    enum XlConstants
    {
        xlAutomatic = -4105,
        xlCombination = -4111,
        xlCustom = -4114,
        xlBar = 2,
        xlColumn = 3,
        xl3DBar = -4099,
        xl3DSurface = -4103,
        xlDefaultAutoFormat = -1,
        xlNone = -4142,
        xlAbove = 0,
        xlBelow = 1,
        xlBoth = 1,
        xlBottom = -4107,
        xlCenter = -4108,
        xlChecker = 9,
        xlCircle = 8,
        xlCorner = 2,
        xlCrissCross = 16,
        xlCross = 4,
        xlDiamond = 2,
        xlDistributed = -4117,
        xlFill = 5,
        xlFixedValue = 1,
        xlGeneral = 1,
        xlGray16 = 17,
        xlGray25 = -4124,
        xlGray50 = -4125,
        xlGray75 = -4126,
        xlGray8 = 18,
        xlGrid = 15,
        xlHigh = -4127,
        xlInside = 2,
        xlJustify = -4130,
        xlLeft = -4131,
        xlLightDown = 13,
        xlLightHorizontal = 11,
        xlLightUp = 14,
        xlLightVertical = 12,
        xlLow = -4134,
        xlMaximum = 2,
        xlMinimum = 4,
        xlMinusValues = 3,
        xlNextToAxis = 4,
        xlOpaque = 3,
        xlOutside = 3,
        xlPercent = 2,
        xlPlus = 9,
        xlPlusValues = 2,
        xlRight = -4152,
        xlScale = 3,
        xlSemiGray75 = 10,
        xlShowLabel = 4,
        xlShowLabelAndPercent = 5,
        xlShowPercent = 3,
        xlShowValue = 2,
        xlSingle = 2,
        xlSolid = 1,
        xlSquare = 1,
        xlStar = 5,
        xlStError = 4,
        xlTop = -4160,
        xlTransparent = 2,
        xlTriangle = 3
    };

    enum XlReadingOrder
    {
        xlContext = -5002,
        xlLTR = -5003,
        xlRTL = -5004
    };

    enum XlBorderWeight
    {
        xlHairline = 1,
        xlMedium = -4138,
        xlThick = 4,
        xlThin = 2
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

    enum XlUnderlineStyle
    {
        xlUnderlineStyleDouble = -4119,
        xlUnderlineStyleDoubleAccounting = 5,
        xlUnderlineStyleNone = -4142,
        xlUnderlineStyleSingle = 2,
        xlUnderlineStyleSingleAccounting = 4
    };

    enum XlColorIndex
    {
        xlColorIndexAutomatic = -4105,
        xlColorIndexNone = -4142
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

    enum XlRowCol
    {
        xlColumns = 2,
        xlRows = 1
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

    enum XlErrorBarInclude
    {
        xlErrorBarIncludeBoth = 1,
        xlErrorBarIncludeMinusValues = 3,
        xlErrorBarIncludeNone = -4142,
        xlErrorBarIncludePlusValues = 2
    };

    enum XlErrorBarType
    {
        xlErrorBarTypeCustom = -4114,
        xlErrorBarTypeFixedValue = 1,
        xlErrorBarTypePercent = 2,
        xlErrorBarTypeStDev = -4155,
        xlErrorBarTypeStError = 4
    };

    enum XlErrorBarDirection
    {
        xlChartX = -4168,
        xlChartY = 1
    };

    enum XlChartPictureType
    {
        xlStackScale = 3,
        xlStack = 2,
        xlStretch = 1
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

    enum XlBarShape
    {
        xlBox = 0,
        xlPyramidToPoint = 1,
        xlPyramidToMax = 2,
        xlCylinder = 3,
        xlConeToPoint = 4,
        xlConeToMax = 5
    };

    enum XlEndStyleCap
    {
        xlCap = 1,
        xlNoCap = 2
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

    enum XlAxisType
    {
        xlCategory = 1,
        xlSeriesAxis = 3,
        xlValue = 2
    };

    enum XlAxisCrosses
    {
        xlAxisCrossesAutomatic = -4105,
        xlAxisCrossesCustom = -4114,
        xlAxisCrossesMaximum = 2,
        xlAxisCrossesMinimum = 4
    };

    enum XlTickMark
    {
        xlTickMarkCross = 4,
        xlTickMarkInside = 2,
        xlTickMarkNone = -4142,
        xlTickMarkOutside = 3
    };

    enum XlScaleType
    {
        xlScaleLinear = -4132,
        xlScaleLogarithmic = -4133
    };

    enum XlTickLabelPosition
    {
        xlTickLabelPositionHigh = -4127,
        xlTickLabelPositionLow = -4134,
        xlTickLabelPositionNextToAxis = 4,
        xlTickLabelPositionNone = -4142
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

    enum XlDisplayBlanksAs
    {
        xlInterpolated = 3,
        xlNotPlotted = 1,
        xlZero = 2
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

    enum XlPivotFieldOrientation
    {
        xlColumnField = 2,
        xlDataField = 4,
        xlHidden = 0,
        xlPageField = 3,
        xlRowField = 1
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

    enum XlVAlign
    {
        xlVAlignBottom = -4107,
        xlVAlignCenter = -4108,
        xlVAlignDistributed = -4117,
        xlVAlignJustify = -4130,
        xlVAlignTop = -4160
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

    enum XlChartElementPosition
    {
        xlChartElementPositionAutomatic = -4105,
        xlChartElementPositionCustom = -4114
    };

    enum WdUpdateStyleListBehavior
    {
        wdListBehaviorKeepPreviousPattern = 0,
        wdListBehaviorAddBulletsNumbering = 1
    };

    enum WdApplyQuickStyleSets
    {
        wdSessionStartSet = 1,
        wdTemplateSet = 2
    };

    enum WdLigatures
    {
        wdLigaturesNone = 0,
        wdLigaturesStandard = 1,
        wdLigaturesContextual = 2,
        wdLigaturesHistorical = 4,
        wdLigaturesDiscretional = 8,
        wdLigaturesStandardContextual = 3,
        wdLigaturesStandardHistorical = 5,
        wdLigaturesContextualHistorical = 6,
        wdLigaturesStandardDiscretional = 9,
        wdLigaturesContextualDiscretional = 10,
        wdLigaturesHistoricalDiscretional = 12,
        wdLigaturesStandardContextualHistorical = 7,
        wdLigaturesStandardContextualDiscretional = 11,
        wdLigaturesStandardHistoricalDiscretional = 13,
        wdLigaturesContextualHistoricalDiscretional = 14,
        wdLigaturesAll = 15
    };

    enum WdNumberForm
    {
        wdNumberFormDefault = 0,
        wdNumberFormLining = 1,
        wdNumberFormOldStyle = 2
    };

    enum WdNumberSpacing
    {
        wdNumberSpacingDefault = 0,
        wdNumberSpacingProportional = 1,
        wdNumberSpacingTabular = 2
    };

    enum WdStylisticSet
    {
        wdStylisticSetDefault = 0,
        wdStylisticSet01 = 1,
        wdStylisticSet02 = 2,
        wdStylisticSet03 = 4,
        wdStylisticSet04 = 8,
        wdStylisticSet05 = 16,
        wdStylisticSet06 = 32,
        wdStylisticSet07 = 64,
        wdStylisticSet08 = 128,
        wdStylisticSet09 = 256,
        wdStylisticSet10 = 512,
        wdStylisticSet11 = 1024,
        wdStylisticSet12 = 2048,
        wdStylisticSet13 = 4096,
        wdStylisticSet14 = 8192,
        wdStylisticSet15 = 16384,
        wdStylisticSet16 = 32768,
        wdStylisticSet17 = 65536,
        wdStylisticSet18 = 131072,
        wdStylisticSet19 = 262144,
        wdStylisticSet20 = 524288
    };

    enum WdSpanishSpeller
    {
        wdSpanishTuteoOnly = 0,
        wdSpanishTuteoAndVoseo = 1,
        wdSpanishVoseoOnly = 2
    };

    enum WdLockType
    {
        wdLockNone = 0,
        wdLockReservation = 1,
        wdLockEphemeral = 2,
        wdLockChanged = 3
    };

    enum XlPieSliceLocation
    {
        xlHorizontalCoordinate = 1,
        xlVerticalCoordinate = 2
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

    enum WdCompatibilityMode
    {
        wdWord2003 = 11,
        wdWord2007 = 12,
        wdWord2010 = 14,
        wdWord2013 = 15,
        wdCurrent = 65535
    };

    enum WdProtectedViewCloseReason
    {
        wdProtectedViewCloseNormal = 0,
        wdProtectedViewCloseEdit = 1,
        wdProtectedViewCloseForced = 2
    };

    enum WdPortugueseReform
    {
        wdPortuguesePreReform = 1,
        wdPortuguesePostReform = 2,
        wdPortugueseBoth = 3
    };

    enum WdContentControlAppearance
    {
        wdContentControlBoundingBox = 0,
        wdContentControlTags = 1,
        wdContentControlHidden = 2
    };

    enum WdContentControlLevel
    {
        wdContentControlLevelInline = 0,
        wdContentControlLevelParagraph = 1,
        wdContentControlLevelRow = 2,
        wdContentControlLevelCell = 3
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

    enum WdPageColor
    {
        wdPageColorNone = 0,
        wdPageColorSepia = 1,
        wdPageColorInverse = 2
    };

    enum WdColumnWidth
    {
        wdColumnWidthNarrow = 1,
        wdColumnWidthDefault = 2,
        wdColumnWidthWide = 3
    };

    enum WdRevisionsMarkup
    {
        wdRevisionsMarkupNone = 0,
        wdRevisionsMarkupSimple = 1,
        wdRevisionsMarkupAll = 2
    };

    enum WdDocumentFieldSortBy
    {
        wdDocumentFieldSortByName = 0,
        wdDocumentFieldSortByLocation = 1
    };

    enum WpsPdfCommentsMode
    {
        wpsPdfIgnoreComments = 1,
        wpsPdfPrintCommentsOnly = 2,
        wpsPdfCompatibleComments = 3
    };

    enum WpsPdfPrintRight
    {
        wpsPdfNotAllowPrint = 1,
        wpsPdfPrintLowQulityOnly = 2,
        wpsPdfFreePrint = 3
    };

    enum WpsPdfCopyRight
    {
        wpsPdfNotAllowCopy = 0,
        wpsPdfFreeCopy = 0xffff
    };

    enum WpsPdfEditRight
    {
        wpsPdfAssemble = 1,
        wpsPdfFillForm = 2,
        wpsPdfAnnotate = 3,
        wpsPdfModify = 4
    };

    enum KsoOfdServiceProviderType
    {
        KsoOfdServiceProviderSuwell = 0,
        KsoOfdServiceProviderFoxit = 1
    };
};
