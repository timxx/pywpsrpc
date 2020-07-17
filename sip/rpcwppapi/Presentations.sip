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
    struct Presentations : public wppapi::Collection /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT Item(
            VARIANT Index,
            Presentation **Item /Out/) = 0;

        Presentation* __getitem__(VARIANT index) const;
        %MethodCode
            wppapi::Presentation *prop = nullptr;
            if (sipCpp->Item(*a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT Add(
            MsoTriState WithWindow = wppapi::msoCTrue,
            Presentation **Add /Out/ = 0) = 0;

        virtual HRESULT OpenOld(
            BSTR FileName,
            MsoTriState ReadOnly = wppapi::msoFalse,
            MsoTriState Untitled = wppapi::msoFalse,
            MsoTriState WithWindow = wppapi::msoTrue,
            Presentation **OpenOld /Out/ = 0) = 0;

        virtual HRESULT Open(
            BSTR FileName,
            MsoTriState ReadOnly = wppapi::msoFalse,
            MsoTriState Untitled = wppapi::msoFalse,
            MsoTriState WithWindow = wppapi::msoTrue,
            Presentation **Open /Out/ = 0) = 0;

        virtual HRESULT CheckOut(
            BSTR FileName) = 0;

        virtual HRESULT CanCheckOut(
            BSTR FileName,
            VARIANT_BOOL *CanCheckOut /Out/) = 0;

        virtual HRESULT Open2007(
            BSTR FileName,
            MsoTriState ReadOnly = wppapi::msoFalse,
            MsoTriState Untitled = wppapi::msoFalse,
            MsoTriState WithWindow = wppapi::msoTrue,
            MsoTriState OpenAndRepair = wppapi::msoFalse,
            Presentation **Open2007 /Out/ = 0) = 0;

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
