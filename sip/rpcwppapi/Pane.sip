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
    struct Pane : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT Activate() = 0;

        virtual HRESULT get_Active(
            MsoTriState *Active /Out/) = 0;

        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_ViewType(
            PpViewType *ViewType /Out/) = 0;

        MsoTriState getActive();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_Active(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Active()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Active, get=getActive)

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

        PpViewType getViewType();
        %MethodCode
            wppapi::PpViewType prop = (wppapi::PpViewType)0;
            HRESULT hr = sipCpp->get_ViewType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ViewType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ViewType, get=getViewType)
    };
};
