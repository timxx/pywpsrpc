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
#ifndef __KFC_VARIANT_H__
#define __KFC_VARIANT_H__

#ifndef ASSERT
#define ASSERT(f)
#endif

interface IUnknown;
interface IDispatch;

_KFC_BEGIN

// -------------------------------------------------------------------------

class KComVariant : public tagVARIANT
{
public:
	enum { npos = -1 };

public:
	KComVariant()
	{
	        V_VT(this) = VT_EMPTY;
	}
	KComVariant(const VARIANT& varSrc)
	{
		V_VT(this) = VT_EMPTY;
		Copy(&varSrc);
	}
	KComVariant(const KComVariant& varSrc)
	{
		V_VT(this) = VT_EMPTY;
		Copy(&varSrc);
	}
	KComVariant(int32 nSrc, VARTYPE vtSrc = VT_I4)
	{
		V_VT(this) = vtSrc;
		V_I4(this) = nSrc;
	}
	KComVariant(uint32 nSrc, VARTYPE vtSrc = VT_I4)
	{
		V_VT(this) = vtSrc;
		V_I4(this) = nSrc;
	}
#ifndef X_BIT_64
#ifdef X_OS_WINDOWS
	KComVariant(DWORD nSrc, VARTYPE vtSrc = VT_I4)
#else
	KComVariant(long nSrc, VARTYPE vtSrc = VT_I4)
#endif
	{
		V_VT(this) = vtSrc;
		V_I4(this) = nSrc;
	}
#endif
	KComVariant(int64 nSrc, VARTYPE vtSrc = VT_I8)
	{
		V_VT(this) = vtSrc;
		V_I8(this) = nSrc;
	}
	KComVariant(uint64 nSrc, VARTYPE vtSrc = VT_I8)
	{
		V_VT(this) = vtSrc;
		V_I8(this) = nSrc;
	}
	KComVariant(double nSrc, VARTYPE vtSrc = VT_R8)
	{
		V_VT(this) = vtSrc;
		V_R8(this) = nSrc;
	}
	KComVariant(CURRENCY cySrc)
	{
		V_VT(this) = VT_CY;
		V_CY(this) = cySrc;
	}
	KComVariant(IDispatch* pSrc)
	{
		V_VT(this) = VT_DISPATCH;
		V_DISPATCH(this) = pSrc;
		if (V_DISPATCH(this) != NULL) 
			((IUnknown*)V_DISPATCH(this))->AddRef();
	}
	KComVariant(IUnknown* pSrc)
	{
		V_VT(this) = VT_UNKNOWN;
		V_UNKNOWN(this) = pSrc;
		if (V_UNKNOWN(this) != NULL) 
			V_UNKNOWN(this)->AddRef();
	}
	KComVariant(void* ptr)
	{
		V_VT(this) = VT_PTR;
		V_BYREF(this) = ptr;
	}
	KComVariant(LPCOLESTR lpszSrc, int cch = npos)
	{
		V_VT(this) = VT_EMPTY;
		if (cch < 0 && lpszSrc)
		{
			LPCOLESTR lpszSrcMax = lpszSrc;
			while (*lpszSrcMax)
				++lpszSrcMax;
			cch = lpszSrcMax - lpszSrc;
		}
		Assign(lpszSrc, cch);
	}
	~KComVariant()
	{
		Clear();
	}
	
public:
	HRESULT Clear()
	{
	        return VariantClear(this);
	}
	HRESULT Copy(const VARIANT* pSrc)
	{
		return VariantCopy(this, (VARIANT*)(pSrc));
	}
	HRESULT ChangeType(VARTYPE vtNew, const VARIANT* pSrc = NULL)
	{
		VARIANT* pVar = (VARIANT*)(pSrc);
		
		if (pVar == NULL) 
			pVar = this;

		if (pVar != this)
			Clear();

		
		return VariantChangeType(this, pVar, 0, vtNew);
	}

public:
	HRESULT Attach(BSTR bstrSrc)
	{
		V_VT(this) = VT_BSTR;
		V_BSTR(this) = bstrSrc;
		return S_OK;
	}
	HRESULT Attach(VARIANT* pSrc)
	{
		HRESULT hr = Clear();
		if (!FAILED(hr))
		{
			memcpy(this, pSrc, sizeof(VARIANT));
			V_VT(pSrc) = VT_EMPTY;
			hr = S_OK;
		}
		return hr;
	}
	HRESULT Detach(VARIANT* pDest)
	{
		HRESULT hr = VariantClear(pDest);
		if (!FAILED(hr))
		{
			memcpy(pDest, this, sizeof(VARIANT));
			V_VT(this) = VT_EMPTY;
			hr = S_OK;
		}
		return hr;
	}

public:
	KComVariant& Assign(const VARIANT& varSrc)
	{
		Copy(&varSrc);
		return *this;
	}
	KComVariant& Assign(int32 nSrc, VARTYPE vtSrc = VT_I4)
	{
		Clear();
		V_VT(this) = vtSrc;
		V_I4(this) = nSrc;
		return *this;
	}
	KComVariant& Assign(uint32 nSrc, VARTYPE vtSrc = VT_I4)
	{
		Clear();
		V_VT(this) = vtSrc;
		V_I4(this) = nSrc;
		return *this;
	}
#ifndef X_BIT_64
#ifdef X_OS_WINDOWS
	KComVariant& Assign(DWORD nSrc, VARTYPE vtSrc = VT_I4)
#else
	KComVariant& Assign(long nSrc, VARTYPE vtSrc = VT_I4)
#endif
	{
		Clear();
		V_VT(this) = vtSrc;
		V_I4(this) = nSrc;
		return *this;
	}
#endif
	KComVariant& Assign(int64 nSrc, VARTYPE vtSrc = VT_I8)
	{
		Clear();
		V_VT(this) = vtSrc;
		V_I8(this) = nSrc;
		return *this;
	}
	KComVariant& Assign(uint64 nSrc, VARTYPE vtSrc = VT_I8)
	{
		Clear();
		V_VT(this) = vtSrc;
		V_I8(this) = nSrc;
		return *this;
	}
	KComVariant& Assign(double dblSrc, VARTYPE vtSrc = VT_R8)
	{
		return AssignDouble(dblSrc);
	}
	KComVariant& Assign(LPCOLESTR lpszSrc, int cch)
	{
		Clear();
		V_VT(this) = VT_BSTR;
		if (lpszSrc == NULL)
		{
			V_BSTR(this) = NULL;
		}
		else
		{
			V_BSTR(this) = SysAllocStringLen(lpszSrc, cch);
			if (V_BSTR(this) == NULL && cch)
			{
				V_VT(this) = VT_ERROR;
				V_ERROR(this) = E_OUTOFMEMORY;
			}
		}
		return *this;
	}
	KComVariant& AssignString(LPCOLESTR lpszSrc)
	{
		LPCOLESTR lpszSrcMax = lpszSrc;
		if (lpszSrcMax)
		{
			while (*lpszSrcMax)
				++lpszSrcMax;
		}
		return Assign(lpszSrc, lpszSrcMax - lpszSrc);
	}
	KComVariant& AssignBSTR(BSTR bstrSrc)
	{
		return Assign(bstrSrc, SysStringLen(bstrSrc));
	}
	KComVariant& AssignDate(DATE dtSrc)
	{
		Clear();
		V_VT(this)= VT_DATE;
		V_DATE(this) = dtSrc;
		return *this;
	}
	KComVariant& AssignDouble(double dblSrc)
	{
		Clear();
		V_VT(this)= VT_R8;
		V_R8(this) = dblSrc;
		return *this;
	}
	KComVariant& AssignBOOL(BOOL bSrc)
	{
		Clear();
		V_VT(this) = VT_BOOL;
		V_BOOL(this) = bSrc != 0 ? VARIANT_TRUE : VARIANT_FALSE;
		return *this;
	}
public:
	KComVariant& operator=(const KComVariant& varSrc)
	{
		Copy(&varSrc);
		return *this;
	}
	KComVariant& operator=(const VARIANT& varSrc)
	{
		Copy(&varSrc);
		return *this;
	}
	KComVariant& operator=(int nSrc)
	{
		if (V_VT(this) != VT_I4)
		{
			Clear();
			V_VT(this) = VT_I4;
		}
		V_I4(this) = nSrc;
		return *this;
	}
	KComVariant& operator=(CURRENCY cySrc)
	{
		if (V_VT(this) != VT_CY)
		{
			Clear();
			V_VT(this) = VT_CY;
		}
		V_CY(this) = cySrc;
		return *this;
	}
	KComVariant& operator=(IDispatch* pSrc)
	{
		Clear();
		V_VT(this) = VT_DISPATCH;
		V_DISPATCH(this) = pSrc;
		if (V_DISPATCH(this)!= NULL) 
			((IUnknown*)V_DISPATCH(this))->AddRef();
		return *this;
	}
	KComVariant& operator=(IUnknown* pSrc)
	{
		Clear();
		V_VT(this) = VT_UNKNOWN;
		V_UNKNOWN(this) = pSrc;
		if (V_UNKNOWN(this)!= NULL)	
			V_UNKNOWN(this)->AddRef();
		return *this;
	}
	KComVariant& operator=(void* ptr)
	{
		Clear();
		V_VT(this) = VT_PTR;
		V_BYREF(this) = ptr;
		return *this;
	}

