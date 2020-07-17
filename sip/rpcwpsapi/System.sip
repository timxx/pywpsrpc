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
    struct System : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_OperatingSystem(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_ProcessorType(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Version(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_FreeDiskSpace(
            long *prop /Out/) = 0;

        virtual HRESULT get_Country(
            WdCountry *prop /Out/) = 0;

        virtual HRESULT get_LanguageDesignation(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_HorizontalResolution(
            long *prop /Out/) = 0;

        virtual HRESULT get_VerticalResolution(
            long *prop /Out/) = 0;

        virtual HRESULT get_ProfileString(
            BSTR Section,
            BSTR Key,
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_ProfileString(
            BSTR Section,
            BSTR Key,
            BSTR prop) = 0;

        virtual HRESULT get_PrivateProfileString(
            BSTR FileName,
            BSTR Section,
            BSTR Key,
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_PrivateProfileString(
            BSTR FileName,
            BSTR Section,
            BSTR Key,
            BSTR prop) = 0;

        virtual HRESULT get_MathCoprocessorInstalled(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_ComputerType(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_MacintoshName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_QuickDrawInstalled(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_Cursor(
            WdCursorType *prop /Out/) = 0;

        virtual HRESULT put_Cursor(
            WdCursorType prop) = 0;

        virtual HRESULT MSInfo() = 0;

        virtual HRESULT Connect(
            BSTR Path,
            VARIANT *Drive = argMissing(),
            VARIANT *Password = argMissing()) = 0;

        virtual HRESULT get_CountryRegion(
            WdCountry *prop /Out/) = 0;

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

        BSTR getOperatingSystem();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_OperatingSystem(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OperatingSystem()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=OperatingSystem, get=getOperatingSystem)

        BSTR getProcessorType();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ProcessorType(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ProcessorType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ProcessorType, get=getProcessorType)

        BSTR getVersion();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Version(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Version()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Version, get=getVersion)

        long getFreeDiskSpace();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_FreeDiskSpace(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FreeDiskSpace()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=FreeDiskSpace, get=getFreeDiskSpace)

        WdCountry getCountry();
        %MethodCode
            wpsapi::WdCountry prop = (wpsapi::WdCountry)0;
            HRESULT hr = sipCpp->get_Country(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Country()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Country, get=getCountry)

        BSTR getLanguageDesignation();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_LanguageDesignation(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LanguageDesignation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=LanguageDesignation, get=getLanguageDesignation)

        long getHorizontalResolution();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_HorizontalResolution(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HorizontalResolution()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HorizontalResolution, get=getHorizontalResolution)

        long getVerticalResolution();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_VerticalResolution(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_VerticalResolution()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=VerticalResolution, get=getVerticalResolution)

        VARIANT_BOOL getMathCoprocessorInstalled();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MathCoprocessorInstalled(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MathCoprocessorInstalled()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MathCoprocessorInstalled, get=getMathCoprocessorInstalled)

        BSTR getComputerType();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ComputerType(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ComputerType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ComputerType, get=getComputerType)

        BSTR getMacintoshName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_MacintoshName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MacintoshName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MacintoshName, get=getMacintoshName)

        VARIANT_BOOL getQuickDrawInstalled();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_QuickDrawInstalled(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_QuickDrawInstalled()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=QuickDrawInstalled, get=getQuickDrawInstalled)

        WdCursorType getCursor();
        %MethodCode
            wpsapi::WdCursorType prop = (wpsapi::WdCursorType)0;
            HRESULT hr = sipCpp->get_Cursor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Cursor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCursor(WdCursorType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Cursor(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Cursor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Cursor, get=getCursor, set=setCursor)

        WdCountry getCountryRegion();
        %MethodCode
            wpsapi::WdCountry prop = (wpsapi::WdCountry)0;
            HRESULT hr = sipCpp->get_CountryRegion(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CountryRegion()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CountryRegion, get=getCountryRegion)
    };
};
