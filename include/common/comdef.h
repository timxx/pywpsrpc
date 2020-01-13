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
#ifndef __KFC_COM_COMDEF_H__
#define __KFC_COM_COMDEF_H__

#ifndef __KFC_COM_GUIDDEF_H__
#include "guiddef.h"
#endif

#include <memory.h>
#include <oleauto.h>


#ifndef STDPROC
#define STDPROC				virtual HRESULT __stdcall
#define STDPROC_(Type)		virtual Type __stdcall
#endif

#ifndef PURE
#define PURE				= 0
#endif

#ifndef DECLARE_CLSID
#define DECLARE_CLSID(ComClass)	EXTERN_C const GUID CLSID_##ComClass;
#endif

#ifndef DEFINE_GUID
#ifdef INITGUID
#define DEFINE_GUID(name, l, w1, w2, b1, b2, b3, b4, b5, b6, b7, b8) \
		EXTERN_C const GUID name \
				= { l, w1, w2, { b1, b2,  b3,  b4,  b5,  b6,  b7,  b8 } }
#else
#define DEFINE_GUID(name, l, w1, w2, b1, b2, b3, b4, b5, b6, b7, b8) \
	EXTERN_C const GUID FAR name
#endif // INITGUID
#endif

#ifndef DECLSPEC_UUID
#define DECLSPEC_UUID(x)
#endif


#if !defined( _OBJBASE_H_ )

inline BOOL operator==(REFGUID rguid1, REFGUID rguid2)
{
	return ((INT32*) &rguid1)[0] == ((INT32*) &rguid2)[0]
		&& ((INT32*) &rguid1)[1] == ((INT32*) &rguid2)[1]
		&& ((INT32*) &rguid1)[2] == ((INT32*) &rguid2)[2]
		&& ((INT32*) &rguid1)[3] == ((INT32*) &rguid2)[3];
}

inline BOOL operator!=(const GUID& guidOne, const GUID& guidOther)
{
    return !(guidOne == guidOther);
}

#endif

inline BOOL _XInlineIsEqualGUID(REFGUID rguid1, REFGUID rguid2)
{
	return ((INT32*) &rguid1)[0] == ((INT32*) &rguid2)[0]
		&& ((INT32*) &rguid1)[1] == ((INT32*) &rguid2)[1]
		&& ((INT32*) &rguid1)[2] == ((INT32*) &rguid2)[2]
		&& ((INT32*) &rguid1)[3] == ((INT32*) &rguid2)[3];
}

inline BOOL _XInlineIsEqualUnknown(REFGUID rguid1)
{
	return ((INT32*) &rguid1)[0] == 0
		&& ((INT32*) &rguid1)[1] == 0
#ifdef __BYTESWAP__
		&& ((INT32*) &rguid1)[2] == 0xC0000000
		&& ((INT32*) &rguid1)[3] == 0x00000046;
#else
		&& ((INT32*) &rguid1)[2] == 0x000000C0
		&& ((INT32*) &rguid1)[3] == 0x46000000;
#endif
}

#define InlineIsEqualGUID(rguid1, rguid2)	_XInlineIsEqualGUID(rguid1, rguid2)
#define InlineIsEqualUnknown(rguid1)		_XInlineIsEqualUnknown(rguid1)

// =========================================================================

#ifndef ISEQUAL_GUID
#define ISEQUAL_GUID(g1, g2)				InlineIsEqualGUID(g1, g2)
#define ISEQUAL_IID(g1, g2)					InlineIsEqualGUID(g1, g2)
#define ISEQUAL_CLSID(g1, g2)				InlineIsEqualGUID(g1, g2)
#endif

#ifndef IsEqualGUID
#define IsEqualGUID(rguid1, rguid2)			InlineIsEqualGUID(rguid1, rguid2)
#define IsEqualIID(riid1, riid2)			IsEqualGUID(riid1, riid2)
#define IsEqualCLSID(rclsid1, rclsid2)		IsEqualGUID(rclsid1, rclsid2)
#endif

#define _ksCompareGUID(g1, g2)				memcmp(&(g1), &(g2), sizeof(GUID))

#ifndef COMPARE_GUID
#define COMPARE_GUID(g1, g2)				_ksCompareGUID(g1, g2)
#define COMPARE_IID(g1, g2)					_ksCompareGUID(g1, g2)
#define COMPARE_CLSID(g1, g2)				_ksCompareGUID(g1, g2)
#endif



#ifndef _KS_SAFECAST
#define _KS_SAFECAST(Interface)			(void**)static_cast<Interface**>
#endif

#ifndef CREATE_INSTANCE_
#define CREATE_INSTANCE_(ComClass, Interface, ppv)							\
	_KFC CreateInstance(__clsid(ComClass), __iid(Interface), _KS_SAFECAST(Interface)(ppv))
#endif

#ifndef CREATE_INSTANCE_AGG_
#define CREATE_INSTANCE_AGG_(ComClass, ppv, pOuter)							\
	_KFC CreateInstance(__clsid(ComClass), _KS_SAFECAST(IUnknown)(ppv), pOuter)
