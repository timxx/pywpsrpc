/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

%InitialisationCode
sipExportSymbol("SysAllocString", (void*)_XSysAllocString);
sipExportSymbol("SysStringLen", (void*)_XSysStringLen);
sipExportSymbol("SysFreeString", (void*)_XSysFreeString);

sipExportSymbol("SafeArrayGetElemsize", (void*)_MSafeArrayGetElemsize);
sipExportSymbol("SafeArrayGetElement", (void*)_MSafeArrayGetElement);
sipExportSymbol("SafeArrayCreateVector", (void*)_MSafeArrayCreateVector);
sipExportSymbol("SafeArrayPutElement", (void*)_MSafeArrayPutElement);
%End

%ModuleHeaderCode
VARIANT* argMissing();
VARIANT argMissing2();
%End

%ModuleCode
VARIANT* argMissing()
{
    static VARIANT s_varMissing;
    // reset every time, shall we make a assert?
    V_VT(&s_varMissing) = VT_ERROR;
    V_ERROR(&s_varMissing) =0x80020004;

    return &s_varMissing;
}

VARIANT argMissing2()
{
    return *argMissing();
}
%End