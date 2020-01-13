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
#ifndef __KFC_COM_GUIDDEF_H__
#define __KFC_COM_GUIDDEF_H__

// =========================================================================

#if 0
#undef __iid
#undef __clsid
#endif

// =========================================================================

template<class T>
const GUID& non_native_uuidof();

#define NON_NATIVE_DEFINE_GUID(cls, x, s1, s2, c1, c2, c3, c4, c5, c6, c7, c8) \
	template<> inline const GUID& non_native_uuidof<interface cls>() { static const GUID guid = {x, s1, s2, {c1, c2, c3, c4, c5, c6, c7, c8}}; return guid; }

#define NON_NATIVE_UUIDOF(cls) non_native_uuidof<cls>()

#ifndef X_CC_VC // release, not vc++

#ifndef __uuidof
#define __uuid(cls)		NON_NATIVE_UUIDOF(cls)
#define __uuidof(cls)	NON_NATIVE_UUIDOF(cls)
#endif

#ifndef	DEFINE_IID
#define DEFINE_IID(Interface, sz, x, s1, s2, c1, c2, c3, c4, c5, c6, c7, c8) \
	NON_NATIVE_DEFINE_GUID(Interface, x, s1, s2, c1, c2, c3, c4, c5, c6, c7, c8)
#endif

#ifndef DEFINE_CLSID
#define DEFINE_CLSID(ComClass, sz, x, s1, s2, c1, c2, c3, c4, c5, c6, c7, c8) \
	class ComClass;															  \
	NON_NATIVE_DEFINE_GUID(ComClass, x, s1, s2, c1, c2, c3, c4, c5, c6, c7, c8)
#endif

#else // release, vc++

#ifndef __uuid
#define __uuid(TheClass)	__uuidof(TheClass)
#endif

#ifndef	DEFINE_IID
#define DEFINE_IID(Interface, sz, x, s1, s2, c1, c2, c3, c4, c5, c6, c7, c8) \
	interface __declspec(uuid(sz)) Interface;
#endif

#ifndef DEFINE_CLSID
#define DEFINE_CLSID(ComClass, sz, x, s1, s2, c1, c2, c3, c4, c5, c6, c7, c8) \
	class __declspec(uuid(sz)) ComClass;
#endif

#endif
// =========================================================================

#ifndef DECLARE_GUID
#define DECLARE_GUID(var)				EXTERN_C const GUID var;
#endif

// =========================================================================


//
#ifndef	__iid
#define __iid(Interface)			IID_ ## Interface
#endif

#ifndef	__clsid
#define __clsid(ComClass)			CLSID_ ## ComClass
#endif

// -------------------------------------------------------------------------

interface IUnknown;
interface IClassFactory;
interface IMalloc;
interface IMallocSpy;
interface ILockBytes;
interface ISequentialStream;
interface IStream;
interface IStorage;
interface IPersistStorage;
interface IEnumSTATSTG;
interface IDispatch;
interface ITypeLib;
interface ITypeLib2;
interface ICreateErrorInfo;
interface IErrorInfo;

EXTERN_C const IID IID_IPersistStorage;
EXTERN_C const IID IID_IDispatch;
EXTERN_C const IID IID_ITypeLib;
EXTERN_C const IID IID_ITypeLib2;


