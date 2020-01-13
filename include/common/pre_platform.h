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
//	功能描述	：	平台检测（OS、Compiler、CPU、STL等）
// -------------------------------------------------------------------------- //

#ifndef __KFC_PLATFORM_H__
#define __KFC_PLATFORM_H__

#if defined(_WIN32) || defined(WIN32) || defined(__CYGWIN__)
#	define X_OS_WIN32
#	define X_OS_WINDOWS
#elif defined(__WINDOWS__) // IBM VisualAge special handling
#	define X_OS_WINDOWS
#	if defined(__32BIT__)
#		define X_OS_WIN32
#	else
#		define X_OS_WIN16
#		error "Unknown Support OS Planform - Win16!"
#	endif
#elif defined(__linux__) || defined(__LINUX__) || defined(LINUX) || defined(_LINUX)
#	define X_OS_LINUX
#	define X_OS_UNIX
#elif defined(_AIX)
#	define X_OS_AIX
#	define X_OS_UNIX
#	if defined(_AIXVERSION_430)
#		define X_OS_AIX43  // for use of POSIX compliant pthread functions
#	endif
#elif defined(_SEQUENT_)
#	define X_OS_PTX
#	define X_OS_UNIX
#elif defined(_HP_UX) || defined(__hpux) || defined(_HPUX_SOURCE)
#	define X_OS_HPUX
#	define X_OS_UNIX
#elif defined(SOLARIS) || defined(__SVR4)
#	define X_OS_SOLARIS
#	define X_OS_UNIX
#elif defined(_SCO_DS)
#	define X_OS_OPENSERVER
#	define X_OS_UNIX
#elif defined(__UNIXWARE__) || defined(__USLC__)
#	define X_OS_UNIXWARE
#	define X_OS_UNIX
#elif defined(__FreeBSD__)
#	define X_OS_FREEBSD
#	define X_OS_UNIX
#elif defined(IRIX) || defined(__sgi)
#	define X_OS_IRIX
#	define X_OS_UNIX
#elif defined(__MVS__)
#	define X_OS_OS390
#	define X_OS_UNIX
#elif defined(EXM_OS390)
#	define X_OS_OS390
#	define X_OS_UNIX
#elif defined(__OS400__)
#	define X_OS_AS400
#	define X_OS_UNIX
#elif defined(__OS2__)
#	define X_OS_OS2
#elif defined(__TANDEM)
#	define X_OS_TANDEM
#	define X_OS_UNIX
#	define X_OS_CSET
#elif defined(__MSDX_OS__)
#	define X_OS_DOS
#elif defined(__APPLE__) && defined(__MACH__)
#	define X_OS_MACOS
#	define X_OS_UNIX
#	include <TargetConditionals.h>
#	if defined(TARGET_OS_IPHONE) && TARGET_OS_IPHONE
#		define X_OS_IOS
#	elif defined(TARGET_OS_MAC) && TARGET_OS_MAC
#		define X_OS_MACOSX
#	endif
#elif defined(__alpha) && defined(__osf__)
#	define X_OS_TRU64
#else
#	error "Unknown OS Planform!!!"
#endif

#ifdef __LP64__
#	define X_BIT_64
#else
#	define X_BIT_32
#endif

#ifdef X_BIT_64
#define _MTHREAD64
#endif
// -------------------------------------------------------------------------- //

