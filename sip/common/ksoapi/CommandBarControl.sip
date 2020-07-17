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
    struct CommandBarControl : public ksoapi::_IMsoOleAccDispObj /Abstract/
    {
    public:
        virtual HRESULT get_BeginGroup(
            VARIANT_BOOL *pvarfBeginGroup /Out/) = 0;

        virtual HRESULT put_BeginGroup(
            VARIANT_BOOL pvarfBeginGroup) = 0;

        virtual HRESULT get_BuiltIn(
            VARIANT_BOOL *pvarfBuiltIn /Out/) = 0;

        virtual HRESULT get_Caption(
            BSTR *pbstrCaption /Out/) = 0;

        virtual HRESULT put_Caption(
            BSTR pbstrCaption) = 0;

        virtual HRESULT get_Control(
            IDispatch **ppidisp /Out/) = 0;

        virtual HRESULT Copy(
            VARIANT Bar = argMissing2(),
            VARIANT Before = argMissing2(),
            CommandBarControl **ppcbc /Out/ = 0) = 0;

        virtual HRESULT Delete(
            VARIANT Temporary = argMissing2()) = 0;

        virtual HRESULT get_DescriptionText(
            BSTR *pbstrText /Out/) = 0;

        virtual HRESULT put_DescriptionText(
            BSTR pbstrText) = 0;

        virtual HRESULT get_Enabled(
            VARIANT_BOOL *pvarfEnabled /Out/) = 0;

        virtual HRESULT put_Enabled(
            VARIANT_BOOL pvarfEnabled) = 0;

        virtual HRESULT Execute() = 0;

        virtual HRESULT get_Height(
            int *pdy /Out/) = 0;

        virtual HRESULT put_Height(
            int pdy) = 0;

        virtual HRESULT get_HelpContextId(
            int *pid /Out/) = 0;

        virtual HRESULT put_HelpContextId(
            int pid) = 0;

        virtual HRESULT get_HelpFile(
            BSTR *pbstrFilename /Out/) = 0;

        virtual HRESULT put_HelpFile(
            BSTR pbstrFilename) = 0;

        virtual HRESULT get_Id(
            int *pid /Out/) = 0;

        virtual HRESULT get_Index(
            int *pi /Out/) = 0;

        virtual HRESULT get_InstanceId(
            long *pid /Out/) = 0;

        virtual HRESULT Move(
            VARIANT Bar = argMissing2(),
            VARIANT Before = argMissing2(),
            CommandBarControl **ppcbc /Out/ = 0) = 0;

        virtual HRESULT get_Left(
            int *px /Out/) = 0;

        virtual HRESULT get_OLEUsage(
            MsoControlOLEUsage *pcou /Out/) = 0;

        virtual HRESULT put_OLEUsage(
            MsoControlOLEUsage pcou) = 0;

        virtual HRESULT get_OnAction(
            BSTR *pbstrOnAction /Out/) = 0;

        virtual HRESULT put_OnAction(
            BSTR pbstrOnAction) = 0;

        virtual HRESULT get_Parameter(
            BSTR *pbstrParam /Out/) = 0;

        virtual HRESULT put_Parameter(
            BSTR pbstrParam) = 0;

        virtual HRESULT get_Priority(
            int *pnPri /Out/) = 0;

        virtual HRESULT put_Priority(
            int pnPri) = 0;

        virtual HRESULT Reset() = 0;

        virtual HRESULT SetFocus() = 0;

        virtual HRESULT get_Tag(
            BSTR *pbstrTag /Out/) = 0;

        virtual HRESULT put_Tag(
            BSTR pbstrTag) = 0;

        virtual HRESULT get_TooltipText(
            BSTR *pbstrTooltip /Out/) = 0;

        virtual HRESULT put_TooltipText(
            BSTR pbstrTooltip) = 0;

        virtual HRESULT get_Top(
            int *py /Out/) = 0;

        virtual HRESULT get_Type(
            MsoControlType *ptype /Out/) = 0;

        virtual HRESULT get_Visible(
            VARIANT_BOOL *pvarfVisible /Out/) = 0;

        virtual HRESULT put_Visible(
            VARIANT_BOOL pvarfVisible) = 0;

        virtual HRESULT get_Width(
            int *pdx /Out/) = 0;

        virtual HRESULT put_Width(
            int pdx) = 0;

        virtual HRESULT get_IsPriorityDropped(
            VARIANT_BOOL *pvarfDropped /Out/) = 0;

        virtual HRESULT Reserved1() = 0;

        virtual HRESULT Reserved2() = 0;

        virtual HRESULT Reserved3() = 0;

        virtual HRESULT Reserved4() = 0;

        virtual HRESULT Reserved5() = 0;

        virtual HRESULT Reserved6() = 0;

        virtual HRESULT Reserved7() = 0;

        VARIANT_BOOL getBeginGroup();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_BeginGroup(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BeginGroup()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBeginGroup(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BeginGroup(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BeginGroup()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BeginGroup, get=getBeginGroup, set=setBeginGroup)

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

        IDispatch* getControl();
        %MethodCode
            IDispatch *prop = nullptr;
            HRESULT hr = sipCpp->get_Control(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Control()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Control, get=getControl)

        BSTR getDescriptionText();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_DescriptionText(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DescriptionText()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDescriptionText(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DescriptionText(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DescriptionText()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DescriptionText, get=getDescriptionText, set=setDescriptionText)

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

        int getHeight();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_Height(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Height()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHeight(int prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Height(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Height()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Height, get=getHeight, set=setHeight)

        int getHelpContextId();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_HelpContextId(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HelpContextId()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHelpContextId(int prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HelpContextId(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HelpContextId()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HelpContextId, get=getHelpContextId, set=setHelpContextId)

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

        int getId();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_Id(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Id()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Id, get=getId)

        int getIndex();
        %MethodCode
            int prop = 0;
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

        long getInstanceId();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_InstanceId(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InstanceId()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=InstanceId, get=getInstanceId)

        int getLeft();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_Left(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Left()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Left, get=getLeft)

        MsoControlOLEUsage getOLEUsage();
        %MethodCode
            ksoapi::MsoControlOLEUsage prop = (ksoapi::MsoControlOLEUsage)0;
            HRESULT hr = sipCpp->get_OLEUsage(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OLEUsage()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOLEUsage(MsoControlOLEUsage prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OLEUsage(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OLEUsage()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OLEUsage, get=getOLEUsage, set=setOLEUsage)

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

        CommandBar* getParent();
        %MethodCode
            ksoapi::CommandBar *prop = nullptr;
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

        BSTR getParameter();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Parameter(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Parameter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setParameter(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Parameter(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Parameter()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Parameter, get=getParameter, set=setParameter)

        int getPriority();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_Priority(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Priority()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPriority(int prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Priority(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Priority()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Priority, get=getPriority, set=setPriority)

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

        BSTR getTooltipText();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_TooltipText(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TooltipText()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTooltipText(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TooltipText(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TooltipText()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TooltipText, get=getTooltipText, set=setTooltipText)

        int getTop();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_Top(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Top()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Top, get=getTop)

        MsoControlType getType();
        %MethodCode
            ksoapi::MsoControlType prop = (ksoapi::MsoControlType)0;
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

        VARIANT_BOOL getVisible();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Visible(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Visible()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setVisible(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Visible(*a0);
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

        int getWidth();
        %MethodCode
            int prop = 0;
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

        PyObject* setWidth(int prop);
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

        VARIANT_BOOL getIsPriorityDropped();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IsPriorityDropped(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IsPriorityDropped()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=IsPriorityDropped, get=getIsPriorityDropped)
    };
};