	KComVariant& operator=(LPCOLESTR lpszSrc)
	{
		return AssignString(lpszSrc);
	}
	
public:
	bool operator==(const VARIANT& varSrc) const
	{
		if (this == &varSrc)
			return true;

		if (V_VT(this) != V_VT(&varSrc)) 
			return false;

		switch (V_VT(this))	
		{
		case VT_EMPTY:
		case VT_NULL:
			return true;
		case VT_I4:
			return V_I4(this) == V_I4(&varSrc);
		case VT_I8:
			return V_I8(this) == V_I8(&varSrc);
		case VT_R8:
			return V_R8(this) == V_R8(&varSrc);
		case VT_ERROR:
			return V_ERROR(this) == V_ERROR(&varSrc);
		case VT_BSTR:
			return (SysStringLen(V_BSTR(this)) == SysStringLen(V_BSTR(&varSrc))) &&
				(memcmp(V_BSTR(this), V_BSTR(&varSrc), SysStringLen(V_BSTR(this))*sizeof(OLECHAR)) == 0);
		case VT_BOOL:
			return V_BOOL(this) == V_BOOL(&varSrc);
		case VT_UI1:
			return V_UI1(this) == V_UI1(&varSrc);
		case VT_I2:
			return V_I2(this) == V_I2(&varSrc);
		case VT_R4:
			return V_R4(this) == V_R4(&varSrc);
		case VT_DISPATCH:
			return V_DISPATCH(this) == V_DISPATCH(&varSrc);
		case VT_UNKNOWN:
			return V_UNKNOWN(this) == V_UNKNOWN(&varSrc);
		case VT_PTR:
			return V_BYREF(this) == V_BYREF(&varSrc);
		case VT_DATE:
		{
			DATE lhs = V_DATE(this);
			DATE rhs = V_DATE(&varSrc);
			if (fuzzyIsNull(lhs) && fuzzyIsNull(rhs))
				return true;
			if (fuzzyIsNull(lhs) || fuzzyIsNull(rhs))
				return false;

			return fuzzyCompare(lhs, rhs);
		}
		default:
			ASSERT(false);
		}
		return false;
	}
	bool operator!=(const VARIANT& varSrc) const
	{
		return !operator==(varSrc);
	}

private:
	double abs(const double &t) const 
	{
		return t >= 0 ? t : -t;
	}

