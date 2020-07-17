/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace etapi
{
    struct ISmartTagOptions : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_DisplaySmartTags(
            XlSmartTagDisplayMode *RHS /Out/) = 0;

        virtual HRESULT put_DisplaySmartTags(
            XlSmartTagDisplayMode RHS) = 0;

        virtual HRESULT get_EmbedSmartTags(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_EmbedSmartTags(
            VARIANT_BOOL RHS) = 0;

        Application* getApplication();
        %MethodCode
            etapi::Application *prop = nullptr;
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

        XlCreator getCreator();
        %MethodCode
            etapi::XlCreator prop = (etapi::XlCreator)0;
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

        XlSmartTagDisplayMode getDisplaySmartTags();
        %MethodCode
            etapi::XlSmartTagDisplayMode prop = (etapi::XlSmartTagDisplayMode)0;
            HRESULT hr = sipCpp->get_DisplaySmartTags(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplaySmartTags()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplaySmartTags(XlSmartTagDisplayMode prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplaySmartTags(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplaySmartTags()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplaySmartTags, get=getDisplaySmartTags, set=setDisplaySmartTags)

        VARIANT_BOOL getEmbedSmartTags();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EmbedSmartTags(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EmbedSmartTags()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEmbedSmartTags(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EmbedSmartTags(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EmbedSmartTags()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EmbedSmartTags, get=getEmbedSmartTags, set=setEmbedSmartTags)
    };
};
