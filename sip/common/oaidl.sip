/**
 * Copyright (c) 2020-2023 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

%MappedType VARIANT /AllowNone,TypeHint="Any",TypeHintValue="None"/
{
%ConvertToTypeCode
    if (sipIsErr == NULL)
        return !PyDict_Check(sipPy); // no dict supports

    if (Py_TYPE(sipPy) == sipTypeAsPyTypeObject(sipType_VARIANT))
    {
        *sipCppPtr = reinterpret_cast<VARIANT *>(sipConvertToType(sipPy,
                sipType_VARIANT, sipTransferObj, SIP_NO_CONVERTORS, 0, sipIsErr));

        return 0;
    }

    VARIANT *pVar = new VARIANT;
    VariantInit(pVar);
    *sipCppPtr = nullptr;

    const sipTypeDef *sipType = sipTypeFromPyTypeObject(Py_TYPE(sipPy));

    // TODO: fix the ugly code
    if (sipPy == Py_None)
    {
        V_VT(pVar) = VT_EMPTY;
    }
    else if (Py_TYPE(sipPy) == &PyUnicode_Type)
    {
        V_VT(pVar) = VT_BSTR;

        BSTR *pBstr = reinterpret_cast<BSTR*>(sipConvertToType(sipPy,
            sipType_BSTR, sipTransferObj, SIP_NO_CONVERTORS, 0, sipIsErr));
        V_BSTR(pVar) = pBstr ? *pBstr : nullptr;
        sipReleaseType(pBstr, sipType_BSTR, 0);
    }
    else if (Py_TYPE(sipPy) == &PyLong_Type)
    {
        V_VT(pVar) = VT_I4;
        V_I4(pVar) = PyLong_AsLong(sipPy);
    }
    else if (Py_TYPE(sipPy) == &PyBool_Type)
    {
        V_VT(pVar) = VT_BOOL;
        V_BOOL(pVar) = sipPy == Py_True ? VARIANT_TRUE : VARIANT_FALSE;
    }
    else if (Py_TYPE(sipPy) == &PyFloat_Type)
    {
        V_VT(pVar) = VT_R8;
        V_R8(pVar) = PyFloat_AsDouble(sipPy);
    }
    else if (Py_TYPE(sipPy) == &PyList_Type)
    {
        V_VT(pVar) = VT_ARRAY | VT_VARIANT;
        Py_ssize_t nRows = PyList_Size(sipPy);
        Py_ssize_t nCols = 0;

        // TODO: we only supports two or one dims
        if (nRows > 0)
        {
            PyObject *item = PyList_GetItem(sipPy, 0);
            // FIXME: row may not has the same cols...
            if (Py_TYPE(item) == &PyList_Type)
                nCols = PyList_Size(item);
        }

        SAFEARRAY *arr = nullptr;
        if (nCols == 0)
        {
            SAFEARRAYBOUND sab;
            sab.lLbound = 0;
            sab.cElements = nRows;
            arr = _SafeArrayCreate(VT_VARIANT, 1, &sab);

            for (int i = 0; i < nRows; ++i)
            {
                PyObject *item = PyList_GetItem(sipPy, i);
                VARIANT *pEle = reinterpret_cast<VARIANT *>(sipConvertToType(item,
                    sipType_VARIANT, sipTransferObj, SIP_NO_CONVERTORS, 0, sipIsErr));
                sipReleaseType(pEle, sipType_VARIANT, 0);
                _SafeArrayPutElement(arr, &i, pEle);
            }
        }
        else
        {
            SAFEARRAYBOUND sab[2];
            sab[0].lLbound = 0;
            sab[0].cElements = nRows;
            sab[1].lLbound = 0;
            sab[1].cElements = nCols;
            arr = _SafeArrayCreate(VT_VARIANT, 2, sab);

            for (int i = 0; i < nRows; ++i)
            {
                PyObject *row = PyList_GetItem(sipPy, i);

                for (int j = 0; j < nCols; ++j)
                {
                    PyObject *item = PyList_GetItem(row, j);
                    VARIANT *pEle = reinterpret_cast<VARIANT *>(sipConvertToType(item,
                        sipType_VARIANT, sipTransferObj, SIP_NO_CONVERTORS, 0, sipIsErr));
                    sipReleaseType(pEle, sipType_VARIANT, 0);
                    INT32 indices[] = { i, j };
                    _SafeArrayPutElement(arr, indices, pEle);
                }
            }
        }

        V_ARRAY(pVar) = arr;
    }
    else if (sipCanConvertToType(sipPy, sipType_IDispatch, SIP_NOT_NONE | SIP_NO_CONVERTORS))
    {
        V_VT(pVar) = VT_DISPATCH;
        IDispatch *pDisp = reinterpret_cast<IDispatch*>(sipConvertToType(sipPy,
            sipType_IDispatch, sipTransferObj, SIP_NO_CONVERTORS, 0, sipIsErr));
        V_DISPATCH(pVar) = pDisp;
        sipReleaseType(pDisp, sipType_IDispatch, 0);
    }
    else if (sipCanConvertToType(sipPy, sipType_IUnknown, SIP_NOT_NONE | SIP_NO_CONVERTORS))
    {
        V_VT(pVar) = VT_UNKNOWN;
        IUnknown *pUnk = reinterpret_cast<IUnknown*>(sipConvertToType(sipPy,
            sipType_IUnknown, sipTransferObj, SIP_NO_CONVERTORS, 0, sipIsErr));
        V_UNKNOWN(pVar) = pUnk;
        sipReleaseType(pUnk, sipType_IUnknown, 0);
    }
    else if ((sipType && sipTypeIsEnum(sipType)) || PyLong_Check(sipPy))
    {
        V_VT(pVar) = VT_I4;
        V_I4(pVar) = PyLong_AsLong(sipPy);
    }
    else if (sipGetDateTime(sipPy, nullptr, nullptr))
    {
        sipDateDef pyDate = { 0 };
        sipTimeDef pyTime = { 0 };

        sipGetDateTime(sipPy, &pyDate, &pyTime);
        double d = _toVarDate(pyDate.pd_year, pyDate.pd_month, pyDate.pd_day,
                              pyTime.pt_hour, pyTime.pt_minute, pyTime.pt_second,
                              pyTime.pt_microsecond);

        V_VT(pVar) = VT_DATE;
        V_DATE(pVar) = d;
    }
    else if (sipGetDate(sipPy, nullptr))
    {
        sipDateDef pyDate = { 0 };

        sipGetDate(sipPy, &pyDate);
        double d = _toVarDate(pyDate.pd_year, pyDate.pd_month, pyDate.pd_day,
                              0, 0, 0, 0);

        V_VT(pVar) = VT_DATE;
        V_DATE(pVar) = d;
    }
    else
    {
        delete pVar;
        *sipIsErr = 1;
        PyErr_Format(PyExc_TypeError,
                "Unsupported '%s' for VARIANT", Py_TYPE(sipPy)->tp_name);
        return 0;
    }

    *sipCppPtr = pVar;
    return sipGetState(sipTransferObj);
%End

%ConvertFromTypeCode
    switch (V_VT(sipCpp))
    {
    case VT_EMPTY:
    {
        Py_INCREF(Py_None);
        return Py_None;
    }
    case VT_I2:
        return PyLong_FromLong(V_I2(sipCpp));
    case VT_I4:
        return PyLong_FromLong(V_I4(sipCpp));
    case VT_R4:
        return PyFloat_FromDouble(V_R4(sipCpp));
    case VT_R8:
        return PyFloat_FromDouble(V_R8(sipCpp));
    case VT_BSTR:
    {
        BSTR *pBstr = new BSTR;
        *pBstr = V_BSTR(sipCpp);
        auto res = sipConvertFromType(pBstr, sipType_BSTR, sipTransferObj);
        delete pBstr;
        return res;
    }
    case VT_DISPATCH:
        return sipConvertFromType(V_DISPATCH(sipCpp), sipType_IDispatch, sipTransferObj);
    case VT_ERROR:
        return PyLong_FromLong(V_ERROR(sipCpp));
    case VT_BOOL:
        return PyBool_FromLong(V_BOOL(sipCpp));
    case VT_VARIANT:
        return sipConvertFromType(V_VARIANTREF(sipCpp), sipType_VARIANT, sipTransferObj);
    case VT_UNKNOWN:
        return sipConvertFromType(V_UNKNOWN(sipCpp), sipType_IUnknown, sipTransferObj);
    case VT_I1:
        return PyLong_FromLong(V_I1(sipCpp));
    case VT_UI1:
        return PyLong_FromUnsignedLong(V_UI1(sipCpp));
    case VT_UI2:
        return PyLong_FromUnsignedLong(V_UI2(sipCpp));
    case VT_UI4:
        return PyLong_FromUnsignedLong(V_UI4(sipCpp));
    case VT_I8:
        return PyLong_FromLongLong(V_I8(sipCpp));
    case VT_UI8:
        return PyLong_FromUnsignedLongLong(V_UI8(sipCpp));
    case VT_ARRAY:
        {
            UINT nSize = _SafeArrayGetElemsize(V_ARRAY(sipCpp));
            PyObject *pyList = PyList_New(nSize);
            for (UINT i = 0; i < nSize; ++i)
            {
                VARIANT var;
                INT index = i;
                HRESULT hr = _SafeArrayGetElement(V_ARRAY(sipCpp), &index, &var);
                if (hr == S_OK)
                {
                    PyObject *pyObj = sipConvertFromType(&var, sipType_VARIANT, sipTransferObj);
                    PyList_SetItem(pyList, i, pyObj);
                }
            }
            return pyList;
        }
        break;

    case VT_DATE:
        {
            sipDateDef sipDate = { 0 };
            sipTimeDef sipTime = { 0 };

            if (!_getVarDate(V_DATE(sipCpp),
                             sipDate.pd_year, sipDate.pd_month, sipDate.pd_day,
                             sipTime.pt_hour, sipTime.pt_minute, sipTime.pt_second,
                             sipTime.pt_microsecond))
            {
                printf("Invalid V_DATE: %f\n", V_DATE(sipCpp));
            }

            return sipFromDateTime(&sipDate, &sipTime);
        }
        break;
    case VT_ARRAY | VT_VARIANT:
        {
            UINT32 nDim = _SafeArrayGetDim(V_ARRAY(sipCpp));
            if (nDim > 2)
            {
                PyErr_Format(PyExc_TypeError,
                    "%d dimensions is unsupported", nDim);
                return nullptr;
            }

            auto getSize = [](SAFEARRAY *psa, UINT dim)
            {
                INT32 lb = 0;
                INT32 ub = 0;
                _SafeArrayGetUBound(psa, dim, &ub);
                _SafeArrayGetLBound(psa, dim, &lb);
                return ub - lb + 1;
            };

            if (nDim == 2)
            {
                INT32 nRows = getSize(V_ARRAY(sipCpp), 1);
                INT32 nCols = getSize(V_ARRAY(sipCpp), 2);

                PyObject *pyList = PyList_New(nRows);
                for (INT32 i = 0; i < nRows; ++i)
                {
                    PyObject *pyRow = PyList_New(nCols);
                    for (INT32 j = 0; j < nCols; ++j)
                    {
                        INT32 indices[] = { i, j };
                        VARIANT var;
                        HRESULT hr = _SafeArrayGetElement(V_ARRAY(sipCpp), indices, &var);
                        if (hr != S_OK)
                        {
                            PyErr_Format(PyExc_TypeError,
                                "Failed to SafeArrayGetElement: %d, %d\n",
                                i, j);
                            return nullptr;
                        }

                        PyObject *pyObj = sipConvertFromType(&var, sipType_VARIANT, sipTransferObj);
                        PyList_SetItem(pyRow, j, pyObj);
                    }

                    PyList_SetItem(pyList, i, pyRow);
                }
                return pyList;
            }
            else
            {
                INT32 nElements = getSize(V_ARRAY(sipCpp), 1);
                PyObject *pyList = PyList_New(nElements);
                for (INT32 i = 0; i < nElements; ++i)
                {
                    VARIANT var;
                    HRESULT hr = _SafeArrayGetElement(V_ARRAY(sipCpp), &i, &var);
                    if (hr != S_OK)
                    {
                        PyErr_Format(PyExc_TypeError,
                            "Failed to SafeArrayGetElement: %d\n", i);
                        return nullptr;
                    }

                    PyObject *pyObj = sipConvertFromType(&var, sipType_VARIANT, sipTransferObj);
                    PyList_SetItem(pyList, i, pyObj);
                }
                return pyList;
            }
        }
        break;
    }

    PyErr_Format(PyExc_TypeError,
                 "Converting from V_VT (%d) is unsupported",
                 V_VT(sipCpp));
    return nullptr;
%End
};

typedef VARIANT VARIANTARG;
typedef VARIANT *LPVARIANTARG;

typedef UINT32 DISPID;
typedef DISPID MEMBERID;
typedef DWORD HREFTYPE;

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

struct SAFEARRAY
{

};

struct IDispatch : public IUnknown /Abstract/
{
public:
    /*
    virtual HRESULT GetTypeInfoCount(
        UINT *pctinfo) = 0;

    virtual HRESULT GetTypeInfo(
        UINT iTInfo,
        LCID lcid,
        ITypeInfo **ppTInfo) = 0;

    virtual HRESULT GetIDsOfNames(
        const IID& riid,
        LPOLESTR *rgszNames,
        UINT cNames,
        LCID lcid,
        DISPID *rgDispId) = 0;

    virtual HRESULT Invoke(
        DISPID dispIdMember,
        const IID& riid,
        LCID lcid,
        WORD wFlags,
        DISPPARAMS *pDispParams,
        VARIANT *pVarResult,
        EXCEPINFO *pExcepInfo,
        UINT *puArgErr) = 0;
    */
};

struct IPictureDisp : public IDispatch /Abstract/
{
};
