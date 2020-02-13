/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace ksoapi
{
    struct FileTypes : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Item(
            int Index,
            MsoFileType *MsoFileTypeRet /Out/) = 0;

        virtual HRESULT get_Count(
            int *iCountRetVal /Out/) = 0;

        virtual HRESULT Add(
            MsoFileType FileType) = 0;

        virtual HRESULT Remove(
            int Index) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **ppunkEnum /Out/) = 0;

    };
};
