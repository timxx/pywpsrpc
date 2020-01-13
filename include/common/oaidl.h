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
#ifndef __KERN_OAIDL_H__
#define __KERN_OAIDL_H__

#ifndef __KERN_OBJIDL_H__
#include "objidl.h"
#endif

// -------------------------------------------------------------------------

#ifndef __IOleAutomationTypes_INTERFACE_DEFINED__
#define __IOleAutomationTypes_INTERFACE_DEFINED__

/*
 * VARENUM usage key,
 *
 * * [V] - may appear in a VARIANT
 * * [T] - may appear in a TYPEDESC
 * * [P] - may appear in an OLE property set
 * * [S] - may appear in a Safe Array
 *
 *
 *  VT_EMPTY            [V]   [P]     nothing
 *  VT_NULL             [V]   [P]     SQL style Null
 *  VT_I2               [V][T][P][S]  2 byte signed int
 *  VT_I4               [V][T][P][S]  4 byte signed int
 *  VT_R4               [V][T][P][S]  4 byte real
 *  VT_R8               [V][T][P][S]  8 byte real
 *  VT_CY               [V][T][P][S]  currency
 *  VT_DATE             [V][T][P][S]  date
 *  VT_BSTR             [V][T][P][S]  OLE Automation string
 *  VT_DISPATCH         [V][T][P][S]  IDispatch *
 *  VT_ERROR            [V][T][P][S]  SCODE
 *  VT_BOOL             [V][T][P][S]  True=-1, False=0
 *  VT_VARIANT          [V][T][P][S]  VARIANT *
 *  VT_UNKNOWN          [V][T]   [S]  IUnknown *
 *  VT_DECIMAL          [V][T]   [S]  16 byte fixed point
 *  VT_RECORD           [V]   [P][S]  user defined type
 *  VT_I1               [V][T][P][s]  signed char
 *  VT_UI1              [V][T][P][S]  unsigned char
 *  VT_UI2              [V][T][P][S]  unsigned short
 *  VT_UI4              [V][T][P][S]  unsigned short
 *  VT_I8                  [T][P]     signed 64-bit int
 *  VT_UI8                 [T][P]     unsigned 64-bit int
 *  VT_INT              [V][T][P][S]  signed machine int
 *  VT_UINT             [V][T]   [S]  unsigned machine int
 *  VT_VOID                [T]        C style void
 *  VT_HRESULT             [T]        Standard return type
 *  VT_PTR                 [T]        pointer type
 *  VT_SAFEARRAY           [T]        (use VT_ARRAY in VARIANT)
 *  VT_CARRAY              [T]        C style array
 *  VT_USERDEFINED         [T]        user defined type
 *  VT_LPSTR               [T][P]     null terminated string
 *  VT_LPWSTR              [T][P]     wide null terminated string
 *  VT_FILETIME               [P]     FILETIME
 *  VT_BLOB                   [P]     Length prefixed bytes
 *  VT_STREAM                 [P]     Name of the stream follows
 *  VT_STORAGE                [P]     Name of the storage follows
 *  VT_STREAMED_OBJECT        [P]     Stream contains an object
 *  VT_STORED_OBJECT          [P]     Storage contains an object
 *  VT_BLOB_OBJECT            [P]     Blob contains an object 
 *  VT_CF                     [P]     Clipboard format
 *  VT_CLSID                  [P]     A Class ID
 *  VT_VECTOR                 [P]     simple counted array
 *  VT_ARRAY            [V]           SAFEARRAY*
 *  VT_BYREF            [V]           void* for local use
 *  VT_BSTR_BLOB                      Reserved for system use
 */

enum VARENUM
{
	VT_EMPTY	= 0,
	VT_NULL	= 1,
	VT_I2	= 2,
	VT_I4	= 3,
	VT_R4	= 4,
	VT_R8	= 5,
	VT_CY	= 6,
	VT_DATE	= 7,
	VT_BSTR	= 8,
	VT_DISPATCH	= 9,
	VT_ERROR	= 10,
	VT_BOOL	= 11,
	VT_VARIANT	= 12,
	VT_UNKNOWN	= 13,
	VT_DECIMAL	= 14,
	VT_I1	= 16,
	VT_UI1	= 17,
	VT_UI2	= 18,
	VT_UI4	= 19,
	VT_I8	= 20,
	VT_UI8	= 21,
	VT_INT	= 22,
	VT_UINT	= 23,
	VT_VOID	= 24,
	VT_HRESULT	= 25,
	VT_PTR	= 26,
	VT_SAFEARRAY	= 27,
	VT_CARRAY	= 28,
	VT_USERDEFINED	= 29,
	VT_LPSTR	= 30,
	VT_LPWSTR	= 31,
	VT_RECORD	= 36,
	VT_INT_PTR	= 37,
	VT_UINT_PTR	= 38,
	VT_FILETIME	= 64,
	VT_BLOB	= 65,
	VT_STREAM	= 66,
	VT_STORAGE	= 67,
	VT_STREAMED_OBJECT	= 68,
	VT_STORED_OBJECT	= 69,
	VT_BLOB_OBJECT	= 70,
	VT_CF	= 71,
	VT_CLSID	= 72,
	VT_VERSIONED_STREAM	= 73,
	VT_BSTR_BLOB	= 0xfff,
	VT_VECTOR	= 0x1000,
	VT_ARRAY	= 0x2000,
	VT_BYREF	= 0x4000,
	VT_RESERVED	= 0x8000,
	VT_ILLEGAL	= 0xffff,
	VT_ILLEGALMASKED	= 0xfff,
	VT_TYPEMASK	= 0xfff
};

