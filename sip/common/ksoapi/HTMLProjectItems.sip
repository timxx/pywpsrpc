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
    struct HTMLProjectItems : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT Item(
            VARIANT *Index,
            HTMLProjectItem **RetValue /Out/) = 0;

        virtual HRESULT get_Count(
            long *RetValue /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **RetValue /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **ppidisp /Out/) = 0;

    };
};