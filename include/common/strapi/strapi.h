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
#ifndef __KFC_STRAPI_H__
#define __KFC_STRAPI_H__

#if !defined(_INC_WCHAR) && !defined(_WCHAR_H)
#include <wchar.h>
#endif

#ifndef __KFC_STRAPI_WCHAR_H__
#include "strapi/wchar.h"
#endif


#if defined(X_ENCODE_UCS2)

#define xstrcat				wcscat
#define xstrncat			wcsncat
#define xstrcpy				wcscpy
#define xstrncpy			wcsncpy
#define xstrecpy			wcsecpy
#define xstrchr				wcschr
#define xstrrchr			wcsrchr
#define xstrlwr				wcslwr
#define xstrupr				wcsupr
#define xstrdup				wcsdup
#define xstrlen				wcslen

#define xstrcmp				wcscmp
#define xstricmp			wcsicmp
#define xstrncmp			wcsncmp
#define xstrnicmp			wcsnicmp
#define xstrcspn			wcscspn
#define xstrspn				wcsspn
#define xstrpbrk			wcspbrk

#define xvsprintf			_vsnwprintf
#define xsprintf			swprintf
#define xnsprintf			_snwprintf

#define toxlower			towlower
#define toxupper			towupper
#define itox				_itow
#define ltox				_ltow
#define ultox				_ultow
#define xsplitpath			_wsplitpath

#define xsplitpath			_wsplitpath
#define xstrtok				wcstok
#define xstrstr				wcsstr

#define xstrtod				wcstod
#define xstrtol				wcstol
#define xstrtoul			wcstoul
#else

#define xstrcat				_Xu2_strcat
#define xstrncat			_Kso_strncat
#define xstrcpy				_Xu2_strcpy
#define xstrncpy			_Xu2_strncpy
#define xstrecpy			_Xu2_strecpy
#define xstrchr				_Xu2_strchr
#define xstrrchr			_Xu2_strrchr
#define xstrlwr				_Xu2_strlwr
#define xstrupr				_Xu2_strupr
#define xstrdup				_Xu2_strdup
#define xstrlen				_Xu2_strlen

#define xstrcmp				_Xu2_strcmp
#define xstricmp			_Xu2_stricmp
#define xstrncmp			_Xu2_strncmp
#define xstrnicmp			_Xu2_strnicmp
#define xstrcspn			_Xu2_strcspn
#define xstrspn				_Xu2_strspn
#define xstrpbrk			_Xu2_strpbrk

#define xvsprintf			_Xu2_vsprintf
#define xsprintf			_Xu2_sprintf

#define toxlower			_Xu2_tolower
#define toxupper			_Xu2_toupper
#define itox				_Xu2_itoa
#define ltox				_Xu2_ltoa
#define ultox				_Xu2_ultoa
#define xsplitpath			_Xu2_splitpath
#define xsplitpath			_Xu2_splitpath

#define xstrtok				_Xu2_strtok
#define xstrstr				_Xu2_strstr

#define xstrtod				_Xu2_strtod
#define xstrtol				_Xu2_strtol
#define xstrtoul			_Xu2_strtoul

#endif // !defined(X_ENCODE_UCS2)

#ifndef X_OS_WINDOWS
#define stricmp strcasecmp
#define _stricmp strcasecmp
#define strnicmp strncasecmp
#define _strnicmp strncasecmp
#endif

// -------------------------------------------------------------------------

#endif /* __KFC_STRAPI_H__ */
