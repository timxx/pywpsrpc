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
    struct ListLevel : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Index(
            long *prop /Out/) = 0;

        virtual HRESULT get_NumberFormat(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_NumberFormat(
            BSTR prop) = 0;

        virtual HRESULT get_TrailingCharacter(
            WdTrailingCharacter *prop /Out/) = 0;

        virtual HRESULT put_TrailingCharacter(
            WdTrailingCharacter prop) = 0;

        virtual HRESULT get_NumberStyle(
            WdListNumberStyle *prop /Out/) = 0;

        virtual HRESULT put_NumberStyle(
            WdListNumberStyle prop) = 0;

        virtual HRESULT get_NumberPosition(
            single *prop /Out/) = 0;

        virtual HRESULT put_NumberPosition(
            single prop) = 0;

        virtual HRESULT get_Alignment(
            WdListLevelAlignment *prop /Out/) = 0;

        virtual HRESULT put_Alignment(
            WdListLevelAlignment prop) = 0;

        virtual HRESULT get_TextPosition(
            single *prop /Out/) = 0;

        virtual HRESULT put_TextPosition(
            single prop) = 0;

        virtual HRESULT get_TabPosition(
            single *prop /Out/) = 0;

        virtual HRESULT put_TabPosition(
            single prop) = 0;

        virtual HRESULT get_ResetOnHigherOld(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_ResetOnHigherOld(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_StartAt(
            long *prop /Out/) = 0;

        virtual HRESULT put_StartAt(
            long prop) = 0;

        virtual HRESULT get_LinkedStyle(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_LinkedStyle(
            BSTR prop) = 0;

        virtual HRESULT get_Font(
            Font **prop /Out/) = 0;

        virtual HRESULT put_Font(
            Font *prop) = 0;

        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_ResetOnHigher(
            long *prop /Out/) = 0;

        virtual HRESULT put_ResetOnHigher(
            long prop) = 0;

        virtual HRESULT get_PictureBullet(
            InlineShape **prop /Out/) = 0;

        virtual HRESULT ApplyPictureBullet(
            BSTR FileName,
            InlineShape **prop /Out/) = 0;

        long getIndex();
        %MethodCode
            long prop = 0;
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

        BSTR getNumberFormat();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_NumberFormat(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NumberFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNumberFormat(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NumberFormat(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NumberFormat()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NumberFormat, get=getNumberFormat, set=setNumberFormat)

        WdTrailingCharacter getTrailingCharacter();
        %MethodCode
            wpsapi::WdTrailingCharacter prop = (wpsapi::WdTrailingCharacter)0;
            HRESULT hr = sipCpp->get_TrailingCharacter(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TrailingCharacter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTrailingCharacter(WdTrailingCharacter prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TrailingCharacter(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TrailingCharacter()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TrailingCharacter, get=getTrailingCharacter, set=setTrailingCharacter)

        WdListNumberStyle getNumberStyle();
        %MethodCode
            wpsapi::WdListNumberStyle prop = (wpsapi::WdListNumberStyle)0;
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

        PyObject* setNumberStyle(WdListNumberStyle prop);
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

        single getNumberPosition();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_NumberPosition(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NumberPosition()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNumberPosition(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NumberPosition(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NumberPosition()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NumberPosition, get=getNumberPosition, set=setNumberPosition)

        WdListLevelAlignment getAlignment();
        %MethodCode
            wpsapi::WdListLevelAlignment prop = (wpsapi::WdListLevelAlignment)0;
            HRESULT hr = sipCpp->get_Alignment(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Alignment()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAlignment(WdListLevelAlignment prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Alignment(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Alignment()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Alignment, get=getAlignment, set=setAlignment)

        single getTextPosition();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_TextPosition(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextPosition()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTextPosition(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TextPosition(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TextPosition()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TextPosition, get=getTextPosition, set=setTextPosition)

        single getTabPosition();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_TabPosition(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TabPosition()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setTabPosition(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_TabPosition(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_TabPosition()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=TabPosition, get=getTabPosition, set=setTabPosition)

        VARIANT_BOOL getResetOnHigherOld();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ResetOnHigherOld(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ResetOnHigherOld()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setResetOnHigherOld(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ResetOnHigherOld(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ResetOnHigherOld()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ResetOnHigherOld, get=getResetOnHigherOld, set=setResetOnHigherOld)

        long getStartAt();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_StartAt(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_StartAt()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setStartAt(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_StartAt(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_StartAt()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=StartAt, get=getStartAt, set=setStartAt)

        BSTR getLinkedStyle();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_LinkedStyle(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LinkedStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLinkedStyle(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LinkedStyle(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LinkedStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LinkedStyle, get=getLinkedStyle, set=setLinkedStyle)

        Font* getFont();
        %MethodCode
            wpsapi::Font *prop = nullptr;
            HRESULT hr = sipCpp->get_Font(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Font()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFont(Font *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Font(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Font()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Font, get=getFont, set=setFont)

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

        long getResetOnHigher();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_ResetOnHigher(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ResetOnHigher()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setResetOnHigher(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ResetOnHigher(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ResetOnHigher()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ResetOnHigher, get=getResetOnHigher, set=setResetOnHigher)

        InlineShape* getPictureBullet();
        %MethodCode
            wpsapi::InlineShape *prop = nullptr;
            HRESULT hr = sipCpp->get_PictureBullet(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PictureBullet()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PictureBullet, get=getPictureBullet)
    };
};
