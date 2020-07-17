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
    struct Selection : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT Cut() = 0;

        virtual HRESULT Copy() = 0;

        virtual HRESULT Delete() = 0;

        virtual HRESULT Unselect() = 0;

        virtual HRESULT get_Type(
            PpSelectionType *Type /Out/) = 0;

        virtual HRESULT get_SlideRange(
            SlideRange **SlideRange /Out/) = 0;

        virtual HRESULT get_ShapeRange(
            ShapeRange **ShapeRange /Out/) = 0;

        virtual HRESULT get_TextRange(
            TextRange **TextRange /Out/) = 0;

        virtual HRESULT get_ChildShapeRange(
            ShapeRange **ChildShapeRange /Out/) = 0;

        virtual HRESULT get_HasChildShapeRange(
            VARIANT_BOOL *HasChildShapeRange /Out/) = 0;

        virtual HRESULT get_TextRange2(
            ksoapi::TextRange2 **TextRange2 /Out/) = 0;

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

        PpSelectionType getType();
        %MethodCode
            wppapi::PpSelectionType prop = (wppapi::PpSelectionType)0;
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

        SlideRange* getSlideRange();
        %MethodCode
            wppapi::SlideRange *prop = nullptr;
            HRESULT hr = sipCpp->get_SlideRange(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SlideRange()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SlideRange, get=getSlideRange)

        ShapeRange* getShapeRange();
        %MethodCode
            wppapi::ShapeRange *prop = nullptr;
            HRESULT hr = sipCpp->get_ShapeRange(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShapeRange()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ShapeRange, get=getShapeRange)

        TextRange* getTextRange();
        %MethodCode
            wppapi::TextRange *prop = nullptr;
            HRESULT hr = sipCpp->get_TextRange(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextRange()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TextRange, get=getTextRange)

        ShapeRange* getChildShapeRange();
        %MethodCode
            wppapi::ShapeRange *prop = nullptr;
            HRESULT hr = sipCpp->get_ChildShapeRange(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ChildShapeRange()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ChildShapeRange, get=getChildShapeRange)

        VARIANT_BOOL getHasChildShapeRange();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HasChildShapeRange(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasChildShapeRange()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HasChildShapeRange, get=getHasChildShapeRange)

        ksoapi::TextRange2* getTextRange2();
        %MethodCode
            ksoapi::TextRange2 *prop = nullptr;
            HRESULT hr = sipCpp->get_TextRange2(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextRange2()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TextRange2, get=getTextRange2)
    };
};
