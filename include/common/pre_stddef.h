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
#ifndef __PRE_STDDEF_H__
#define __PRE_STDDEF_H__



#include "pre_platform.h"

#include "pre_stdlib.h"


#if _MSC_VER >= 1400
#	define _CRT_SECURE_NO_DEPRECATE
#endif

// -------------------------------------------------------------------------- //
#ifndef ASSERT
#include <assert.h>
#define ASSERT assert
#endif

#if (0)
#define __USES_KSKERN__ // for backward compatibility
#endif

#if !defined(X_OS_WINDOWS) || defined(__USES_KSKERN__)
#undef  USES_KSKERN
#define USES_KSKERN
#endif

#if defined(__No_AutoInitCom) // for backward compatibility
#define X_NO_AUTO_COINIT
#endif

#if defined(__No_AutoInitKfc) // for backward compatibility
#define X_NO_AUTOINIT
#endif

#undef DocumentProperties

#ifndef NULL_HGBL
#define NULL_HGBL	0
#endif

// -------------------------------------------------------------------------- //

#if (0)
#define X_NO_AUTO_COINIT
#define X_NO_AUTOINIT
#define X_INIT_SAFE
#endif

// =========================================================================

#if defined(USES_KSKERN)

#define DisableThreadLibraryCalls(hModule)	0

#define DLL_PROCESS_ATTACH 1
#define DLL_THREAD_ATTACH  2
#define DLL_THREAD_DETACH  3
#define DLL_PROCESS_DETACH 0

#endif

#ifndef APIENTRY
#define APIENTRY				__stdcall
#endif

#ifndef WINAPI
#define WINAPI					__stdcall
#endif

#ifndef CALLBACK
#define CALLBACK				__stdcall
#endif


#if !defined(X_CC_VC) && !defined(__argc)
extern int __argc;
extern WCHAR** __wargv;
#endif

// -------------------------------------------------------------------------

#ifndef ASSERT_DERIVE
#define ASSERT_DERIVE(TestClass, BaseClass)									\
		STATIC_ASSERT( IsDerivedFrom(TestClass, BaseClass) )
#endif

// -------------------------------------------------------------------------- //

#define DEFINE_GBLARRAY_EX(Type, VarName)									\
	template <class nInst>													\
	class _GblVar_##VarName													\
	{																		\
	public:																	\
		static Type Var[];													\
	};																		\
																			\
	template <class nInst>													\
	Type _GblVar_##VarName<nInst>::Var[]

#define DEFINE_ASTR_(VarName)												\
	DEFINE_GBLARRAY_EX(const char, VarName)
	
#define DEFINE_WSTR_(VarName)												\
	DEFINE_GBLARRAY_EX(const WCHAR, VarName)

#define DEFINE_ASTR(VarName, Value)											\
	DEFINE_ASTR_(VarName) = Value

// -------------------------------------------------------------------------

#define DEFINE_GBLVAR_EX(Type, VarName)										\
	template <class nInst>													\
	class _GblVar_##VarName													\
	{																		\
	public:																	\
		static Type Var;													\
	};																		\
																			\
	template <class nInst>													\
	Type _GblVar_##VarName<nInst>::Var

#define DEFINE_LPCSTR(VarName, Value)										\
	DEFINE_GBLVAR_EX(const char*, VarName) = Value

#define DEFINE_LPCWSTR(VarName, Value)										\
	DEFINE_GBLVAR_EX(const WCHAR*, VarName) = Value

// -------------------------------------------------------------------------

#ifndef REF_GBLVAR
#define REF_GBLVAR(VarName)													\
	_GblVar_##VarName<int>::Var
#endif

// -------------------------------------------------------------------------- //

#if defined(__cplusplus)

// -------------------------------------------------------------------------- //

#ifndef GUID_LODWORD

#define GUID_LODWORD(guid)		(guid).Data1
#endif


#endif	// __cplusplus

// -------------------------------------------------------------------------- //

#if defined(X_NO_AUTOINIT)
#define _XmainInitialize(pvReserved)	0
#define _XmainTerminate()				0
#elif defined(X_NO_AUTO_COINIT)
#define _XmainInitialize(pvReserved)	_XKFCInitialize()
#define _XmainTerminate()				_XKFCTerminate()
#else
#define _XmainInitialize(pvReserved)	_XCoInitialize(pvReserved)
#define _XmainTerminate()				_XCoUninitialize()
#endif

// -------------------------------------------------------------------------

#if defined(X_CC_VC) && !defined(KFC_AtlCompliant)
typedef HINSTANCE DLLHANDLE_T;
#else
typedef HINSTANCE DLLHANDLE_T;
#endif

// -------------------------------------------------------------------------


// -------------------------------------------------------------------------

#ifdef X_NO_AUTO_DEFINE_MODULE
#define __No_AutoDefineModule
#endif

// -------------------------------------------------------------------------

typedef HPTR HWSTR;
typedef WCHAR KSWCHAR;

struct _Kern_AStrData;
struct _Kern_WStrData;
struct _Kern_Data;

typedef struct _Kern_AStrData* KSASTR;
typedef struct _Kern_WStrData* KSWSTR;
typedef struct _Kern_Data* KSDATA;

// -------------------------------------------------------------------------

#if defined(X_OS_WINDOWS)

#define X_SUPPORT_HGLOBAL		
#define X_SUPPORT_INCDEC	

#undef  wcstombs
#undef  mbstowcs
#define wcstombs(psz, pwcs, cch) WideCharToMultiByte(CP_ACP, 0, pwcs, -1, psz, cch, 0, 0)
#define mbstowcs(pwcs, psz, cch) MultiByteToWideChar(CP_ACP, 0, psz, -1, pwcs, cch)

typedef ULONG REFERENCE;

#else

#if defined(X_CC_BC)
typedef LONG REFERENCE;
#else
typedef ULONG REFERENCE;
#endif

#endif

// -------------------------------------------------------------------------

#ifndef INLINEAPI
#define INLINEAPI				inline HRESULT __stdcall
#define INLINEAPI_(type)		inline type __stdcall
#endif

#ifndef CDECLAPI
#define CDECLAPI				inline HRESULT __cdecl
#define CDECLAPI_(type)			inline type __cdecl
#endif

#ifndef DECLARE_IID
#define DECLARE_IID(Interface)	EXTERN_C const GUID IID_##Interface;
#endif

#ifndef DECLARE_CLSID
#define DECLARE_CLSID(ComClass)	EXTERN_C const GUID CLSID_##ComClass;
#endif

// -------------------------------------------------------------------------

#ifndef DECLARE_NSINTERFACE
#define DECLARE_NSINTERFACE(NS, Interface)									\
	namespace NS { interface Interface; }
#endif

// -------------------------------------------------------------------------

#if !defined(X_ENCODE_UCS2)

STDAPI_(size_t) _Xucs2tombs(LPSTR psz, LPCWSTR pwcs, size_t cch);
STDAPI_(size_t) _Xmbstoucs2(LPWSTR pwcs, LPCSTR psz, size_t cch);

#undef  wcstombs
#undef  mbstowcs
inline size_t wcstombs(LPSTR psz, LPCWSTR pwcs, size_t cch)
{
	return _Xucs2tombs(psz, pwcs, cch);
}

inline size_t mbstowcs(LPWSTR pwcs, LPCSTR psz, size_t cch)
{
	return _Xmbstoucs2(pwcs, psz, cch);
}


#endif // !defined(X_ENCODE_UCS2)


#endif //PRE_STDDEF_H
// -------------------------------------------------------------------------