#endif

#ifndef QUERYINTERFACE
#define QUERYINTERFACE(Interface, ppv)										\
	QueryInterface(__iid(Interface), _KS_SAFECAST(Interface)(ppv))
#endif

#ifndef QI
#define QI(Interface, ppv)													\
	QueryInterface(__iid(Interface), _KS_SAFECAST(Interface)(ppv))
#endif

#ifndef KS_ASSIGN
#define KS_ASSIGN(Dest, Src)												\
{																			\
	if ((Src) != NULL)														\
		(Src)->AddRef();													\
	if ((Dest) != NULL)														\
		(Dest)->Release();													\
	(Dest) = (Src);															\
}
#endif

#ifndef RELEASE
#define RELEASE(pUnk)														\
	if ((pUnk) != NULL)														\
	{																		\
		(pUnk)->Release();													\
		(pUnk) = NULL;														\
	}
#endif

#ifndef KS_RELEASE
#define KS_RELEASE(pUnk)		RELEASE(pUnk)
#endif

#ifndef KS_CLOSE
#define KS_CLOSE(pUnk)														\
	if ((pUnk) != NULL)														\
	{																		\
		(pUnk)->Close();													\
		(pUnk)->Release();													\
		(pUnk) = NULL;														\
	}
#endif

#ifndef KS_TERM
#define KS_TERM(pUnk)														\
	if ((pUnk) != NULL)														\
	{																		\
		(pUnk)->Term();														\
		(pUnk)->Release();													\
		(pUnk) = NULL;														\
	}
#endif

#ifndef IS_KINDOF
#define IS_KINDOF(pUnk, Interface)		_KFC IsKindOf(pUnk, __iid(Interface))
#endif

// =========================================================================

#define BEGIN_GETINTERFACE(ComClass)										\
STDMETHODIMP ComClass::GetInterface(REFIID riid, void** ppvObject)			\
{																			\
	if (0);

#define ADD_INTERFACE2(Interface, pIntf)									\
	else if (ISEQUAL_IID(riid, __iid(Interface)))							\
		*ppvObject = static_cast<Interface*>(pIntf);

#define END_GETINTERFACE()													\
	else																	\
	{																		\
		TRACE_GUIDX(__X("GetInterface - IID not found"), riid);				\
		*ppvObject = NULL;													\
		return E_NOINTERFACE;												\
	}																		\
	if (*ppvObject == NULL)													\
	{																		\
		TRACE_GUIDX(__X("GetInterface - null object found"), riid);			\
		return E_NOINTERFACE;												\
	}																		\
	((IUnknown*)(*ppvObject))->AddRef();									\
	return S_OK;															\
}

// =========================================================================

_KFC_BEGIN

// -------------------------------------------------------------------------

class ks_bstr
{
public:
	typedef BSTR type;
	typedef UINT size_type;

protected:
	BSTR _bstr;

private:
	ks_bstr(const ks_bstr&);
	void operator=(const ks_bstr&);

public:
	ks_bstr()
	{
		_bstr = NULL;
	}
	ks_bstr(LPCWSTR wcs)
	{
		_bstr = SysAllocString(wcs);
	}
	ks_bstr(LPCWSTR wcs, size_type cch)
	{
		_bstr = SysAllocStringLen(wcs, cch);
	}
	~ks_bstr()
	{
		SysFreeString(_bstr);
		_bstr = NULL;
	}

public:
	(operator BSTR)() const
	{
		return _bstr;
	}
	BSTR* operator&()
	{
		
		return &_bstr;
	}
	LPCWSTR c_str() const
	{
		return _bstr;
	}
	void assign(LPCWSTR wcs)
	{
		SysReAllocString(&_bstr, wcs);
	}
	void assign(LPCWSTR wcs, size_type cch)
	{
		SysReAllocStringLen(&_bstr, wcs, cch);
	}
	BOOL empty() const
	{
		return SysStringLen(_bstr) == 0;
	}
	size_type size() const
	{
		return SysStringLen(_bstr);
	}
	BSTR detach()
	{
		BSTR tmp = _bstr;
		_bstr = NULL;
		return tmp;
	}
	void attach(BSTR bstr)
	{
		SysFreeString(_bstr);
		_bstr = bstr;
	}
	void clear()
	{
		SysFreeString(_bstr);
		_bstr = NULL;
	}
	bool isEqual(BSTR bstr) const
	{
		enum { bytes_of_char = sizeof(WCHAR) };
		const unsigned int len = SysStringLen(bstr);
		return (len == SysStringLen(_bstr)) ? 
			(memcmp(_bstr, bstr, bytes_of_char*len) == 0) : FALSE;
	}
	bool isEqualString(LPCWSTR wcs) const
	{
		enum { bytes_of_char = sizeof(WCHAR) };
		const unsigned int len = xstrlen(wcs);
		return (len == SysStringLen(_bstr)) ?
			(memcmp(_bstr, wcs, bytes_of_char*len) == 0) : FALSE;
	}
};

_KFC_END



#endif /* __KFC_COM_COMDEF_H__ */
