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
    struct List : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT get_ListParagraphs(
            ListParagraphs **prop /Out/) = 0;

        virtual HRESULT get_SingleListTemplate(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT ConvertNumbersToText(
            VARIANT *NumberType = argMissing()) = 0;

        virtual HRESULT RemoveNumbers(
            VARIANT *NumberType = argMissing()) = 0;

        virtual HRESULT CountNumberedItems(
            VARIANT *NumberType = argMissing(),
            VARIANT *Level = argMissing(),
            long *prop /Out/ = 0) = 0;

        virtual HRESULT ApplyListTemplateOld(
            ListTemplate *ListTemplate,
            VARIANT *ContinuePreviousList = argMissing()) = 0;

        virtual HRESULT CanContinuePreviousList(
            ListTemplate *ListTemplate,
            WdContinue *prop /Out/) = 0;

        virtual HRESULT ApplyListTemplate(
            ListTemplate *ListTemplate,
            VARIANT *ContinuePreviousList = argMissing(),
            VARIANT *DefaultListBehavior = argMissing()) = 0;

        virtual HRESULT get_StyleName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT ApplyListTemplateWithLevel(
            ListTemplate *ListTemplate,
            VARIANT *ContinuePreviousList = argMissing(),
            VARIANT *DefaultListBehavior = argMissing(),
            VARIANT *ApplyLevel = argMissing()) = 0;

        Range* getRange();
        %MethodCode
            wpsapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_Range(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Range()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Range, get=getRange)

        ListParagraphs* getListParagraphs();
        %MethodCode
            wpsapi::ListParagraphs *prop = nullptr;
            HRESULT hr = sipCpp->get_ListParagraphs(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ListParagraphs()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ListParagraphs, get=getListParagraphs)

        VARIANT_BOOL getSingleListTemplate();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_SingleListTemplate(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SingleListTemplate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SingleListTemplate, get=getSingleListTemplate)

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

        BSTR getStyleName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_StyleName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_StyleName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=StyleName, get=getStyleName)
    };
};
