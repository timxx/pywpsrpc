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
    struct IModule : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT Activate(
            long lcid) = 0;

        virtual HRESULT Copy(
            VARIANT Before = argMissing2(),
            VARIANT After = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT Delete(
            long lcid) = 0;

        virtual HRESULT get_CodeName(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get__CodeName(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put__CodeName(
            BSTR RHS) = 0;

        virtual HRESULT get_Index(
            long lcid,
            long *RHS /Out/) = 0;

        virtual HRESULT Move(
            VARIANT Before = argMissing2(),
            VARIANT After = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR RHS) = 0;

        virtual HRESULT get_Next(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_OnDoubleClick(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_OnDoubleClick(
            long lcid,
            BSTR RHS) = 0;

        virtual HRESULT get_OnSheetActivate(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_OnSheetActivate(
            long lcid,
            BSTR RHS) = 0;

        virtual HRESULT get_OnSheetDeactivate(
            long lcid,
            BSTR *RHS /Out/) = 0;

        virtual HRESULT put_OnSheetDeactivate(
            long lcid,
            BSTR RHS) = 0;

        virtual HRESULT get_PageSetup(
            PageSetup **RHS /Out/) = 0;

        virtual HRESULT get_Previous(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT __PrintOut(
            VARIANT From = argMissing2(),
            VARIANT To = argMissing2(),
            VARIANT Copies = argMissing2(),
            VARIANT Preview = argMissing2(),
            VARIANT ActivePrinter = argMissing2(),
            VARIANT PrintToFile = argMissing2(),
            VARIANT Collate = argMissing2(),
            long lcid = 0) = 0;

        virtual void _Dummy18() = 0;

        virtual HRESULT _Protect(
            VARIANT Password = argMissing2(),
            VARIANT DrawingObjects = argMissing2(),
            VARIANT Contents = argMissing2(),
            VARIANT Scenarios = argMissing2(),
            VARIANT UserInterfaceOnly = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT get_ProtectContents(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual void _Dummy21() = 0;

        virtual HRESULT get_ProtectionMode(
            long lcid,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual void _Dummy23() = 0;

        virtual HRESULT _SaveAs(
            BSTR Filename,
            VARIANT FileFormat = argMissing2(),
            VARIANT Password = argMissing2(),
            VARIANT WriteResPassword = argMissing2(),
            VARIANT ReadOnlyRecommended = argMissing2(),
            VARIANT CreateBackup = argMissing2(),
            VARIANT AddToMru = argMissing2(),
            VARIANT TextCodepage = argMissing2(),
            VARIANT TextVisualLayout = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT Select(
            VARIANT Replace = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT Unprotect(
            VARIANT Password = argMissing2(),
            long lcid = 0) = 0;

        virtual HRESULT get_Visible(
            long lcid,
            XlSheetVisibility *RHS /Out/) = 0;

        virtual HRESULT put_Visible(
            long lcid,
            XlSheetVisibility RHS) = 0;

        virtual HRESULT get_Shapes(
            Shapes **RHS /Out/) = 0;

        virtual HRESULT InsertFile(
            VARIANT Filename,
            VARIANT Merge = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT SaveAs(
            BSTR Filename,
            VARIANT FileFormat = argMissing2(),
            VARIANT Password = argMissing2(),
            VARIANT WriteResPassword = argMissing2(),
            VARIANT ReadOnlyRecommended = argMissing2(),
            VARIANT CreateBackup = argMissing2(),
            VARIANT AddToMru = argMissing2(),
            VARIANT TextCodepage = argMissing2(),
            VARIANT TextVisualLayout = argMissing2()) = 0;

        virtual HRESULT Protect(
            VARIANT Password = argMissing2(),
            VARIANT DrawingObjects = argMissing2(),
            VARIANT Contents = argMissing2(),
            VARIANT Scenarios = argMissing2(),
            VARIANT UserInterfaceOnly = argMissing2()) = 0;

        virtual HRESULT _PrintOut(
            VARIANT From = argMissing2(),
            VARIANT To = argMissing2(),
            VARIANT Copies = argMissing2(),
            VARIANT Preview = argMissing2(),
            VARIANT ActivePrinter = argMissing2(),
            VARIANT PrintToFile = argMissing2(),
            VARIANT Collate = argMissing2()) = 0;

        virtual HRESULT PrintOut(
            VARIANT From = argMissing2(),
            VARIANT To = argMissing2(),
            VARIANT Copies = argMissing2(),
            VARIANT Preview = argMissing2(),
            VARIANT ActivePrinter = argMissing2(),
            VARIANT PrintToFile = argMissing2(),
            VARIANT Collate = argMissing2()) = 0;

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

        BSTR getCodeName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_CodeName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CodeName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CodeName, get=getCodeName)

        BSTR get_CodeName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get__CodeName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get__CodeName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* set_CodeName(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put__CodeName(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put__CodeName()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=_CodeName, get=get_CodeName, set=set_CodeName)

        long getIndex();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Index(0, &prop);
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

        IDispatch* getNext();
        %MethodCode
            IDispatch *prop = nullptr;
            HRESULT hr = sipCpp->get_Next(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Next()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Next, get=getNext)

        BSTR getOnDoubleClick();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_OnDoubleClick(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OnDoubleClick()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOnDoubleClick(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OnDoubleClick(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OnDoubleClick()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OnDoubleClick, get=getOnDoubleClick, set=setOnDoubleClick)

        BSTR getOnSheetActivate();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_OnSheetActivate(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OnSheetActivate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOnSheetActivate(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OnSheetActivate(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OnSheetActivate()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OnSheetActivate, get=getOnSheetActivate, set=setOnSheetActivate)

        BSTR getOnSheetDeactivate();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_OnSheetDeactivate(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OnSheetDeactivate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOnSheetDeactivate(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OnSheetDeactivate(0, *a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OnSheetDeactivate()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OnSheetDeactivate, get=getOnSheetDeactivate, set=setOnSheetDeactivate)

        PageSetup* getPageSetup();
        %MethodCode
            etapi::PageSetup *prop = nullptr;
            HRESULT hr = sipCpp->get_PageSetup(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PageSetup()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PageSetup, get=getPageSetup)

        IDispatch* getPrevious();
        %MethodCode
            IDispatch *prop = nullptr;
            HRESULT hr = sipCpp->get_Previous(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Previous()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Previous, get=getPrevious)

        VARIANT_BOOL getProtectContents();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ProtectContents(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ProtectContents()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ProtectContents, get=getProtectContents)

        VARIANT_BOOL getProtectionMode();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ProtectionMode(0, prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ProtectionMode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ProtectionMode, get=getProtectionMode)

        XlSheetVisibility getVisible();
        %MethodCode
            etapi::XlSheetVisibility prop = (etapi::XlSheetVisibility)0;
            HRESULT hr = sipCpp->get_Visible(0, &prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Visible()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setVisible(XlSheetVisibility prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Visible(0, a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Visible()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Visible, get=getVisible, set=setVisible)

        Shapes* getShapes();
        %MethodCode
            etapi::Shapes *prop = nullptr;
            HRESULT hr = sipCpp->get_Shapes(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Shapes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Shapes, get=getShapes)
    };
};
