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
