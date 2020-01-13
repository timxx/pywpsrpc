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
#ifndef __KFC_COM_SPTR_H__
#define __KFC_COM_SPTR_H__

#ifndef __KFC_COM_GUIDDEF_H__
#include "guiddef.h"
#endif


template <class E>
class KNonAddRefReleaseObject : public E
{
#if !defined(X_CC_BC)
private:
	typedef ULONG RC_t;
	RC_t __stdcall AddRef();
	RC_t __stdcall Release();
#endif
};

// -------------------------------------------------------------------------

enum enum_create_instance { create_instance };

// -------------------------------------------------------------------------
_KFC_BEGIN

template <class E>
class ks_stdptr
{
protected:
	E* _ptr;
	
public:
	ks_stdptr()				{ _ptr = NULL; }
	ks_stdptr(int __nil)	{ ASSERT(__nil == 0); _ptr = NULL; }
	ks_stdptr(long __nil)	{ ASSERT(__nil == 0); _ptr = NULL; }
	ks_stdptr(enum_create_instance f) { _ptr = new E; }

	ks_stdptr(E* p)
	{
		_ptr = p;
		if (_ptr)
			_ptr->AddRef();
	}
	ks_stdptr(const ks_stdptr<E>& p)
	{
		_ptr = p._ptr;
		if (_ptr)
			_ptr->AddRef();
	}
	ks_stdptr(IUnknown* pUnk) : _ptr(NULL)
	{
		if (pUnk)
			pUnk->QueryInterface(__uuid(E), (void**)&_ptr);
	}

	ks_stdptr(IUnknown* pUnk, REFIID iid) : _ptr(NULL)
	{
		if (pUnk)
			pUnk->QueryInterface(iid, (void**)&_ptr);
	}

	template <class Type>
	ks_stdptr(const ks_stdptr<Type>& p) : _ptr(NULL)
	{
		if (p)
			p->QueryInterface(__uuid(E), (void**)&_ptr);
	}

	~ks_stdptr()
	{
		if (_ptr)
			_ptr->Release();
	}
	void attach(E* p)
	{
		if (_ptr)
			_ptr->Release();
		_ptr = p;
	}
	void detach(E** ppv)
	{
		ASSERT(ppv != &_ptr);
		*ppv = _ptr;
		_ptr = NULL;
	}
	E* detach()
	{
		E* tmp = _ptr;
		_ptr = NULL;
		return tmp;
	}
	void clear()
	{
		if (_ptr)
		{
			_ptr->Release();
			_ptr = NULL;
		}
	}
	E* operator=(E* p)
	{
		if (p)
			p->AddRef();
		if (_ptr)
			_ptr->Release();
		return _ptr = p;
	}
	E* operator=(const ks_stdptr<E>& p)
	{
		if (p._ptr)
			p._ptr->AddRef();
		if (_ptr)
			_ptr->Release();
		return _ptr = p._ptr;
	}
	E* operator=(int __nil)
	{
		ASSERT(__nil == 0);
		if (_ptr)
		{
			_ptr->Release(); 
			_ptr = NULL;
		}
		return NULL;
	}
	E* operator=(long __nil)
	{
		ASSERT(__nil == 0);
		if (_ptr)
		{
			_ptr->Release();
			_ptr = NULL;
		}
		return NULL;
	}
	E* operator=(IUnknown* pUnk)
	{
		if (pUnk)
			pUnk->QueryInterface(__uuid(E), (void**)&pUnk);
		if (_ptr)
			_ptr->Release();
		return _ptr = (E*)pUnk;
	}
	
	template <class Type>
	E* operator=(const ks_stdptr<Type>& p)
	{
		E* pTemp = NULL;
		if (p)
			p->QueryInterface(__uuid(E), (void**)&pTemp);
		if (_ptr)
			_ptr->Release();
		return _ptr = pTemp;
	}


	BOOL IsEqualObject(IUnknown* pOther) const
	{
		if (pOther)
		{
			if (_ptr == NULL)
				return FALSE;			
			IUnknown* pThis;
			_ptr->QueryInterface(IID_IUnknown, (void**)&pThis);
			pOther->QueryInterface(IID_IUnknown, (void**)&pOther);
			pThis->Release();
			pOther->Release();
			return (pThis == pOther);
		}
		return (_ptr == NULL);
	}
	E& operator*() const
		{ return *_ptr; }
	operator E*() const
		{ return _ptr; }
	E* get() const
		{ return _ptr; }
	E** operator&()
		{ ASSERT(_ptr == NULL); return &_ptr; }
	KNonAddRefReleaseObject<E>* operator->() const
		{ return (KNonAddRefReleaseObject<E>*)_ptr; }
	BOOL operator!() const
		{ return _ptr == NULL; }
	BOOL operator==(E* p) const
		{ return _ptr == p; }
	BOOL operator!=(E* p) const
		{ return _ptr != p; }
};

template <> 
class ks_stdptr<IUnknown>
{
public:
	typedef IUnknown E;

protected:
	E* _ptr;
	
public:
	ks_stdptr()				{ _ptr = NULL; }
	ks_stdptr(int __nil)	{ ASSERT(__nil == 0); _ptr = NULL; }
	ks_stdptr(long __nil)	{ ASSERT(__nil == 0); _ptr = NULL; }

	ks_stdptr(E* p)
	{
		_ptr = p;
		if (_ptr)
			_ptr->AddRef();
	}
	ks_stdptr(const ks_stdptr<E>& p)
	{
		_ptr = p._ptr;
		if (_ptr)
			_ptr->AddRef();
	}

	
	template <class Type>
	ks_stdptr(const ks_stdptr<Type>& p)
	{
		_ptr = p;
		if (_ptr)
			_ptr->AddRef();
	}
	

