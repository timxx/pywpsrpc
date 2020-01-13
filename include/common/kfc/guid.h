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
#ifndef __KFC_GUID_H__
#define __KFC_GUID_H__

// -------------------------------------------------------------------------

#include "pre_platform.h"

#ifndef GUID_DEFINED
#define GUID_DEFINED
#define __IID_DEFINED__
#define CLSID_DEFINED

#pragma pack(1)
typedef struct _GUID
{
	uint32	Data1;
	uint16	Data2;
	uint16	Data3;
	uint8	Data4[8];
} GUID;
#pragma pack()

#endif

// -------------------------------------------------------------------------

#ifndef EXTERN_C
	#ifdef __cplusplus
		#define EXTERN_C    extern "C"
	#else
		#define EXTERN_C
	#endif
#endif

// -------------------------------------------------------------------------

#ifndef DECLARE_GUID
#define DECLARE_GUID(var)		EXTERN_C const GUID var;
#endif

#ifndef DECLARE_CLSID
#define DECLARE_CLSID(Com)		DECLARE_GUID(CLSID_##Com)
#endif

#ifndef DECLARE_IID
#define DECLARE_IID(Intf)		DECLARE_GUID(IID_##Intf)
#endif

// -------------------------------------------------------------------------

#define IMPLEMENT_GUID(var, sz, x, s1, s2, c1, c2, c3, c4, c5, c6, c7, c8)	\
	EXTERN_C const GUID var													\
			= {x, s1, s2, { c1, c2, c3, c4, c5, c6, c7, c8 }};

#define IMPLEMENT_CLSID(Com, sz, x, s1, s2, c1, c2, c3, c4, c5, c6, c7, c8)	\
	IMPLEMENT_GUID(CLSID_##Com, sz,											\
			x, s1, s2, c1, c2, c3, c4, c5, c6, c7, c8)

#define IMPLEMENT_IID(Intf, sz, x, s1, s2, c1, c2, c3, c4, c5, c6, c7, c8)	\
	IMPLEMENT_GUID(IID_##Intf, sz,											\
			x, s1, s2, c1, c2, c3, c4, c5, c6, c7, c8);

// -------------------------------------------------------------------------

typedef GUID IID;
typedef GUID CLSID;

#ifdef X_CC_GCC
typedef const IID& REFFMTID;
#endif
#if defined(__cplusplus)
#ifndef REFGUID
#define REFGUID             const GUID&
#endif // !REFGUID
#ifndef REFIID
#define REFIID              const IID&
#endif // !REFIID
#ifndef REFCLSID
#define REFCLSID            const CLSID&
#endif // !REFCLSID

#else 

#ifndef REFGUID
#define REFGUID             const GUID* const
#endif // !REFGUID
#ifndef REFIID
#define REFIID              const IID* const
#endif // !REFIID
#ifndef REFCLSID
#define REFCLSID            const CLSID* const
#endif // !REFCLSID

#endif

// -------------------------------------------------------------------------

#ifndef	__iid
#define __iid(Interface)	IID_ ## Interface
#endif

#ifndef	__clsid
#define __clsid(ComClass)	CLSID_ ## ComClass
#endif

#ifndef X_OS_WINDOWS
EXTERN_C const GUID CLSID_NULL;
EXTERN_C const GUID GUID_NULL;
EXTERN_C const GUID IID_NULL;
#endif
// -------------------------------------------------------------------------

#endif /* __KFC_GUID_H__ */

