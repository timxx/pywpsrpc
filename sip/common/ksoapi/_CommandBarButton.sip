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
    struct _CommandBarButton : public ksoapi::CommandBarControl /Abstract/
    {
    public:
        virtual HRESULT get_BuiltInFace(
            VARIANT_BOOL *pvarfBuiltIn /Out/) = 0;

        virtual HRESULT put_BuiltInFace(
            VARIANT_BOOL pvarfBuiltIn) = 0;

        virtual HRESULT CopyFace() = 0;

        virtual HRESULT get_FaceId(
            int *pid /Out/) = 0;

        virtual HRESULT put_FaceId(
            int pid) = 0;

        virtual HRESULT PasteFace() = 0;

        virtual HRESULT get_ShortcutText(
            BSTR *pbstrText /Out/) = 0;

        virtual HRESULT put_ShortcutText(
            BSTR pbstrText) = 0;

        virtual HRESULT get_State(
            MsoButtonState *pstate /Out/) = 0;

        virtual HRESULT put_State(
            MsoButtonState pstate) = 0;

        virtual HRESULT get_Style(
            MsoButtonStyle *pstyle /Out/) = 0;

        virtual HRESULT put_Style(
            MsoButtonStyle pstyle) = 0;

        virtual HRESULT get_HyperlinkType(
            MsoCommandBarButtonHyperlinkType *phlType /Out/) = 0;

        virtual HRESULT put_HyperlinkType(
            MsoCommandBarButtonHyperlinkType phlType) = 0;

        virtual HRESULT get_Picture(
            IPictureDisp **ppdispPicture /Out/) = 0;

        virtual HRESULT put_Picture(
            IPictureDisp *ppdispPicture) = 0;

        virtual HRESULT get_Mask(
            IPictureDisp **ppipictdispMask /Out/) = 0;

        virtual HRESULT put_Mask(
            IPictureDisp *ppipictdispMask) = 0;

        virtual HRESULT get_InstanceIdPtr(
            VARIANT *pvarPic /Out/) = 0;

        VARIANT_BOOL getBuiltInFace();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_BuiltInFace(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BuiltInFace()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBuiltInFace(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BuiltInFace(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BuiltInFace()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BuiltInFace, get=getBuiltInFace, set=setBuiltInFace)

        int getFaceId();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_FaceId(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FaceId()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFaceId(int prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FaceId(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FaceId()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FaceId, get=getFaceId, set=setFaceId)

        BSTR getShortcutText();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ShortcutText(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShortcutText()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShortcutText(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShortcutText(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShortcutText()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShortcutText, get=getShortcutText, set=setShortcutText)

        MsoButtonState getState();
        %MethodCode
            ksoapi::MsoButtonState prop = (ksoapi::MsoButtonState)0;
            HRESULT hr = sipCpp->get_State(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_State()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setState(MsoButtonState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_State(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_State()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=State, get=getState, set=setState)

        MsoButtonStyle getStyle();
        %MethodCode
            ksoapi::MsoButtonStyle prop = (ksoapi::MsoButtonStyle)0;
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

        PyObject* setStyle(MsoButtonStyle prop);
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

        MsoCommandBarButtonHyperlinkType getHyperlinkType();
        %MethodCode
            ksoapi::MsoCommandBarButtonHyperlinkType prop = (ksoapi::MsoCommandBarButtonHyperlinkType)0;
            HRESULT hr = sipCpp->get_HyperlinkType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HyperlinkType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHyperlinkType(MsoCommandBarButtonHyperlinkType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HyperlinkType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HyperlinkType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HyperlinkType, get=getHyperlinkType, set=setHyperlinkType)

        IPictureDisp* getPicture();
        %MethodCode
            IPictureDisp *prop = nullptr;
            HRESULT hr = sipCpp->get_Picture(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Picture()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPicture(IPictureDisp *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Picture(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Picture()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Picture, get=getPicture, set=setPicture)

        IPictureDisp* getMask();
        %MethodCode
            IPictureDisp *prop = nullptr;
            HRESULT hr = sipCpp->get_Mask(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Mask()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMask(IPictureDisp *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Mask(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Mask()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Mask, get=getMask, set=setMask)

        VARIANT getInstanceIdPtr();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_InstanceIdPtr(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InstanceIdPtr()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=InstanceIdPtr, get=getInstanceIdPtr)
    };
};
