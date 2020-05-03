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
    struct ShapeNode : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            IDispatch **ppidisp /Out/) = 0;

        virtual HRESULT get_Creator(
            long *plCreator /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_EditingType(
            MsoEditingType *EditingType /Out/) = 0;

        virtual HRESULT get_Points(
            VARIANT *Points /Out/) = 0;

        virtual HRESULT get_SegmentType(
            MsoSegmentType *SegmentType /Out/) = 0;

        IDispatch* getApplication();
        %MethodCode
            IDispatch *prop = nullptr;
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

        long getCreator();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Creator(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Creator()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Creator, get=getCreator)

        IDispatch* getParent();
        %MethodCode
            IDispatch *prop = nullptr;
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

        %Property(name=Parent, get=getParent)

        MsoEditingType getEditingType();
        %MethodCode
            wppapi::MsoEditingType prop = (wppapi::MsoEditingType)0;
            HRESULT hr = sipCpp->get_EditingType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EditingType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=EditingType, get=getEditingType)

        VARIANT getPoints();
        %MethodCode
            VARIANT *prop = new VARIANT;
            VariantInit(prop);
            HRESULT hr = sipCpp->get_Points(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Points()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Points, get=getPoints)

        MsoSegmentType getSegmentType();
        %MethodCode
            wppapi::MsoSegmentType prop = (wppapi::MsoSegmentType)0;
            HRESULT hr = sipCpp->get_SegmentType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SegmentType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SegmentType, get=getSegmentType)
    };
};
