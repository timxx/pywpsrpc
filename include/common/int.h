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
#ifndef __KFC_BASIC_INT_H__
#define __KFC_BASIC_INT_H__

// -------------------------------------------------------------------------

typedef int8_t		int8;
typedef int16_t		int16;
typedef uint8_t		uint8;
typedef uint16_t	uint16;

typedef int8		INT8;
typedef uint8		UINT8;

typedef int16		INT16;
typedef uint16		UINT16;

typedef int32		INT32;
typedef uint32		UINT32;

// -------------------------------------------------------------------------

typedef int64		INT64;
typedef uint64		UINT64;


// -------------------------------------------------------------------------

#ifdef LARGE_INTEGER_SUPPORT


template <class UIntType>
struct UINT_BUILDER
{
#if defined(__BYTESWAP__)
	UIntType HighPart;
	UIntType LowPart;
#else
	UIntType LowPart;
	UIntType HighPart;
#endif
};


// -------------------------------------------------------------------------
template <class UIntType> class KUIntBuilder;
template <class UIntType> struct KUIntTypeTraits;

template <>
struct KUIntTypeTraits<UINT32>
{
	typedef UINT32 SELF;
	typedef UINT64 PARENT;
	typedef KUIntBuilder<SELF> ParentUIntType;
	
	enum { __bits = sizeof(SELF)*8 };
	enum { __half_bits = __bits/2 };
	enum { __radix10_count = 10 };

	static UINT __plus(SELF& lhs, PARENT rhs)
	{
		PARENT result = (PARENT)lhs + rhs;
		lhs = (SELF)result;
		return (UINT)(result >> __bits);
	}
	static UINT __minus(SELF& lhs, PARENT rhs)
	{
		PARENT result = (PARENT)lhs - rhs;
		lhs = (SELF)result;
		return (UINT)(result >> (__bits*2-1));
	}
	static void __multiply(ParentUIntType& result, SELF lhs, SELF rhs);
};

template <class UIntType>
struct KUIntTypeTraits
{
	typedef typename UIntType::ParentUIntType ParentUIntType;

	typedef typename UIntType::BaseUIntType _BaseUIntType;
	typedef KUIntTypeTraits<_BaseUIntType> _BaseUIntTraits;

	typedef UINT32 _CellUIntType;
	typedef KUIntTypeTraits<_CellUIntType> _CellUIntTraits;

	enum { __half_bits = _BaseUIntTraits::__bits };
	enum { __radix10_count = _BaseUIntTraits::__radix10_count * 2 };
	enum { __bits = __half_bits * 2 };
	enum { __cell_bits = _CellUIntTraits::__bits };
	enum { __cell_count = __bits / __cell_bits };
	
#if defined(__BYTESWAP__)
	enum { __cell_begin = 0, __cell_end = __cell_count, __cell_step = 1 };
#else
	enum { __cell_begin = __cell_count-1, __cell_end = -1, __cell_step = -1 };
#endif
	
	static HRESULT __test_conv(const ParentUIntType& rhs)
	{
		return !rhs.HighPart ? S_OK : ERROR_ARITHMETIC_OVERFLOW;
	}

	static HRESULT __conv(UIntType& lhs, const ParentUIntType& rhs)
	{
		lhs = rhs.LowPart;
		return !rhs.HighPart ? S_OK : ERROR_ARITHMETIC_OVERFLOW;
	}
	
	static UINT __plus(UIntType& lhs, const UIntType& rhs)
	{
		UINT carryLow = _BaseUIntTraits::__plus(lhs.LowPart, rhs.LowPart);
		UINT carryHigh = _BaseUIntTraits::__plus(lhs.HighPart, carryLow);
		return carryHigh + _BaseUIntTraits::__plus(lhs.HighPart, rhs.HighPart);
	}
	static UINT __plus(UIntType& lhs, UINT rhs)
	{
		UINT carryLow = _BaseUIntTraits::__plus(lhs.LowPart, rhs);
		return _BaseUIntTraits::__plus(lhs.HighPart, carryLow);
	}

