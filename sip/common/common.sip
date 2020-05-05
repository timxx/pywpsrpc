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
    #include <QCoreApplication>
    #include <atomic>

BSTR _SysAllocString(const OLECHAR* psz);
UINT _SysStringLen(BSTR bstr);
void _SysFreeString(BSTR bstr);

UINT32 _SafeArrayGetElemsize(SAFEARRAY *psa);
HRESULT _SafeArrayGetElement(SAFEARRAY *psa, INT32 *rgIndices, void *pv);
_SAFEARRAY_PTR _SafeArrayCreateVector(VARTYPE vt, INT32 lLbound, UINT32 cElements);
HRESULT _SafeArrayPutElement(SAFEARRAY *psa, INT32 *rgIndices, void *pv);

class QtApp
{
public:
    QtApp(PyObject *args);
    ~QtApp();

private:
    static int argc;
    static char **argv;
    static QCoreApplication *qtApp;
    static std::atomic<int> ref;
};
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

class QtApp /NoDefaultCtors/
{
public:
    QtApp(PyObject *args /TypeHint="List[str]"/);
    ~QtApp();
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
#include <QString>

int QtApp::argc = 0;
char **QtApp::argv = nullptr;
QCoreApplication *QtApp::qtApp = nullptr;
std::atomic<int> QtApp::ref;


QtApp::QtApp(PyObject *args)
{
    ++ref;
    if (qtApp)
        return;

    argc = PyList_Size(args);
    argv = new char *[argc + 1];

    for (int i = 0; i < argc; ++i)
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

        argv[i] = arg;
    }

    argv[argc] = nullptr;

    qtApp = new QCoreApplication(argc, argv);
}

QtApp::~QtApp()
{
    --ref;
    if (ref == 0 && qtApp)
    {
        delete qtApp;

        for (int i = 0; i < argc; ++i)
        {
            if (argv[i])
                free(argv[i]);
        }

        delete [] argv;

        qtApp = nullptr;
        argc = 0;
        argv = nullptr;
    }
}

static void IUnknown_CollectingWrapperEventHandler(sipSimpleWrapper *sipSelf)
{
    if (!sipIsOwnedByPython(sipSelf))
    {
        if (IUnknown *cppPtr = reinterpret_cast<IUnknown*>(sipGetAddress(sipSelf)))
            cppPtr->Release();
    }
}
%End

%PostInitialisationCode
sipRegisterEventHandler(sipEventCollectingWrapper,
    sipType_IUnknown,
    (void *)IUnknown_CollectingWrapperEventHandler);
%End
