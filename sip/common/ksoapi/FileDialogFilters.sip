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
    struct FileDialogFilters : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **ppienum /Out/) = 0;

        virtual HRESULT get_Count(
            long *pcFilters /Out/) = 0;

        virtual HRESULT Item(
            int Index,
            FileDialogFilter **Item /Out/) = 0;

        virtual HRESULT Delete(
            VARIANT filter) = 0;

        virtual HRESULT Clear() = 0;

        virtual HRESULT Add(
            BSTR Description,
            BSTR Extensions,
            VARIANT Position,
            FileDialogFilter **Add /Out/) = 0;

    };
};