	static UINT __minus(UIntType& lhs, const UIntType& rhs)
	{
		UINT borrowLow = _BaseUIntTraits::__minus(lhs.LowPart, rhs.LowPart);
		UINT borrowHigh = _BaseUIntTraits::__minus(lhs.HighPart, borrowLow);
		return borrowHigh + _BaseUIntTraits::__minus(lhs.HighPart, rhs.HighPart);
	}
	static UINT __minus(UIntType& lhs, UINT rhs)
	{
		UINT borrowLow = _BaseUIntTraits::__minus(lhs.LowPart, rhs);
		return _BaseUIntTraits::__minus(lhs.HighPart, borrowLow);
	}

	static void __multiply(ParentUIntType& result, const UIntType& lhs, const UIntType& rhs)
	{
		_BaseUIntTraits::__multiply(result.LowPart, lhs.LowPart, rhs.LowPart);
		_BaseUIntTraits::__multiply(result.HighPart, lhs.HighPart, rhs.HighPart);

		UIntType resultMid1, resultMid2;
		_BaseUIntTraits::__multiply(resultMid1, lhs.HighPart, rhs.LowPart);
		_BaseUIntTraits::__multiply(resultMid2, lhs.LowPart, rhs.HighPart);
		
		UINT carryLow = _BaseUIntTraits::__plus(result.LowPart.HighPart, resultMid1.LowPart);
		carryLow += _BaseUIntTraits::__plus(result.LowPart.HighPart, resultMid2.LowPart);
		
		UINT carryHigh = _BaseUIntTraits::__plus(result.HighPart.LowPart, carryLow);
		carryHigh += _BaseUIntTraits::__plus(result.HighPart.LowPart, resultMid1.HighPart);
		carryHigh += _BaseUIntTraits::__plus(result.HighPart.LowPart, resultMid2.HighPart);

		_BaseUIntTraits::__plus(result.HighPart.HighPart, carryHigh);
	}

	static _CellUIntType __divide(UIntType& lhs, _CellUIntType rhs)
	{
		STATIC_ASSERT(sizeof(UINT_BUILDER<_BaseUIntType>) == __bits/8);

		typedef _CellUIntTraits::PARENT _CellParent;
		_CellParent dividend = rhs;
		_CellParent divisor = 0;
		_CellUIntType* dest = (_CellUIntType*)&lhs;

		for (UINT i = __cell_begin; i != __cell_end; i += __cell_step)
		{
			divisor = (divisor << __cell_bits) | dest[i];
			dest[i] = (_CellUIntType)(divisor / dividend);
			divisor %= dividend;
		}
		return (_CellUIntType)divisor;
	}
};

// -------------------------------------------------------------------------
// KUIntBuilder class

template <class UIntType>
class KUIntBuilder : public UINT_BUILDER<UIntType>
{
private:
	typedef KUIntBuilder<UIntType> _Self;
	typedef KUIntTypeTraits<_Self> _SelfTypeTraits;

public:
	typedef UIntType BaseUIntType;
	typedef KUIntBuilder<_Self> ParentUIntType;

	KUIntBuilder() {}
	KUIntBuilder(signed int nVal)
	{
		this->LowPart = nVal;
		this->HighPart = (nVal >= 0 ? 0 : -1);
	}
	KUIntBuilder(unsigned int nVal)
	{
		this->LowPart = nVal;
		this->HighPart = 0;
	}
	
public:

	const KUIntBuilder operator~() const
	{
		KUIntBuilder ret;
		ret.LowPart = ~this->LowPart;
		ret.HighPart = ~this->HighPart;
		return ret;
	}
	const KUIntBuilder operator-() const
	{
		KUIntBuilder ret;
		ret.LowPart = ~this->LowPart;
		ret.HighPart = ~this->HighPart;
		_SelfTypeTraits::__plus(ret, (UINT)1);
		return ret;
	}
	const KUIntBuilder& operator+() const
	{
		return *this;
	}

	int operator!() const
	{
		return !this->LowPart && !this->HighPart;
	}
	
	const KUIntBuilder& operator++()
	{
		_SelfTypeTraits::__plus(*this, (UINT)1);
		/* ---> 很难讲，下面的代码虽然简单，但是没有调用_SelfTypeTraits::__plus快。
		if ( !(++LowPart) )
		{
			++HighPart;
		} ---> */
		return *this;
	}
	const KUIntBuilder operator++(int)
	{
		KUIntBuilder ret = *this;
		operator++();
		return ret;
	}

