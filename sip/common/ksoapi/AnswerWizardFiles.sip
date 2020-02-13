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

        virtual HRESULT get_Count(
            int *pCount /Out/) = 0;

        virtual HRESULT Add(
            BSTR FileName) = 0;

        virtual HRESULT Delete(
            BSTR FileName) = 0;

    };
};
