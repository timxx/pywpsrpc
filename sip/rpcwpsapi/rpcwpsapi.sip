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

namespace wpsapi
{
%TypeHeaderCode
    #include <QString>
    #include <wps/wpsapi.h>
%End
};

%Include wpsrpcsdk.sip
%Include enums.sip
%Include Documents.sip
%Include Selection.sip
%Include _Application_extend.sip
%Include _Application.sip
%Include _Document.sip
%Include Range.sip
%Include Paragraph.sip
%Include Paragraphs.sip
%Include _ParagraphFormat.sip
%Include Borders.sip
%Include TabStops.sip
%Include Shading.sip

HRESULT createWpsRpcInstance(IKRpcClient **client);

wpsapi::_Application* getWpsApplication(IKRpcClient *client);
%MethodCode
    wpsapi::_Application* pApp = nullptr;
    a0->getWpsApplication((IUnknown **)&pApp);

    sipRes = pApp;
%End