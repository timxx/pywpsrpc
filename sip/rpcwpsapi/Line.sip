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
    struct Line : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_LineType(
            WdLineType *prop /Out/) = 0;

        virtual HRESULT get_Left(
            long *prop /Out/) = 0;

        virtual HRESULT get_Top(
            long *prop /Out/) = 0;

        virtual HRESULT get_Width(
            long *prop /Out/) = 0;

        virtual HRESULT get_Height(
            long *prop /Out/) = 0;

        virtual HRESULT get_Range(
            Range **prop /Out/) = 0;

        virtual HRESULT get_Rectangles(
            Rectangles **prop /Out/) = 0;

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

        WdLineType getLineType();
        %MethodCode
            wpsapi::WdLineType prop = (wpsapi::WdLineType)0;
            HRESULT hr = sipCpp->get_LineType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LineType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=LineType, get=getLineType)

        long getLeft();
        %MethodCode
            long prop = 0;
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

        long getTop();
        %MethodCode
            long prop = 0;
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

        %Property(name=Width, get=getWidth)

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

        %Property(name=Height, get=getHeight)

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

        Rectangles* getRectangles();
        %MethodCode
            wpsapi::Rectangles *prop = nullptr;
            HRESULT hr = sipCpp->get_Rectangles(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Rectangles()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Rectangles, get=getRectangles)
    };
};
