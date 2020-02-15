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

// Only the common interfaces needs here
%Include wpsapiex/_ApplicationEx.sip
%Include wpsapiex/ApplicationEventsEx.sip
%Include wpsapiex/enums.sip
%Include wpsapiex/KsoDocumentEx.sip
%Include wpsapiex/WpsCloudService.sip

namespace wpsapiex
{
    class ApplicationEx /Abstract,NoDefaultCtors/
    {
    %ConvertToSubClassCode
        sipType = sipType_wpsapiex__ApplicationEx;
    %End
    };

    typedef float single;
};
