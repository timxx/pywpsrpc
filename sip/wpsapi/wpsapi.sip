%Module wpsapi

%Include wpsrpcsdk.sip
%Include _Application.sip

%ModuleCode
    #include <QString>
    #include <wps/wpsapi.h>
%End

HRESULT createWpsRpcInstance(IKRpcClient **client);

wpsapi::_Application* getWpsApplication(IKRpcClient *client);
%MethodCode
    wpsapi::_Application* pApp = SIP_NULLPTR;
    a0->getWpsApplication((IUnknown **)&pApp);

    sipRes = pApp;
%End