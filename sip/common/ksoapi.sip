/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace ksoapi
{
%TypeHeaderCode
    #include <pre_stddef.h>
    #include <kfc/guid.h>
    #include <int.h>
    #include <typedef.h>
    #include <guiddef.h>
    #include <objbase.h>
    #include <strapi/strapi.h>
    #include <comdef.h>
    #include <ksoapi/ksoapi.h>
%End

typedef float single;
typedef long MsoRGBType;
};

%Include ksoapi/mso_enum.sip
%Include ksoapi/_IMsoDispObj.sip
%Include ksoapi/GradientStops.sip
%Include ksoapi/ColorFormat.sip
%Include ksoapi/PictureEffects.sip
%Include ksoapi/Crop.sip
%Include ksoapi/TextColumn2.sip
%Include ksoapi/Scripts.sip
%Include ksoapi/DiagramNodes.sip
%Include ksoapi/Shapes.sip
%Include ksoapi/ShapeRange.sip
%Include ksoapi/ShapeNodes.sip
%Include ksoapi/ShapeFormat.sip
%Include ksoapi/TextFrame.sip
%Include ksoapi/MsoChart.sip
%Include ksoapi/SmartArt.sip
%Include ksoapi/CustomXML.sip
