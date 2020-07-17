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
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

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

        Application* getApplication();
        %MethodCode
            wpsapi::Application *prop = nullptr;
            HRESULT hr = sipCpp->get_Application(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Application()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Application, get=getApplication)

        BSTR getWord();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Word(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Word()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Word, get=getWord)

        VARIANT_BOOL getFound();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Found(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Found()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Found, get=getFound)

        long getMeaningCount();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_MeaningCount(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MeaningCount()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MeaningCount, get=getMeaningCount)

        VARIANT getMeaningList();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_MeaningList(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MeaningList()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MeaningList, get=getMeaningList)

        VARIANT getPartOfSpeechList();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_PartOfSpeechList(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PartOfSpeechList()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PartOfSpeechList, get=getPartOfSpeechList)

        VARIANT getAntonymList();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_AntonymList(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AntonymList()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AntonymList, get=getAntonymList)

        VARIANT getRelatedExpressionList();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_RelatedExpressionList(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RelatedExpressionList()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=RelatedExpressionList, get=getRelatedExpressionList)

        VARIANT getRelatedWordList();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_RelatedWordList(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RelatedWordList()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=RelatedWordList, get=getRelatedWordList)
    };
};