	const KUIntBuilder& operator--()
	{
		_SelfTypeTraits::__minus(*this, (UINT)1);
		return *this;
	}
	const KUIntBuilder operator--(int)
	{
		KUIntBuilder ret = *this;
		operator--();
		return ret;
	}
	
public:

	const KUIntBuilder& operator+=(const KUIntBuilder& rhs)
	{
		_SelfTypeTraits::__plus(*this, rhs);
		return *this;
	}
	const KUIntBuilder& operator-=(const KUIntBuilder& rhs)
	{
		_SelfTypeTraits::__minus(*this, rhs);
		return *this;
	}
	const KUIntBuilder& operator*=(const KUIntBuilder& rhs)
	{
		ParentUIntType result;
		_SelfTypeTraits::__multiply(result, *this, rhs);
		return *this = result.LowPart;
	}

	const KUIntBuilder& operator/=(const KUIntBuilder& rhs);
	const KUIntBuilder& operator%=(const KUIntBuilder& rhs);
	
	const KUIntBuilder& operator^=(const KUIntBuilder& rhs)
	{
		this->LowPart ^= rhs.LowPart;
		this->HighPart ^= rhs.HighPart;
		return *this;
	}
	const KUIntBuilder& operator&=(const KUIntBuilder& rhs)
	{
		this->LowPart &= rhs.LowPart;
		this->HighPart &= rhs.HighPart;
		return *this;
	}
	const KUIntBuilder& operator|=(const KUIntBuilder& rhs)
	{
		this->LowPart |= rhs.LowPart;
		this->HighPart |= rhs.HighPart;
		return *this;
	}
	const KUIntBuilder& operator>>=(UINT nShift);
	const KUIntBuilder& operator<<=(UINT nShift);
	
	friend const KUIntBuilder operator+(const KUIntBuilder& lhs, const KUIntBuilder& rhs)
	{
		KUIntBuilder result = lhs;
		_SelfTypeTraits::__plus(result, rhs);
		return result;
	}
	friend const KUIntBuilder operator-(const KUIntBuilder& lhs, const KUIntBuilder& rhs)
	{
		KUIntBuilder result = lhs;
		_SelfTypeTraits::__minus(result, rhs);
		return result;
	}
	friend const KUIntBuilder operator*(const KUIntBuilder& lhs, const KUIntBuilder& rhs)
	{
		ParentUIntType result;
		_SelfTypeTraits::__multiply(result, lhs, rhs);
		return result.LowPart;
	}

	friend const KUIntBuilder operator^(const KUIntBuilder& lhs, const KUIntBuilder& rhs)
	{
		KUIntBuilder result;
		result.LowPart = lhs.LowPart ^ rhs.LowPart;
		result.HighPart = lhs.HighPart ^ rhs.HighPart;
		return result;
	}
	friend const KUIntBuilder operator&(const KUIntBuilder& lhs, const KUIntBuilder& rhs)
	{
		KUIntBuilder result;
		result.LowPart = lhs.LowPart & rhs.LowPart;
		result.HighPart = lhs.HighPart & rhs.HighPart;
		return result;
	}
	friend const KUIntBuilder operator|(const KUIntBuilder& lhs, const KUIntBuilder& rhs)
	{
		KUIntBuilder result;
		result.LowPart = lhs.LowPart | rhs.LowPart;
		result.HighPart = lhs.HighPart | rhs.HighPart;
		return result;
	}
	const KUIntBuilder operator<<(UINT nShift) const
	{
		KUIntBuilder tmp = *this;
		return tmp <<= nShift;
	}
	const KUIntBuilder operator<<(int nShift) const
	{
		KUIntBuilder tmp = *this;
		return tmp <<= (UINT)nShift;
	}
	const KUIntBuilder operator>>(UINT nShift) const
	{
		KUIntBuilder tmp = *this;
		return tmp >>= nShift;
	}
	const KUIntBuilder operator>>(int nShift) const
	{
		KUIntBuilder tmp = *this;
		return tmp >>= (UINT)nShift;
	}
	
