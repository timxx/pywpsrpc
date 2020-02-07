%Module(name=pywpsrpc.rpcetapi, keyword_arguments="Optional")

%Include wpsrpcsdk.sip

%ModuleCode
    #include <et/etapi.h>
%End

HRESULT createEtRpcInstance(IKRpcClient **client);
