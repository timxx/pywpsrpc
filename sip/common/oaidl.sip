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

    virtual HRESULT  Invoke(
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
