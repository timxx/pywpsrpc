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
    struct Balloon : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Checkboxes(
            IDispatch **ppidisp /Out/) = 0;

        virtual HRESULT get_Labels(
            IDispatch **ppidisp /Out/) = 0;

        virtual HRESULT put_BalloonType(
            MsoBalloonType pbty) = 0;

        virtual HRESULT get_BalloonType(
            MsoBalloonType *pbty /Out/) = 0;

        virtual HRESULT put_Icon(
            MsoIconType picn) = 0;

        virtual HRESULT get_Icon(
            MsoIconType *picn /Out/) = 0;

        virtual HRESULT put_Heading(
            BSTR pbstr) = 0;

        virtual HRESULT get_Heading(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT put_Text(
            BSTR pbstr) = 0;

        virtual HRESULT get_Text(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT put_Mode(
            MsoModeType pmd) = 0;

        virtual HRESULT get_Mode(
            MsoModeType *pmd /Out/) = 0;

        virtual HRESULT put_Animation(
            MsoAnimationType pfca) = 0;

        virtual HRESULT get_Animation(
            MsoAnimationType *pfca /Out/) = 0;

        virtual HRESULT put_Button(
            MsoButtonSetType psbs) = 0;

        virtual HRESULT get_Button(
            MsoButtonSetType *psbs /Out/) = 0;

        virtual HRESULT put_Callback(
            BSTR pbstr) = 0;

        virtual HRESULT get_Callback(
            BSTR *pbstr /Out/) = 0;

        virtual HRESULT put_Private(
            long plPrivate) = 0;

        virtual HRESULT get_Private(
            long *plPrivate /Out/) = 0;

        virtual HRESULT SetAvoidRectangle(
            int Left,
            int Top,
            int Right,
            int Bottom) = 0;

        virtual HRESULT get_Name(
            BSTR *pbstrName /Out/) = 0;

        virtual HRESULT Show(
            MsoBalloonButtonType *pibtn /Out/) = 0;

        virtual HRESULT Close() = 0;

        IDispatch* getCheckboxes();
        %MethodCode
            IDispatch *prop = nullptr;
            HRESULT hr = sipCpp->get_Checkboxes(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Checkboxes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Checkboxes, get=getCheckboxes)

        IDispatch* getLabels();
        %MethodCode
            IDispatch *prop = nullptr;
            HRESULT hr = sipCpp->get_Labels(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Labels()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Labels, get=getLabels)

        MsoBalloonType getBalloonType();
        %MethodCode
            ksoapi::MsoBalloonType prop = (ksoapi::MsoBalloonType)0;
            HRESULT hr = sipCpp->get_BalloonType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BalloonType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBalloonType(MsoBalloonType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BalloonType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BalloonType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BalloonType, get=getBalloonType, set=setBalloonType)

        MsoIconType getIcon();
        %MethodCode
            ksoapi::MsoIconType prop = (ksoapi::MsoIconType)0;
            HRESULT hr = sipCpp->get_Icon(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Icon()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setIcon(MsoIconType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Icon(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Icon()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Icon, get=getIcon, set=setIcon)

        BSTR getHeading();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Heading(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Heading()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHeading(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Heading(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Heading()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Heading, get=getHeading, set=setHeading)

        BSTR getText();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Text(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Text()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setText(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Text(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Text()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Text, get=getText, set=setText)

        MsoModeType getMode();
        %MethodCode
            ksoapi::MsoModeType prop = (ksoapi::MsoModeType)0;
            HRESULT hr = sipCpp->get_Mode(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Mode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMode(MsoModeType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Mode(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Mode()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Mode, get=getMode, set=setMode)

        MsoAnimationType getAnimation();
        %MethodCode
            ksoapi::MsoAnimationType prop = (ksoapi::MsoAnimationType)0;
            HRESULT hr = sipCpp->get_Animation(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Animation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAnimation(MsoAnimationType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Animation(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Animation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Animation, get=getAnimation, set=setAnimation)

        MsoButtonSetType getButton();
        %MethodCode
            ksoapi::MsoButtonSetType prop = (ksoapi::MsoButtonSetType)0;
            HRESULT hr = sipCpp->get_Button(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Button()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setButton(MsoButtonSetType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Button(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Button()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Button, get=getButton, set=setButton)

        BSTR getCallback();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Callback(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Callback()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCallback(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Callback(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Callback()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Callback, get=getCallback, set=setCallback)

        long getPrivate();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Private(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Private()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPrivate(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Private(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Private()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Private, get=getPrivate, set=setPrivate)

        BSTR getName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Name(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Name()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Name, get=getName)
    };
};