	~ks_stdptr()
	{
		if (_ptr)
			_ptr->Release();
	}
	void attach(E* p)
	{
		if (_ptr)
			_ptr->Release();
		_ptr = p;
	}
	E* detach()
	{
		E* tmp = _ptr;
		_ptr = NULL;
		return tmp;
	}
	void clear()
	{
		if (_ptr)
		{
			_ptr->Release();
			_ptr = NULL;
		}
	}
	E* operator=(E* p)
	{
		if (p)
			p->AddRef();
		if (_ptr)
			_ptr->Release();
		return _ptr = p;
	}
	E* operator=(const ks_stdptr<E>& p)
	{
		if (p._ptr)
			p._ptr->AddRef();
		if (_ptr)
			_ptr->Release();
		return _ptr = p._ptr;
	}
	E* operator=(int __nil)
	{
		ASSERT(__nil == 0);
		if (_ptr)
		{
			_ptr->Release();
			_ptr = NULL;
		}
		return NULL;
	}
	E* operator=(long __nil)
	{
		ASSERT(__nil == 0);
		if (_ptr)
		{
			_ptr->Release();
			_ptr = NULL;
		}
		return NULL;
	}
	
	template <class Type>
	E* operator=(const ks_stdptr<Type>& sp)
	{
		Type* p = sp;
		if (p)
			p->AddRef();
		if (_ptr)
			_ptr->Release();
		return _ptr = p;
	}
	

	BOOL IsEqualObject(IUnknown* pOther)
	{
		if (pOther)
		{
			if (_ptr == NULL)
				return FALSE;			
			IUnknown* pThis;
			_ptr->QueryInterface(IID_IUnknown, (void**)&pThis);
			pOther->QueryInterface(IID_IUnknown, (void**)&pOther);
			pThis->Release();
			pOther->Release();
			return (pThis == pOther);
		}
		return (_ptr == NULL);
	}
	E& operator*() const
		{ return *_ptr; }
	operator E*() const
		{ return _ptr; }
	E** operator&()
		{ ASSERT(_ptr == NULL); return &_ptr; }
	KNonAddRefReleaseObject<E>* operator->() const
		{ return (KNonAddRefReleaseObject<E>*)_ptr; }
	bool operator!() const
		{ return _ptr == NULL; }
	bool operator==(E* p) const
		{ return _ptr == p; }
	bool operator!=(E* p) const
		{ return _ptr != p; }
	bool operator==(int x) const
		{ ASSERT(x == 0); return _ptr == NULL; }
	bool operator!=(int x) const
		{ ASSERT(x == 0); return _ptr != NULL; }
	bool operator==(long x) const
		{ ASSERT(x == 0); return _ptr == NULL; }
	bool operator!=(long x) const
		{ ASSERT(x == 0); return _ptr != NULL; }
};

template <class E, const IID* piid>
class ks_comptr : public ks_stdptr<E>
{
public:
	typedef ks_stdptr<E> _base;

private:
	using _base::_ptr;

public:
	ks_comptr()	{}
	ks_comptr(E* p) : _base(p) {}
	ks_comptr(const _base& p) : _base(p._ptr) {}
	ks_comptr(IUnknown* pUnk)
	{
		if (pUnk)
			pUnk->QueryInterface(*piid, (void**)&_ptr);
	}

	E* operator=(E* p)
	{
		if (p)
			p->AddRef();
		if (_ptr)
			_ptr->Release();
		return _ptr = p;
	}
	E* operator=(const ks_stdptr<E>& p)
	{
		if (p._ptr)
			p._ptr->AddRef();
		if (_ptr)
			_ptr->Release();
		return _ptr = p._ptr;
	}
	E* operator=(const ks_comptr<E, piid>& p)
	{
		if (p._ptr)
			p._ptr->AddRef();
		if (_ptr)
			_ptr->Release();
		return _ptr = p._ptr;
	}
	E* operator=(int __nil)
	{
		ASSERT(__nil == 0);
		if (_ptr)
		{
			_ptr->Release();
			_ptr = NULL;
		}
		return NULL;
	}
	E* operator=(IUnknown* pUnk)
	{
		if (pUnk)
			pUnk->QueryInterface(*piid, (void**)&pUnk);
		if (_ptr)
			_ptr->Release();
		return _ptr = (E*)pUnk;
	}
	BOOL IsEqualObject(IUnknown* pOther)
	{
		if (pOther)
		{
			if (_ptr == NULL)
				return false;			
			IUnknown* pThis;
			_ptr->QueryInterface(IID_IUnknown, (void**)&pThis);
			pOther->QueryInterface(IID_IUnknown, (void**)&pOther);
			pThis->Release();
			pOther->Release();
			return (pThis == pOther);
		}
		return (_ptr == NULL);
	}
};

template<> 
class ks_comptr<IUnknown, &IID_IUnknown> : public ks_stdptr<IUnknown>
{
public:
	typedef ks_stdptr<IUnknown> _base;
	
public:
	ks_comptr()	{}
	ks_comptr(const _base& p) : _base(p) {}
	ks_comptr(IUnknown* pUnk) : _base(pUnk) {}

	BOOL IsEqualObject(IUnknown* pOther)
	{
		if (pOther)
		{
			if (_ptr == NULL)
				return false;			
			IUnknown* pThis;
			_ptr->QueryInterface(IID_IUnknown, (void**)&pThis);
			pOther->QueryInterface(IID_IUnknown, (void**)&pOther);
			pThis->Release();
			pOther->Release();
			return (pThis == pOther);
		}
		return (_ptr == NULL);
	}
};

_KFC_END

#endif