#if !defined(X_CC_VC) 
// -------------------------------------------------------------------------
// objidl.h
DEFINE_IID(IUnknown, "00000000-0000-0000-C000-000000000046",
		   0x00000000, 0x0000, 0x0000, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
DEFINE_IID(IClassFactory, "00000001-0000-0000-C000-000000000046",
		   0x00000001, 0x0000, 0x0000, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
DEFINE_IID(IEnumUnknown, "00000100-0000-0000-C000-000000000046",
		   0x00000100, 0x0000, 0x0000, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
DEFINE_IID(IMalloc, "00000002-0000-0000-C000-000000000046",
		   0x00000002, 0x0000, 0x0000, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
DEFINE_IID(IMallocSpy, "0000001d-0000-0000-C000-000000000046",
		   0x0000001d, 0x0000, 0x0000, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
DEFINE_IID(ILockBytes, "0000000a-0000-0000-C000-000000000046",
		   0x0000000a, 0x0000, 0x0000, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
DEFINE_IID(ISequentialStream, "0c733a30-2a1c-11ce-ade5-00aa0044773d",
		   0x0c733a30, 0x2a1c, 0x11ce, 0xad, 0xe5, 0x00, 0xaa, 0x00, 0x44, 0x77, 0x3d);
DEFINE_IID(IStream, "0000000c-0000-0000-C000-000000000046",
		   0x0000000c, 0x0000, 0x0000, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
DEFINE_IID(IEnumSTATSTG, "0000000d-0000-0000-C000-000000000046",
		   0x0000000d, 0x0000, 0x0000, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
DEFINE_IID(IStorage, "0000000b-0000-0000-C000-000000000046",
		   0x0000000b, 0x0000, 0x0000, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
DEFINE_IID(IPersist, "0000010c-0000-0000-C000-000000000046",
		   0x0000010c, 0x0000, 0x0000, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
DEFINE_IID(IPersistStream, "00000109-0000-0000-C000-000000000046",
		   0x00000109, 0x0000, 0x0000, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
DEFINE_IID(IEnumString, "00000101-0000-0000-C000-000000000046",
		   0x00000101, 0x0000, 0x0000, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
DEFINE_IID(IMoniker, "0000000f-0000-0000-C000-000000000046",
		   0x0000000f, 0x0000, 0x0000, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
DEFINE_IID(IPersistFile, "0000010b-0000-0000-C000-000000000046",
		   0x0000010b, 0x0000, 0x0000, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
DEFINE_IID(IPersistStorage, "0000010a-0000-0000-C000-000000000046",
		   0x0000010a, 0x0000, 0x0000, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
DEFINE_IID(IEnumMoniker, "00000102-0000-0000-C000-000000000046",
		   0x00000102, 0x0000, 0x0000, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
DEFINE_IID(IRunningObjectTable, "00000010-0000-0000-C000-000000000046",
		   0x00000010, 0x0000, 0x0000, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
DEFINE_IID(IBindCtx, "0000000e-0000-0000-C000-000000000046",
		   0x0000000e, 0x0000, 0x0000, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
DEFINE_IID(IAdviseSink, "0000010f-0000-0000-C000-000000000046",
		   0x0000010f, 0x0000, 0x0000, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
DEFINE_IID(IEnumSTATDATA, "00000105-0000-0000-C000-000000000046",
		   0x00000105, 0x0000, 0x0000, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
DEFINE_IID(IEnumFORMATETC, "00000103-0000-0000-C000-000000000046",
		   0x00000103, 0x0000, 0x0000, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
DEFINE_IID(IDataObject, "0000010e-0000-0000-C000-000000000046",
		   0x0000010e, 0x0000, 0x0000, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
DEFINE_IID(IStdMarshalInfo, "00000018-0000-0000-C000-000000000046",
		   0x00000018, 0x0000, 0x0000, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
DEFINE_IID(IExternalConnection, "00000019-0000-0000-C000-000000000046",
		   0x00000019, 0x0000, 0x0000, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);

// -------------------------------------------------------------------------
// ocidl.h
DEFINE_IID(IConnectionPoint, "B196B286-BAB4-101A-B69C-00AA00341D07",
		   0xB196B286, 0xBAB4, 0x101A, 0xB6, 0x9C, 0x00, 0xAA, 0x00, 0x34, 0x1D, 0x07);
DEFINE_IID(IEnumConnectionPoints, "B196B285-BAB4-101A-B69C-00AA00341D07",
		   0xB196B285, 0xBAB4, 0x101A, 0xB6, 0x9C, 0x00, 0xAA, 0x00, 0x34, 0x1D, 0x07);
DEFINE_IID(IConnectionPointContainer, "B196B284-BAB4-101A-B69C-00AA00341D07",
		   0xB196B284, 0xBAB4, 0x101A, 0xB6, 0x9C, 0x00, 0xAA, 0x00, 0x34, 0x1D, 0x07);
DEFINE_IID(IEnumConnections, "B196B287-BAB4-101A-B69C-00AA00341D07",
		   0xB196B287, 0xBAB4, 0x101A, 0xB6, 0x9C, 0x00, 0xAA, 0x00, 0x34, 0x1D, 0x07);

// -------------------------------------------------------------------------
// oleidl.h
DEFINE_IID(IEnumOLEVERB, "00000104-0000-0000-C000-000000000046",
		   0x00000104, 0x0000, 0x0000, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
DEFINE_IID(IOleObject, "00000112-0000-0000-C000-000000000046",
		   0x00000112, 0x0000, 0x0000, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
DEFINE_IID(IOleClientSite, "00000118-0000-0000-C000-000000000046",
		   0x00000118, 0x0000, 0x0000, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
DEFINE_IID(IParseDisplayName, "0000011a-0000-0000-C000-000000000046",
		   0x0000011a, 0x0000, 0x0000, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
DEFINE_IID(IOleContainer, "0000011b-0000-0000-C000-000000000046",
		   0x0000011b, 0x0000, 0x0000, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
DEFINE_IID(IDropSource, "00000121-0000-0000-C000-000000000046",
		   0x00000121, 0x0000, 0x0000, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
DEFINE_IID(IDropTarget, "00000122-0000-0000-C000-000000000046",
		   0x00000122, 0x0000, 0x0000, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);

// -------------------------------------------------------------------------
// propidl.h
DEFINE_IID(IPropertyStorage, "00000138-0000-0000-C000-000000000046",
		   0x00000138, 0x0000, 0x0000, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
DEFINE_IID(IPropertySetStorage, "0000013A-0000-0000-C000-000000000046",
		   0x0000013A, 0x0000, 0x0000, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
DEFINE_IID(IEnumSTATPROPSTG, "00000139-0000-0000-C000-000000000046",
		   0x00000139, 0x0000, 0x0000, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
DEFINE_IID(IEnumSTATPROPSETSTG, "0000013B-0000-0000-C000-000000000046",
		   0x0000013B, 0x0000, 0x0000, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);

// -------------------------------------------------------------------------
// docobj.h
DEFINE_IID(IOleCommandTarget, "b722bccb-4e68-101b-a2bc-00aa00404770",
		   0xb722bccb, 0x4e68, 0x101b, 0xa2, 0xbc, 0x00, 0xaa, 0x00, 0x40, 0x47, 0x70);

// -------------------------------------------------------------------------
// oaidl.h
DEFINE_IID(IEnumVARIANT, "00020404-0000-0000-C000-000000000046",
		   0x00020404, 0x0000, 0x0000, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
DEFINE_IID(ITypeLib, "00020402-0000-0000-C000-000000000046",
		   0x00020402, 0x0000, 0x0000, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
DEFINE_IID(ITypeComp, "00020403-0000-0000-C000-000000000046",
		   0x00020403, 0x0000, 0x0000, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
DEFINE_IID(ITypeInfo, "00020401-0000-0000-C000-000000000046",
		   0x00020401, 0x0000, 0x0000, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
DEFINE_IID(IDispatch, "00020400-0000-0000-C000-000000000046",
		   0x00020400, 0x0000, 0x0000, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
DEFINE_IID(ICreateErrorInfo, "22F03340-547D-101B-8E65-08002B2BD119",
		   0x2F03340, 0x547D, 0x101B, 0x8E, 0x65, 0x08, 0x00, 0x2B, 0x2B, 0xD1, 0x19);
DEFINE_IID(IErrorInfo, "1CF2B120-547D-101B-8E65-08002B2BD119",
		   0x1CF2B120, 0x547D, 0x101B, 0x8E, 0x65, 0x08, 0x00, 0x2B, 0x2B, 0xD1, 0x19);
DEFINE_IID(IErrorLog, "3127CA40-446E-11CE-8135-00AA004BB851",
		   0x3127CA40, 0x446E, 0x11CE, 0x81, 0x35, 0x00, 0xAA, 0x00, 0x4B, 0xB8, 0x51);
DEFINE_IID(IPropertyBag, "55272A00-42CB-11CE-8135-00AA004BB851",
		   0x55272A00, 0x42CB, 0x11CE, 0x81, 0x35, 0x00, 0xAA, 0x00, 0x4B, 0xB8, 0x51);

// -------------------------------------------------------------------------
#endif
// =========================================================================

#endif /* __KFC_COM_GUIDDEF_H__ */
