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
    struct IMenuBar : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT Activate() = 0;

        virtual HRESULT get_BuiltIn(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_Caption(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Caption(
            BSTR RHS) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_Index(
            long *RHS /Out/) = 0;

        virtual HRESULT get_Menus(
            Menus **RHS /Out/) = 0;

        virtual HRESULT Reset() = 0;

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

        BSTR getCaption();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Caption(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Caption()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCaption(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Caption(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Caption()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Caption, get=getCaption, set=setCaption)

        long getIndex();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Index(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Index()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Index, get=getIndex)

        Menus* getMenus();
        %MethodCode
            etapi::Menus *prop = nullptr;
            HRESULT hr = sipCpp->get_Menus(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Menus()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Menus, get=getMenus)
    };
};
