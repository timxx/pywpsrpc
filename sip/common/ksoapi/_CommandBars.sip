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
    struct _CommandBars : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_ActionControl(
            CommandBarControl **ppcbc /Out/) = 0;

        virtual HRESULT get_ActiveMenuBar(
            CommandBar **ppcb /Out/) = 0;

        virtual HRESULT Add(
            VARIANT Name = argMissing2(),
            VARIANT Position = argMissing2(),
            VARIANT MenuBar = argMissing2(),
            VARIANT Temporary = argMissing2(),
            CommandBar **ppcb /Out/ = 0) = 0;

        virtual HRESULT get_Count(
            int *pcToolbars /Out/) = 0;

        int __len__() const;
        %MethodCode
            int count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT get_DisplayTooltips(
            VARIANT_BOOL *pvarfDisplayTooltips /Out/) = 0;

        virtual HRESULT put_DisplayTooltips(
            VARIANT_BOOL pvarfDisplayTooltips) = 0;

        virtual HRESULT get_DisplayKeysInTooltips(
            VARIANT_BOOL *pvarfDisplayKeys /Out/) = 0;

        virtual HRESULT put_DisplayKeysInTooltips(
            VARIANT_BOOL pvarfDisplayKeys) = 0;

        virtual HRESULT FindControl(
            VARIANT Type = argMissing2(),
            VARIANT Id = argMissing2(),
            VARIANT Tag = argMissing2(),
            VARIANT Visible = argMissing2(),
            CommandBarControl **ppcbc /Out/ = 0) = 0;

        virtual HRESULT get_Item(
            VARIANT Index,
            CommandBar **ppcb /Out/) = 0;

        CommandBar* __getitem__(VARIANT index) const;
        %MethodCode
            ksoapi::CommandBar *prop = nullptr;
            if (sipCpp->get_Item(*a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT get_LargeButtons(
            VARIANT_BOOL *pvarfLargeButtons /Out/) = 0;

        virtual HRESULT put_LargeButtons(
            VARIANT_BOOL pvarfLargeButtons) = 0;

        virtual HRESULT get_MenuAnimationStyle(
            MsoMenuAnimation *pma /Out/) = 0;

        virtual HRESULT put_MenuAnimationStyle(
            MsoMenuAnimation pma) = 0;

        virtual HRESULT ReleaseFocus() = 0;

        virtual HRESULT get_IdsString(
            int ids,
            BSTR *pbstrName /Out/,
            int *pcch /Out/) = 0;

        virtual HRESULT get_TmcGetName(
            int tmc,
            BSTR *pbstrName /Out/,
            int *pcch /Out/) = 0;

        virtual HRESULT get_AdaptiveMenus(
            VARIANT_BOOL *pvarfAdaptiveMenus /Out/) = 0;

        virtual HRESULT put_AdaptiveMenus(
            VARIANT_BOOL pvarfAdaptiveMenus) = 0;

        virtual HRESULT FindControls(
            VARIANT Type = argMissing2(),
            VARIANT Id = argMissing2(),
            VARIANT Tag = argMissing2(),
            VARIANT Visible = argMissing2(),
            CommandBarControls **ppcbcs /Out/ = 0) = 0;

        virtual HRESULT AddEx(
            VARIANT TbidOrName = argMissing2(),
            VARIANT Position = argMissing2(),
            VARIANT MenuBar = argMissing2(),
            VARIANT Temporary = argMissing2(),
            VARIANT TbtrProtection = argMissing2(),
            CommandBar **ppcb /Out/ = 0) = 0;

        virtual HRESULT get_DisplayFonts(
            VARIANT_BOOL *pvarfDisplayFonts /Out/) = 0;

        virtual HRESULT put_DisplayFonts(
            VARIANT_BOOL pvarfDisplayFonts) = 0;

        virtual HRESULT get_DisableCustomize(
            VARIANT_BOOL *pvarfDisableCustomize /Out/) = 0;

        virtual HRESULT put_DisableCustomize(
            VARIANT_BOOL pvarfDisableCustomize) = 0;

        virtual HRESULT get_DisableAskAQuestionDropdown(
            VARIANT_BOOL *pvarfDisableAskAQuestionDropdown /Out/) = 0;

        virtual HRESULT put_DisableAskAQuestionDropdown(
            VARIANT_BOOL pvarfDisableAskAQuestionDropdown) = 0;

        virtual HRESULT ExecuteMso(
            BSTR idMso) = 0;

        virtual HRESULT GetEnabledMso(
            BSTR idMso,
            VARIANT_BOOL *Enabled /Out/) = 0;

        virtual HRESULT GetVisibleMso(
            BSTR idMso,
            VARIANT_BOOL *Visible /Out/) = 0;

        virtual HRESULT GetPressedMso(
            BSTR idMso,
            VARIANT_BOOL *Pressed /Out/) = 0;

        virtual HRESULT GetLabelMso(
            BSTR idMso,
            BSTR *Label /Out/) = 0;

        virtual HRESULT GetScreentipMso(
            BSTR idMso,
            BSTR *Screentip /Out/) = 0;

        virtual HRESULT GetSupertipMso(
            BSTR idMso,
            BSTR *Supertip /Out/) = 0;

        virtual HRESULT GetImageMso(
            BSTR idMso,
            int Width,
            int Height,
            IPictureDisp **Image /Out/) = 0;

        virtual HRESULT CommitRenderingTransaction(
            long hwnd) = 0;

        CommandBarControl* getActionControl();
        %MethodCode
            ksoapi::CommandBarControl *prop = nullptr;
            HRESULT hr = sipCpp->get_ActionControl(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ActionControl()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ActionControl, get=getActionControl)

        CommandBar* getActiveMenuBar();
        %MethodCode
            ksoapi::CommandBar *prop = nullptr;
            HRESULT hr = sipCpp->get_ActiveMenuBar(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ActiveMenuBar()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ActiveMenuBar, get=getActiveMenuBar)

        int getCount();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_Count(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Count()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Count, get=getCount)

        VARIANT_BOOL getDisplayTooltips();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayTooltips(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayTooltips()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayTooltips(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayTooltips(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayTooltips()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayTooltips, get=getDisplayTooltips, set=setDisplayTooltips)

        VARIANT_BOOL getDisplayKeysInTooltips();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayKeysInTooltips(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayKeysInTooltips()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayKeysInTooltips(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayKeysInTooltips(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayKeysInTooltips()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayKeysInTooltips, get=getDisplayKeysInTooltips, set=setDisplayKeysInTooltips)

        VARIANT_BOOL getLargeButtons();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_LargeButtons(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LargeButtons()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLargeButtons(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LargeButtons(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LargeButtons()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LargeButtons, get=getLargeButtons, set=setLargeButtons)

        MsoMenuAnimation getMenuAnimationStyle();
        %MethodCode
            ksoapi::MsoMenuAnimation prop = (ksoapi::MsoMenuAnimation)0;
            HRESULT hr = sipCpp->get_MenuAnimationStyle(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MenuAnimationStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMenuAnimationStyle(MsoMenuAnimation prop);
        %MethodCode
            HRESULT hr = sipCpp->put_MenuAnimationStyle(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_MenuAnimationStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=MenuAnimationStyle, get=getMenuAnimationStyle, set=setMenuAnimationStyle)

        VARIANT_BOOL getAdaptiveMenus();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AdaptiveMenus(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AdaptiveMenus()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAdaptiveMenus(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AdaptiveMenus(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AdaptiveMenus()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AdaptiveMenus, get=getAdaptiveMenus, set=setAdaptiveMenus)

        VARIANT_BOOL getDisplayFonts();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayFonts(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayFonts()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayFonts(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayFonts(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayFonts()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayFonts, get=getDisplayFonts, set=setDisplayFonts)

        VARIANT_BOOL getDisableCustomize();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisableCustomize(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisableCustomize()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisableCustomize(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisableCustomize(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisableCustomize()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisableCustomize, get=getDisableCustomize, set=setDisableCustomize)

        VARIANT_BOOL getDisableAskAQuestionDropdown();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisableAskAQuestionDropdown(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisableAskAQuestionDropdown()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisableAskAQuestionDropdown(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisableAskAQuestionDropdown(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisableAskAQuestionDropdown()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisableAskAQuestionDropdown, get=getDisableAskAQuestionDropdown, set=setDisableAskAQuestionDropdown)
    };
};