// -------------------------------------------------------------------------

typedef CY CURRENCY;

typedef struct  tagSAFEARRAYBOUND
{
	UINT32 cElements;
	INT32 lLbound;
}	SAFEARRAYBOUND;

typedef struct tagSAFEARRAYBOUND __RPC_FAR *LPSAFEARRAYBOUND;

typedef struct  tagSAFEARRAY
{
	USHORT cDims;
	USHORT fFeatures;
	UINT32 cbElements;
	UINT32 cLocks;
	PVOID pvData;
	SAFEARRAYBOUND rgsabound[ 1 ];
}	SAFEARRAY;

typedef /* [wire_marshal] */ SAFEARRAY __RPC_FAR *LPSAFEARRAY;

#define	FADF_AUTO	( 0x1 )
#define	FADF_STATIC	( 0x2 )
#define	FADF_EMBEDDED	( 0x4 )
#define	FADF_FIXEDSIZE	( 0x10 )
#define	FADF_RECORD	( 0x20 )
#define	FADF_HAVEIID	( 0x40 )
#define	FADF_HAVEVARTYPE	( 0x80 )
#define	FADF_BSTR	( 0x100 )
#define	FADF_UNKNOWN	( 0x200 )
#define	FADF_DISPATCH	( 0x400 )
#define	FADF_VARIANT	( 0x800 )
#define	FADF_RESERVED	( 0xf008 )

/* VARIANT STRUCTURE
 *
 *  VARTYPE vt;
 *  WORD wReserved1;
 *  WORD wReserved2;
 *  WORD wReserved3;
 *  union {
 *    LONG           VT_I4
 *    BYTE           VT_UI1
 *    SHORT          VT_I2
 *    FLOAT          VT_R4
 *    DOUBLE         VT_R8
 *    VARIANT_BOOL   VT_BOOL
 *    SCODE          VT_ERROR
 *    CY             VT_CY
 *    DATE           VT_DATE
 *    BSTR           VT_BSTR
 *    IUnknown *     VT_UNKNOWN
 *    IDispatch *    VT_DISPATCH
 *    SAFEARRAY *    VT_ARRAY
 *    BYTE *         VT_BYREF|VT_UI1
 *    SHORT *        VT_BYREF|VT_I2
 *    LONG *         VT_BYREF|VT_I4
 *    FLOAT *        VT_BYREF|VT_R4
 *    DOUBLE *       VT_BYREF|VT_R8
 *    VARIANT_BOOL * VT_BYREF|VT_BOOL
 *    SCODE *        VT_BYREF|VT_ERROR
 *    CY *           VT_BYREF|VT_CY
 *    DATE *         VT_BYREF|VT_DATE
 *    BSTR *         VT_BYREF|VT_BSTR
 *    IUnknown **    VT_BYREF|VT_UNKNOWN
 *    IDispatch **   VT_BYREF|VT_DISPATCH
 *    SAFEARRAY **   VT_BYREF|VT_ARRAY
 *    VARIANT *      VT_BYREF|VT_VARIANT
 *    PVOID          VT_BYREF (Generic ByRef)
 *    CHAR           VT_I1
 *    USHORT         VT_UI2
 *    ULONG          VT_UI4
 *    INT            VT_INT
 *    UINT           VT_UINT
 *    DECIMAL *      VT_BYREF|VT_DECIMAL
 *    CHAR *         VT_BYREF|VT_I1
 *    USHORT *       VT_BYREF|VT_UI2
 *    ULONG *        VT_BYREF|VT_UI4
 *    INT *          VT_BYREF|VT_INT
 *    UINT *         VT_BYREF|VT_UINT
 *  }
 */
#if (__STDC__ && !defined(_FORCENAMELESSUNION)) || defined(NONAMELESSUNION)
#define __VARIANT_NAME_1 n1
#define __VARIANT_NAME_2 n2
#define __VARIANT_NAME_3 n3
#define __VARIANT_NAME_4 brecVal
#else
#define __tagVARIANT
#define __VARIANT_NAME_1
#define __VARIANT_NAME_2
#define __VARIANT_NAME_3
#define __tagBRECORD
#define __VARIANT_NAME_4
#endif

interface IDispatch;
interface IRecordInfo;

