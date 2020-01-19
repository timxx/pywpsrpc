%Module(name=wppsdk, keyword_arguments="Optional")

%Include wpsrpcsdk.sip

%ModuleCode
    #include <wpp/wppapi.h>
%End

HRESULT createWppRpcInstance(IKRpcClient **client);
