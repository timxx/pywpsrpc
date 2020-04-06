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

bool parseVariantArgs(
    PyObject *sipArgs,
    VARIANT *args[],
    std::vector<std::pair<int, int>> &indexes,
    int offset = 0,
    Py_ssize_t maxArg = -1);

bool parseVariantKwds(
    PyObject *sipKwds,
    const char * const kwdNames[],
    int kwdNamesCount,
    VARIANT *args[],
    Py_ssize_t posArgsCount,
    std::vector<std::pair<int, int>> &indexes,
    int offset = 0);
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

bool parseVariantArgs(
    PyObject *sipArgs,
    VARIANT *args[],
    std::vector<std::pair<int, int>> &indexes,
    int offset,
    Py_ssize_t maxArg)
{
    Py_ssize_t posArgsCount = PyTuple_Size(sipArgs);
    if (maxArg != -1 && posArgsCount > maxArg)
        posArgsCount = maxArg;

    for (Py_ssize_t i = offset; i < posArgsCount; ++i)
    {
        PyObject *pyArg = PyTuple_GetItem(sipArgs, i);
        int state = 0;
        int isError = 0;
        args[i - offset] = reinterpret_cast<VARIANT *>(
            sipConvertToType(pyArg, sipType_VARIANT, 0, SIP_NO_CONVERTORS, &state, &isError));

        indexes.push_back(std::make_pair(i - offset, state));
    }

    return true;
}

bool parseVariantKwds(
    PyObject *sipKwds,
    const char * const kwdNames[],
    int kwdNamesCount,
    VARIANT *args[],
    Py_ssize_t posArgsCount,
    std::vector<std::pair<int, int>> &indexes,
    int offset)
{
    if (!sipKwds)
        return true;

    auto _kwdPos = [&](const char *name) -> int
    {
        for (int i = 0; i < kwdNamesCount; ++i)
        {
            if (strcmp(name, kwdNames[i]) == 0)
                return i;
        }

        return -1;
    };

    Py_ssize_t pos = 0;
    PyObject *pyName = nullptr;
    PyObject *pyValue = nullptr;
    while (PyDict_Next(sipKwds, &pos, &pyName, &pyValue))
    {
        PyObject *pyEncName = pyName;
        const char *name = sipString_AsASCIIString(&pyEncName);

        int argPos = _kwdPos(name);
        if (argPos == -1)
        {
            PyErr_Format(PyExc_TypeError,
                "'%s' is not a valid keyword argument", name);
            return false;
        }

        if ((argPos + offset) < posArgsCount)
        {
            PyErr_Format(PyExc_TypeError,
                "'%s' has already been given as a positional argument\n",
                name);
            return false;
        }

        int state = 0;
        int isError = 0;
        args[argPos] = reinterpret_cast<VARIANT *>(
            sipConvertToType(pyValue, sipType_VARIANT, 0, SIP_NO_CONVERTORS, &state, &isError));

        indexes.push_back(std::make_pair(argPos, state));
    }

    return true;
}
%End