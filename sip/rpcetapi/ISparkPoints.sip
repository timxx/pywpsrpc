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
    struct ISparkPoints : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Negative(
            SparkColor **RHS /Out/) = 0;

        virtual HRESULT get_Markers(
            SparkColor **RHS /Out/) = 0;

        virtual HRESULT get_Highpoint(
            SparkColor **RHS /Out/) = 0;

        virtual HRESULT get_Lowpoint(
            SparkColor **RHS /Out/) = 0;

        virtual HRESULT get_Firstpoint(
            SparkColor **RHS /Out/) = 0;

        virtual HRESULT get_Lastpoint(
            SparkColor **RHS /Out/) = 0;

        Application* getApplication();
        %MethodCode
            etapi::Application *prop = nullptr;
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

        XlCreator getCreator();
        %MethodCode
            etapi::XlCreator prop = (etapi::XlCreator)0;
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

        SparkColor* getNegative();
        %MethodCode
            etapi::SparkColor *prop = nullptr;
            HRESULT hr = sipCpp->get_Negative(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Negative()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Negative, get=getNegative)

        SparkColor* getMarkers();
        %MethodCode
            etapi::SparkColor *prop = nullptr;
            HRESULT hr = sipCpp->get_Markers(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Markers()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Markers, get=getMarkers)

        SparkColor* getHighpoint();
        %MethodCode
            etapi::SparkColor *prop = nullptr;
            HRESULT hr = sipCpp->get_Highpoint(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Highpoint()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Highpoint, get=getHighpoint)

        SparkColor* getLowpoint();
        %MethodCode
            etapi::SparkColor *prop = nullptr;
            HRESULT hr = sipCpp->get_Lowpoint(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Lowpoint()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Lowpoint, get=getLowpoint)

        SparkColor* getFirstpoint();
        %MethodCode
            etapi::SparkColor *prop = nullptr;
            HRESULT hr = sipCpp->get_Firstpoint(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Firstpoint()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Firstpoint, get=getFirstpoint)

        SparkColor* getLastpoint();
        %MethodCode
            etapi::SparkColor *prop = nullptr;
            HRESULT hr = sipCpp->get_Lastpoint(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Lastpoint()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Lastpoint, get=getLastpoint)
    };
};
