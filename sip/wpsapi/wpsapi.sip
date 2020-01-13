%Module wpsapi

%Include wpsrpcsdk.sip

%ModuleCode
    #include <QString>
    #include <wps/wpsapi.h>
%End

HRESULT createWpsRpcInstance(IKRpcClient **client);
