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
// -------------------------------------------------------------------------- //
//	功能描述	：	定义了最基础的类型，与MS的类型基本兼容

#if !defined(__KERN_TYPEDEF_H__) && !defined(_WINDEF_)
#define __KERN_TYPEDEF_H__

#if !defined(_INC_STDLIB)
#include <stdlib.h>
#endif

#pragma pack(push,1)
#pragma pack(1)

// -------------------------------------------------------------------------- //

#ifndef FALSE
#define FALSE	0
#endif

#ifndef TRUE
#define TRUE	1
#endif

// -------------------------------------------------------------------------- //

#undef far
#undef near

#define far
#define near

#ifndef CDECL
#define CDECL	__cdecl
#endif

#ifndef PASCAL
#define PASCAL	__stdcall
#endif

#undef FAR
#undef NEAR
#define FAR                 far
#define NEAR                near

#ifndef CONST
#define CONST               const
#endif

#ifdef X_OS_LINUX
#	include <linux/limits.h>
#	ifndef MAX_PATH
#		define MAX_PATH			PATH_MAX
#	elif MAX_PATH != PATH_MAX
#		undef MAX_PATH
#		define MAX_PATH			PATH_MAX
#	endif
#else
#	ifndef MAX_PATH
#		define MAX_PATH			260
#	endif
#endif

#ifndef __RPC_FAR
#define __RPC_FAR
#endif

// -------------------------------------------------------------------------
#ifndef interface
#define interface struct
#endif

#ifndef BASETYPES
#define BASETYPES
typedef unsigned long ULONG;
typedef ULONG *PULONG;
typedef unsigned short USHORT;
typedef USHORT *PUSHORT;
typedef unsigned char UCHAR;
typedef UCHAR *PUCHAR;
typedef char *PSZ;
#endif  /* !BASETYPES */

#ifndef VOID
#define VOID void
typedef char CHAR;
typedef short SHORT;
typedef long LONG;
typedef LONG *PLONG;
#endif

typedef void* PVOID;
typedef unsigned short VARTYPE;
typedef short VARIANT_BOOL;
typedef long SCODE;

#ifdef __cplusplus
#include <cstdint>
#else
#include <stdint.h>
#endif

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

typedef int8				INT8;
typedef uint8				UINT8;
typedef int16				INT16;
typedef uint16				UINT16;
typedef int32				INT32;
typedef uint32				UINT32;
typedef int64				INT64;
typedef uint64				UINT64;
typedef UINT32				DWORD;
typedef int32				BOOL;
typedef unsigned char		BYTE;
typedef uint16				WORD;
typedef float				FLOAT;
typedef double				DOUBLE;
typedef FLOAT				*PFLOAT;
typedef BOOL near			*PBOOL;
typedef BOOL far			*LPBOOL;
typedef BYTE near			*PBYTE;
typedef BYTE far			*LPBYTE;
typedef int near			*PINT;
typedef int far				*LPINT;
typedef WORD near			*PWORD;
typedef WORD far			*LPWORD;
typedef long far			*LPLONG;
typedef DWORD near			*PDWORD;
typedef DWORD far			*LPDWORD;
typedef void far			*LPVOID;
typedef CONST void far		*LPCVOID;

typedef int					INT;
typedef unsigned int		UINT;
typedef unsigned int		*PUINT;
typedef long long			LONGLONG;
typedef unsigned long long	ULONGLONG;
typedef DWORD				LCID;
typedef DWORD				LCTYPE;

typedef uintp				UINTP;
typedef intp				INTP;
typedef uintp				KSO_WParam;
typedef intp				KSO_LParam;

typedef int32				size32;
typedef uint32				usize32;
typedef size32				SIZE32;
typedef usize32				USIZE32;

typedef DWORD   COLORREF;
typedef DWORD*	LPCOLORREF;

