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
    struct Research : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT Query(
            BSTR ServiceID,
            BSTR QueryString = 0,
            WdLanguageID QueryLanguage = wpsapi::wdLanguageNone,
            VARIANT_BOOL UseSelection = VARIANT_FALSE,
            VARIANT_BOOL LaunchQuery = VARIANT_FALSE,
            VARIANT *prop /Out/ = 0) = 0;

        virtual HRESULT SetLanguagePair(
            WdLanguageID LanguageFrom,
            WdLanguageID LanguageTo,
            VARIANT *prop /Out/) = 0;

        virtual HRESULT IsResearchService(
            BSTR ServiceID,
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_FavoriteService(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_FavoriteService(
            BSTR prop) = 0;

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

        long getCreator();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Creator(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Creator()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Creator, get=getCreator)

        IDispatch* getParent();
        %MethodCode
            IDispatch *prop = nullptr;
            HRESULT hr = sipCpp->get_Parent(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Parent()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Parent, get=getParent)

        BSTR getFavoriteService();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_FavoriteService(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FavoriteService()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFavoriteService(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FavoriteService(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FavoriteService()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FavoriteService, get=getFavoriteService, set=setFavoriteService)
    };
};
