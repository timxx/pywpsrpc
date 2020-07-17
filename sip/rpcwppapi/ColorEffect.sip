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
    struct ColorEffect : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_By(
            ColorFormat **By /Out/) = 0;

        virtual HRESULT get_From(
            ColorFormat **From /Out/) = 0;

        virtual HRESULT get_To(
            ColorFormat **To /Out/) = 0;

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

        ColorFormat* getBy();
        %MethodCode
            wppapi::ColorFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_By(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_By()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=By, get=getBy)

        ColorFormat* getFrom();
        %MethodCode
            wppapi::ColorFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_From(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_From()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=From, get=getFrom)

        ColorFormat* getTo();
        %MethodCode
            wppapi::ColorFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_To(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_To()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=To, get=getTo)
    };
};