static_assert(sizeof(DWORD) == 4, "DWORD has no 4 bytes.");
static_assert(sizeof(int8) == 1, "int8 has no 1 byte");
static_assert(sizeof(uint8) == 1, "uint8 has no 1 byte");
static_assert(sizeof(int16) == 2, "int16 has no 2 byte");
static_assert(sizeof(uint16) == 2, "uint16 has no 2 byte");
static_assert(sizeof(int32) == 4, "int32 has no 4 byte");
static_assert(sizeof(uint32) == 4, "uint32 has no 4 byte");
static_assert(sizeof(int64) == 8, "int64 has no 8 byte");
static_assert(sizeof(uint64) == 8, "uint64 has no 8 byte");
static_assert(sizeof(intp) == sizeof(void*), "intp's size not equal to void *");
static_assert(sizeof(uintp) == sizeof(void*), "uintp's size not equal to void *");

#ifndef _HRESULT_DEFINED
#define _HRESULT_DEFINED
typedef INT32 HRESULT;
#endif // !_HRESULT_DEFINED

#define MAKEWORD(a, b)      ((WORD)(((BYTE)(a)) | ((WORD)((BYTE)(b))) << 8))
#define MAKEINT32(a, b)     ((INT32)(((WORD)(a)) | ((DWORD)((WORD)(b))) << 16))
#define LOWORD(l)           ((WORD)(l))
#define HIWORD(l)           ((WORD)(((DWORD)(l) >> 16) & 0xFFFF))
#define LOBYTE(w)           ((BYTE)(w))
#define HIBYTE(w)           ((BYTE)(((WORD)(w) >> 8) & 0xFF))

// -------------------------------------------------------------------------

#ifdef _MSC_VER
	#if _MSC_VER <= 1500 
	typedef unsigned short char16_t;
	#else
	#include <cstdint>
	#endif
#endif

typedef unsigned short WCHAR;

typedef WCHAR*	PWCHAR;
typedef WCHAR*	LPWCH, *PWCH;
typedef WCHAR*	LPWSTR, *PWSTR;
typedef CONST WCHAR* PCWCHAR;
typedef CONST WCHAR* LPCWCH, *PCWCH;
typedef CONST WCHAR* LPCWSTR, *PCWSTR;

typedef LPCWSTR LPCOLESTR;
typedef LPWSTR LPOLESTR;

typedef CHAR *PCHAR;
typedef CHAR *LPCH, *PCH;

typedef CONST CHAR *LPCCH, *PCCH;
typedef CHAR *NPSTR;
typedef CHAR *LPSTR, *PSTR;
typedef CONST CHAR *LPCSTR, *PCSTR;

#ifdef  UNICODE

#ifndef _TCHAR_DEFINED
#define _TCHAR_DEFINED
typedef WCHAR TCHAR, *PTCHAR;
typedef WCHAR TBYTE, *PTBYTE;
#endif

typedef LPWSTR LPTCH, PTCH;
typedef LPWSTR PTSTR, LPTSTR;
typedef LPCWSTR LPCTSTR;
typedef LPWSTR LP;
#define __TEXT(quote) L##quote

#else   /* UNICODE */

#ifndef _TCHAR_DEFINED
#define _TCHAR_DEFINED
typedef char TCHAR, *PTCHAR;
typedef unsigned char TBYTE, *PTBYTE ;
#endif /* !_TCHAR_DEFINED */

typedef LPSTR LPTCH, PTCH;
typedef LPSTR PTSTR, LPTSTR;
typedef LPCSTR LPCTSTR;
#define __TEXT(quote) quote

#endif /* UNICODE */

#define TEXT(quote) __TEXT(quote)

// -------------------------------------------------------------------------

typedef struct tagRECT
{
	INT32 left;
	INT32 top;
	INT32 right;
	INT32 bottom;
} RECT, *PRECT, NEAR *NPRECT, FAR *LPRECT;

typedef const RECT FAR* LPCRECT;

typedef struct  _RECTL
{
	INT32 left;
	INT32 top;
	INT32 right;
	INT32 bottom;
}	RECTL;

typedef struct _RECTL __RPC_FAR *PRECTL;
typedef struct _RECTL __RPC_FAR *LPRECTL;

typedef struct tagPOINT
{
	INT32 x;
	INT32 y;
} POINT, *PPOINT, NEAR *NPPOINT, FAR *LPPOINT;

typedef struct  _POINTL
{
	INT32 x;
	INT32 y;
}	POINTL;