typedef /* [wire_marshal] */ struct tagVARIANT VARIANT;
typedef VARIANT __RPC_FAR *LPVARIANT;

struct tagVARIANT
{
	union
	{
		struct __tagVARIANT
		{
			VARTYPE vt;
			WORD wReserved1;
			WORD wReserved2;
			WORD wReserved3;
			union
			{
				INT64 llVal;
				INT32 lVal;
				INT8 bVal;
				INT16 iVal;
				FLOAT fltVal;
				DOUBLE dblVal;
				VARIANT_BOOL boolVal;
				SCODE scode;
				CY cyVal;
				DATE date;
				BSTR bstrVal;
				IUnknown *punkVal;
				IDispatch *pdispVal;
				SAFEARRAY *parray;
				INT8 *pbVal;
				INT16 *piVal;
				INT32 *plVal;
				INT64 *pllVal;
				FLOAT *pfltVal;
				DOUBLE *pdblVal;
				VARIANT_BOOL *pboolVal;
				SCODE *pscode;
				CY *pcyVal;
				DATE *pdate;
				BSTR *pbstrVal;
				IUnknown **ppunkVal;
				IDispatch **ppdispVal;
				SAFEARRAY **pparray;
				VARIANT *pvarVal;
				PVOID byref;
				CHAR cVal;
				UINT16 uiVal;
				UINT32 ulVal;
				UINT64 ullVal;
				INT32 intVal;
				UINT32 uintVal;
				DECIMAL *pdecVal;
				CHAR *pcVal;
				USHORT *puiVal;
				UINT32 *pulVal;
				UINT64 *pullVal;
				INT32 *pintVal;
				UINT32 *puintVal;
			} 	__VARIANT_NAME_3;
		} 	__VARIANT_NAME_2;
		DECIMAL decVal;
	} 	__VARIANT_NAME_1;
};

typedef VARIANT VARIANTARG;

static_assert(sizeof(VARIANT) == 16, "VARIANT size is not 16.");

typedef VARIANT __RPC_FAR *LPVARIANTARG;

typedef UINT32 DISPID;
typedef DISPID MEMBERID;
typedef DWORD HREFTYPE;

typedef /* [v1_enum] */ 
enum tagTYPEKIND
{
	TKIND_ENUM		= 0,
	TKIND_RECORD	= TKIND_ENUM + 1,
	TKIND_MODULE	= TKIND_RECORD + 1,
	TKIND_INTERFACE	= TKIND_MODULE + 1,
	TKIND_DISPATCH	= TKIND_INTERFACE + 1,
	TKIND_COCLASS	= TKIND_DISPATCH + 1,
	TKIND_ALIAS		= TKIND_COCLASS + 1,
	TKIND_UNION		= TKIND_ALIAS + 1,
	TKIND_MAX		= TKIND_UNION + 1
}	TYPEKIND;

typedef struct tagTYPEDESC
{
	/* [switch_is][switch_type] */ union
	{
	/* [case()] */ struct tagTYPEDESC __RPC_FAR *lptdesc;
	/* [case()] */ struct tagARRAYDESC __RPC_FAR *lpadesc;
	/* [case()] */ HREFTYPE hreftype;
	/* [default] */  /* Empty union arm */
	};
	VARTYPE vt;
}	TYPEDESC;

typedef struct  tagARRAYDESC
{
	TYPEDESC tdescElem;
	UINT16 cDims;
	/* [size_is] */ SAFEARRAYBOUND rgbounds[ 1 ];
}	ARRAYDESC;

typedef struct  tagPARAMDESCEX
{
	UINT32 cBytes;
	VARIANTARG varDefaultValue;
}	PARAMDESCEX;

typedef struct tagPARAMDESCEX __RPC_FAR *LPPARAMDESCEX;

typedef struct  tagPARAMDESC
{
    LPPARAMDESCEX pparamdescex;
	UINT32 wParamFlags;
}	PARAMDESC;

typedef struct tagPARAMDESC __RPC_FAR *LPPARAMDESC;

#define	PARAMFLAG_NONE	( 0 )
#define	PARAMFLAG_FIN	( 0x1 )
#define	PARAMFLAG_FOUT	( 0x2 )
#define	PARAMFLAG_FLCID	( 0x4 )
#define	PARAMFLAG_FRETVAL	( 0x8 )
#define	PARAMFLAG_FOPT	( 0x10 )
#define	PARAMFLAG_FHASDEFAULT	( 0x20 )
#define	PARAMFLAG_FHASCUSTDATA	( 0x40 )

typedef struct  tagIDLDESC
{
	UINT32 dwReserved;
	UINT16 wIDLFlags;
}	IDLDESC;

typedef struct tagIDLDESC __RPC_FAR *LPIDLDESC;

#define	IDLFLAG_NONE	( PARAMFLAG_NONE )
#define	IDLFLAG_FIN		( PARAMFLAG_FIN )
#define	IDLFLAG_FOUT	( PARAMFLAG_FOUT )
#define	IDLFLAG_FLCID	( PARAMFLAG_FLCID )
#define	IDLFLAG_FRETVAL	( PARAMFLAG_FRETVAL )