	friend int operator==(const KUIntBuilder& lhs, const KUIntBuilder& rhs)
	{
		return (lhs.LowPart == rhs.LowPart) && (lhs.HighPart == rhs.HighPart);
	}
	friend int operator!=(const KUIntBuilder& lhs, const KUIntBuilder& rhs)
	{
		return (lhs.LowPart != rhs.LowPart) || (lhs.HighPart != rhs.HighPart);
	}
	friend int operator<(const KUIntBuilder& lhs, const KUIntBuilder& rhs)
	{
		return (lhs.HighPart < rhs.HighPart) ||
			(lhs.HighPart == rhs.HighPart && lhs.LowPart < rhs.LowPart);
	}
	friend int operator>(const KUIntBuilder& lhs, const KUIntBuilder& rhs)
	{
		return (rhs.HighPart < lhs.HighPart) ||
			(rhs.HighPart == lhs.HighPart && rhs.LowPart < lhs.LowPart);
	}
	friend int operator<=(const KUIntBuilder& lhs, const KUIntBuilder& rhs)
	{
		return (lhs.HighPart < rhs.HighPart) ||
			(lhs.HighPart == rhs.HighPart && lhs.LowPart <= rhs.LowPart);
	}
	friend int operator>=(const KUIntBuilder& lhs, const KUIntBuilder& rhs)
	{
		return (rhs.HighPart < lhs.HighPart) ||
			(rhs.HighPart == lhs.HighPart && rhs.LowPart <= lhs.LowPart);
	}
};

// -------------------------------------------------------------------------

#if defined(X_SUPPORT_UINT64) && !defined(X_DEBUG_UINT64)

template <>
class KUIntBuilder<UINT32> : public UINT_BUILDER<UINT32>
{
private:
	typedef UINT32 UIntType;
	typedef KUIntBuilder<UIntType> _Self;
	typedef KUIntTypeTraits<_Self> _SelfTypeTraits;

public:
	typedef UIntType BaseUIntType;
	typedef KUIntBuilder<_Self> ParentUIntType;

	KUIntBuilder() {}
	KUIntBuilder(signed int nVal)
	{
		*(UINT64*)this = nVal;
	}
	KUIntBuilder(unsigned int nVal)
	{
		*(UINT64*)this = nVal;
	}
	KUIntBuilder(INT64 nVal)
	{
		*(UINT64*)this = nVal;
	}
	KUIntBuilder(UINT64 nVal)
	{
		*(UINT64*)this = nVal;
	}
	
public:

	const KUIntBuilder operator~() const
	{
		return ~ *(UINT64*)this;
	}
	const KUIntBuilder operator-() const
	{
		return - *(INT64*)this;
	}
	const KUIntBuilder& operator+() const
	{
		return *this;
	}

	int operator!() const
	{
		return ! *(UINT64*)this;
	}
	
	const KUIntBuilder& operator++()
	{
		++ *(UINT64*)this;
		return *this;
	}
	const KUIntBuilder operator++(int)
	{
		KUIntBuilder ret = *this;
		++ *(UINT64*)this;
		return ret;
	}

	const KUIntBuilder& operator--()
	{
		-- *(UINT64*)this;
		return *this;
	}
	const KUIntBuilder operator--(int)
	{
		KUIntBuilder ret = *this;
		-- *(UINT64*)this;
		return ret;
	}
	
public:

	const KUIntBuilder& operator+=(const KUIntBuilder& rhs)
	{
		*(UINT64*)this += (const UINT64&)rhs;
		return *this;
	}
	const KUIntBuilder& operator-=(const KUIntBuilder& rhs)
	{
		*(UINT64*)this -= (const UINT64&)rhs;
		return *this;
	}
	const KUIntBuilder& operator*=(const KUIntBuilder& rhs)
	{
		*(UINT64*)this *= (const UINT64&)rhs;
		return *this;
	}
	const KUIntBuilder& operator/=(const KUIntBuilder& rhs)
	{
		*(UINT64*)this /= (const UINT64&)rhs;
		return *this;
	}
	const KUIntBuilder& operator%=(const KUIntBuilder& rhs)
	{
		*(UINT64*)this %= (const UINT64&)rhs;
		return *this;
	}
	
