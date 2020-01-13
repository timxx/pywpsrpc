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
#ifndef __KFC_STRAPI_WCHAR_H__
#define __KFC_STRAPI_WCHAR_H__

#include <cstdarg>

#if (0)
#define X_KFC_MINIDEP
#endif

// =========================================================================

#if defined(__cplusplus)
extern "C" {
#endif

#define OUT
#define IN

#ifndef STDAPICALLTYPE
#define STDAPICALLTYPE		__stdcall
#endif

#define WCHARAPI        EXTERN_C HRESULT STDAPICALLTYPE
#define WCHARAPI_(type) EXTERN_C type STDAPICALLTYPE

WCHARAPI_(int) _Xu2_memcmp(const WCHAR* first, const WCHAR* second, size_t count);
WCHARAPI_(WCHAR*) _Xu2_memcpy(WCHAR* dest, const WCHAR* src, size_t count);
WCHARAPI_(WCHAR*) _Xu2_memmove(WCHAR* dest, const WCHAR* src, size_t count);
WCHARAPI_(WCHAR*) _Xu2_memset(WCHAR* dest, WCHAR ch, size_t count);
const WCHAR* __stdcall _Xu2_memchr(const WCHAR* string, WCHAR ch, size_t count);

WCHARAPI_(WCHAR*) _Xu2_strcat(WCHAR* dest, const WCHAR* src);
WCHARAPI_(WCHAR*) _Kso_strncat(WCHAR* dest, const WCHAR* src, size_t count);
WCHARAPI_(WCHAR*) _Xu2_strcpy(WCHAR* dest, const WCHAR* src);
WCHARAPI_(WCHAR*) _Xu2_strncpy(WCHAR* dest, const WCHAR* src, size_t count);
WCHARAPI_(WCHAR*) _Xu2_strecpy(WCHAR* dest, const WCHAR* src);
WCHARAPI_(WCHAR*) _Xu2_strchr(const WCHAR* string, WCHAR ch);
WCHARAPI_(WCHAR*) _Xu2_strrchr(const WCHAR* string, WCHAR ch);
WCHARAPI_(WCHAR*) _Xu2_strlwr(WCHAR* string);
WCHARAPI_(WCHAR*) _Xu2_strupr(WCHAR* string);
WCHARAPI_(WCHAR*) _Xu2_strdup(const WCHAR* string);
WCHARAPI_(size_t) _Xu2_strlen(const WCHAR* string);

WCHARAPI_(int) _Xu2_strcmp(const WCHAR* first, const WCHAR* second);
WCHARAPI_(int) _Xu2_stricmp(const WCHAR* first, const WCHAR* second);
WCHARAPI_(int) _Xu2_strncmp(const WCHAR* first, const WCHAR* second, size_t count);
WCHARAPI_(int) _Xu2_strnicmp(const WCHAR* first, const WCHAR* second, size_t count);

WCHARAPI_(size_t) _Xu2_strcspn(const WCHAR* string, const WCHAR* control);
WCHARAPI_(size_t) _Xu2_strspn(const WCHAR* string, const WCHAR* control);
WCHARAPI_(WCHAR*) _Xu2_strpbrk(const WCHAR* string, const WCHAR* control);

WCHARAPI_(WCHAR*) _Xu2_itoa(int val, WCHAR* string, int radix);
WCHARAPI_(WCHAR*) _Xu2_ltoa(long val, WCHAR* string, int radix);
WCHARAPI_(WCHAR*) _Xu2_ultoa(unsigned long val, WCHAR* string, int radix);
WCHARAPI_(void) _Xu2_splitpath(const WCHAR* path, WCHAR* drive, WCHAR* dir, WCHAR* fname, WCHAR* ext);
WCHARAPI_(WCHAR*) _Xu2_strstr(const WCHAR* str1, const WCHAR* str2);

WCHARAPI_(double) _Xu2_strtod(const WCHAR* string, WCHAR** end);
WCHARAPI_(long) _Xu2_strtol(const WCHAR* string, WCHAR** end, int base);
WCHARAPI_(unsigned long) _Xu2_strtoul(const WCHAR* string, WCHAR** end, int base);

WCHARAPI_(WCHAR) _Xu2_tolower(WCHAR ch);
WCHARAPI_(WCHAR)_Xu2_toupper(WCHAR ch);

EXPORTAPI_(WCHAR*) _Xu2_strtok(WCHAR* token, const WCHAR* delimit);
EXPORTAPI_(void) _Xu2_splitpath(const WCHAR* path, WCHAR* drive, WCHAR* dir, WCHAR* fname, WCHAR* ext);

WCHAR* __stdcall _Xu2_makepath2(
					  OUT WCHAR* path,
					  IN const WCHAR* dir,
					  IN const WCHAR* filename
					  );

#if defined(__cplusplus)
};
#endif


#if defined(__cplusplus)

#ifndef STDOUTPROC
#define STDOUTPROC	virtual void __stdcall
#endif

interface IOutputTargetW
{
	STDOUTPROC put(WCHAR ch) PURE;
	STDOUTPROC put(int num, WCHAR ch) PURE;
	STDOUTPROC put(WCHAR* str, int len) PURE;
};

STDAPI_(void) _Xu2_vxprintf_inline(
								   IOutputTargetW* output,
								   const WCHAR* fmt,
								   va_list arglist
								   );

STDAPI_(int) _Xu2_vsprintf_inline(
								  WCHAR* buf,
								  size_t size,
								  const WCHAR* fmt,
								  va_list arglist
								  );

#if !defined(X_KFC_MINIDEP)

EXPORTAPI_(void) _Xu2_vxprintf(
							   IOutputTargetW* output,
							   const WCHAR* fmt,
							   va_list arglist
							   );

EXPORTAPI_(int) _Xu2_vsprintf(
							  WCHAR* buf,
							  size_t size,
							  const WCHAR* fmt,
							  va_list arglist
							  );

#else

#define _Xu2_vxprintf	_Xu2_vxprintf_inline
#define _Xu2_vsprintf	_Xu2_vsprintf_inline

#endif


inline int __cdecl _Xu2_sprintf(
								 WCHAR* buf,
								 size_t size,
								 const WCHAR* fmt,
								 ...
								 )
{
	va_list arglist;
	va_start(arglist, fmt);
	int ret = _Xu2_vsprintf(buf, size, fmt, arglist);
	va_end(arglist);
	return ret;
}

#endif



#endif /* __KFC_STRAPI_WCHAR_H__ */