typedef struct tagELEMDESC
{
	TYPEDESC tdesc;             /* the type of the element */
	union
	{
		IDLDESC idldesc;        /* info for remoting the element */
		PARAMDESC paramdesc;    /* info about the parameter */
	};
} ELEMDESC, * LPELEMDESC;

typedef struct  tagTYPEATTR
{
	GUID guid;
	LCID lcid;
	DWORD dwReserved;
	MEMBERID memidConstructor;
	MEMBERID memidDestructor;
	LPOLESTR lpstrSchema;
	ULONG cbSizeInstance;
	TYPEKIND typekind;
	WORD cFuncs;
	WORD cVars;
	WORD cImplTypes;
	WORD cbSizeVft;
	WORD cbAlignment;
	WORD wTypeFlags;
	WORD wMajorVerNum;
	WORD wMinorVerNum;
	TYPEDESC tdescAlias;
	IDLDESC idldescType;
}	TYPEATTR;

typedef struct tagTYPEATTR __RPC_FAR *LPTYPEATTR;

typedef struct  tagDISPPARAMS
{
	/* [size_is] */ VARIANTARG __RPC_FAR *rgvarg;
	/* [size_is] */ DISPID __RPC_FAR *rgdispidNamedArgs;
	UINT cArgs;
	UINT cNamedArgs;
}	DISPPARAMS;

typedef struct tagEXCEPINFO
{
	WORD  wCode;
	WORD  wReserved;
	BSTR  bstrSource;
	BSTR  bstrDescription;
	BSTR  bstrHelpFile;
	DWORD dwHelpContext;
	PVOID pvReserved;
	HRESULT (__stdcall *pfnDeferredFillIn)(struct tagEXCEPINFO *);
	SCODE scode;
} EXCEPINFO, * LPEXCEPINFO;

typedef /* [v1_enum] */
enum tagCALLCONV
{
	CC_FASTCALL		= 0,
	CC_CDECL		= 1,
	CC_MSCPASCAL	= CC_CDECL + 1,
	CC_PASCAL		= CC_MSCPASCAL,
	CC_MACPASCAL	= CC_PASCAL + 1,
	CC_STDCALL		= CC_MACPASCAL + 1,
	CC_FPFASTCALL	= CC_STDCALL + 1,
	CC_SYSCALL		= CC_FPFASTCALL + 1,
	CC_MPWCDECL		= CC_SYSCALL + 1,
	CC_MPWPASCAL	= CC_MPWCDECL + 1,
	CC_MAX			= CC_MPWPASCAL + 1
}	CALLCONV;

typedef /* [v1_enum] */ 
enum tagFUNCKIND
{
	FUNC_VIRTUAL		= 0,
	FUNC_PUREVIRTUAL	= FUNC_VIRTUAL + 1,
	FUNC_NONVIRTUAL		= FUNC_PUREVIRTUAL + 1,
	FUNC_STATIC			= FUNC_NONVIRTUAL + 1,
	FUNC_DISPATCH		= FUNC_STATIC + 1
}	FUNCKIND;

typedef /* [v1_enum] */ 
enum tagINVOKEKIND
{
	INVOKE_FUNC	= 1,
	INVOKE_PROPERTYGET	= 2,
	INVOKE_PROPERTYPUT	= 4,
	INVOKE_PROPERTYPUTREF	= 8
}	INVOKEKIND;

typedef struct tagFUNCDESC
{
    MEMBERID memid;
    /* [size_is] */ SCODE __RPC_FAR *lprgscode;
    /* [size_is] */ ELEMDESC __RPC_FAR *lprgelemdescParam;
    FUNCKIND funckind;
    INVOKEKIND invkind;
    CALLCONV callconv;
    SHORT cParams;
    SHORT cParamsOpt;
    SHORT oVft;
    SHORT cScodes;
    ELEMDESC elemdescFunc;
    WORD wFuncFlags;
}	FUNCDESC;

typedef struct tagFUNCDESC __RPC_FAR *LPFUNCDESC;

typedef /* [v1_enum] */ 
enum tagVARKIND
{
	VAR_PERINSTANCE	= 0,
	VAR_STATIC		= VAR_PERINSTANCE + 1,
	VAR_CONST		= VAR_STATIC + 1,
	VAR_DISPATCH	= VAR_CONST + 1
}	VARKIND;

#define	IMPLTYPEFLAG_FDEFAULT	( 0x1 )
#define	IMPLTYPEFLAG_FSOURCE	( 0x2 )
#define	IMPLTYPEFLAG_FRESTRICTED	( 0x4 )
#define	IMPLTYPEFLAG_FDEFAULTVTABLE	( 0x8 )

