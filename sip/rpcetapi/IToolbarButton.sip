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
    struct IToolbarButton : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_BuiltIn(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_BuiltInFace(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_BuiltInFace(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT Copy(
            Toolbar *Toolbar,
            long Before) = 0;

        virtual HRESULT CopyFace() = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Edit() = 0;

        virtual HRESULT get_Enabled(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Enabled(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_HelpContextID(
            long *RHS /Out/) = 0;

        virtual HRESULT put_HelpContextID(
            long RHS) = 0;

        virtual HRESULT get_HelpFile(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_HelpFile(
            BSTR RHS) = 0;

        virtual HRESULT get_ID(
            long *RHS /Out/) = 0;

        virtual HRESULT get_IsGap(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT Move(
            Toolbar *Toolbar,
            long Before) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR RHS) = 0;

        virtual HRESULT get_OnAction(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_OnAction(
            BSTR RHS) = 0;

        virtual HRESULT PasteFace() = 0;

        virtual HRESULT get_Pushed(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_Pushed(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT Reset() = 0;

        virtual HRESULT get_StatusBar(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_StatusBar(
            BSTR RHS) = 0;

        virtual HRESULT get_Width(
            long *RHS /Out/) = 0;

        virtual HRESULT put_Width(
            long RHS) = 0;

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

        VARIANT_BOOL getBuiltIn();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_BuiltIn(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BuiltIn()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=BuiltIn, get=getBuiltIn)

        VARIANT_BOOL getBuiltInFace();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_BuiltInFace(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BuiltInFace()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBuiltInFace(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BuiltInFace(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BuiltInFace()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BuiltInFace, get=getBuiltInFace, set=setBuiltInFace)

        VARIANT_BOOL getEnabled();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Enabled(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Enabled()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnabled(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Enabled(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Enabled()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Enabled, get=getEnabled, set=setEnabled)

        long getHelpContextID();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_HelpContextID(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HelpContextID()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHelpContextID(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HelpContextID(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HelpContextID()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HelpContextID, get=getHelpContextID, set=setHelpContextID)

        BSTR getHelpFile();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_HelpFile(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HelpFile()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHelpFile(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HelpFile(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HelpFile()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HelpFile, get=getHelpFile, set=setHelpFile)

        long getID();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_ID(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ID()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ID, get=getID)

        VARIANT_BOOL getIsGap();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IsGap(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IsGap()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=IsGap, get=getIsGap)

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

        PyObject* setName(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Name(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Name()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Name, get=getName, set=setName)

        BSTR getOnAction();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_OnAction(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OnAction()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOnAction(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OnAction(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OnAction()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OnAction, get=getOnAction, set=setOnAction)

        VARIANT_BOOL getPushed();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Pushed(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Pushed()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPushed(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Pushed(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Pushed()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Pushed, get=getPushed, set=setPushed)

        BSTR getStatusBar();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_StatusBar(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_StatusBar()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setStatusBar(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_StatusBar(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_StatusBar()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=StatusBar, get=getStatusBar, set=setStatusBar)

        long getWidth();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Width(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Width()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWidth(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Width(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Width()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Width, get=getWidth, set=setWidth)
    };
};
