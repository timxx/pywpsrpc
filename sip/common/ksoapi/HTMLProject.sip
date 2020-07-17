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
    struct HTMLProject : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_State(
            MsoHTMLProjectState *State /Out/) = 0;

        virtual HRESULT RefreshProject(
            VARIANT_BOOL Refresh = -1) = 0;

        virtual HRESULT RefreshDocument(
            VARIANT_BOOL Refresh = -1) = 0;

        virtual HRESULT get_HTMLProjectItems(
            HTMLProjectItems **HTMLProjectItems /Out/) = 0;

        virtual HRESULT Open(
            MsoHTMLProjectOpen OpenKind = (ksoapi::MsoHTMLProjectOpen)0) = 0;

        MsoHTMLProjectState getState();
        %MethodCode
            ksoapi::MsoHTMLProjectState prop = (ksoapi::MsoHTMLProjectState)0;
            HRESULT hr = sipCpp->get_State(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_State()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=State, get=getState)

        HTMLProjectItems* getHTMLProjectItems();
        %MethodCode
            ksoapi::HTMLProjectItems *prop = nullptr;
            HRESULT hr = sipCpp->get_HTMLProjectItems(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HTMLProjectItems()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HTMLProjectItems, get=getHTMLProjectItems)
    };
};
