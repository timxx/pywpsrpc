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
    struct ListGallery : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_ListTemplates(
            ListTemplates **prop /Out/) = 0;

        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Modified(
            long Index,
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT Reset(
            long Index) = 0;

        ListTemplates* getListTemplates();
        %MethodCode
            wpsapi::ListTemplates *prop = nullptr;
            HRESULT hr = sipCpp->get_ListTemplates(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ListTemplates()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ListTemplates, get=getListTemplates)

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
    };
};
