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
    struct MailingLabel : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_DefaultPrintBarCode(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DefaultPrintBarCode(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_DefaultLaserTray(
            WdPaperTray *prop /Out/) = 0;

        virtual HRESULT put_DefaultLaserTray(
            WdPaperTray prop) = 0;

        virtual HRESULT get_CustomLabels(
            CustomLabels **prop /Out/) = 0;

        virtual HRESULT get_DefaultLabelName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_DefaultLabelName(
            BSTR prop) = 0;

        virtual HRESULT CreateNewDocument2000(
            VARIANT *Name = argMissing(),
            VARIANT *Address = argMissing(),
            VARIANT *AutoText = argMissing(),
            VARIANT *ExtractAddress = argMissing(),
            VARIANT *LaserTray = argMissing(),
            Document **prop /Out/ = 0) = 0;

        virtual HRESULT PrintOut2000(
            VARIANT *Name = argMissing(),
            VARIANT *Address = argMissing(),
            VARIANT *ExtractAddress = argMissing(),
            VARIANT *LaserTray = argMissing(),
            VARIANT *SingleLabel = argMissing(),
            VARIANT *Row = argMissing(),
            VARIANT *Column = argMissing()) = 0;

        virtual HRESULT LabelOptions() = 0;

        virtual HRESULT CreateNewDocument(
            VARIANT *Name = argMissing(),
            VARIANT *Address = argMissing(),
            VARIANT *AutoText = argMissing(),
            VARIANT *ExtractAddress = argMissing(),
            VARIANT *LaserTray = argMissing(),
            VARIANT *PrintEPostageLabel = argMissing(),
            VARIANT *Vertical = argMissing(),
            Document **prop /Out/ = 0) = 0;

        virtual HRESULT PrintOut(
            VARIANT *Name = argMissing(),
            VARIANT *Address = argMissing(),
            VARIANT *ExtractAddress = argMissing(),
            VARIANT *LaserTray = argMissing(),
            VARIANT *SingleLabel = argMissing(),
            VARIANT *Row = argMissing(),
            VARIANT *Column = argMissing(),
            VARIANT *PrintEPostageLabel = argMissing(),
            VARIANT *Vertical = argMissing()) = 0;

        virtual HRESULT get_Vertical(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Vertical(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT CreateNewDocumentByID(
            VARIANT *LabelID = argMissing(),
            VARIANT *Address = argMissing(),
            VARIANT *AutoText = argMissing(),
            VARIANT *ExtractAddress = argMissing(),
            VARIANT *LaserTray = argMissing(),
            VARIANT *PrintEPostageLabel = argMissing(),
            VARIANT *Vertical = argMissing(),
            Document **prop /Out/ = 0) = 0;

        virtual HRESULT PrintOutByID(
            VARIANT *LabelID = argMissing(),
            VARIANT *Address = argMissing(),
            VARIANT *ExtractAddress = argMissing(),
            VARIANT *LaserTray = argMissing(),
            VARIANT *SingleLabel = argMissing(),
            VARIANT *Row = argMissing(),
            VARIANT *Column = argMissing(),
            VARIANT *PrintEPostageLabel = argMissing(),
            VARIANT *Vertical = argMissing()) = 0;

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

        VARIANT_BOOL getDefaultPrintBarCode();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DefaultPrintBarCode(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DefaultPrintBarCode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDefaultPrintBarCode(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DefaultPrintBarCode(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DefaultPrintBarCode()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DefaultPrintBarCode, get=getDefaultPrintBarCode, set=setDefaultPrintBarCode)

        WdPaperTray getDefaultLaserTray();
        %MethodCode
            wpsapi::WdPaperTray prop = (wpsapi::WdPaperTray)0;
            HRESULT hr = sipCpp->get_DefaultLaserTray(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DefaultLaserTray()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDefaultLaserTray(WdPaperTray prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DefaultLaserTray(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DefaultLaserTray()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DefaultLaserTray, get=getDefaultLaserTray, set=setDefaultLaserTray)

        CustomLabels* getCustomLabels();
        %MethodCode
            wpsapi::CustomLabels *prop = nullptr;
            HRESULT hr = sipCpp->get_CustomLabels(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CustomLabels()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CustomLabels, get=getCustomLabels)

        BSTR getDefaultLabelName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_DefaultLabelName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DefaultLabelName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDefaultLabelName(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DefaultLabelName(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DefaultLabelName()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DefaultLabelName, get=getDefaultLabelName, set=setDefaultLabelName)

        VARIANT_BOOL getVertical();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Vertical(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Vertical()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setVertical(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Vertical(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Vertical()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Vertical, get=getVertical, set=setVertical)
    };
};