#if defined(__BORLANDC__)
#	define X_CC_BC
#	define X_CC_BCB
#	if defined(SYSMAC_H)
#		define X_BCB_USECLX
#	endif
#elif defined(_MSC_VER)
#	define X_CC_VC
#elif defined(__GNUG__) || defined(__GNUC__)
#	define X_CC_GCC
#	if defined(__clang__)
#		define X_CC_CLANG
#	endif
#elif defined(__xlC__)
#	define X_CC_CSET
#elif defined(X_OS_SOLARIS)
#	if defined(__SUNPRO_CC) && (__SUNPRO_CC >=0x500)
#		define X_CC_SUNCC5
#	elif defined(__SUNPRO_CC) && (__SUNPRO_CC <0x500)
#		define X_CC_SUNCC
#	elif defined(_EDG_RUNTIME_USES_NAMESPACES)
#		define X_CC_SOLARIS_KAICC
#	elif defined(__GNUG__)
#		define X_CC_GCC
#	else
#		error "Unknown C/C++ Compiler!!!"
#	endif
#elif defined(X_OS_HPUX)
#	if defined(EXM_HPUX)
#		define X_CC_HPUX_KAICC
#	elif (__cplusplus == 1)
#		define X_CC_HPUX_CC
#	elif (__cplusplus == 199707 || __cplusplus == 199711)
#		define X_CC_HPUX_aCC
#	endif
#elif defined(X_OS_IRIX)
#	define X_CC_MIPSPRO_CC
#elif defined(X_OS_PTX)
#	define X_CC_PTX_CC
#elif defined(X_OS_TANDEM)
#	define X_CC_TANDEMCC
#elif defined(X_OS_OS390) && defined(__cplusplus)
#	define X_CC_MVSCPP
#elif defined(__IBMC__) || defined(__IBMCPP__)
#	if defined(X_OS_WIN32)
#		define X_CC_IBMVAW32
#	elif defined(X_CC_OS2)
#		define X_CC_IBMVAOS2
#		if (__IBMC__ >= 400 || __IBMCPP__ >= 400)
#			define X_CC_IBMVA4_OS2
#		endif
#	endif
#elif defined(X_OS_TRU64) && defined(__DECCXX)
#	define X_CC_DECCXX
#elif defined(__MWERKS__)
#	define X_CC_METROWERKS
#elif defined(__clang__)
#	define X_CC_GCC
#	define X_CC_CLANG
#else
#	error "Unknown C/C++ Compiler!!!"
#endif

#if defined(__MT__) && !defined(_MT)
#   define _MT
#endif

// -------------------------------------------------------------------------- //

#if defined(__SPARC__) || defined(SPARC) || defined(_SPARC)
#	define X_CPU_SPARC
#	undef  BYTESWAP
#	define BYTESWAP
#elif defined(_M_IX86) || defined(__i386__)
#	define X_CPU_X86
#elif defined(_M_X64) || defined(__amd64__) || defined(__x86_64__) || defined(_M_X64) || defined(_M_IA64) || defined(_M_AMD64)
#	define X_CPU_X86_64
#elif defined(__mips__) || defined(mips) || defined (_mips) || (__mips)
#	define X_CPU_MIPS
#elif defined(__arm__)
#	define X_CPU_ARM
#elif defined(__arm64__) || defined (__aarch64__)
#	define X_CPU_ARM_64
#elif defined(__sw_64__) ||defined(__alpha__)
#	define X_CPU_SW_64
#else
#	error "Unknown CPU Arch!!!"
#endif

#if defined(BYTESWAP)
#	undef  __BYTESWAP__
#	define __BYTESWAP__
#endif

// -------------------------------------------------------------------------- //

#if defined(X_OS_WINDOWS)
#	define X_ENCODE_UCS2
#elif defined(X_OS_LINUX)
#	if defined(X_CC_BC)
#		define X_ENCODE_UCS4
#	elif defined(X_CC_GCC)
#		define X_ENCODE_UCS4
#	else
#		error "Unknown Unicode-Character Encoding!!!"
#	endif
#elif defined(X_OS_FREEBSD)
#	define X_ENCODE_UCS4
#elif defined(X_OS_MACOS)
#	define X_ENCODE_UCS4
#else
#	error "Unknown Unicode-Character Encoding!!!"
#endif

// -------------------------------------------------------------------------- //

#if defined(_LIB) || defined(__LIB__)
#	define X_APPTYPE_LIB
#elif defined(_USRDLL) || defined(__DLL__)
#	define X_APPTYPE_DLL
#elif defined(_CONSOLE) || defined(__CONSOLE__)
#	define X_APPTYPE_CONSOLE
#elif defined(_WINDOWS)
#	define X_APPTYPE_WINDOWS
#else
#	define X_APPTYPE_UNKNOWN
#endif

// -------------------------------------------------------------------------- //

#endif// __KFC_PLATFORM_H__
