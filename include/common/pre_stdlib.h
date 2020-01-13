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
#ifndef __PRE_STDLIB_H__
#define __PRE_STDLIB_H__



#include "pre_platform.h"

// -------------------------------------------------------------------------- //

#include <stdlib.h>	
#ifdef __cplusplus
#include <exception>
#endif

#ifdef X_OS_WINDOWS
#   include <malloc.h>	
#   define xalloca _alloca
#elif defined(X_OS_FREEBSD)
#   include <stdlib.h>
#   define xalloca alloca
#else
#   include <alloca.h>
#   define xalloca alloca
#endif

#include <stdio.h>

// -------------------------------------------------------------------------- //
#if defined(X_OS_WINDOWS) && !defined(USES_KSKERN)

#if !defined(_WINDEF_)
#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#endif

#if !defined(_OBJBASE_H_)
#include <objbase.h>
#endif

#include <wchar.h>

#include <cstdint>

typedef int8_t				int8;
typedef int16_t				int16;
typedef int32_t				int32;
typedef int64_t				int64;
typedef uint8_t				uint8;
typedef uint16_t			uint16;
typedef uint32_t			uint32;
typedef uint64_t			uint64;
typedef intptr_t			intp;
typedef uintptr_t			uintp;

typedef uintp				UINTP;
typedef intp				INTP;
typedef uintp				KSO_WParam;
typedef intp				KSO_LParam;

typedef long				size32;
typedef unsigned long		usize32;
typedef size32				SIZE32;
typedef usize32				USIZE32;

#undef TRUE
#undef FALSE
#define TRUE				1
#define FALSE				0

#define MAKEINT32 MAKELONG

#else // !defined(X_OS_WINDOWS)

#ifndef __KERN_TYPEDEF_H__
#include "typedef.h"
#endif


#ifndef __KERN_ERRNO_H__
#include "kfc/errno.h"

#endif
#include "winuser.h"
#endif

// =========================================================================

#ifdef __clang__
#  if __cplusplus >= 201103L || defined(__GXX_EXPERIMENTAL_CXX0X__)
#    if __has_feature(cxx_override_control)
#      define X_SUPPORT_OVERRIDE
#    endif
#  endif
#elif defined(__GNUC__)
#  if __GNUC__ >= 4 && __GNUC_MINOR__ >= 7
#     define X_SUPPORT_OVERRIDE
#  endif
#elif defined(_MSC_VER)
#  define X_SUPPORT_OVERRIDE
#endif


#ifdef X_SUPPORT_OVERRIDE
#  define X_OVERRIDE override
#else
#  define X_OVERRIDE
#endif


#if defined(X_CC_VC)
#	define X_VER_VC6							1200
#	define X_VER_VC_NET_2003					1310
#	define X_VER_VC_NET_2005					1400
#	define X_VER_VC_NET_2010					1600
#	define X_SUPPORT_STDCALL
#	define X_SUPPORT_NULLFN
#	if (_MSC_VER < X_VER_VC_NET_2010)
#		error "the compiler version is too lower, please use msvc2010 or above."
#	else
#		define X_ISOCPP_FOR				
#		define X_SUPPORT_W64				
#		define X_CC_VC_NET
#	endif
#	define X_SUPPORT_DEFINE_WSTRING				
#	define X_SUPPORT_DEFINE_LOCAL_WSTRING			
#	define X_SUPPORT_snwprintf				
#	define X_SUPPORT_swscanf				
#	define X_SUPPORT_itow				
#	define USES_DEFSTL

	typedef unsigned __int64 __uint64;

#	if !defined(_MFC_OVERRIDES_NEW)
#		define X_SUPPORT_CRTDBG
#	endif
#elif defined(X_CC_BC)
#	error "unsupport compiler, please use msvc2010 or above."
#elif defined(X_CC_GCC)
#	include <stdint.h>
#	define X_SUPPORT_STDCALL
#	define X_SUPPORT_EXPORT		
#	define X_ISOCPP_FOR
#	define USES_DEFSTL

