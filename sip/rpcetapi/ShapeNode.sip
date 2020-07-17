/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace etapi
{
    struct ShapeNode : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_EditingType(
            MsoEditingType *EditingType /Out/) = 0;

        virtual HRESULT get_Points(
            VARIANT *Points /Out/) = 0;

        virtual HRESULT get_SegmentType(
            MsoSegmentType *SegmentType /Out/) = 0;

        MsoEditingType getEditingType();
        %MethodCode
            etapi::MsoEditingType prop = (etapi::MsoEditingType)0;
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
            etapi::MsoSegmentType prop = (etapi::MsoSegmentType)0;
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
