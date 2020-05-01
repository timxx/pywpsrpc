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
    struct AnswerWizardFiles : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Parent(
            IDispatch **ppidisp /Out/) = 0;

        virtual HRESULT get_Item(
            int Index,
            BSTR *pbstr /Out/) = 0;

        BSTR __getitem__(int index) const;
        %MethodCode
            BSTR *prop = new BSTR;
            if (sipCpp->get_Item(a0, prop) != S_OK)
            {
                delete prop;
                sipIsErr = 1;
            }
            else
            {
                sipRes = prop;
            }
        %End

        virtual HRESULT get_Count(
            int *pCount /Out/) = 0;

        int __len__() const;
        %MethodCode
            int count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT Add(
            BSTR FileName) = 0;

        virtual HRESULT Delete(
            BSTR FileName) = 0;

    };
};