typedef struct tagVARDESC
{
	MEMBERID memid;
	LPOLESTR lpstrSchema;
	/* [switch_is][switch_type] */ union
	{
		/* [case()] */ ULONG oInst;
		/* [case()] */ VARIANT __RPC_FAR *lpvarValue;
	};
	ELEMDESC elemdescVar;
	WORD wVarFlags;
	VARKIND varkind;
}	VARDESC;

typedef struct tagVARDESC __RPC_FAR *LPVARDESC;

typedef 
enum tagTYPEFLAGS
{
	TYPEFLAG_FAPPOBJECT		= 0x1,
	TYPEFLAG_FCANCREATE		= 0x2,
	TYPEFLAG_FLICENSED		= 0x4,
	TYPEFLAG_FPREDECLID		= 0x8,
	TYPEFLAG_FHIDDEN		= 0x10,
	TYPEFLAG_FCONTROL		= 0x20,
	TYPEFLAG_FDUAL			= 0x40,
	TYPEFLAG_FNONEXTENSIBLE	= 0x80,
	TYPEFLAG_FOLEAUTOMATION	= 0x100,
	TYPEFLAG_FRESTRICTED	= 0x200,
	TYPEFLAG_FAGGREGATABLE	= 0x400,
	TYPEFLAG_FREPLACEABLE	= 0x800,
	TYPEFLAG_FDISPATCHABLE	= 0x1000,
	TYPEFLAG_FREVERSEBIND	= 0x2000
}	TYPEFLAGS;

typedef 
enum tagFUNCFLAGS
{
	FUNCFLAG_FRESTRICTED		= 0x1,
	FUNCFLAG_FSOURCE			= 0x2,
	FUNCFLAG_FBINDABLE			= 0x4,
	FUNCFLAG_FREQUESTEDIT		= 0x8,
	FUNCFLAG_FDISPLAYBIND		= 0x10,
	FUNCFLAG_FDEFAULTBIND		= 0x20,
	FUNCFLAG_FHIDDEN			= 0x40,
	FUNCFLAG_FUSESGETLASTERROR	= 0x80,
	FUNCFLAG_FDEFAULTCOLLELEM	= 0x100,
	FUNCFLAG_FUIDEFAULT			= 0x200,
	FUNCFLAG_FNONBROWSABLE		= 0x400,
	FUNCFLAG_FREPLACEABLE		= 0x800,
	FUNCFLAG_FIMMEDIATEBIND		= 0x1000
}	FUNCFLAGS;

typedef 
enum tagVARFLAGS
{
	VARFLAG_FREADONLY			= 0x1,
	VARFLAG_FSOURCE				= 0x2,
	VARFLAG_FBINDABLE			= 0x4,
	VARFLAG_FREQUESTEDIT		= 0x8,
	VARFLAG_FDISPLAYBIND		= 0x10,
	VARFLAG_FDEFAULTBIND		= 0x20,
	VARFLAG_FHIDDEN				= 0x40,
	VARFLAG_FRESTRICTED			= 0x80,
	VARFLAG_FDEFAULTCOLLELEM	= 0x100,
	VARFLAG_FUIDEFAULT			= 0x200,
	VARFLAG_FNONBROWSABLE		= 0x400,
	VARFLAG_FREPLACEABLE		= 0x800,
	VARFLAG_FIMMEDIATEBIND		= 0x1000
}	VARFLAGS;

typedef /* [wire_marshal] */ struct  tagCLEANLOCALSTORAGE
{
	IUnknown __RPC_FAR *pInterface;
	PVOID pStorage;
	DWORD flags;
}	CLEANLOCALSTORAGE;

typedef struct  tagCUSTDATAITEM
{
	GUID guid;
	VARIANTARG varValue;
}	CUSTDATAITEM;

typedef struct tagCUSTDATAITEM __RPC_FAR *LPCUSTDATAITEM;

typedef struct  tagCUSTDATA
{
	DWORD cCustData;
	/* [size_is] */ LPCUSTDATAITEM prgCustData;
}	CUSTDATA;

typedef struct tagCUSTDATA __RPC_FAR *LPCUSTDATA;

#endif /* __IOleAutomationTypes_INTERFACE_DEFINED__ */

// -------------------------------------------------------------------------
MIDL_INTERFACE_("00020404-0000-0000-C000-000000000046", IEnumVARIANT)
	: public IUnknown
{
public:
	virtual /* [local] */ HRESULT STDMETHODCALLTYPE Next(
		/* [in] */ ULONG celt,
		/* [length_is][size_is][out] */ VARIANT *rgVar,
		/* [out] */ ULONG *pCeltFetched) = 0;

	virtual HRESULT STDMETHODCALLTYPE Skip(
		/* [in] */ ULONG celt) = 0;

	virtual HRESULT STDMETHODCALLTYPE Reset( void) = 0;

	virtual HRESULT STDMETHODCALLTYPE Clone(
		/* [out] */ IEnumVARIANT **ppEnum) = 0;
};

// -------------------------------------------------------------------------
interface ITypeInfo;
interface ITypeComp;

