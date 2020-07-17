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
    struct OLEFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_ObjectVerbs(
            ObjectVerbs **ObjectVerbs /Out/) = 0;

        virtual HRESULT get_Object(
            IDispatch **Object /Out/) = 0;

        virtual HRESULT get_ProgID(
            BSTR *ProgID /Out/) = 0;

        virtual HRESULT get_FollowColors(
            PpFollowColors *FollowColors /Out/) = 0;

        virtual HRESULT put_FollowColors(
            PpFollowColors FollowColors) = 0;

        virtual HRESULT DoVerb(
            int Index = 0) = 0;

        virtual HRESULT Activate() = 0;

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

        ObjectVerbs* getObjectVerbs();
        %MethodCode
            wppapi::ObjectVerbs *prop = nullptr;
            HRESULT hr = sipCpp->get_ObjectVerbs(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ObjectVerbs()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ObjectVerbs, get=getObjectVerbs)

        IDispatch* getObject();
        %MethodCode
            IDispatch *prop = nullptr;
            HRESULT hr = sipCpp->get_Object(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Object()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Object, get=getObject)

        BSTR getProgID();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ProgID(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ProgID()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ProgID, get=getProgID)

        PpFollowColors getFollowColors();
        %MethodCode
            wppapi::PpFollowColors prop = (wppapi::PpFollowColors)0;
            HRESULT hr = sipCpp->get_FollowColors(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FollowColors()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFollowColors(PpFollowColors prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FollowColors(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FollowColors()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FollowColors, get=getFollowColors, set=setFollowColors)
    };
};
