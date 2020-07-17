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
    struct CaptionLabel : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT get_BuiltIn(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_ID(
            WdCaptionLabelID *prop /Out/) = 0;

        virtual HRESULT get_IncludeChapterNumber(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_IncludeChapterNumber(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_NumberStyle(
            WdCaptionNumberStyle *prop /Out/) = 0;

        virtual HRESULT put_NumberStyle(
            WdCaptionNumberStyle prop) = 0;

        virtual HRESULT get_ChapterStyleLevel(
            long *prop /Out/) = 0;

        virtual HRESULT put_ChapterStyleLevel(
            long prop) = 0;

        virtual HRESULT get_Separator(
            WdSeparatorType *prop /Out/) = 0;

        virtual HRESULT put_Separator(
            WdSeparatorType prop) = 0;

        virtual HRESULT get_Position(
            WdCaptionPosition *prop /Out/) = 0;

        virtual HRESULT put_Position(
            WdCaptionPosition prop) = 0;

        virtual HRESULT Delete() = 0;

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

        WdCaptionLabelID getID();
        %MethodCode
            wpsapi::WdCaptionLabelID prop = (wpsapi::WdCaptionLabelID)0;
            HRESULT hr = sipCpp->get_ID(&prop);
            if (hr != S_OK)
            {
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

        VARIANT_BOOL getIncludeChapterNumber();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IncludeChapterNumber(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IncludeChapterNumber()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setIncludeChapterNumber(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_IncludeChapterNumber(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_IncludeChapterNumber()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=IncludeChapterNumber, get=getIncludeChapterNumber, set=setIncludeChapterNumber)

        WdCaptionNumberStyle getNumberStyle();
        %MethodCode
            wpsapi::WdCaptionNumberStyle prop = (wpsapi::WdCaptionNumberStyle)0;
            HRESULT hr = sipCpp->get_NumberStyle(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NumberStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNumberStyle(WdCaptionNumberStyle prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NumberStyle(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NumberStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NumberStyle, get=getNumberStyle, set=setNumberStyle)

        long getChapterStyleLevel();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_ChapterStyleLevel(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ChapterStyleLevel()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setChapterStyleLevel(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ChapterStyleLevel(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ChapterStyleLevel()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ChapterStyleLevel, get=getChapterStyleLevel, set=setChapterStyleLevel)

        WdSeparatorType getSeparator();
        %MethodCode
            wpsapi::WdSeparatorType prop = (wpsapi::WdSeparatorType)0;
            HRESULT hr = sipCpp->get_Separator(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Separator()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSeparator(WdSeparatorType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Separator(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Separator()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Separator, get=getSeparator, set=setSeparator)

        WdCaptionPosition getPosition();
        %MethodCode
            wpsapi::WdCaptionPosition prop = (wpsapi::WdCaptionPosition)0;
            HRESULT hr = sipCpp->get_Position(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Position()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPosition(WdCaptionPosition prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Position(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Position()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Position, get=getPosition, set=setPosition)
    };
};
