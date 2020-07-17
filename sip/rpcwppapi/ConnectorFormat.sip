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
    struct ConnectorFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT BeginConnect(
            Shape *ConnectedShape,
            int ConnectionSite) = 0;

        virtual HRESULT BeginDisconnect() = 0;

        virtual HRESULT EndConnect(
            Shape *ConnectedShape,
            int ConnectionSite) = 0;

        virtual HRESULT EndDisconnect() = 0;

        virtual HRESULT get_BeginConnected(
            MsoTriState *BeginConnected /Out/) = 0;

        virtual HRESULT get_BeginConnectedShape(
            Shape **BeginConnectedShape /Out/) = 0;

        virtual HRESULT get_BeginConnectionSite(
            int *BeginConnectionSite /Out/) = 0;

        virtual HRESULT get_EndConnected(
            MsoTriState *EndConnected /Out/) = 0;

        virtual HRESULT get_EndConnectedShape(
            Shape **EndConnectedShape /Out/) = 0;

        virtual HRESULT get_EndConnectionSite(
            int *EndConnectionSite /Out/) = 0;

        virtual HRESULT get_Type(
            MsoConnectorType *Type /Out/) = 0;

        virtual HRESULT put_Type(
            MsoConnectorType Type) = 0;

        MsoTriState getBeginConnected();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
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
            wppapi::Shape *prop = nullptr;
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

        int getBeginConnectionSite();
        %MethodCode
            int prop = 0;
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
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
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
            wppapi::Shape *prop = nullptr;
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

        int getEndConnectionSite();
        %MethodCode
            int prop = 0;
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
            wppapi::MsoConnectorType prop = (wppapi::MsoConnectorType)0;
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
