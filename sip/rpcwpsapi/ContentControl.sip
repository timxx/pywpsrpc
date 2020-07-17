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
    struct ContentControl : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT get_LockContentControl(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_LockContentControl(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_LockContents(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_LockContents(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_XMLMapping(
            XMLMapping **prop /Out/) = 0;

        virtual HRESULT get_Type(
            WdContentControlType *prop /Out/) = 0;

        virtual HRESULT put_Type(
            WdContentControlType prop) = 0;

        virtual HRESULT Copy() = 0;

        virtual HRESULT Cut() = 0;

        virtual HRESULT Delete(
            VARIANT_BOOL DeleteContents = VARIANT_FALSE) = 0;

        virtual HRESULT get_DropdownListEntries(
            ContentControlListEntries **prop /Out/) = 0;

        virtual HRESULT get_PlaceholderText(
            BuildingBlock **prop /Out/) = 0;

        virtual HRESULT SetPlaceholderText(
            BuildingBlock *BuildingBlock = 0,
            Range *Range = 0,
            BSTR Text = 0) = 0;

        virtual HRESULT get_Title(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Title(
            BSTR prop) = 0;

        virtual HRESULT get_DateDisplayFormat(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_DateDisplayFormat(
            BSTR prop) = 0;

        virtual HRESULT get_MultiLine(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_MultiLine(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ParentContentControl(
            ContentControl **prop /Out/) = 0;

        virtual HRESULT get_Temporary(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Temporary(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_ID(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_ShowingPlaceholderText(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_DateStorageFormat(
            WdContentControlDateStorageFormat *prop /Out/) = 0;

        virtual HRESULT put_DateStorageFormat(
            WdContentControlDateStorageFormat prop) = 0;

        virtual HRESULT get_BuildingBlockType(
            WdBuildingBlockTypes *prop /Out/) = 0;

        virtual HRESULT put_BuildingBlockType(
            WdBuildingBlockTypes prop) = 0;

        virtual HRESULT get_BuildingBlockCategory(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_BuildingBlockCategory(
            BSTR prop) = 0;

        virtual HRESULT get_DateDisplayLocale(
            WdLanguageID *prop /Out/) = 0;

        virtual HRESULT put_DateDisplayLocale(
            WdLanguageID prop) = 0;

        virtual HRESULT Ungroup() = 0;

        virtual HRESULT get_DefaultTextStyle(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT put_DefaultTextStyle(
            VARIANT *prop) = 0;

        virtual HRESULT get_DateCalendarType(
            WdCalendarType *prop /Out/) = 0;

        virtual HRESULT put_DateCalendarType(
            WdCalendarType prop) = 0;

        virtual HRESULT get_Tag(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Tag(
            BSTR prop) = 0;

        virtual HRESULT get_Checked(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Checked(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT SetCheckedSymbol(
            long CharacterNumber,
            BSTR Font = 0) = 0;

        virtual HRESULT SetUncheckedSymbol(
            long CharacterNumber,
            BSTR Font = 0) = 0;

        virtual HRESULT get_Color(
            WdColor *prop /Out/) = 0;

        virtual HRESULT put_Color(
            WdColor prop) = 0;

        virtual HRESULT get_Appearance(
            WdContentControlAppearance *prop /Out/) = 0;

        virtual HRESULT put_Appearance(
            WdContentControlAppearance prop) = 0;

        virtual HRESULT get_Level(
            WdContentControlLevel *prop /Out/) = 0;

        virtual HRESULT get_RepeatingSectionItems(
            RepeatingSectionItemColl **prop /Out/) = 0;

        virtual HRESULT get_RepeatingSectionItemTitle(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_RepeatingSectionItemTitle(
            BSTR prop) = 0;

        virtual HRESULT get_AllowInsertDeleteSection(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AllowInsertDeleteSection(
            VARIANT_BOOL prop) = 0;

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

        Range* getRange();
        %MethodCode
            wpsapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_Range(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Range()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Range, get=getRange)

        VARIANT_BOOL getLockContentControl();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_LockContentControl(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LockContentControl()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLockContentControl(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LockContentControl(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LockContentControl()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LockContentControl, get=getLockContentControl, set=setLockContentControl)

        VARIANT_BOOL getLockContents();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_LockContents(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LockContents()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLockContents(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LockContents(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LockContents()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LockContents, get=getLockContents, set=setLockContents)

        XMLMapping* getXMLMapping();
        %MethodCode
            wpsapi::XMLMapping *prop = nullptr;
            HRESULT hr = sipCpp->get_XMLMapping(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_XMLMapping()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=XMLMapping, get=getXMLMapping)

        WdContentControlType getType();
        %MethodCode
            wpsapi::WdContentControlType prop = (wpsapi::WdContentControlType)0;
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

        PyObject* setType(WdContentControlType prop);
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

        ContentControlListEntries* getDropdownListEntries();
        %MethodCode
            wpsapi::ContentControlListEntries *prop = nullptr;
            HRESULT hr = sipCpp->get_DropdownListEntries(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DropdownListEntries()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DropdownListEntries, get=getDropdownListEntries)

        BuildingBlock* getPlaceholderText();
        %MethodCode
            wpsapi::BuildingBlock *prop = nullptr;
            HRESULT hr = sipCpp->get_PlaceholderText(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PlaceholderText()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PlaceholderText, get=getPlaceholderText)

        BSTR getTitle();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Title(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Title()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTitle(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Title(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Title()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Title, get=getTitle, set=setTitle)

        BSTR getDateDisplayFormat();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_DateDisplayFormat(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DateDisplayFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDateDisplayFormat(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DateDisplayFormat(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DateDisplayFormat()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DateDisplayFormat, get=getDateDisplayFormat, set=setDateDisplayFormat)

        VARIANT_BOOL getMultiLine();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_MultiLine(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MultiLine()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMultiLine(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MultiLine(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MultiLine()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MultiLine, get=getMultiLine, set=setMultiLine)

        ContentControl* getParentContentControl();
        %MethodCode
            wpsapi::ContentControl *prop = nullptr;
            HRESULT hr = sipCpp->get_ParentContentControl(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ParentContentControl()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ParentContentControl, get=getParentContentControl)

        VARIANT_BOOL getTemporary();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Temporary(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Temporary()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTemporary(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Temporary(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Temporary()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Temporary, get=getTemporary, set=setTemporary)

        BSTR getID();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ID(prop);
            if (hr != S_OK)
            {
                delete prop;
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

        VARIANT_BOOL getShowingPlaceholderText();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowingPlaceholderText(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowingPlaceholderText()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ShowingPlaceholderText, get=getShowingPlaceholderText)

        WdContentControlDateStorageFormat getDateStorageFormat();
        %MethodCode
            wpsapi::WdContentControlDateStorageFormat prop = (wpsapi::WdContentControlDateStorageFormat)0;
            HRESULT hr = sipCpp->get_DateStorageFormat(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DateStorageFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDateStorageFormat(WdContentControlDateStorageFormat prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DateStorageFormat(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DateStorageFormat()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DateStorageFormat, get=getDateStorageFormat, set=setDateStorageFormat)

        WdBuildingBlockTypes getBuildingBlockType();
        %MethodCode
            wpsapi::WdBuildingBlockTypes prop = (wpsapi::WdBuildingBlockTypes)0;
            HRESULT hr = sipCpp->get_BuildingBlockType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BuildingBlockType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBuildingBlockType(WdBuildingBlockTypes prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BuildingBlockType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BuildingBlockType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BuildingBlockType, get=getBuildingBlockType, set=setBuildingBlockType)

        BSTR getBuildingBlockCategory();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_BuildingBlockCategory(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BuildingBlockCategory()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBuildingBlockCategory(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BuildingBlockCategory(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BuildingBlockCategory()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BuildingBlockCategory, get=getBuildingBlockCategory, set=setBuildingBlockCategory)

        WdLanguageID getDateDisplayLocale();
        %MethodCode
            wpsapi::WdLanguageID prop = (wpsapi::WdLanguageID)0;
            HRESULT hr = sipCpp->get_DateDisplayLocale(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DateDisplayLocale()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDateDisplayLocale(WdLanguageID prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DateDisplayLocale(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DateDisplayLocale()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DateDisplayLocale, get=getDateDisplayLocale, set=setDateDisplayLocale)

        VARIANT getDefaultTextStyle();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_DefaultTextStyle(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DefaultTextStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDefaultTextStyle(VARIANT *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DefaultTextStyle(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DefaultTextStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DefaultTextStyle, get=getDefaultTextStyle, set=setDefaultTextStyle)

        WdCalendarType getDateCalendarType();
        %MethodCode
            wpsapi::WdCalendarType prop = (wpsapi::WdCalendarType)0;
            HRESULT hr = sipCpp->get_DateCalendarType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DateCalendarType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDateCalendarType(WdCalendarType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DateCalendarType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DateCalendarType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DateCalendarType, get=getDateCalendarType, set=setDateCalendarType)

        BSTR getTag();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Tag(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Tag()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTag(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Tag(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Tag()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Tag, get=getTag, set=setTag)

        VARIANT_BOOL getChecked();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Checked(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Checked()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setChecked(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Checked(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Checked()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Checked, get=getChecked, set=setChecked)

        WdColor getColor();
        %MethodCode
            wpsapi::WdColor prop = (wpsapi::WdColor)0;
            HRESULT hr = sipCpp->get_Color(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Color()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setColor(WdColor prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Color(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Color()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Color, get=getColor, set=setColor)

        WdContentControlAppearance getAppearance();
        %MethodCode
            wpsapi::WdContentControlAppearance prop = (wpsapi::WdContentControlAppearance)0;
            HRESULT hr = sipCpp->get_Appearance(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Appearance()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAppearance(WdContentControlAppearance prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Appearance(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Appearance()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Appearance, get=getAppearance, set=setAppearance)

        WdContentControlLevel getLevel();
        %MethodCode
            wpsapi::WdContentControlLevel prop = (wpsapi::WdContentControlLevel)0;
            HRESULT hr = sipCpp->get_Level(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Level()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Level, get=getLevel)

        RepeatingSectionItemColl* getRepeatingSectionItems();
        %MethodCode
            wpsapi::RepeatingSectionItemColl *prop = nullptr;
            HRESULT hr = sipCpp->get_RepeatingSectionItems(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RepeatingSectionItems()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=RepeatingSectionItems, get=getRepeatingSectionItems)

        BSTR getRepeatingSectionItemTitle();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_RepeatingSectionItemTitle(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RepeatingSectionItemTitle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRepeatingSectionItemTitle(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RepeatingSectionItemTitle(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RepeatingSectionItemTitle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RepeatingSectionItemTitle, get=getRepeatingSectionItemTitle, set=setRepeatingSectionItemTitle)

        VARIANT_BOOL getAllowInsertDeleteSection();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AllowInsertDeleteSection(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AllowInsertDeleteSection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAllowInsertDeleteSection(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AllowInsertDeleteSection(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AllowInsertDeleteSection()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AllowInsertDeleteSection, get=getAllowInsertDeleteSection, set=setAllowInsertDeleteSection)
    };
};
