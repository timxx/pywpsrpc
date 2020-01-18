%Module wppsdk

%Include wpsrpcsdk.sip

%ModuleCode
    #include <wpp/wppapi.h>
%End

HRESULT createWppRpcInstance(IKRpcClient **client);
