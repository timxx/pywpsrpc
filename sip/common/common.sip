/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

%ModuleHeaderCode
    #include "stdafx.h"
%End

%Include typedef.sip
%Include objbase.sip
%Include objidl.sip
%Include oaidl.sip
%Include guid.sip
%Include wpsrpcsdk.sip

HRESULT S_OK;
HRESULT S_FALSE;

HRESULT E_INVALIDARG;
HRESULT E_NOINTERFACE;
HRESULT E_ABORT;
HRESULT E_FAIL;
HRESULT E_ACCESSDENIED;
HRESULT E_NOTIMPL;

bool SUCCEEDED(HRESULT hr);
bool FAILED(HRESULT hr);

%ModuleCode

#define _HRESULT_CONST(name, value) \
    static const HRESULT name = value;

#undef S_OK
#undef S_FALSE
#undef E_INVALIDARG
#undef E_NOINTERFACE
#undef E_ABORT
#undef E_FAIL
#undef E_ACCESSDENIED
#undef E_NOTIMPL

_HRESULT_CONST(S_OK, 0x00000000)
_HRESULT_CONST(S_FALSE, 0x00000001)
_HRESULT_CONST(E_INVALIDARG, 0x80070057)
_HRESULT_CONST(E_NOINTERFACE, 0x80004002)
_HRESULT_CONST(E_ABORT, 0x80004004)
_HRESULT_CONST(E_FAIL, 0x80004005)
_HRESULT_CONST(E_ACCESSDENIED, 0x80070005)
_HRESULT_CONST(E_NOTIMPL, 0x80004001)

#undef SUCCEEDED
static bool SUCCEEDED(HRESULT hr)
{
    return hr >= 0;
}

#undef FAILED
static bool FAILED(HRESULT hr)
{
    return hr < 0;
}

%End
