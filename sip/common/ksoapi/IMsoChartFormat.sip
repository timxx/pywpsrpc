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
    struct IMsoChartFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Fill(
            FillFormat **ppfill /Out/) = 0;

        virtual HRESULT get_Glow(
            GlowFormat **ppGlow /Out/) = 0;

        virtual HRESULT get_Line(
            LineFormat **ppline /Out/) = 0;

        virtual HRESULT get_PictureFormat(
            PictureFormat **ppPictureFormat /Out/) = 0;

        virtual HRESULT get_Shadow(
            ShadowFormat **ppShadow /Out/) = 0;

        virtual HRESULT get_SoftEdge(
            SoftEdgeFormat **ppSoftEdge /Out/) = 0;

        virtual HRESULT get_TextFrame2(
            TextFrame2 **ppTextFrame /Out/) = 0;

        virtual HRESULT get_ThreeD(
            ThreeDFormat **ppThreeD /Out/) = 0;

        virtual HRESULT get_Adjustments(
            Adjustments **ppAdjustments /Out/) = 0;

        virtual HRESULT get_AutoShapeType(
            MsoAutoShapeType *AutoShapeType /Out/) = 0;

        virtual HRESULT put_AutoShapeType(
            MsoAutoShapeType AutoShapeType) = 0;

        FillFormat* getFill();
        %MethodCode
            ksoapi::FillFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_Fill(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Fill()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Fill, get=getFill)

        GlowFormat* getGlow();
        %MethodCode
            ksoapi::GlowFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_Glow(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Glow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Glow, get=getGlow)

        LineFormat* getLine();
        %MethodCode
            ksoapi::LineFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_Line(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Line()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Line, get=getLine)

        PictureFormat* getPictureFormat();
        %MethodCode
            ksoapi::PictureFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_PictureFormat(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PictureFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PictureFormat, get=getPictureFormat)

        ShadowFormat* getShadow();
        %MethodCode
            ksoapi::ShadowFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_Shadow(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Shadow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Shadow, get=getShadow)

        SoftEdgeFormat* getSoftEdge();
        %MethodCode
            ksoapi::SoftEdgeFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_SoftEdge(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SoftEdge()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SoftEdge, get=getSoftEdge)

        TextFrame2* getTextFrame2();
        %MethodCode
            ksoapi::TextFrame2 *prop = nullptr;
            HRESULT hr = sipCpp->get_TextFrame2(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextFrame2()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TextFrame2, get=getTextFrame2)

        ThreeDFormat* getThreeD();
        %MethodCode
            ksoapi::ThreeDFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_ThreeD(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ThreeD()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ThreeD, get=getThreeD)

        Adjustments* getAdjustments();
        %MethodCode
            ksoapi::Adjustments *prop = nullptr;
            HRESULT hr = sipCpp->get_Adjustments(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Adjustments()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Adjustments, get=getAdjustments)

        MsoAutoShapeType getAutoShapeType();
        %MethodCode
            ksoapi::MsoAutoShapeType prop = (ksoapi::MsoAutoShapeType)0;
            HRESULT hr = sipCpp->get_AutoShapeType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoShapeType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoShapeType(MsoAutoShapeType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoShapeType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoShapeType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoShapeType, get=getAutoShapeType, set=setAutoShapeType)
    };
};
