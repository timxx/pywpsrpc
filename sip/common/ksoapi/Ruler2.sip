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
    struct Ruler2 : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Levels(
            RulerLevels2 **RulerLevels /Out/) = 0;

        virtual HRESULT get_TabStops(
            TabStops2 **TabStops /Out/) = 0;

        RulerLevels2* getLevels();
        %MethodCode
            ksoapi::RulerLevels2 *prop = nullptr;
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

        TabStops2* getTabStops();
        %MethodCode
            ksoapi::TabStops2 *prop = nullptr;
            HRESULT hr = sipCpp->get_TabStops(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_TabStops()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=TabStops, get=getTabStops)
    };
};
