/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

%Module(name=pywpsrpc.common, keyword_arguments="Optional")

%ModuleHeaderCode
    #include "stdafx.h"

BSTR _SysAllocString(const OLECHAR* psz);
UINT _SysStringLen(BSTR bstr);
void _SysFreeString(BSTR bstr);

UINT32 _SafeArrayGetElemsize(SAFEARRAY *psa);
HRESULT _SafeArrayGetElement(SAFEARRAY *psa, INT32 *rgIndices, void *pv);
_SAFEARRAY_PTR _SafeArrayCreateVector(VARTYPE vt, INT32 lLbound, UINT32 cElements);
HRESULT _SafeArrayPutElement(SAFEARRAY *psa, INT32 *rgIndices, void *pv);

namespace QtApp
{
    void init(PyObject *args);
    void destroy();
}
%End

%Include typedef.sip
%Include objbase.sip
%Include objidl.sip
%Include oaidl.sip
%Include guid.sip
%Include ksoapi.sip
%Include wpsapiex.sip

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

namespace QtApp
{
    void init(PyObject *args /TypeHint="List[str]"/);
    void destroy();
};

%ModuleCode

BSTR _SysAllocString(const OLECHAR* psz)
{
    typedef BSTR (*pfnSysAllocString)(const OLECHAR*);
    static pfnSysAllocString fnAllocStr = (pfnSysAllocString)sipImportSymbol("SysAllocString");

    return fnAllocStr(psz);
}

UINT _SysStringLen(BSTR bstr)
{
    typedef UINT (*pfnSysStringLen)(BSTR);
    static pfnSysStringLen fnStrLen = (pfnSysStringLen)sipImportSymbol("SysStringLen");

    return fnStrLen(bstr);
}

void _SysFreeString(BSTR bstr)
{
    typedef void (*pfnSysFreeString)(BSTR);
    static pfnSysFreeString fnFreeStr = (pfnSysFreeString)sipImportSymbol("SysFreeString");

    fnFreeStr(bstr);
}

UINT32 _SafeArrayGetElemsize(SAFEARRAY *psa)
{
    typedef UINT32 (*pfnSafeArrayGetElemsize)(SAFEARRAY*);
    static pfnSafeArrayGetElemsize fnGetSize = (pfnSafeArrayGetElemsize)sipImportSymbol("SafeArrayGetElemsize");

    return fnGetSize(psa);
}

HRESULT _SafeArrayGetElement(SAFEARRAY *psa, INT32 *rgIndices, void *pv)
{
    typedef HRESULT (*pfnSafeArrayGetElement)(SAFEARRAY *, INT32 *, void *);
    static pfnSafeArrayGetElement fnGetEle = (pfnSafeArrayGetElement)sipImportSymbol("SafeArrayGetElement");

    return fnGetEle(psa, rgIndices, pv);
}

_SAFEARRAY_PTR _SafeArrayCreateVector(VARTYPE vt, INT32 lLbound, UINT32 cElements)
{
    typedef _SAFEARRAY_PTR (*pfnSafeArrayCreateVector)(VARTYPE, INT32, UINT32);
    static pfnSafeArrayCreateVector fnCreateVec = (pfnSafeArrayCreateVector)sipImportSymbol("SafeArrayCreateVector");

    return fnCreateVec(vt, lLbound, cElements);
}

HRESULT _SafeArrayPutElement(SAFEARRAY *psa, INT32 *rgIndices, void *pv)
{
    typedef HRESULT (*pfnSafeArrayPutElement)(SAFEARRAY *, INT32 *, void *);
    static pfnSafeArrayPutElement fnPutEle = (pfnSafeArrayPutElement)sipImportSymbol("SafeArrayPutElement");

    return fnPutEle(psa, rgIndices, pv);
}


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

// to avoid depends on python's Qt (PySide2, PyQt5 etc.)
#include <QCoreApplication>
#include <QString>

static int g_argc;
static char **g_argv;
static QCoreApplication *g_qApp;

namespace QtApp
{
    void init(PyObject *args)
    {
        if (!g_qApp)
        {
            g_argc = PyList_Size(args);
            g_argv = new char *[g_argc + 1];

            for (int i = 0; i < g_argc; ++i)
            {
                PyObject *item = PyList_GetItem(args, i);
                char *arg = nullptr;

                if (PyUnicode_Check(item))
                {
                    int char_size = 0;
                    Py_ssize_t len = 0;
                    void *data = sipUnicodeData(item, &char_size, &len);

                    switch (char_size)
                    {
                    case 1:
                        arg = strdup(reinterpret_cast<char*>(data));
                        break;

                    case 2:
                        {
                            QString qStr(reinterpret_cast<QChar*>(data), len);
                            const QByteArray ba = qStr.toLocal8Bit();
                            arg = strdup(ba.constData());
                        }
                        break;

                    case 4:
                        {
                            QString qStr = QString::fromUcs4(reinterpret_cast<uint*>(data), len);
                            const QByteArray ba = qStr.toLocal8Bit();
                            arg = strdup(ba.constData());
                        }
                        break;
                    }
                }
                else if (SIPBytes_Check(item))
                {
                    arg = strdup(SIPBytes_AsString(item));
                }

                g_argv[i] = arg;
            }

            g_argv[g_argc] = nullptr;

            g_qApp = new QCoreApplication(g_argc, g_argv);
        }
    }

    void destroy()
    {
        if (g_qApp)
        {
            delete g_qApp;

            for (int i = 0; i < g_argc; ++i)
            {
                if (g_argv[i])
                    free(g_argv[i]);
            }

            delete [] g_argv;

            g_qApp = nullptr;
            g_argc = 0;
            g_argv = nullptr;
        }
    }
}

%End
