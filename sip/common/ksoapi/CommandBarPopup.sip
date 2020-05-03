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
    struct CommandBarPopup : public ksoapi::CommandBarControl /Abstract/
    {
    public:
        virtual HRESULT get_CommandBar(
            CommandBar **ppcb /Out/) = 0;

        virtual HRESULT get_Controls(
            CommandBarControls **ppcbcs /Out/) = 0;

        virtual HRESULT get_OLEMenuGroup(
            MsoOLEMenuGroup *pomg /Out/) = 0;

        virtual HRESULT put_OLEMenuGroup(
            MsoOLEMenuGroup pomg) = 0;

        virtual HRESULT get_InstanceIdPtr(
            VARIANT *pvarPic /Out/) = 0;

        CommandBar* getCommandBar();
        %MethodCode
            ksoapi::CommandBar *prop = nullptr;
            HRESULT hr = sipCpp->get_CommandBar(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CommandBar()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CommandBar, get=getCommandBar)

        CommandBarControls* getControls();
        %MethodCode
            ksoapi::CommandBarControls *prop = nullptr;
            HRESULT hr = sipCpp->get_Controls(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Controls()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Controls, get=getControls)

        MsoOLEMenuGroup getOLEMenuGroup();
        %MethodCode
            ksoapi::MsoOLEMenuGroup prop = (ksoapi::MsoOLEMenuGroup)0;
            HRESULT hr = sipCpp->get_OLEMenuGroup(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OLEMenuGroup()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOLEMenuGroup(MsoOLEMenuGroup prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OLEMenuGroup(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OLEMenuGroup()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OLEMenuGroup, get=getOLEMenuGroup, set=setOLEMenuGroup)

        VARIANT getInstanceIdPtr();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_InstanceIdPtr(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InstanceIdPtr()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=InstanceIdPtr, get=getInstanceIdPtr)
    };
};
