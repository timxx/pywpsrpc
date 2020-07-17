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
    struct IConnectorFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT BeginConnect(
            Shape *ConnectedShape,
            long ConnectionSite) = 0;

        virtual HRESULT BeginDisconnect() = 0;

        virtual HRESULT EndConnect(
            Shape *ConnectedShape,
            long ConnectionSite) = 0;

        virtual HRESULT EndDisconnect() = 0;

        virtual HRESULT get_BeginConnected(
            MsoTriState *RHS /Out/) = 0;

        virtual HRESULT get_BeginConnectedShape(
            Shape **RHS /Out/) = 0;

        virtual HRESULT get_BeginConnectionSite(
            long *RHS /Out/) = 0;

        virtual HRESULT get_EndConnected(
            MsoTriState *RHS /Out/) = 0;

        virtual HRESULT get_EndConnectedShape(
            Shape **RHS /Out/) = 0;

        virtual HRESULT get_EndConnectionSite(
            long *RHS /Out/) = 0;

        virtual HRESULT get_Type(
            MsoConnectorType *RHS /Out/) = 0;

        virtual HRESULT put_Type(
            MsoConnectorType RHS) = 0;

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

        MsoTriState getBeginConnected();
        %MethodCode
            etapi::MsoTriState prop = (etapi::MsoTriState)0;
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
            etapi::Shape *prop = nullptr;
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
            etapi::MsoTriState prop = (etapi::MsoTriState)0;
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
            etapi::Shape *prop = nullptr;
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
            etapi::MsoConnectorType prop = (etapi::MsoConnectorType)0;
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