// -------------------------------------------------------------------------
typedef struct tagOLEVERB
{
	INT32 lVerb;
	LPOLESTR lpszVerbName;
	UINT32 fuFlags;
	UINT32 grfAttribs;
}	OLEVERB;

// -------------------------------------------------------------------------
typedef enum tagDESCKIND
{
	DESCKIND_NONE	= 0,
	DESCKIND_FUNCDESC	= ( DESCKIND_NONE + 1 ) ,
	DESCKIND_VARDESC	= ( DESCKIND_FUNCDESC + 1 ) ,
	DESCKIND_TYPECOMP	= ( DESCKIND_VARDESC + 1 ) ,
	DESCKIND_IMPLICITAPPOBJ	= ( DESCKIND_TYPECOMP + 1 ) ,
	DESCKIND_MAX	= ( DESCKIND_IMPLICITAPPOBJ + 1 )
} 	DESCKIND;

typedef union tagBINDPTR
{
	FUNCDESC *lpfuncdesc;
	VARDESC *lpvardesc;
	ITypeComp *lptcomp;
} 	BINDPTR;

typedef /* [v1_enum] */
enum tagSYSKIND
{
	SYS_WIN16	= 0,
	SYS_WIN32	= ( SYS_WIN16 + 1 ) ,
	SYS_MAC	= ( SYS_WIN32 + 1 ) ,
	SYS_WIN64	= ( SYS_MAC + 1 )
} 	SYSKIND;

typedef struct tagTLIBATTR
{
	GUID guid;
	LCID lcid;
	SYSKIND syskind;
	WORD wMajorVerNum;
	WORD wMinorVerNum;
	WORD wLibFlags;
} 	TLIBATTR;

// -------------------------------------------------------------------------
MIDL_INTERFACE_("00020402-0000-0000-C000-000000000046", ITypeLib)
	: public IUnknown
{
public:
	virtual /* [local] */ UINT STDMETHODCALLTYPE GetTypeInfoCount( void) = 0;

	virtual HRESULT STDMETHODCALLTYPE GetTypeInfo(
		/* [in] */ UINT index,
		/* [out] */ ITypeInfo **ppTInfo) = 0;

	virtual HRESULT STDMETHODCALLTYPE GetTypeInfoType(
		/* [in] */ UINT index,
		/* [out] */ TYPEKIND *pTKind) = 0;

	virtual HRESULT STDMETHODCALLTYPE GetTypeInfoOfGuid(
		/* [in] */ REFGUID guid,
		/* [out] */ ITypeInfo **ppTinfo) = 0;

	virtual /* [local] */ HRESULT STDMETHODCALLTYPE GetLibAttr(
		/* [out] */ TLIBATTR **ppTLibAttr) = 0;

	virtual HRESULT STDMETHODCALLTYPE GetTypeComp(
		/* [out] */ ITypeComp **ppTComp) = 0;

	virtual /* [local] */ HRESULT STDMETHODCALLTYPE GetDocumentation(
		/* [in] */ INT index,
		/* [out] */ BSTR *pBstrName,
		/* [out] */ BSTR *pBstrDocString,
		/* [out] */ DWORD *pdwHelpContext,
		/* [out] */ BSTR *pBstrHelpFile) = 0;

	virtual /* [local] */ HRESULT STDMETHODCALLTYPE IsName(
		/* [out][in] */ LPOLESTR szNameBuf,
		/* [in] */ ULONG lHashVal,
		/* [out] */ BOOL *pfName) = 0;

	virtual /* [local] */ HRESULT STDMETHODCALLTYPE FindName(
		/* [out][in] */ LPOLESTR szNameBuf,
		/* [in] */ ULONG lHashVal,
		/* [length_is][size_is][out] */ ITypeInfo **ppTInfo,
		/* [length_is][size_is][out] */ MEMBERID *rgMemId,
		/* [out][in] */ USHORT *pcFound) = 0;

	virtual /* [local] */ void STDMETHODCALLTYPE ReleaseTLibAttr(
		/* [in] */ TLIBATTR *pTLibAttr) = 0;
};

// -------------------------------------------------------------------------
MIDL_INTERFACE_("00020403-0000-0000-C000-000000000046", ITypeComp)
	: public IUnknown
{
public:
	virtual /* [local] */ HRESULT STDMETHODCALLTYPE Bind(
		/* [in] */ LPOLESTR szName,
		/* [in] */ ULONG lHashVal,
		/* [in] */ WORD wFlags,
		/* [out] */ ITypeInfo **ppTInfo,
		/* [out] */ DESCKIND *pDescKind,
		/* [out] */ BINDPTR *pBindPtr) = 0;

	virtual /* [local] */ HRESULT STDMETHODCALLTYPE BindType(
		/* [in] */ LPOLESTR szName,
		/* [in] */ ULONG lHashVal,
		/* [out] */ ITypeInfo **ppTInfo,
		/* [out] */ ITypeComp **ppTComp) = 0;
};

