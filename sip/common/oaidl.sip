%Include typedef.sip
%Include objidl.sip

struct VARIANT
{
    %TypeHeaderCode
        #include <pre_stddef.h>
        #include <typedef.h>
    %End
    VARTYPE vt
    {
        %GetCode
            sipPy = PyLong_FromLong(V_VT(sipCpp));
        %End
        %SetCode
            V_VT(sipCpp) = sipLong_AsUnsignedShort(sipPy);
        %End
    };

    SIP_PYOBJECT value
    {
        %GetCode
            switch (V_VT(sipCpp))
            {

            }
        %End
        %SetCode
            switch (V_VT(sipCpp))
            {
            }
        %End
    };
};

typedef VARIANT VARIANTARG;
typedef VARIANT *LPVARIANTARG;

typedef UINT32 DISPID;
typedef DISPID MEMBERID;
typedef DWORD HREFTYPE;

struct DISPPARAMS
{
    %TypeHeaderCode
        #include <pre_stddef.h>
        #include <typedef.h>
    %End
    VARIANTARG *rgvarg;
    //DISPID *rgdispidNamedArgs;
    //SIP_PYLIST rgdispidNamedArgs /TypeHint="List[int]"/;
    UINT cArgs;
    UINT cNamedArgs;
};

struct EXCEPINFO
{
    %TypeHeaderCode
        #include <pre_stddef.h>
        #include <typedef.h>
    %End
    WORD  wCode;
    WORD  wReserved;
    //BSTR  bstrSource;
    //BSTR  bstrDescription;
    //BSTR  bstrHelpFile;
    DWORD dwHelpContext;
    PVOID pvReserved;
    // HRESULT (*pfnDeferredFillIn)(struct EXCEPINFO *);
    SCODE scode;
};

typedef EXCEPINFO *LPEXCEPINFO;


struct IDispatch : public IUnknown /Abstract/
{
    %TypeHeaderCode
        #include <pre_stddef.h>
        #include <typedef.h>
        #include <kfc/guid.h>
        #include <oaidl.h>
        #include <objidl.h>
    %End
public:
    virtual HRESULT GetTypeInfoCount(
        /* [out] */ UINT *pctinfo) = 0;

    virtual HRESULT GetTypeInfo(
        /* [in] */ UINT iTInfo,
        /* [in] */ LCID lcid,
        /* [out] */ ITypeInfo **ppTInfo) = 0;

    virtual HRESULT GetIDsOfNames(
        const IID& riid,
        // LPOLESTR *rgszNames,
        // UINT cNames,
        SIP_PYLIST rgszNames /TypeHint="List[str]"/,
        LCID lcid,
        DISPID *rgDispId) = 0;
    %MethodCode
        Py_ssize_t cNames = PyList_Size(a1);

    %End

    virtual HRESULT  Invoke(
        /* [in] */ DISPID dispIdMember,
        /* [in] */ const IID& riid,
        /* [in] */ LCID lcid,
        /* [in] */ WORD wFlags,
        /* [out][in] */ DISPPARAMS *pDispParams,
        /* [out] */ VARIANT *pVarResult,
        /* [out] */ EXCEPINFO *pExcepInfo,
        /* [out] */ UINT *puArgErr) = 0;

    static IDispatch* fromVoidPtr(void *ptr);
    %MethodCode
        sipRes = reinterpret_cast<IDispatch*>(a0);
    %End
};

struct ITypeInfo : public IUnknown /Abstract/
{
    %TypeHeaderCode
        #include <pre_stddef.h>
        #include <typedef.h>
        #include <kfc/guid.h>
        #include <oaidl.h>
        #include <objidl.h>
    %End
};
