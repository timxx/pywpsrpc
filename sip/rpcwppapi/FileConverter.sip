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
    struct FileConverter : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_CanOpen(
            VARIANT_BOOL *CanOpen /Out/) = 0;

        virtual HRESULT get_CanSave(
            VARIANT_BOOL *CanSave /Out/) = 0;

        virtual HRESULT get_ClassName(
            BSTR *ClassName /Out/) = 0;

        virtual HRESULT get_Creator(
            FileConverters **Creator /Out/) = 0;

        virtual HRESULT get_Extensions(
            BSTR *Extensions /Out/) = 0;

        virtual HRESULT get_FormatName(
            BSTR *FormatName /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *Name /Out/) = 0;

        virtual HRESULT get_Path(
            BSTR *Path /Out/) = 0;

        virtual HRESULT get_OpenFormat(
            long *OpenFormat /Out/) = 0;

        virtual HRESULT get_SaveFormat(
            long *SaveFormat /Out/) = 0;

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

        VARIANT_BOOL getCanOpen();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_CanOpen(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CanOpen()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CanOpen, get=getCanOpen)

        VARIANT_BOOL getCanSave();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_CanSave(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CanSave()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CanSave, get=getCanSave)

        BSTR getClassName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ClassName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ClassName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ClassName, get=getClassName)

        FileConverters* getCreator();
        %MethodCode
            wppapi::FileConverters *prop = nullptr;
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

        BSTR getExtensions();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Extensions(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Extensions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Extensions, get=getExtensions)

        BSTR getFormatName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_FormatName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FormatName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=FormatName, get=getFormatName)

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

        FileConverters* getParent();
        %MethodCode
            wppapi::FileConverters *prop = nullptr;
            HRESULT hr = sipCpp->get_Parent(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Parent()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        BSTR getPath();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Path(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Path()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Path, get=getPath)

        long getOpenFormat();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_OpenFormat(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OpenFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=OpenFormat, get=getOpenFormat)

        long getSaveFormat();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_SaveFormat(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SaveFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SaveFormat, get=getSaveFormat)
    };
};