#	define __stdcall			__attribute__((stdcall))
#	define __fastcall			__attribute__((fastcall))
#	define __cdecl
#	define __export				__attribute__((visibility("default")))

	typedef int64_t				__int64;
	typedef uint64_t			__uint64;
	typedef UINT32				PROPID;
	typedef size_t				SIZE_T;


#else
#	define __cdecl
#endif

#ifndef __novtable
#	if defined(X_CC_VC)
#		define __novtable		__declspec(novtable)
#	else
#		define __novtable
#	endif
#endif

#if !defined(X_SUPPORT_EXPORT) && !defined(__export)
#define __export
#endif

#if !defined(X_CC_VC) && !defined(__forceinline)
#  define __forceinline inline
#endif

#if !defined(X_CC_VC)
#define _THROW0()
#define _THROW1(x)			throw(...)
#define _THROW(x, y)		throw x(y)
#define _THROW_NCEE(x, y)	_TRHOW(x, y)

#define _CRTIMP2
#define _CRTIMP2_PURE		_CRTIMP2
#endif

#if !defined(X_SUPPORT_NULLFN)
#  if defined(X_CC_VC)
#    define __noop	_Xnullfunc
inline int __cdecl _Xnullfunc(const void* fmt, ...) { return 0; }
inline int __cdecl _Xnullfunc(int nLevel, const void* fmt, ...) { return 0; }
#  else
#    define __noop
#  endif
#endif

#if !defined(X_SUPPORT_W64)
#define __w64
#endif

#if !defined(X_SUPPORT_STDCALL)
#	if defined(X_NOUSE_STDCALL)
#		define __stdcall
#	else
#		error "Unsupport __stdcall?"
#	endif
#endif

#if !defined(X_ISOCPP_FOR)
#define X_ISOCPP_FOR
#define for		if (0); else for
#endif

#ifndef NULLFN
#define NULLFN	__noop
#endif

#if defined(X_CC_CLANG) && !defined(NULLPTR)
#define NULLPTR nullptr
#else
#define NULLPTR NULL
#endif

#ifdef X_CC_GCC
inline LONG InterlockedIncrement(LONG *p)
{
	return __sync_add_and_fetch(p, 1);
}

inline LONG InterlockedDecrement(LONG *p)
{
	return __sync_sub_and_fetch(p, 1);
}

inline LONG InterlockedIncrement(INT32 *p)
{
	return __sync_add_and_fetch(p, 1);
}

inline LONG InterlockedDecrement(INT32 *p)
{
	return __sync_sub_and_fetch(p, 1);
}
#endif

// -------------------------------------------------------------------------- //

#if defined(__AFX_H__) && !defined(X_MFC_DIAGNOST)
#undef TRACE
#undef ASSERT
#undef VERIFY
#endif


#	define prompt(desc)			message(desc)


#if !defined(__BYTESWAP__)

#define _KfcByteSwap16(val)
#define _KfcByteSwap32(val)
#define _KfcByteSwapStruct(val)
#define _KfcByteSwap16Array(val, count)
#define _KfcByteSwap32Array(val, count)
#define _KfcByteSwapStructArray(val, count)

#else

#error "todo"

#endif

#ifdef X_CC_VC
#define __X(x) L ## x
#define __Xc(x) L ## x
#else
#define __X(x) ((unsigned short *)(u ## x))
#define OLESTR(x) __X(x)
#define __Xc(x) ((unsigned short)(u ## x))
#endif


// =========================================================================
#ifndef X_OS_WINDOWS


#include <objbase.h>
#include <wchar.h>
#include "strapi/strapi/wchar.h"

#endif

// =========================================================================

#if defined(__cplusplus)
#define _KFC					kfc::
#define _KFC_BEGIN				namespace kfc {
#define _KFC_END				};
#define _USING_KFC				using namespace kfc;
#else
#define _KFC
#define _KFC_BEGIN
#define _KFC_END
#define _USING_KFC
#endif

// -------------------------------------------------------------------------- //

