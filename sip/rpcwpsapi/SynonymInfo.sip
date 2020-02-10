/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wpsapi
{
    struct SynonymInfo : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(_Application **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_Application((wpsapi::Application**)&a0);
        %End

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Word(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Found(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_MeaningCount(
            long *prop /Out/) = 0;

        virtual HRESULT get_MeaningList(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_PartOfSpeechList(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_SynonymList(
            VARIANT *Meaning,
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_AntonymList(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_RelatedExpressionList(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_RelatedWordList(
            VARIANT *prop /Out/) = 0;
    };
};