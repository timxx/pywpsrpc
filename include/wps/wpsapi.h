/*
** Copyright @ 2012-2019, Kingsoft office,All rights reserved.
**
** Redistribution and use in source and binary forms ,without modification and
** selling solely, are permitted provided that the following conditions are
** met:
**
** 1.Redistributions of source code must retain the above copyright notice,
**   this list of conditions and the following disclaimer.
** 2.Redistributions in binary form must reproduce the above copyright notice,
**	 this list of conditions and the following disclaimer in the documentation
**	 and/or other materials provided with the distribution.
** 3.Neither the name of the copyright holder nor the names of its contributors
**	 may be used to endorse or promote products derived from this software
**	 without specific prior written permission.
**
** SPECIAL NOTE:THIS SOFTWARE IS NOT PERMITTED TO BE MODIFIED OR SOLD SOLELY AT
** ANY TIME AND UNDER ANY CIRCUMSTANCES, EXCEPT WITH THE WRITTEN PERMISSION OF
** KINGSOFT OFFICE
**
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
** AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
** IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
** ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
** LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
** CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
** SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
** INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
** CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
** ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
** POSSIBILITY OF SUCH DAMAGE.
**/
#ifndef __INCLUDE_WPSAPI_STDAFX_H__
#define __INCLUDE_WPSAPI_STDAFX_H__


#include "pre_stddef.h"
#include "kfc/guid.h"
#ifndef __KFC_BASIC_INT_H__
#include "int.h"
#endif
#include "typedef.h"
#include "guiddef.h"
#include "objbase.h"

#include "strapi/strapi.h"
#include "comdef.h"


#include "ksoapi/ksoapi.h"


namespace wpsapi
{
using ksoapi::Assistant;
using ksoapi::CommandBars;
using ksoapi::_CommandBars;
using ksoapi::FileSearch;
using ksoapi::COMAddIns;
using ksoapi::LanguageSettings;
using ksoapi::AnswerWizard;
using ksoapi::FileDialog;
using ksoapi::NewFile;
using ksoapi::IAssistance;
using ksoapi::SmartArtLayouts;
using ksoapi::SmartArtQuickStyles;
using ksoapi::SmartArtColors;
using ksoapi::PickerDialog;
using ksoapi::Scripts;
using ksoapi::HTMLProject;
using ksoapi::MsoEnvelope;
using ksoapi::SignatureSet;
using ksoapi::Permission;
using ksoapi::SmartDocument;
using ksoapi::SharedWorkspace;
using ksoapi::Sync;
using ksoapi::DocumentLibraryVersions;
using ksoapi::MetaProperties;
using ksoapi::ServerPolicy;
using ksoapi::DocumentInspectors;
using ksoapi::WorkflowTasks;
using ksoapi::WorkflowTemplates;
using ksoapi::CustomXMLParts;
using ksoapi::OfficeTheme;
using ksoapi::CustomXMLNode;
using ksoapi::CustomXMLPart;	
using ksoapi::SmartArtLayout;
using ksoapi::IMsoDiagram;
using ksoapi::TextFrame2;
using ksoapi::Script;
using ksoapi::SmartArt;
using ksoapi::TextColumn2;
using ksoapi::GradientStops;
using ksoapi::PictureEffects;
using ksoapi::Crop;
using ksoapi::WebPageFonts;
class VBE;
class _VBProject;
class VBProject;
#include "wpsapi/undefs.h"
};

#include "wpsapi/wpsapi.h"

#include "wpsrpcsdk.h"
EXPORTAPI createWpsRpcInstance(IKRpcClient **client);

#include "winnt.h"



#endif /* __INCLUDE_ETAPI_STDAFX_H__ */
