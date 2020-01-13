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
#ifndef __KERN_OBJBASE_H__
#define __KERN_OBJBASE_H__

#ifndef __KFC_GUID_H__
#include "kfc/guid.h"
#endif

// -------------------------------------------------------------------------

#if defined( X_OS_WINDOWS )
#	define __KERN_OBJIDL_H__
#	define __KERN_OAIDL_H__
#	define __KERN_OLEAUTO_H__
#	if !defined( _OBJBASE_H_ )
#		include <objbase.h>
#	endif
#else

#ifndef __RPC_FAR
#define __RPC_FAR
#endif
#ifndef __RPC_STUB 
#define __RPC_STUB		__stdcall
#endif

typedef void __RPC_FAR * RPC_IF_HANDLE;

typedef unsigned char	 byte;
typedef CLSID __RPC_FAR* LPCLSID;
typedef IID __RPC_FAR*	LPIID;
typedef WCHAR			OLECHAR;
typedef OLECHAR*		LPOLESTR;
typedef const OLECHAR*	LPCOLESTR;
typedef OLECHAR*		BSTR;
typedef double			DATE;

DECLARE_HANDLE(HGLOBAL);

#ifndef interface
#define interface struct
#endif

#ifndef STDAPICALLTYPE
#define STDAPICALLTYPE			__stdcall
#endif

#ifndef STDMETHODCALLTYPE
#define STDMETHODCALLTYPE       __stdcall
#endif

#ifndef MIDL_INTERFACE
#define MIDL_INTERFACE(x)		struct
#endif

#ifndef MIDL_INTERFACE_
#define MIDL_INTERFACE_(x, Intrf)	DECLARE_IID(Intrf) struct Intrf
#endif

#ifndef PURE
#define PURE                    = 0
#endif

#ifndef STDMETHODIMP
#define STDMETHOD(method)       virtual HRESULT STDMETHODCALLTYPE method
#define STDMETHOD_(type,method) virtual type STDMETHODCALLTYPE method
#define STDMETHODIMP            HRESULT STDMETHODCALLTYPE
#define STDMETHODIMP_(type)     type STDMETHODCALLTYPE
#endif

#ifndef STDAPI
#define STDAPI				EXTERN_C HRESULT STDMETHODCALLTYPE
#define STDAPI_(type)		EXTERN_C type STDMETHODCALLTYPE
#endif

#ifndef THIS_
#define THIS_
#endif

#ifndef THIS
#define THIS
#endif

#endif

// -------------------------------------------------------------------------
#define	HGPTR	unsigned

#define HMETAFILEPICT	unsigned
#define HENHMETAFILE	unsigned
#define HBITMAP			unsigned

#ifndef __KERN_OBJIDL_H__
#include "objidl.h"
#endif

#ifndef __KERN_OLEAUTO_H__
#include "oleauto.h"
#endif

#ifndef __STG_KSOSTGAPI_H__
//#include "stg/ksostgapi.h"
#endif

// -------------------------------------------------------------------------

#ifndef _XFileLineTracker
#define _XFileLineTracker()
#endif

#ifndef X_OS_WINDOWS
/* class registration flags; passed to CoRegisterClassObject */
typedef enum tagREGCLS
{
    REGCLS_SINGLEUSE = 0,
    REGCLS_MULTIPLEUSE = 1,
    REGCLS_MULTI_SEPARATE = 2,
    REGCLS_SUSPENDED = 4,
    REGCLS_SURROGATE = 8
} REGCLS;
#endif
// -------------------------------------------------------------------------

STDAPI _XCoGetMalloc(UINT uMemContext, LPMALLOC FAR* ppv);
STDAPI _XCoRegisterMallocSpy(LPMALLOCSPY pMallocSpy);
STDAPI _XCoRevokeMallocSpy(void);
STDAPI_(LPVOID) _XCoTaskMemAlloc(UINT cb);
STDAPI_(LPVOID) _XCoTaskMemRealloc(LPVOID pv, UINT cb);
STDAPI_(void)   _XCoTaskMemFree(LPVOID pv);
#define CoGetMalloc(uMemContext, ppv)	_XCoGetMalloc(uMemContext, ppv)
#define CoRegisterMallocSpy(pMallocSpy)	_XCoRegisterMallocSpy(pMallocSpy)
#define CoRevokeMallocSpy()				_XCoRevokeMallocSpy()
#define CoTaskMemAlloc(cb)				_XFileLineTracker() _XCoTaskMemAlloc(cb)
#define CoTaskMemRealloc(pv, cb)		_XFileLineTracker() _XCoTaskMemRealloc(pv, cb)
#define CoTaskMemFree(pv)				_XCoTaskMemFree(pv)

/* guid/progid helpers */
STDAPI _XCoCreateGuid(GUID FAR *pguid);
STDAPI _XStringFromCLSID(REFCLSID clsid, LPOLESTR FAR* ppsz);
STDAPI _XCLSIDFromString(LPCOLESTR psz, LPCLSID pclsid);
STDAPI _XStringFromIID(REFIID clsid, LPOLESTR FAR* ppsz);
STDAPI _XIIDFromString(LPCOLESTR lpsz, LPIID lpiid);
STDAPI _XProgIDFromCLSID(REFCLSID clsid, LPOLESTR FAR* ppszProgID);
STDAPI _XCLSIDFromProgID(LPCOLESTR szProgID, LPCLSID pclsid);
STDAPI_(int) _XStringFromGUID2(REFGUID guid, LPOLESTR psz, int cchMax);
#define CoCreateGuid(pguid)				_XCoCreateGuid(pguid)
#define StringFromCLSID(clsid, ppsz)	_XFileLineTracker() _XStringFromCLSID(clsid, ppsz)
#define CLSIDFromString(psz, pclsid)	_XCLSIDFromString(psz, pclsid)
#define StringFromIID(iid, ppsz)		StringFromCLSID(iid, ppsz)
#define IIDFromString(psz, piid)		CLSIDFromString(psz, piid)
#define ProgIDFromCLSID(clsid, ppsz)	_XFileLineTracker() _XProgIDFromCLSID(clsid, ppsz)
#define CLSIDFromProgID(psz, pclsid)	_XCLSIDFromProgID(psz, pclsid)
#define StringFromGUID2(guid, psz, cch)	_XStringFromGUID2(guid, psz, cch)



#endif /* __KERN_OBJBASE_H__ */
