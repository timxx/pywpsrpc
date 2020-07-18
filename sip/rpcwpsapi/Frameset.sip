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
    struct Frameset : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_ParentFrameset(
            Frameset **prop /Out/) = 0;

        virtual HRESULT get_Type(
            WdFramesetType *prop /Out/) = 0;

        virtual HRESULT get_WidthType(
            WdFramesetSizeType *prop /Out/) = 0;

        virtual HRESULT put_WidthType(
            WdFramesetSizeType prop) = 0;

        virtual HRESULT get_HeightType(
            WdFramesetSizeType *prop /Out/) = 0;

        virtual HRESULT put_HeightType(
            WdFramesetSizeType prop) = 0;

        virtual HRESULT get_Width(
            long *prop /Out/) = 0;

        virtual HRESULT put_Width(
            long prop) = 0;

        virtual HRESULT get_Height(
            long *prop /Out/) = 0;

        virtual HRESULT put_Height(
            long prop) = 0;

        virtual HRESULT get_ChildFramesetCount(
            long *prop /Out/) = 0;

        virtual HRESULT get_ChildFramesetItem(
            long Index,
            Frameset **prop /Out/) = 0;

        virtual HRESULT get_FramesetBorderWidth(
            single *prop /Out/) = 0;

        virtual HRESULT put_FramesetBorderWidth(
            single prop) = 0;

        virtual HRESULT get_FramesetBorderColor(
            WdColor *prop /Out/) = 0;

        virtual HRESULT put_FramesetBorderColor(
            WdColor prop) = 0;

        virtual HRESULT get_FrameScrollbarType(
            WdScrollbarType *prop /Out/) = 0;

        virtual HRESULT put_FrameScrollbarType(
            WdScrollbarType prop) = 0;

        virtual HRESULT get_FrameResizable(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_FrameResizable(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_FrameName(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_FrameName(
            BSTR prop) = 0;

        virtual HRESULT get_FrameDisplayBorders(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_FrameDisplayBorders(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_FrameDefaultURL(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_FrameDefaultURL(
            BSTR prop) = 0;

        virtual HRESULT get_FrameLinkToFile(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_FrameLinkToFile(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT AddNewFrame(
            WdFramesetNewFrameLocation Where,
            Frameset **prop /Out/) = 0;

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

        Frameset* getParentFrameset();
        %MethodCode
            wpsapi::Frameset *prop = nullptr;
            HRESULT hr = sipCpp->get_ParentFrameset(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ParentFrameset()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ParentFrameset, get=getParentFrameset)

        WdFramesetType getType();
        %MethodCode
            wpsapi::WdFramesetType prop = (wpsapi::WdFramesetType)0;
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

        WdFramesetSizeType getWidthType();
        %MethodCode
            wpsapi::WdFramesetSizeType prop = (wpsapi::WdFramesetSizeType)0;
            HRESULT hr = sipCpp->get_WidthType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_WidthType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setWidthType(WdFramesetSizeType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_WidthType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_WidthType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=WidthType, get=getWidthType, set=setWidthType)

        WdFramesetSizeType getHeightType();
        %MethodCode
            wpsapi::WdFramesetSizeType prop = (wpsapi::WdFramesetSizeType)0;
            HRESULT hr = sipCpp->get_HeightType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HeightType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHeightType(WdFramesetSizeType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HeightType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HeightType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HeightType, get=getHeightType, set=setHeightType)

        long getWidth();
        %MethodCode
            long prop = 0;
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

        PyObject* setWidth(long prop);
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

        long getHeight();
        %MethodCode
            long prop = 0;
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

        PyObject* setHeight(long prop);
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

        long getChildFramesetCount();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_ChildFramesetCount(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ChildFramesetCount()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ChildFramesetCount, get=getChildFramesetCount)

        single getFramesetBorderWidth();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_FramesetBorderWidth(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FramesetBorderWidth()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFramesetBorderWidth(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FramesetBorderWidth(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FramesetBorderWidth()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FramesetBorderWidth, get=getFramesetBorderWidth, set=setFramesetBorderWidth)

        WdColor getFramesetBorderColor();
        %MethodCode
            wpsapi::WdColor prop = (wpsapi::WdColor)0;
            HRESULT hr = sipCpp->get_FramesetBorderColor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FramesetBorderColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFramesetBorderColor(WdColor prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FramesetBorderColor(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FramesetBorderColor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FramesetBorderColor, get=getFramesetBorderColor, set=setFramesetBorderColor)

        WdScrollbarType getFrameScrollbarType();
        %MethodCode
            wpsapi::WdScrollbarType prop = (wpsapi::WdScrollbarType)0;
            HRESULT hr = sipCpp->get_FrameScrollbarType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FrameScrollbarType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFrameScrollbarType(WdScrollbarType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FrameScrollbarType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FrameScrollbarType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FrameScrollbarType, get=getFrameScrollbarType, set=setFrameScrollbarType)

        VARIANT_BOOL getFrameResizable();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_FrameResizable(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FrameResizable()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFrameResizable(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FrameResizable(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FrameResizable()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FrameResizable, get=getFrameResizable, set=setFrameResizable)

        BSTR getFrameName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_FrameName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FrameName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFrameName(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FrameName(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FrameName()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FrameName, get=getFrameName, set=setFrameName)

        VARIANT_BOOL getFrameDisplayBorders();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_FrameDisplayBorders(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FrameDisplayBorders()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFrameDisplayBorders(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FrameDisplayBorders(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FrameDisplayBorders()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FrameDisplayBorders, get=getFrameDisplayBorders, set=setFrameDisplayBorders)

        BSTR getFrameDefaultURL();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_FrameDefaultURL(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FrameDefaultURL()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFrameDefaultURL(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FrameDefaultURL(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FrameDefaultURL()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FrameDefaultURL, get=getFrameDefaultURL, set=setFrameDefaultURL)

        VARIANT_BOOL getFrameLinkToFile();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_FrameLinkToFile(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FrameLinkToFile()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFrameLinkToFile(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FrameLinkToFile(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FrameLinkToFile()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FrameLinkToFile, get=getFrameLinkToFile, set=setFrameLinkToFile)
    };
};
