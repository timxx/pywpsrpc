/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

%Module(name=pywpsrpc.rpcwppapi, keyword_arguments="Optional")

%Include wpsrpcsdk.sip

%ModuleCode
    #include <wpp/wppapi.h>
%End

HRESULT createWppRpcInstance(IKRpcClient **client);
