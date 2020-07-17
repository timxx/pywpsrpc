/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wppapi
{
    struct Research : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT Query(
            BSTR ServiceID,
            VARIANT *QueryString = argMissing(),
            VARIANT *QueryLanguage = argMissing(),
            VARIANT_BOOL UseSelection = VARIANT_FALSE,
            VARIANT_BOOL LaunchQuery = -1) = 0;

        virtual HRESULT SetLanguagePair(
            VARIANT *Language1,
            VARIANT *Language2) = 0;

        virtual HRESULT IsResearchService(
            BSTR ServiceID,
            VARIANT_BOOL *IsResearchService /Out/) = 0;

        Application* getApplication();
        %MethodCode
            wppapi::Application *prop = nullptr;
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
    };
};
