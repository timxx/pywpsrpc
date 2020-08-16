#ifndef PYWPSRPC_PY_EVENTS_H
#define PYWPSRPC_PY_EVENTS_H

#include <unordered_map>
#include <list>


typedef std::list<PyObject*> PyFuncs;
typedef std::pair<const WCHAR*, void *> NameFuncPair;

struct IID_Hash
{
    std::size_t operator()(const IID &key) const
    {
        return std::hash<uint32>()(key.Data1) ^
            std::hash<uint16>()(key.Data2) ^
            std::hash<uint16>()(key.Data3) ^
            std::hash<uint64>()(*((uint64*)key.Data4));
    }
};

struct NameFuncPair_Hash
{
    std::size_t operator()(const NameFuncPair &key) const
    {
        if (key.first == nullptr)
            return 0;

        return std::hash<std::u16string>()(
            reinterpret_cast<const char16_t*>(key.first));
    }
};

struct NameFuncPair_Equal
{
    bool operator()(const NameFuncPair &lhs, const NameFuncPair &rhs) const
    {
        if (lhs.second != nullptr && lhs.second == rhs.second)
            return true;

        if (lhs.first == rhs.first)
            return true;

        if (lhs.first == nullptr || rhs.first == nullptr)
            return false;

        size_t len = xstrlen(lhs.first);
        if (len != xstrlen(rhs.first))
            return false;

        return memcmp(lhs.first, rhs.first, len * 2) == 0;
    }
};

typedef std::unordered_map<NameFuncPair, PyFuncs, NameFuncPair_Hash, NameFuncPair_Equal> EventFuncs;
static std::unordered_map<IID, EventFuncs, IID_Hash> g_eventMap;

static std::list<PyObject*> _getPyFuncs(const WCHAR* name, void *pFunc)
{
    // TODO: specify the IID?
    for (const auto &itEvents : g_eventMap)
    {
        auto itFuncs = itEvents.second.find(std::make_pair(name, pFunc));
        if (itFuncs != itEvents.second.cend())
            return itFuncs->second;
    }

    return std::list<PyObject*>();
}

#define _GET_PY_FUNCS(name) _getPyFuncs(__X(#name), (void*)_##name)

#define _CALL_PYFUNC(pyFuncs, ...)  \
    if (pyFuncs.empty())            \
        return E_FAIL;              \
                                    \
    SIP_BLOCK_THREADS               \
                                    \
    for (auto &pyFunc : pyFuncs)    \
    {                               \
        PyObject *ret = PyObject_CallFunctionObjArgs(pyFunc, ##__VA_ARGS__, nullptr);  \
        if (ret)                    \
        {                           \
            PyErr_Clear();          \
            Py_DECREF(ret);         \
        }                           \
    }                               \
                                    \
    SIP_UNBLOCK_THREADS             \
    return S_OK;

static HRESULT _callPyFunc(const PyFuncs &pyFuncs)
{
    _CALL_PYFUNC(pyFuncs)
}

static HRESULT _callPyFunc(const PyFuncs &pyFuncs, PyObject *arg0)
{
    _CALL_PYFUNC(pyFuncs, arg0)
}

static HRESULT _callPyFunc(const PyFuncs &pyFuncs, PyObject *arg0,  PyObject *arg1)
{
    _CALL_PYFUNC(pyFuncs, arg0, arg1)
}

template<typename T>
PyObject* _convertFromType(T *cpp, const sipTypeDef *td, PyObject *transferObj = nullptr)
{
    if (!cpp)
        return Py_None;

    PyObject *res = nullptr;

    SIP_BLOCK_THREADS
    res = sipConvertFromType(cpp, td, transferObj);
    SIP_UNBLOCK_THREADS

    return res;
}

static HRESULT _doCancelEvent(
    PyObject *pyObject,
    VARIANT_BOOL *Cancel,
    const PyFuncs &pyFuncs)
{
    if (pyFuncs.empty())
        return E_FAIL;

    SIP_BLOCK_THREADS

    for (auto &pyFunc : pyFuncs)
    {
        PyObject *ret = PyObject_CallFunctionObjArgs(pyFunc, pyObject, nullptr);
        if (ret)
        {
            if (PyBool_Check(ret))
            {
                PyErr_Clear();

                if (Cancel)
                    *Cancel = (ret == Py_True) ? VARIANT_TRUE : VARIANT_FALSE;

                if (ret == Py_True)
                    break;
            }

            Py_DECREF(ret);
        }
    }

    SIP_UNBLOCK_THREADS
    return S_OK;
}

#else
#error "This file is intended include for IKRpcClient.sip only"
#endif // PYWPSRPC_PY_EVENTS_H
