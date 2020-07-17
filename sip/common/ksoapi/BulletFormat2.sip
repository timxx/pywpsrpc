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
    struct BulletFormat2 : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Character(
            int *Character /Out/) = 0;

        virtual HRESULT put_Character(
            int Character) = 0;

        virtual HRESULT get_Font(
            Font2 **Font /Out/) = 0;

        virtual HRESULT get_Number(
            int *Number /Out/) = 0;

        virtual HRESULT Picture(
            BSTR FileName) = 0;

        virtual HRESULT get_RelativeSize(
            single *Size /Out/) = 0;

        virtual HRESULT put_RelativeSize(
            single Size) = 0;

        virtual HRESULT get_StartValue(
            int *Start /Out/) = 0;

        virtual HRESULT put_StartValue(
            int Start) = 0;

        virtual HRESULT get_Style(
            MsoNumberedBulletStyle *Style /Out/) = 0;

        virtual HRESULT put_Style(
            MsoNumberedBulletStyle Style) = 0;

        virtual HRESULT get_Type(
            MsoBulletType *Type /Out/) = 0;

        virtual HRESULT put_Type(
            MsoBulletType Type) = 0;

        virtual HRESULT get_UseTextColor(
            MsoTriState *UseTextColor /Out/) = 0;

        virtual HRESULT put_UseTextColor(
            MsoTriState UseTextColor) = 0;

        virtual HRESULT get_UseTextFont(
            MsoTriState *UseTextFont /Out/) = 0;

        virtual HRESULT put_UseTextFont(
            MsoTriState UseTextFont) = 0;

        virtual HRESULT get_Visible(
            MsoTriState *Visible /Out/) = 0;

        virtual HRESULT put_Visible(
            MsoTriState Visible) = 0;

        int getCharacter();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_Character(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Character()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setCharacter(int prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Character(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Character()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Character, get=getCharacter, set=setCharacter)

        Font2* getFont();
        %MethodCode
            ksoapi::Font2 *prop = nullptr;
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

        %Property(name=Font, get=getFont)

        int getNumber();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_Number(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Number()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Number, get=getNumber)

        single getRelativeSize();
        %MethodCode
            ksoapi::single prop = 0;
            HRESULT hr = sipCpp->get_RelativeSize(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RelativeSize()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRelativeSize(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RelativeSize(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RelativeSize()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RelativeSize, get=getRelativeSize, set=setRelativeSize)

        int getStartValue();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_StartValue(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_StartValue()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setStartValue(int prop);
        %MethodCode
            HRESULT hr = sipCpp->put_StartValue(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_StartValue()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=StartValue, get=getStartValue, set=setStartValue)

        MsoNumberedBulletStyle getStyle();
        %MethodCode
            ksoapi::MsoNumberedBulletStyle prop = (ksoapi::MsoNumberedBulletStyle)0;
            HRESULT hr = sipCpp->get_Style(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Style()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setStyle(MsoNumberedBulletStyle prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Style(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Style()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Style, get=getStyle, set=setStyle)

        MsoBulletType getType();
        %MethodCode
            ksoapi::MsoBulletType prop = (ksoapi::MsoBulletType)0;
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

        PyObject* setType(MsoBulletType prop);
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

        MsoTriState getUseTextColor();
        %MethodCode
            ksoapi::MsoTriState prop = (ksoapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_UseTextColor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UseTextColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUseTextColor(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_UseTextColor(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_UseTextColor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=UseTextColor, get=getUseTextColor, set=setUseTextColor)

        MsoTriState getUseTextFont();
        %MethodCode
            ksoapi::MsoTriState prop = (ksoapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_UseTextFont(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_UseTextFont()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setUseTextFont(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_UseTextFont(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_UseTextFont()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=UseTextFont, get=getUseTextFont, set=setUseTextFont)

        MsoTriState getVisible();
        %MethodCode
            ksoapi::MsoTriState prop = (ksoapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_Visible(&prop);
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

        PyObject* setVisible(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Visible(a0);
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
    };
};