	double min(const double &a, const double &b) const 
	{
		return (a < b) ? a : b;
	}

	bool fuzzyCompare(double p1, double p2) const 
	{
		return (abs(p1 - p2) <= 0.000000000001 * min(abs(p1), abs(p2)));
	}

	bool fuzzyIsNull(double d) const
	{
		return abs(d) <= 0.000000000001;
	}
};

// -------------------------------------------------------------------------

class KFakeCopyVaraint : public VARIANT
{
public:
	KFakeCopyVaraint()
	{
		ZeroMemory(this, sizeof(*this));
		V_VT(this) = VT_EMPTY;
	}

	KFakeCopyVaraint(VARIANT* pSrcVar)
	{
		ZeroMemory(this, sizeof(*this));
		if (!pSrcVar)
			V_VT(this) = VT_EMPTY;
		else
			_ProcessVaraint(*pSrcVar);
	}

	KFakeCopyVaraint(const VARIANT& srcVar)
	{
		ZeroMemory(this, sizeof(*this));
		_ProcessVaraint(srcVar);
	}

	~KFakeCopyVaraint()
	{
		if (_NeedClear())
			_Clear();
	}

	KFakeCopyVaraint& operator=(const VARIANT& srcVar)
	{
		if (_NeedClear())
			_Clear();

		_ProcessVaraint(srcVar);
		return *this;
	}

