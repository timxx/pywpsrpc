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
    struct ThemeColor : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_RGB(
            MsoRGBType *RGB /Out/) = 0;

        virtual HRESULT put_RGB(
            MsoRGBType RGB) = 0;

        virtual HRESULT get_ThemeColorSchemeIndex(
            MsoThemeColorSchemeIndex *pValue /Out/) = 0;

        MsoRGBType getRGB();
        %MethodCode
            ksoapi::MsoRGBType prop = 0;
            HRESULT hr = sipCpp->get_RGB(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RGB()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRGB(MsoRGBType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RGB(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RGB()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RGB, get=getRGB, set=setRGB)

        MsoThemeColorSchemeIndex getThemeColorSchemeIndex();
        %MethodCode
            ksoapi::MsoThemeColorSchemeIndex prop = (ksoapi::MsoThemeColorSchemeIndex)0;
            HRESULT hr = sipCpp->get_ThemeColorSchemeIndex(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ThemeColorSchemeIndex()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ThemeColorSchemeIndex, get=getThemeColorSchemeIndex)
    };
};