typedef struct _POINTL __RPC_FAR *PPOINTL;

typedef struct tagSIZE
{
	INT32 cx;
	INT32 cy;
} SIZE, *PSIZE, *LPSIZE;

typedef struct  tagSIZEL
{
	INT32 cx;
	INT32 cy;
}	SIZEL;

typedef struct tagSIZEL __RPC_FAR *PSIZEL;
typedef struct tagSIZEL __RPC_FAR *LPSIZEL;

typedef struct _FIXED
{
#ifndef _MAC
	UINT16 fract;
	INT16 value;
#else
	INT16 value;
	UINT16 fract;
#endif
} FIXED;

typedef union _LARGE_INTEGER
{
	struct
	{
		UINT32 LowPart;
		INT32 HighPart;
	};
	INT64 QuadPart;
} LARGE_INTEGER, *PLARGE_INTEGER; 

typedef union _ULARGE_INTEGER
{
	struct
	{
		UINT32 LowPart;
		UINT32 HighPart;
	};
	UINT64 QuadPart;
} ULARGE_INTEGER, *PULARGE_INTEGER;

#ifndef _FILETIME_
#define _FILETIME_
typedef struct  _FILETIME
{
	DWORD dwLowDateTime;
	DWORD dwHighDateTime;
} FILETIME;
typedef struct _FILETIME* PFILETIME;
typedef struct _FILETIME* LPFILETIME;
#endif /* _FILETIME */

#ifndef _tagCY_DEFINED
#define _tagCY_DEFINED
#define _CY_DEFINED
typedef union tagCY
{
	struct
	{
#ifdef _MAC
		INT32 Hi;
		INT32 Lo;
#else
		UINT32 Lo;
		INT32 Hi;
#endif
	};
	INT64 int64;
} CY;
typedef CY* LPCY;
#endif /* _CY_DEFINED */

typedef struct tagDEC
{
	USHORT wReserved;
	union
	{
		struct
		{
			BYTE scale;
			BYTE sign;
		};
		USHORT signscale;
	};
	UINT32 Hi32;
	union
	{
		struct
		{
#ifdef _MAC
			UINT32 Mid32;
			UINT32 Lo32;
#else
			UINT32 Lo32;
			UINT32 Mid32;
#endif
		};
		UINT64 Lo64;
	};
} DECIMAL;

static_assert(sizeof(DECIMAL) == 16, "DECIMAL size is not 16.");

// -------------------------------------------------------------------------

#ifndef DECLARE_HANDLE
	typedef void* HANDLE;
	#define DECLARE_HANDLE(name) struct __handle_##name##__ { int unused; }; typedef struct name##__ *name
	typedef HANDLE* PHANDLE;
#endif

#if !defined(__HMODULE)
#define __HMODULE
	DECLARE_HANDLE(HINSTANCE);
	typedef HINSTANCE HMODULE;	
#endif

// -------------------------------------------------------------------------

#ifndef EXTERN_C
#ifdef __cplusplus
#define EXTERN_C    extern "C"
#else
#define EXTERN_C
#endif
#endif

#ifndef STDAPI
#define STDAPI				EXTERN_C HRESULT __stdcall
#define STDAPI_(type)       EXTERN_C type __stdcall

#define STDAPICALLTYPE                  __stdcall
#define STDAPIVCALLTYPE                 __cdecl
#endif

#ifndef EXPORTAPI
#define EXPORTAPI			EXTERN_C __export HRESULT __stdcall
#define EXPORTAPI_(type)	EXTERN_C __export type __stdcall
#endif

#pragma pack(pop)

// -------------------------------------------------------------------------

#ifndef LISet32
#define LISet32(li, v)		((li).HighPart = (v) < 0 ? -1 : 0, (li).LowPart = (v))
#define ULISet32(li, v)		((li).HighPart = 0, (li).LowPart = (v))
#endif
	
#ifndef VARIANT_TRUE
#define VARIANT_TRUE	((VARIANT_BOOL)0xffff)
#define VARIANT_FALSE	((VARIANT_BOOL)0)
#endif


// -------------------------------------------------------------------------- //
	
#endif
