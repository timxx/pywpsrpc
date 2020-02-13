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
    struct DocumentProperty : public IDispatch /Abstract/
    {
    public:
        virtual IDispatch * get_Parent() = 0;

        virtual HRESULT  Delete() = 0;

        virtual HRESULT  get_Name(
            long lcid,
            BSTR *pbstrRetVal /Out/) = 0;

        virtual HRESULT  put_Name(
            long lcid,
            BSTR pbstrRetVal) = 0;

        virtual HRESULT  get_Value(
            long lcid,
            VARIANT *pvargRetVal /Out/) = 0;

        virtual HRESULT  put_Value(
            long lcid,
            VARIANT pvargRetVal) = 0;

        virtual HRESULT  get_Type(
            long lcid,
            MsoDocProperties *ptypeRetVal /Out/) = 0;

        virtual HRESULT  put_Type(
            long lcid,
            MsoDocProperties ptypeRetVal) = 0;

        virtual HRESULT  get_LinkToContent(
            VARIANT_BOOL *pfLinkRetVal /Out/) = 0;

        virtual HRESULT  put_LinkToContent(
            VARIANT_BOOL pfLinkRetVal) = 0;

        virtual HRESULT  get_LinkSource(
            BSTR *pbstrSourceRetVal /Out/) = 0;

        virtual HRESULT  put_LinkSource(
            BSTR pbstrSourceRetVal) = 0;

        virtual HRESULT  get_Application(
            IDispatch **ppidisp /Out/) = 0;

        virtual HRESULT  get_Creator(
            long *plCreator /Out/) = 0;

    };
};
