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