// -------------------------------------------------------------------------
MIDL_INTERFACE_("00020401-0000-0000-C000-000000000046", ITypeInfo)
	: public IUnknown
{
public:
	virtual /* [local] */ HRESULT STDMETHODCALLTYPE GetTypeAttr(
		/* [out] */ TYPEATTR **ppTypeAttr) = 0;

	virtual HRESULT STDMETHODCALLTYPE GetTypeComp(
		/* [out] */ ITypeComp **ppTComp) = 0;

	virtual /* [local] */ HRESULT STDMETHODCALLTYPE GetFuncDesc(
		/* [in] */ UINT index,
		/* [out] */ FUNCDESC **ppFuncDesc) = 0;

	virtual /* [local] */ HRESULT STDMETHODCALLTYPE GetVarDesc(
		/* [in] */ UINT index,
		/* [out] */ VARDESC **ppVarDesc) = 0;

	virtual /* [local] */ HRESULT STDMETHODCALLTYPE GetNames(
		/* [in] */ MEMBERID memid,
		/* [length_is][size_is][out] */ BSTR *rgBstrNames,
		/* [in] */ UINT cMaxNames,
		/* [out] */ UINT *pcNames) = 0;

	virtual HRESULT STDMETHODCALLTYPE GetRefTypeOfImplType(
		/* [in] */ UINT index,
		/* [out] */ HREFTYPE *pRefType) = 0;

	virtual HRESULT STDMETHODCALLTYPE GetImplTypeFlags(
		/* [in] */ UINT index,
		/* [out] */ INT *pImplTypeFlags) = 0;

	virtual /* [local] */ HRESULT STDMETHODCALLTYPE GetIDsOfNames(
		/* [size_is][in] */ LPOLESTR *rgszNames,
		/* [in] */ UINT cNames,
		/* [size_is][out] */ MEMBERID *pMemId) = 0;

	virtual /* [local] */ HRESULT STDMETHODCALLTYPE Invoke(
		/* [in] */ PVOID pvInstance,
		/* [in] */ MEMBERID memid,
		/* [in] */ WORD wFlags,
		/* [out][in] */ DISPPARAMS *pDispParams,
		/* [out] */ VARIANT *pVarResult,
		/* [out] */ EXCEPINFO *pExcepInfo,
		/* [out] */ UINT *puArgErr) = 0;

	virtual /* [local] */ HRESULT STDMETHODCALLTYPE GetDocumentation(
		/* [in] */ MEMBERID memid,
		/* [out] */ BSTR *pBstrName,
		/* [out] */ BSTR *pBstrDocString,
		/* [out] */ DWORD *pdwHelpContext,
		/* [out] */ BSTR *pBstrHelpFile) = 0;

	virtual /* [local] */ HRESULT STDMETHODCALLTYPE GetDllEntry(
		/* [in] */ MEMBERID memid,
		/* [in] */ INVOKEKIND invKind,
		/* [out] */ BSTR *pBstrDllName,
		/* [out] */ BSTR *pBstrName,
		/* [out] */ WORD *pwOrdinal) = 0;

	virtual HRESULT STDMETHODCALLTYPE GetRefTypeInfo(
		/* [in] */ HREFTYPE hRefType,
		/* [out] */ ITypeInfo **ppTInfo) = 0;

	virtual /* [local] */ HRESULT STDMETHODCALLTYPE AddressOfMember(
		/* [in] */ MEMBERID memid,
		/* [in] */ INVOKEKIND invKind,
		/* [out] */ PVOID *ppv) = 0;

	virtual /* [local] */ HRESULT STDMETHODCALLTYPE CreateInstance(
		/* [in] */ IUnknown *pUnkOuter,
		/* [in] */ REFIID riid,
		/* [iid_is][out] */ PVOID *ppvObj) = 0;

	virtual HRESULT STDMETHODCALLTYPE GetMops(
		/* [in] */ MEMBERID memid,
		/* [out] */ BSTR *pBstrMops) = 0;

	virtual /* [local] */ HRESULT STDMETHODCALLTYPE GetContainingTypeLib(
		/* [out] */ ITypeLib **ppTLib,
		/* [out] */ UINT *pIndex) = 0;

	virtual /* [local] */ void STDMETHODCALLTYPE ReleaseTypeAttr(
		/* [in] */ TYPEATTR *pTypeAttr) = 0;

	virtual /* [local] */ void STDMETHODCALLTYPE ReleaseFuncDesc(
		/* [in] */ FUNCDESC *pFuncDesc) = 0;
};

// -------------------------------------------------------------------------
#define DISPATCH_METHOD			0x1
#define DISPATCH_PROPERTYGET	0x2
#define DISPATCH_PROPERTYPUT	0x4
#define DISPATCH_PROPERTYPUTREF	0x8

