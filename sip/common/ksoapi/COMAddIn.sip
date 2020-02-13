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
    struct COMAddIn : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Description(
            BSTR *RetValue /Out/) = 0;

        virtual HRESULT put_Description(
            BSTR RetValue) = 0;

        virtual HRESULT get_ProgId(
            BSTR *RetValue /Out/) = 0;

        virtual HRESULT get_Guid(
            BSTR *RetValue /Out/) = 0;

        virtual HRESULT get_Connect(
            VARIANT_BOOL *RetValue /Out/) = 0;

        virtual HRESULT put_Connect(
            VARIANT_BOOL RetValue) = 0;

        virtual HRESULT get_Object(
            IDispatch **RetValue /Out/) = 0;

        virtual HRESULT put_Object(
            IDispatch *RetValue) = 0;

        virtual HRESULT get_Parent(
            IDispatch **retval /Out/) = 0;

    };
};