#if defined(__cplusplus)
#define ALG_BEGIN		namespace alg {
#define ALG_END			}
#define ALG_USING		using namespace alg;
#else
#define	ALG_BEGIN
#define ALG_END
#endif

// -------------------------------------------------------------------------- //

#define etexec			alg
#define ETEXEC_BEGIN	ALG_BEGIN
#define ETEXEC_END		ALG_END

// -------------------------------------------------------------------------- //

#if !defined(EXTERN_C)
#ifdef __cplusplus
#define EXTERN_C				extern "C"
#else
#define EXTERN_C
#endif
#endif

#ifndef STDAPI
#define STDAPI                  EXTERN_C HRESULT __stdcall
#define STDAPI_(type)           EXTERN_C type __stdcall
#endif

#ifndef STDMETHOD
#define STDMETHODCALLTYPE		__stdcall
#define STDMETHOD(method)       virtual HRESULT STDMETHODCALLTYPE method
#define STDMETHOD_(type,method) virtual type STDMETHODCALLTYPE method
#define STDMETHODIMP            HRESULT STDMETHODCALLTYPE
#define STDMETHODIMP_(type)     type STDMETHODCALLTYPE
#endif

#ifndef PURE
#define PURE					= 0
#endif

#ifndef STDPROC
#define STDPROC					virtual HRESULT __stdcall
#define STDPROC_(Type)			virtual Type __stdcall
#endif

#ifndef EXPORTAPI
#define EXPORTAPI				EXTERN_C __export HRESULT __stdcall
#define EXPORTAPI_(type)		EXTERN_C __export type __stdcall
#endif

#if !defined(__BEGIN_DECLS)
#	if defined(__cplusplus)
#		define __BEGIN_DECLS	extern "C" {
#		define __END_DECLS		}
#	else
#		define __BEGIN_DECLS
#		define __END_DECLS
#	endif
#endif

// =========================================================================

#ifndef	countof
#define countof(array)						(sizeof(array)/sizeof(array[0]))
#endif

#ifndef _offsetof
#	if defined(X_CC_GCC)
#		define _offsetof(coclass, member)	( (size_t)&((coclass*)64)->member - 64 )
#	else
#		define _offsetof(coclass, member)	( (size_t)&((coclass*)0)->member )
#	endif
#endif

#ifndef parent_class_ptr
#define parent_class_ptr(ParentClass, member)	\
	( (ParentClass*)((const char*)(this) - _offsetof(ParentClass, member)) )
#endif

// =========================================================================

#ifndef AllocMemory
#define AllocMemory(cb)					malloc(cb)
#define ReallocMemory(pv, cb)			realloc(pv, cb)
#define FreeMemory(pv)					free(pv)
#endif

#ifndef FillMemory
#define FillMemory(p, len, c)			memset(p, c, len)
#define ZeroMemory(p, len)				memset(p, 0, len)
#define CopyMemory(dst, src, len)		memcpy(dst, src, len)
#define MoveMemory(dst, src, len)		memmove(dst, src, len)
#endif

#ifndef ZeroStruct
#define ZeroStruct(buf)					ZeroMemory(&(buf), sizeof(buf))
#endif

#ifndef TokenVal
#define TokenVal(p, type)				(*((type*&)(p))++)
#endif

#ifndef TokenSize
#define TokenSize(p, size)				(((const char*&)(p)) += (size))
#endif

class IOException : public std::exception
{
public:
	const char* what() const throw()
	{
		return "IOException: Token out of bound";
	}
};

template<typename T>
inline T _TokenVal2(const BYTE* &p, const BYTE* pEnd)
{
	if (pEnd - p < sizeof(T))
		throw IOException();
	const BYTE* tmp = p;
	p += sizeof(T);
	return *(T*)tmp;
}

inline void _TokenSize2(const BYTE* &p, const BYTE* pEnd, int size)
{
	if (p + size >= pEnd)
		throw IOException();
	p += size;
}

