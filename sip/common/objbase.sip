%Include guid.sip

%ModuleCode
    #include <kfc/guid.h>
%End

typedef unsigned char byte;
typedef CLSID *LPCLSID;
typedef IID *LPIID;
typedef WCHAR OLECHAR;
typedef OLECHAR *LPOLESTR;
typedef const OLECHAR *LPCOLESTR;
typedef OLECHAR* BSTR;
typedef double DATE;