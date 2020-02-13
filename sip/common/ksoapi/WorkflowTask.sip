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
    struct WorkflowTask : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Id(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT get_ListID(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT get_WorkflowID(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT get_Description(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT get_AssignedTo(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT get_CreatedBy(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT get_DueDate(
            DATE *pdate /Out/) = 0;

        virtual HRESULT get_CreatedDate(
            DATE *pdate /Out/) = 0;

        virtual HRESULT Show(
            int *pRet /Out/) = 0;

    };
};
