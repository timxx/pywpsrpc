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
    struct ConnectorFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_BeginConnected(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT get_BeginConnectedShape(
            Shape **prop /Out/) = 0;

        virtual HRESULT get_BeginConnectionSite(
            long *prop /Out/) = 0;

        virtual HRESULT get_EndConnected(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT get_EndConnectedShape(
            Shape **prop /Out/) = 0;

        virtual HRESULT get_EndConnectionSite(
            long *prop /Out/) = 0;

        virtual HRESULT get_Type(
            MsoConnectorType *prop /Out/) = 0;

        virtual HRESULT put_Type(
            MsoConnectorType prop) = 0;

        virtual HRESULT BeginConnect(
            Shape **ConnectedShape /Out/,
            long ConnectionSite) = 0;

        virtual HRESULT BeginDisconnect() = 0;

        virtual HRESULT EndConnect(
            Shape **ConnectedShape /Out/,
            long ConnectionSite) = 0;

        virtual HRESULT EndDisconnect() = 0;

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

        MsoTriState getBeginConnected();
        %MethodCode
            wpsapi::MsoTriState prop = (wpsapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_BeginConnected(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BeginConnected()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=BeginConnected, get=getBeginConnected)

        Shape* getBeginConnectedShape();
        %MethodCode
            wpsapi::Shape *prop = nullptr;
            HRESULT hr = sipCpp->get_BeginConnectedShape(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BeginConnectedShape()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=BeginConnectedShape, get=getBeginConnectedShape)

        long getBeginConnectionSite();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_BeginConnectionSite(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BeginConnectionSite()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=BeginConnectionSite, get=getBeginConnectionSite)

        MsoTriState getEndConnected();
        %MethodCode
            wpsapi::MsoTriState prop = (wpsapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_EndConnected(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EndConnected()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=EndConnected, get=getEndConnected)

        Shape* getEndConnectedShape();
        %MethodCode
            wpsapi::Shape *prop = nullptr;
            HRESULT hr = sipCpp->get_EndConnectedShape(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EndConnectedShape()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=EndConnectedShape, get=getEndConnectedShape)

        long getEndConnectionSite();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_EndConnectionSite(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EndConnectionSite()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=EndConnectionSite, get=getEndConnectionSite)

        MsoConnectorType getType();
        %MethodCode
            wpsapi::MsoConnectorType prop = (wpsapi::MsoConnectorType)0;
            HRESULT hr = sipCpp->get_Type(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Type()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setType(MsoConnectorType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Type(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Type()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Type, get=getType, set=setType)
    };
};
