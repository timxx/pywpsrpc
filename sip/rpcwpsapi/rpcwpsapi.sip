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
%Include ksoapi.sip
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
%Include _Font.sip
%Include GlowFormat.sip
%Include ColorFormat.sip
%Include ReflectionFormat.sip
%Include ShadowFormat.sip
%Include FillFormat.sip
%Include LineFormat.sip
%Include ThreeDFormat.sip
%Include Tables.sip
%Include Columns.sip
%Include Rows.sip
%Include Cells.sip

HRESULT createWpsRpcInstance(IKRpcClient **client);

wpsapi::_Application* getWpsApplication(IKRpcClient *client);
%MethodCode
    wpsapi::_Application* pApp = nullptr;
    a0->getWpsApplication((IUnknown **)&pApp);

    sipRes = pApp;
%End