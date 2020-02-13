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
    struct WorkflowTemplate : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Id(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT get_Description(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT get_DocumentLibraryName(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT get_DocumentLibraryURL(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT Show(
            int *pRet /Out/) = 0;

    };
};
