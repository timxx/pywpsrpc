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
    struct Bibliography : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Sources(
            Sources **prop /Out/) = 0;

        virtual HRESULT get_BibliographyStyle(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_BibliographyStyle(
            BSTR prop) = 0;

        virtual HRESULT GenerateUniqueTag(
            BSTR *prop /Out/) = 0;

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

        Sources* getSources();
        %MethodCode
            wpsapi::Sources *prop = nullptr;
            HRESULT hr = sipCpp->get_Sources(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Sources()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Sources, get=getSources)

        BSTR getBibliographyStyle();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_BibliographyStyle(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BibliographyStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBibliographyStyle(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BibliographyStyle(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BibliographyStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BibliographyStyle, get=getBibliographyStyle, set=setBibliographyStyle)
    };
};