	const KUIntBuilder& operator^=(const KUIntBuilder& rhs)
	{
		*(UINT64*)this ^= (const UINT64&)rhs;
		return *this;
	}
	const KUIntBuilder& operator&=(const KUIntBuilder& rhs)
	{
		*(UINT64*)this &= (const UINT64&)rhs;
		return *this;
	}
	const KUIntBuilder& operator|=(const KUIntBuilder& rhs)
	{
		*(UINT64*)this |= (const UINT64&)rhs;
		return *this;
	}
	const KUIntBuilder& operator>>=(UINT nShift)
	{
		*(UINT64*)this >>= nShift;
		return *this;
	}
	const KUIntBuilder& operator<<=(UINT nShift)
	{
		*(UINT64*)this <<= nShift;
		return *this;
	}
	
	friend const KUIntBuilder operator+(const KUIntBuilder& lhs, const KUIntBuilder& rhs)
	{
		return (const UINT64&)lhs + (const UINT64&)rhs;
	}
	friend const KUIntBuilder operator-(const KUIntBuilder& lhs, const KUIntBuilder& rhs)
	{
		return (const UINT64&)lhs - (const UINT64&)rhs;
	}
	friend const KUIntBuilder operator*(const KUIntBuilder& lhs, const KUIntBuilder& rhs)
	{
		return (const UINT64&)lhs * (const UINT64&)rhs;
	}
	friend const KUIntBuilder operator/(const KUIntBuilder& lhs, const KUIntBuilder& rhs)
	{
		return (const UINT64&)lhs / (const UINT64&)rhs;
	}
	friend const KUIntBuilder operator%(const KUIntBuilder& lhs, const KUIntBuilder& rhs)
	{
		return (const UINT64&)lhs % (const UINT64&)rhs;
	}

	friend const KUIntBuilder operator^(const KUIntBuilder& lhs, const KUIntBuilder& rhs)
	{
		return (const UINT64&)lhs ^ (const UINT64&)rhs;
	}
	friend const KUIntBuilder operator&(const KUIntBuilder& lhs, const KUIntBuilder& rhs)
	{
		return (const UINT64&)lhs & (const UINT64&)rhs;
	}
	friend const KUIntBuilder operator|(const KUIntBuilder& lhs, const KUIntBuilder& rhs)
	{
		return (const UINT64&)lhs | (const UINT64&)rhs;
	}
	const KUIntBuilder operator<<(UINT nShift) const
	{
		return (const UINT64&)*this << nShift;
	}
	const KUIntBuilder operator<<(int nShift) const
	{
		return (const UINT64&)*this << nShift;
	}
	const KUIntBuilder operator>>(UINT nShift) const
	{
		return (const UINT64&)*this >> nShift;
	}
	const KUIntBuilder operator>>(int nShift) const
	{
		return (const UINT64&)*this >> nShift;
	}
	
	friend int operator==(const KUIntBuilder& lhs, const KUIntBuilder& rhs)
	{
		return (const UINT64&)lhs == (const UINT64&)rhs;
	}
	friend int operator!=(const KUIntBuilder& lhs, const KUIntBuilder& rhs)
	{
		return (const UINT64&)lhs != (const UINT64&)rhs;
	}
	friend int operator<(const KUIntBuilder& lhs, const KUIntBuilder& rhs)
	{
		return (const UINT64&)lhs < (const UINT64&)rhs;
	}
	friend int operator>(const KUIntBuilder& lhs, const KUIntBuilder& rhs)
	{
		return (const UINT64&)lhs > (const UINT64&)rhs;
	}
	friend int operator<=(const KUIntBuilder& lhs, const KUIntBuilder& rhs)
	{
		return (const UINT64&)lhs <= (const UINT64&)rhs;
	}
	friend int operator>=(const KUIntBuilder& lhs, const KUIntBuilder& rhs)
	{
		return (const UINT64&)lhs >= (const UINT64&)rhs;
	}
};

#endif

// -------------------------------------------------------------------------

inline void KUIntTypeTraits<UINT32>::__multiply(ParentUIntType& result, SELF lhs, SELF rhs)
{
	PARENT result64 = (PARENT)lhs * (PARENT)rhs;
	result.LowPart = (SELF)result64;
	result.HighPart = (SELF)(result64 >> __bits);
}

// -------------------------------------------------------------------------

typedef KUIntBuilder<UINT32> _UINT64_;
typedef KUIntBuilder<_UINT64_> UINT128;
typedef KUIntBuilder<UINT128> UINT256;

#endif
// -------------------------------------------------------------------------


// -------------------------------------------------------------------------

#endif /* __KFC_BASIC_INT_H__ */
