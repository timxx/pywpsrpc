/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

%Include guid.sip

struct IUnknown /Abstract/
{
    %TypeHeaderCode
        #include <pre_stddef.h>
        #include <typedef.h>
        #include <objbase.h>
        #include <objidl.h>
    %End
public:
    virtual HRESULT QueryInterface(
        /* [in] */ const IID& riid,
        /* [iid_is][out] */ void **ppvObject) = 0;
    virtual ULONG AddRef() = 0;
    virtual ULONG Release() = 0;
};
