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
    struct TableBackground : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Fill(
            FillFormat **Fill /Out/) = 0;

        virtual HRESULT get_Picture(
            PictureFormat **Picture /Out/) = 0;

        virtual HRESULT get_Reflection(
            ksoapi::ReflectionFormat **Reflection /Out/) = 0;

        virtual HRESULT get_Shadow(
            ShadowFormat **Shadow /Out/) = 0;

        FillFormat* getFill();
        %MethodCode
            wppapi::FillFormat *prop = nullptr;
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

        PictureFormat* getPicture();
        %MethodCode
            wppapi::PictureFormat *prop = nullptr;
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

        %Property(name=Picture, get=getPicture)

        ksoapi::ReflectionFormat* getReflection();
        %MethodCode
            ksoapi::ReflectionFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_Reflection(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Reflection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Reflection, get=getReflection)

        ShadowFormat* getShadow();
        %MethodCode
            wppapi::ShadowFormat *prop = nullptr;
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
    };
};
