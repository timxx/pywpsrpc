/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wpsapiex
{
    enum KsoRightsInfo
    {
        ksoNoneRight = 0x0,
        ksoModifyRight = 0x1,
        ksoCopyRight = 0x2,
        ksoPrintRight = 0x4,
        ksoSaveRight = 0x8,
        ksoBackupRight = 0x10,
        ksoVbaRight = 0x20,
        ksoSaveAsRight = 0x40,
        ksoFullRight = -1
    };

    enum KsoWebExtWatchingDataType
    {
        ksoInvalidWatchingDataType = 0x0,
        ksoRangeWatchingDataType = 0x1
    };

    enum KsoWebExtWatchingDataUpdateType
    {
        ksoInvalidWatchingDataUpdateType = 0x0,
        ksoRangeValueChangedUpdateType = 0x1,
        ksoRangeChangedUpdateType = 0x2
    };

    enum WdWaterMarkType
    {
        wdTextWaterMark = 1,
        wdPictureWaterMark = 2
    };

    enum WdContentChangeType
    {
        wdContentInsert = 0,
        wdContentDelete = 1,
        wdContentStyle = 2,
        wdContentHeading = 3,
        wdContentParaProp = 4
    };

    enum WdInkDrawPenStyle
    {
        wdBallpointPen = 0,
        wdWatercolorPen = 1,
        wdHighlighterPen = 2
    };

    enum WdInkDrawStyle
    {
        WdInkDrawPen = 0,
        WdInkDrawShape = 1
    };

    enum WdInkDrawShapeStyle
    {
        wdDrawLineShape = 0,
        wdDrawWaveShape = 1,
        wdDrawRectShape = 2
    };
};
