%Module etapi

%Include wpsrpcsdk.sip

%ModuleCode
    #include <et/etapi.h>
%End

HRESULT createEtRpcInstance(IKRpcClient **client);