	KFakeCopyVaraint& operator=(const VARIANT* pSrcVar)
	{
		if (pSrcVar)
		{
			if (_NeedClear())
				_Clear();

			_ProcessVaraint(*pSrcVar);
		}

		return *this;
	}

	/*不要随便去改变KFakeCopyVaraint的内容，因为改变了它可能会引起内存问题，这两个操作符const一下*/
	const VARIANT& operator*() const
	{
		return *this;
	}

	const VARIANT* operator&() const
	{
		return this;
	}

private:
	void _ProcessVaraint(const VARIANT& srcVar)
	{
		if (V_ISBYREF(&srcVar))
			_ProcessRefVaraint(srcVar);
		else
			_ProcessNormalVaraint(srcVar);
	}

	void _Clear()
	{
		if (_NeedClear())
			VariantClear(this);
	}

	void _ProcessNormalVaraint(const VARIANT& srcVar)
	{
		if(V_ISBYREF(&srcVar))
			return;

		VARTYPE srcVt = V_VT(&srcVar);
		VARTYPE vtType = srcVt & VT_TYPEMASK;

		if (VT_ARRAY & srcVt)
		{
			V_ARRAY(this) = V_ARRAY(&srcVar);
			V_VT(this) = srcVt;
			return;
		}

		switch (vtType)
		{
		case VT_EMPTY:
			V_VT(this) = srcVt;
			break;
		case VT_NULL:
			V_VT(this) = srcVt;
			break;
		case VT_I2:
			V_I2(this) = V_I2(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_I4:
			V_I4(this) = V_I4(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_R4:
			V_R4(this) = V_R4(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_R8:
			V_R8(this) = V_R8(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_CY:
			V_CY(this) = V_CY(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_DATE:
			V_DATE(this) = V_DATE(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_BSTR:
			V_BSTR(this) = V_BSTR(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_DISPATCH:
			V_DISPATCH(this) = V_DISPATCH(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_ERROR:
			V_ERROR(this) = V_ERROR(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_BOOL:
			V_BOOL(this) = V_BOOL(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_VARIANT:
			ASSERT(FALSE);
			break;
		case VT_UNKNOWN:
			V_UNKNOWN(this) = V_UNKNOWN(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_DECIMAL:
			V_DECIMAL(this) = V_DECIMAL(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_I1:
			V_I1(this) = V_I1(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_UI1:
			V_UI1(this) = V_UI1(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_UI2:
			V_UI2(this) = V_UI2(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_UI4:
			V_UI4(this) = V_UI4(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_I8:
			V_I8(this) = V_I8(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_UI8:
			V_UI8(this) = V_UI8(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_INT:
			V_INT(this) = V_INT(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_UINT:
			V_UINT(this) = V_UINT(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_HRESULT:
			V_I4(this) = V_I4(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_SAFEARRAY:
			V_ARRAY(this) = V_ARRAY(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_CARRAY:
			V_ARRAY(this) = V_ARRAY(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_INT_PTR:
			V_INT_PTR(this) = V_INT_PTR(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_UINT_PTR:
			V_UINT_PTR(this) = V_UINT_PTR(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_VOID:
		case VT_PTR:
		case VT_USERDEFINED:
		case VT_LPSTR:
		case VT_LPWSTR:
		case VT_RECORD:
		case VT_FILETIME:
		case VT_BLOB:
		case VT_STREAM:
		case VT_STORAGE:
		case VT_STREAMED_OBJECT:
		case VT_STORED_OBJECT:
		case VT_BLOB_OBJECT:
		case VT_CF:
		case VT_CLSID:
		case VT_VERSIONED_STREAM:
		case VT_BSTR_BLOB:
			VariantCopy(this, &srcVar);
			break;
		default:
			ASSERT(FALSE);
			VariantCopy(this, &srcVar);
			break;
		}

		return;
	}

	void _ProcessRefVaraint(const VARIANT& srcVar)
	{
		if (!V_ISBYREF(&srcVar))
			return;

		VARTYPE srcVt = V_VT(&srcVar);
		VARTYPE vtFlag = (srcVt & ~VT_TYPEMASK) & ~VT_BYREF;
		VARTYPE vtType = srcVt & VT_TYPEMASK;

		if (VT_ARRAY & vtFlag)
		{
			V_ARRAYREF(this) = V_ARRAYREF(&srcVar);
			V_VT(this) = srcVt;
			return;
		}

		switch (vtType)
		{
		case VT_EMPTY:
			V_VT(this) = srcVt;
			break;
		case VT_NULL:
			V_VT(this) = srcVt;
			break;
		case VT_I2:
			V_I2REF(this) = V_I2REF(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_I4:
			V_I4REF(this) = V_I4REF(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_R4:
			V_R4REF(this) = V_R4REF(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_R8:
			V_R8REF(this) = V_R8REF(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_CY:
			V_CYREF(this) = V_CYREF(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_DATE:
			V_DATEREF(this) = V_DATEREF(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_BSTR:
			V_BSTRREF(this) = V_BSTRREF(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_DISPATCH:
			V_DISPATCHREF(this) = V_DISPATCHREF(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_ERROR:
			V_ERRORREF(this) = V_ERRORREF(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_BOOL:
			V_BOOLREF(this) = V_BOOLREF(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_VARIANT:
			V_VARIANTREF(this) = V_VARIANTREF(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_UNKNOWN:
			V_UNKNOWNREF(this) = V_UNKNOWNREF(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_DECIMAL:
			V_DECIMALREF(this) = V_DECIMALREF(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_I1:
			V_I1REF(this) = V_I1REF(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_UI1:
			V_UI1REF(this) = V_UI1REF(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_UI2:
			V_UI2REF(this) = V_UI2REF(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_UI4:
			V_UI4REF(this) = V_UI4REF(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_I8:
			V_I8REF(this) = V_I8REF(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_UI8:
			V_UI8REF(this) = V_UI8REF(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_INT:
			V_INTREF(this) = V_INTREF(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_UINT:
			V_UINTREF(this) = V_UINTREF(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_HRESULT:
			V_I4REF(this) = V_I4REF(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_SAFEARRAY:
			V_ARRAYREF(this) = V_ARRAYREF(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_CARRAY:
			V_ARRAYREF(this) = V_ARRAYREF(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_INT_PTR:
			V_INT_PTRREF(this) = V_INT_PTRREF(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_UINT_PTR:
			V_UINT_PTRREF(this) = V_UINT_PTRREF(&srcVar);
			V_VT(this) = srcVt;
			break;
		case VT_VOID:
		case VT_PTR:
		case VT_USERDEFINED:
		case VT_LPSTR:
		case VT_LPWSTR:
		case VT_RECORD:
		case VT_FILETIME:
		case VT_BLOB:
		case VT_STREAM:
		case VT_STORAGE:
		case VT_STREAMED_OBJECT:
		case VT_STORED_OBJECT:
		case VT_BLOB_OBJECT:
		case VT_CF:
		case VT_CLSID:
		case VT_VERSIONED_STREAM:
		case VT_BSTR_BLOB:
			VariantCopy(this, &srcVar);
			break;
		default:
			ASSERT(FALSE);
			VariantCopy(this, &srcVar);
			break;
		}

		return;
	}

	BOOL _NeedClear()
	{
		VARTYPE srcVt = V_VT(this) & VT_TYPEMASK;
		switch (srcVt)
		{
		case VT_VOID:
		case VT_PTR:
		case VT_USERDEFINED:
		case VT_LPSTR:
		case VT_LPWSTR:
		case VT_RECORD:
		case VT_FILETIME:
		case VT_BLOB:
		case VT_STREAM:
		case VT_STORAGE:
		case VT_STREAMED_OBJECT:
		case VT_STORED_OBJECT:
		case VT_BLOB_OBJECT:
		case VT_CF:
		case VT_CLSID:
		case VT_VERSIONED_STREAM:
		case VT_BSTR_BLOB:
			return TRUE;
			break;
		default:
			break;
		}

		return FALSE;
	}
};

_KFC_END

#endif /* __KFC_VARIANT_H__ */
