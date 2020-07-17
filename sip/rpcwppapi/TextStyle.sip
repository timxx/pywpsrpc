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
    struct TextStyle : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Ruler(
            Ruler **Ruler /Out/) = 0;

        virtual HRESULT get_TextFrame(
            TextFrame **TextFrame /Out/) = 0;

        virtual HRESULT get_Levels(
            TextStyleLevels **Levels /Out/) = 0;

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

        Ruler* getRuler();
        %MethodCode
            wppapi::Ruler *prop = nullptr;
            HRESULT hr = sipCpp->get_Ruler(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Ruler()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Ruler, get=getRuler)

        TextFrame* getTextFrame();
        %MethodCode
            wppapi::TextFrame *prop = nullptr;
            HRESULT hr = sipCpp->get_TextFrame(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TextFrame()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TextFrame, get=getTextFrame)

        TextStyleLevels* getLevels();
        %MethodCode
            wppapi::TextStyleLevels *prop = nullptr;
            HRESULT hr = sipCpp->get_Levels(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Levels()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Levels, get=getLevels)
    };
};
