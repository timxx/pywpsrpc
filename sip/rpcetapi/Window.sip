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
    struct Window : public IDispatch /Abstract/
    {
    %ConvertToSubClassCode
        sipType = sipType_etapi_IWindow;
    %End
    };
};
