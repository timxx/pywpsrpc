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
    struct COMAddIns : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT Item(
            VARIANT *Index,
            COMAddIn **RetValue /Out/) = 0;

        virtual HRESULT get_Count(
            long *RetValue /Out/) = 0;

        virtual HRESULT get__NewEnum(
            IUnknown **RetValue /Out/) = 0;

        virtual HRESULT Update() = 0;

        virtual HRESULT get_Parent(
            IDispatch **ppidisp /Out/) = 0;

        virtual HRESULT SetAppModal(
            VARIANT_BOOL varfModal) = 0;

    };
};