#define TokenVal2(p, pEnd, T) (_TokenVal2<T>((const BYTE* &)p, (const BYTE *)pEnd))
#define TokenSize2(p, pEnd, size) (_TokenSize2((const BYTE* &)p, (const BYTE *)pEnd, size))
// =========================================================================

#ifndef ROUND
#define ROUND(x, y)						( ((x)+((y)-1)) & ~((y)-1) )
#endif

#ifndef MAX
#define MAX(x, y)						((x) > (y) ? (x) : (y))
#define MIN(x, y)						((x) < (y) ? (x) : (y))
#endif

// =========================================================================


#ifndef X_OS_LINUX
#	ifndef MAX_PATH
#		define MAX_PATH		260
#	endif
#	ifndef _MAX_PATH
#		define _MAX_PATH		MAX_PATH
#		define _MAX_FNAME		256
#		define _MAX_DRIVE		3
#		define _MAX_DIR		256
#		define _MAX_EXT		256
#	endif
#else
#	ifndef _MAX_PATH
#		define _MAX_PATH		MAX_PATH
#		define _MAX_FNAME		MAX_PATH
#		define _MAX_DRIVE		3
#		define _MAX_DIR		MAX_PATH
#		define _MAX_EXT		256
#	endif
#endif

// =========================================================================

DECLARE_HANDLE(HPTR);
DECLARE_HANDLE(HBSTR);
#ifndef X_OS_WINDOWS
	DECLARE_HANDLE(HSTR);
#endif

#if !defined(__ATLCONV_H__) && defined(__cplusplus)
#define __ATLCONV_H__

#ifndef EXTERN_C
#ifdef __cplusplus
#define EXTERN_C    extern "C"
#else
#define EXTERN_C
#endif
#endif

#ifndef WINAPI
#define WINAPI __stdcall
#endif

// -------------------------------------------------------------------------

#if defined(X_OS_WINDOWS)

#ifndef _WINNLS_

EXTERN_C int WINAPI MultiByteToWideChar(
					UINT     CodePage,
					DWORD    dwFlags,
					LPCSTR   lpMultiByteStr,
					int      cchMultiByte,
					LPWSTR   lpWideCharStr,
					int      cchWideChar);

EXTERN_C int WINAPI WideCharToMultiByte(
					UINT     CodePage,
					DWORD    dwFlags,
					LPCWSTR  lpWideCharStr,
					int      cchWideChar,
					LPSTR    lpMultiByteStr,
					int      cchMultiByte,
					LPCSTR   lpDefaultChar,
					LPBOOL   lpUsedDefaultChar);

#ifndef CP_ACP
#define CP_ACP      0    
#endif

#endif // _WINNLS_

inline
LPWSTR __stdcall _kfc_A2WHelper(LPWSTR lpw, LPCSTR lpa, int nWideChars)
{
	lpw[0] = '\0';
	MultiByteToWideChar(
		CP_ACP, 0, lpa, nWideChars /* nAnsiChar */, lpw, nWideChars);
	return lpw;
}

inline
LPSTR __stdcall _kfc_W2AHelper(LPSTR lpa, LPCWSTR lpw, int nWideChars)
{
	lpa[0] = '\0';
	WideCharToMultiByte(
		CP_ACP, 0, lpw, nWideChars, lpa, nWideChars<<1 /* nAnsiChar */, NULL, NULL);
	return lpa;
}

// -------------------------------------------------------------------------
#else

#endif // !defined(X_OS_WINDOWS)

// -------------------------------------------------------------------------

#ifndef _DEBUG
#define USES_CONVERSION														\
	int _convert; _convert; LPCWSTR _lpw; _lpw; LPCSTR _lpa; _lpa
#else
#define USES_CONVERSION 													\
	int _convert = 0; _convert; LPCWSTR _lpw = NULL; _lpw; LPCSTR _lpa = NULL; _lpa
#endif

#define A2W(lpa) (\
	((_lpa = lpa) == NULL) ? NULL : (\
		_convert = (strlen(_lpa)+1),\
		_kfc_A2WHelper((LPWSTR)alloca(_convert<<1), _lpa, _convert)))

