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
    struct Effect : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Shape(
            Shape **Shape /Out/) = 0;

        virtual HRESULT put_Shape(
            Shape *Shape) = 0;

        virtual HRESULT MoveTo(
            int toPos) = 0;

        virtual HRESULT MoveBefore(
            Effect *Effect) = 0;

        virtual HRESULT MoveAfter(
            Effect *Effect) = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT get_Index(
            int *Index /Out/) = 0;

        virtual HRESULT get_Timing(
            Timing **Timing /Out/) = 0;

        virtual HRESULT get_EffectType(
            MsoAnimEffect *EffectType /Out/) = 0;

        virtual HRESULT put_EffectType(
            MsoAnimEffect EffectType) = 0;

        virtual HRESULT get_EffectParameters(
            EffectParameters **EffectParameters /Out/) = 0;

        virtual HRESULT get_TextRangeStart(
            int *TextRangeStart /Out/) = 0;

        virtual HRESULT get_TextRangeLength(
            int *TextRangeLength /Out/) = 0;

        virtual HRESULT get_Paragraph(
            int *Paragraph /Out/) = 0;

        virtual HRESULT put_Paragraph(
            int Paragraph) = 0;

        virtual HRESULT get_DisplayName(
            BSTR *DisplayName /Out/) = 0;

        virtual HRESULT get_Exit(
            MsoTriState *Exit /Out/) = 0;

        virtual HRESULT put_Exit(
            MsoTriState Exit) = 0;

        virtual HRESULT get_Behaviors(
            AnimationBehaviors **Behaviors /Out/) = 0;

        virtual HRESULT get_EffectInformation(
            EffectInformation **EffectInformation /Out/) = 0;

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

        Shape* getShape();
        %MethodCode
            wppapi::Shape *prop = nullptr;
            HRESULT hr = sipCpp->get_Shape(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Shape()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShape(Shape *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Shape(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Shape()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Shape, get=getShape, set=setShape)

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

        Timing* getTiming();
        %MethodCode
            wppapi::Timing *prop = nullptr;
            HRESULT hr = sipCpp->get_Timing(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Timing()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Timing, get=getTiming)

        MsoAnimEffect getEffectType();
        %MethodCode
            wppapi::MsoAnimEffect prop = (wppapi::MsoAnimEffect)0;
            HRESULT hr = sipCpp->get_EffectType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EffectType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEffectType(MsoAnimEffect prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EffectType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EffectType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EffectType, get=getEffectType, set=setEffectType)

        EffectParameters* getEffectParameters();
        %MethodCode
            wppapi::EffectParameters *prop = nullptr;
            HRESULT hr = sipCpp->get_EffectParameters(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EffectParameters()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=EffectParameters, get=getEffectParameters)

        int getTextRangeStart();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_TextRangeStart(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextRangeStart()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TextRangeStart, get=getTextRangeStart)

        int getTextRangeLength();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_TextRangeLength(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextRangeLength()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TextRangeLength, get=getTextRangeLength)

        int getParagraph();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_Paragraph(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Paragraph()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setParagraph(int prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Paragraph(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Paragraph()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Paragraph, get=getParagraph, set=setParagraph)

        BSTR getDisplayName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_DisplayName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DisplayName, get=getDisplayName)

        MsoTriState getExit();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_Exit(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Exit()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setExit(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Exit(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Exit()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Exit, get=getExit, set=setExit)

        AnimationBehaviors* getBehaviors();
        %MethodCode
            wppapi::AnimationBehaviors *prop = nullptr;
            HRESULT hr = sipCpp->get_Behaviors(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Behaviors()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Behaviors, get=getBehaviors)

        EffectInformation* getEffectInformation();
        %MethodCode
            wppapi::EffectInformation *prop = nullptr;
            HRESULT hr = sipCpp->get_EffectInformation(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EffectInformation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=EffectInformation, get=getEffectInformation)
    };
};
