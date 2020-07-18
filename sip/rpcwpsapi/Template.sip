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
    struct Template : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Path(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_AutoTextEntries(
            AutoTextEntries **prop /Out/) = 0;

        virtual HRESULT get_LanguageID(
            WdLanguageID *prop /Out/) = 0;

        virtual HRESULT put_LanguageID(
            WdLanguageID prop) = 0;

        virtual HRESULT get_Saved(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Saved(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Type(
            WdTemplateType *prop /Out/) = 0;

        virtual HRESULT get_FullName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_BuiltInDocumentProperties(
            ksoapi::DocumentProperties **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_BuiltInDocumentProperties((IDispatch **)&a0);
        %End

        virtual HRESULT get_CustomDocumentProperties(
            ksoapi::DocumentProperties **prop /Out/) = 0;
        %MethodCode
            sipRes = sipCpp->get_CustomDocumentProperties((IDispatch **)&a0);
        %End

        virtual HRESULT get_ListTemplates(
            ListTemplates **prop /Out/) = 0;

        virtual HRESULT get_LanguageIDFarEast(
            WdLanguageID *prop /Out/) = 0;

        virtual HRESULT put_LanguageIDFarEast(
            WdLanguageID prop) = 0;

        virtual HRESULT get_VBProject(
            VBProject **prop /Out/) = 0;

        virtual HRESULT get_KerningByAlgorithm(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_KerningByAlgorithm(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_JustificationMode(
            WdJustificationMode *prop /Out/) = 0;

        virtual HRESULT put_JustificationMode(
            WdJustificationMode prop) = 0;

        virtual HRESULT get_FarEastLineBreakLevel(
            WdFarEastLineBreakLevel *prop /Out/) = 0;

        virtual HRESULT put_FarEastLineBreakLevel(
            WdFarEastLineBreakLevel prop) = 0;

        virtual HRESULT get_NoLineBreakBefore(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_NoLineBreakBefore(
            BSTR prop) = 0;

        virtual HRESULT get_NoLineBreakAfter(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_NoLineBreakAfter(
            BSTR prop) = 0;

        virtual HRESULT OpenAsDocument(
            Document **prop /Out/) = 0;

        virtual HRESULT Save() = 0;

        virtual HRESULT get_NoProofing(
            long *prop /Out/) = 0;

        virtual HRESULT put_NoProofing(
            long prop) = 0;

        virtual HRESULT get_FarEastLineBreakLanguage(
            WdFarEastLineBreakLanguageID *prop /Out/) = 0;

        virtual HRESULT put_FarEastLineBreakLanguage(
            WdFarEastLineBreakLanguageID prop) = 0;

        virtual HRESULT get_BuildingBlockEntries(
            BuildingBlockEntries **prop /Out/) = 0;

        virtual HRESULT get_BuildingBlockTypes(
            BuildingBlockTypes **prop /Out/) = 0;

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

        AutoTextEntries* getAutoTextEntries();
        %MethodCode
            wpsapi::AutoTextEntries *prop = nullptr;
            HRESULT hr = sipCpp->get_AutoTextEntries(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoTextEntries()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AutoTextEntries, get=getAutoTextEntries)

        WdLanguageID getLanguageID();
        %MethodCode
            wpsapi::WdLanguageID prop = (wpsapi::WdLanguageID)0;
            HRESULT hr = sipCpp->get_LanguageID(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LanguageID()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLanguageID(WdLanguageID prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LanguageID(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LanguageID()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LanguageID, get=getLanguageID, set=setLanguageID)

        VARIANT_BOOL getSaved();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Saved(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Saved()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSaved(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Saved(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Saved()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Saved, get=getSaved, set=setSaved)

        WdTemplateType getType();
        %MethodCode
            wpsapi::WdTemplateType prop = (wpsapi::WdTemplateType)0;
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

        %Property(name=Type, get=getType)

        BSTR getFullName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_FullName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FullName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=FullName, get=getFullName)

        ksoapi::DocumentProperties* getBuiltInDocumentProperties();
        %MethodCode
            ksoapi::DocumentProperties *prop = nullptr;
            HRESULT hr = sipCpp->get_BuiltInDocumentProperties((IDispatch **)&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BuiltInDocumentProperties()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=BuiltInDocumentProperties, get=getBuiltInDocumentProperties)

        ksoapi::DocumentProperties* getCustomDocumentProperties();
        %MethodCode
            ksoapi::DocumentProperties *prop = nullptr;
            HRESULT hr = sipCpp->get_CustomDocumentProperties((IDispatch **)&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_CustomDocumentProperties()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=CustomDocumentProperties, get=getCustomDocumentProperties)

        ListTemplates* getListTemplates();
        %MethodCode
            wpsapi::ListTemplates *prop = nullptr;
            HRESULT hr = sipCpp->get_ListTemplates(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ListTemplates()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ListTemplates, get=getListTemplates)

        WdLanguageID getLanguageIDFarEast();
        %MethodCode
            wpsapi::WdLanguageID prop = (wpsapi::WdLanguageID)0;
            HRESULT hr = sipCpp->get_LanguageIDFarEast(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LanguageIDFarEast()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLanguageIDFarEast(WdLanguageID prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LanguageIDFarEast(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LanguageIDFarEast()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LanguageIDFarEast, get=getLanguageIDFarEast, set=setLanguageIDFarEast)

        VBProject* getVBProject();
        %MethodCode
            wpsapi::VBProject *prop = nullptr;
            HRESULT hr = sipCpp->get_VBProject(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_VBProject()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=VBProject, get=getVBProject)

        VARIANT_BOOL getKerningByAlgorithm();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_KerningByAlgorithm(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_KerningByAlgorithm()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setKerningByAlgorithm(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_KerningByAlgorithm(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_KerningByAlgorithm()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=KerningByAlgorithm, get=getKerningByAlgorithm, set=setKerningByAlgorithm)

        WdJustificationMode getJustificationMode();
        %MethodCode
            wpsapi::WdJustificationMode prop = (wpsapi::WdJustificationMode)0;
            HRESULT hr = sipCpp->get_JustificationMode(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_JustificationMode()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setJustificationMode(WdJustificationMode prop);
        %MethodCode
            HRESULT hr = sipCpp->put_JustificationMode(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_JustificationMode()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=JustificationMode, get=getJustificationMode, set=setJustificationMode)

        WdFarEastLineBreakLevel getFarEastLineBreakLevel();
        %MethodCode
            wpsapi::WdFarEastLineBreakLevel prop = (wpsapi::WdFarEastLineBreakLevel)0;
            HRESULT hr = sipCpp->get_FarEastLineBreakLevel(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FarEastLineBreakLevel()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFarEastLineBreakLevel(WdFarEastLineBreakLevel prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FarEastLineBreakLevel(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FarEastLineBreakLevel()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FarEastLineBreakLevel, get=getFarEastLineBreakLevel, set=setFarEastLineBreakLevel)

        BSTR getNoLineBreakBefore();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_NoLineBreakBefore(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NoLineBreakBefore()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNoLineBreakBefore(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NoLineBreakBefore(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NoLineBreakBefore()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NoLineBreakBefore, get=getNoLineBreakBefore, set=setNoLineBreakBefore)

        BSTR getNoLineBreakAfter();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_NoLineBreakAfter(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NoLineBreakAfter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNoLineBreakAfter(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NoLineBreakAfter(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NoLineBreakAfter()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NoLineBreakAfter, get=getNoLineBreakAfter, set=setNoLineBreakAfter)

        long getNoProofing();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_NoProofing(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NoProofing()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNoProofing(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NoProofing(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NoProofing()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NoProofing, get=getNoProofing, set=setNoProofing)

        WdFarEastLineBreakLanguageID getFarEastLineBreakLanguage();
        %MethodCode
            wpsapi::WdFarEastLineBreakLanguageID prop = (wpsapi::WdFarEastLineBreakLanguageID)0;
            HRESULT hr = sipCpp->get_FarEastLineBreakLanguage(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FarEastLineBreakLanguage()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFarEastLineBreakLanguage(WdFarEastLineBreakLanguageID prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FarEastLineBreakLanguage(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FarEastLineBreakLanguage()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FarEastLineBreakLanguage, get=getFarEastLineBreakLanguage, set=setFarEastLineBreakLanguage)

        BuildingBlockEntries* getBuildingBlockEntries();
        %MethodCode
            wpsapi::BuildingBlockEntries *prop = nullptr;
            HRESULT hr = sipCpp->get_BuildingBlockEntries(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BuildingBlockEntries()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=BuildingBlockEntries, get=getBuildingBlockEntries)

        BuildingBlockTypes* getBuildingBlockTypes();
        %MethodCode
            wpsapi::BuildingBlockTypes *prop = nullptr;
            HRESULT hr = sipCpp->get_BuildingBlockTypes(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BuildingBlockTypes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=BuildingBlockTypes, get=getBuildingBlockTypes)
    };
};
