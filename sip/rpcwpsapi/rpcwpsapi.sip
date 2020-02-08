/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

%Module(name=pywpsrpc.rpcwpsapi, keyword_arguments="Optional")

%Include wpsrpcsdk.sip
%Include _Application.sip
%Include enums.sip

%ModuleCode
    #include <QString>
    #include <wps/wpsapi.h>
%End

HRESULT createWpsRpcInstance(IKRpcClient **client);

wpsapi::_Application* getWpsApplication(IKRpcClient *client);
%MethodCode
    wpsapi::_Application* pApp = nullptr;
    a0->getWpsApplication((IUnknown **)&pApp);

    sipRes = pApp;
%End