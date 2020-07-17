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
    struct PrintRanges : public wppapi::Collection /Abstract/
    {
    public:
        virtual HRESULT Add(
            int Start,
            int End,
            PrintRange **Add /Out/) = 0;

        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT ClearAll() = 0;

        virtual HRESULT Item(
            int Index,
            PrintRange **Item /Out/) = 0;

        PrintRange* __getitem__(int index) const;
        %MethodCode
            wppapi::PrintRange *prop = nullptr;
            if (sipCpp->Item(a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

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
    };
};
