/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wppapi
{
    struct Collection : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get__NewEnum(
            IUnknown **_NewEnum /Out/) = 0;

        virtual HRESULT _Index(
            int Index,
            VARIANT *_Index /Out/) = 0;

        virtual HRESULT get_Count(
            long *Count /Out/) = 0;

        int __len__() const;
        %MethodCode
            long lCount = 0;
            HRESULT hr = sipCpp->get_Count(&lCount);
            if (hr != S_OK)
                lCount = 0;

            sipRes = lCount;
        %End
    };
};