// -------------------------------------------------------------------------
#define	DISPID_UNKNOWN			( -1 )
#define	DISPID_VALUE			( 0 )
#define	DISPID_PROPERTYPUT		( -3 )
#define	DISPID_NEWENUM			( -4 )
#define	DISPID_EVALUATE			( -5 )
#define	DISPID_CONSTRUCTOR		( -6 )
#define	DISPID_DESTRUCTOR		( -7 )
#define	DISPID_COLLECT			( -8 )

// -------------------------------------------------------------------------
MIDL_INTERFACE_("00020400-0000-0000-C000-000000000046", IDispatch)
	: public IUnknown
{
public:
	virtual HRESULT STDMETHODCALLTYPE GetTypeInfoCount(
		/* [out] */ UINT *pctinfo) = 0;

	virtual HRESULT STDMETHODCALLTYPE GetTypeInfo(
		/* [in] */ UINT iTInfo,
		/* [in] */ LCID lcid,
		/* [out] */ ITypeInfo **ppTInfo) = 0;

	virtual HRESULT STDMETHODCALLTYPE GetIDsOfNames(
		/* [in] */ REFIID riid,
		/* [size_is][in] */ LPOLESTR *rgszNames,
		/* [range][in] */ UINT cNames,
		/* [in] */ LCID lcid,
		/* [size_is][out] */ DISPID *rgDispId) = 0;

	virtual /* [local] */ HRESULT STDMETHODCALLTYPE Invoke(
		/* [in] */ DISPID dispIdMember,
		/* [in] */ REFIID riid,
		/* [in] */ LCID lcid,
		/* [in] */ WORD wFlags,
		/* [out][in] */ DISPPARAMS *pDispParams,
		/* [out] */ VARIANT *pVarResult,
		/* [out] */ EXCEPINFO *pExcepInfo,
		/* [out] */ UINT *puArgErr) = 0;
};

typedef IDispatch* LPDISPATCH;

// -------------------------------------------------------------------------

MIDL_INTERFACE_("22F03340-547D-101B-8E65-08002B2BD119", ICreateErrorInfo)
	: public IUnknown
{
public:
	virtual HRESULT STDMETHODCALLTYPE SetGUID(
		/* [in] */ REFGUID rguid) = 0;

	virtual HRESULT STDMETHODCALLTYPE SetSource(
		/* [in] */ LPOLESTR szSource) = 0;

	virtual HRESULT STDMETHODCALLTYPE SetDescription(
		/* [in] */ LPOLESTR szDescription) = 0;

	virtual HRESULT STDMETHODCALLTYPE SetHelpFile(
		/* [in] */ LPOLESTR szHelpFile) = 0;

	virtual HRESULT STDMETHODCALLTYPE SetHelpContext(
		/* [in] */ DWORD dwHelpContext) = 0;
};

// -------------------------------------------------------------------------

MIDL_INTERFACE_("1CF2B120-547D-101B-8E65-08002B2BD119", IErrorInfo)
	: public IUnknown
{
public:
	virtual HRESULT STDMETHODCALLTYPE GetGUID(
		/* [out] */ GUID __RPC_FAR *pGUID) = 0;

	virtual HRESULT STDMETHODCALLTYPE GetSource(
		/* [out] */ BSTR __RPC_FAR *pBstrSource) = 0;

	virtual HRESULT STDMETHODCALLTYPE GetDescription(
		/* [out] */ BSTR __RPC_FAR *pBstrDescription) = 0;

	virtual HRESULT STDMETHODCALLTYPE GetHelpFile(
		/* [out] */ BSTR __RPC_FAR *pBstrHelpFile) = 0;

	virtual HRESULT STDMETHODCALLTYPE GetHelpContext(
		/* [out] */ DWORD __RPC_FAR *pdwHelpContext) = 0;
};

// -------------------------------------------------------------------------

MIDL_INTERFACE_("3127CA40-446E-11CE-8135-00AA004BB851", IErrorLog)
	: public IUnknown
{
public:
	virtual HRESULT STDMETHODCALLTYPE AddError(
		/* [in] */ LPCOLESTR __RPC_FAR pszPropName,
		/* [in] */ EXCEPINFO __RPC_FAR *pExcepInfo) = 0;
};

// -------------------------------------------------------------------------

MIDL_INTERFACE_("55272A00-42CB-11CE-8135-00AA004BB851", IPropertyBag)
	: public IUnknown
{
public:
	virtual /* [local] */ HRESULT STDMETHODCALLTYPE Read(
		/* [in] */ LPCOLESTR pszPropName,
		/* [out][in] */ VARIANT *pVar,
		/* [unique][in] */ IErrorLog *pErrorLog) = 0;

	virtual HRESULT STDMETHODCALLTYPE Write(
		/* [in] */ LPCOLESTR __RPC_FAR pszPropName,
		/* [in] */ VARIANT __RPC_FAR *pVar) = 0;
};

// -------------------------------------------------------------------------

MIDL_INTERFACE_("7BF80981-BF32-101A-8BBB-00AA00300CAB", IPictureDisp)
	: public IDispatch
{
};

// -------------------------------------------------------------------------

#endif /* __KERN_OAIDL_H__ */
