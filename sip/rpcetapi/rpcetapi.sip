/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

%Module(name=pywpsrpc.rpcetapi, keyword_arguments="Optional")

%Include wpsrpcsdk.sip

%ModuleCode
    #include <et/etapi.h>
%End

HRESULT createEtRpcInstance(IKRpcClient **client);