#define W2A(lpw) (\
	((_lpw = lpw) == NULL) ? NULL : (\
		_convert = (xstrlen(_lpw)+1), \
		_kfc_W2AHelper((LPSTR)alloca(_convert<<1), _lpw, _convert)))

#define A2CW(lpa) ((LPCWSTR)A2W(lpa))
#define W2CA(lpw) ((LPCSTR)W2A(lpw))

// -------------------------------------------------------------------------

inline LPOLESTR W2OLE(LPWSTR lp) { return lp; }
inline LPWSTR OLE2W(LPOLESTR lp) { return lp; }
inline LPCOLESTR W2COLE(LPCWSTR lp) { return lp; }
inline LPCWSTR OLE2CW(LPCOLESTR lp) { return lp; }

#define A2OLE A2W
#define OLE2A W2A

#define A2COLE A2CW
#define OLE2CA W2CA

// -------------------------------------------------------------------------

#if defined(_UNICODE)
inline LPCOLESTR T2COLE(LPCTSTR lp) { return lp; }
inline LPCTSTR OLE2CT(LPCOLESTR lpo) { return lpo; }
inline LPOLESTR T2OLE(LPTSTR lp) { return lp; }
inline LPTSTR OLE2T(LPOLESTR lp) { return lp; }
#else
#define T2COLE(lpa) A2CW(lpa)
#define T2OLE(lpa)  A2W(lpa)
#define OLE2CT(lpo) W2CA(lpo)
#define OLE2T(lpo)  W2A(lpo)
#endif

#endif /* __ATLCONV_H__ */

// -------------------------------------------------------------------------- //
//
// -------------------------------------------------------------------------- //

#ifndef abstract
#define abstract
#endif

#ifndef obsolete
#define obsolete
#endif

#ifndef OPTIONAL
#define OPTIONAL
#endif

#ifndef IN
#define IN
#endif

#ifndef OUT
#define OUT
#endif

#ifndef REF
#define REF
#endif

#ifndef OPTIONAL
#define OPTIONAL
#endif

// -------------------------------------------------------------------------

#if !defined(__typename)
#define __typename(TheClass)	typeid(TheClass).name()
#endif



// =========================================================================

#if !defined(__deprecated)
#if !defined(_MSC_VER) || (_MSC_VER <= 1200)
#define __deprecated(msg)
#elif defined(_MSC_FULL_VER) && (_MSC_FULL_VER >= 140050320)
#define __deprecated(msg)	__declspec(deprecated(msg))
#else
#define __deprecated(msg)	__declspec(deprecated)
#endif
#endif


#if !defined(_vsnprintf_dbg) 
#if defined(_TRUNCATE)
#define _vsnprintf_dbg(buff, cchBuff, fmt, arglist)		_vsnprintf_s(buff, cchBuff, _TRUNCATE, fmt, arglist)
#define _vsnwprintf_dbg(buff, cchBuff, fmt, arglist)	_vsnwprintf_s(buff, cchBuff, _TRUNCATE, fmt, arglist)
#else
#define _vsnprintf_dbg(buff, cchBuff, fmt, arglist)		_vsnprintf(buff, cchBuff, fmt, arglist)
#define _vsnwprintf_dbg(buff, cchBuff, fmt, arglist)	_vsnwprintf(buff, cchBuff, fmt, arglist)
#endif
#endif


#if !defined(_snprintf_dbg)
#if defined(_TRUNCATE)
#define _snprintf_dbg									_snprintf_s
#define _TRUNCATE_PARAM									_TRUNCATE,
#else
#define _snprintf_dbg									_snprintf
#define _TRUNCATE_PARAM
#endif
#endif



// =========================================================================

#if defined(__cplusplus)

#if (0)
#define X_NOSTOP_ON_EXCEPTION
#endif

#pragma pack(1)

#pragma pack()

#endif // defined(__cplusplus)

#endif //__PRE_STDLIB_H__
// -------------------------------------------------------------------------- //
