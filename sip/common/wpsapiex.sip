/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

%ModuleHeaderCode
    #include "stdafx.h"
%End

%Include wpsapiex/_ApplicationEx.sip
%Include wpsapiex/ApplicationEventsEx.sip
%Include wpsapiex/enums.sip
%Include wpsapiex/KsoDocumentEx.sip
%Include wpsapiex/WpsCloudService.sip

%Include wpsapiex/_DocumentEx.sip
%Include wpsapiex/_WpsApplicationEx.sip
%Include wpsapiex/DocumentsEx.sip
%Include wpsapiex/HeaderFooterEx.sip
%Include wpsapiex/Heading.sip
%Include wpsapiex/Headings.sip
%Include wpsapiex/PrintoutPageEx.sip
%Include wpsapiex/RangeEx.sip
%Include wpsapiex/WaterMark.sip
%Include wpsapiex/WaterMarks.sip
%Include wpsapiex/WpsApplicationEventsEx.sip

%Include wpsapiex/_PresentationEx.sip
%Include wpsapiex/_WppApplicationEx.sip
%Include wpsapiex/PresentationsEx.sip
%Include wpsapiex/WppApplicationEventsEx.sip

%Include wpsapiex/_EtApplicationEx.sip
%Include wpsapiex/_WorkbookEx.sip
%Include wpsapiex/EtApplicationEventsEx.sip
%Include wpsapiex/EtRangeEx.sip
%Include wpsapiex/WorkbooksEx.sip

namespace wpsapiex
{
    class ApplicationEx /Abstract,NoDefaultCtors/
    {
    %ConvertToSubClassCode
        sipType = sipType_wpsapiex__ApplicationEx;
    %End
    };

    class WpsApplicationEx /Abstract,NoDefaultCtors/
    {
    %ConvertToSubClassCode
        sipType = sipType_wpsapiex__WpsApplicationEx;
    %End
    };

    class DocumentEx /Abstract,NoDefaultCtors/
    {
    %ConvertToSubClassCode
        sipType = sipType_wpsapiex__DocumentEx;
    %End
    };

    class PresentationEx /Abstract,NoDefaultCtors/
    {
    %ConvertToSubClassCode
        sipType = sipType_wpsapiex__PresentationEx;
    %End
    };

    class WppApplicationEx /Abstract,NoDefaultCtors/
    {
    %ConvertToSubClassCode
        sipType = sipType_wpsapiex__WppApplicationEx;
    %End
    };

    class EtApplicationEx /Abstract,NoDefaultCtors/
    {
    %ConvertToSubClassCode
        sipType = sipType_wpsapiex__EtApplicationEx;
    %End
    };

    class WorkbookEx /Abstract,NoDefaultCtors/
    {
    %ConvertToSubClassCode
        sipType = sipType_wpsapiex__WorkbookEx;
    %End
    };

    typedef float single;

    const IID DIID_ApplicationEventsEx;
};

%ModuleCode
namespace wpsapiex
{
    // the DIID_ApplicationEventsEx defined in those rpc modules
    // we have to define one for common module to avoid undefined
    const IID DIID_ApplicationEventsEx =
    {
         0xFB001E43, 0x0460, 0x4D96,
         { 0x98, 0x76, 0x75, 0xC9, 0x1C, 0xD4, 0x1B, 0x0A }
    };
}
%End
