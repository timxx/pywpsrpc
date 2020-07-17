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
    struct AnimationPoints : public wppapi::Collection /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT Item(
            int Index,
            AnimationPoint **Item /Out/) = 0;

        AnimationPoint* __getitem__(int index) const;
        %MethodCode
            wppapi::AnimationPoint *prop = nullptr;
            if (sipCpp->Item(a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT Add(
            int Index = 0,
            AnimationPoint **Add /Out/ = 0) = 0;

        virtual HRESULT get_Smooth(
            MsoTriState *Smooth /Out/) = 0;

        virtual HRESULT put_Smooth(
            MsoTriState Smooth) = 0;

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

        MsoTriState getSmooth();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_Smooth(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Smooth()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSmooth(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Smooth(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Smooth()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Smooth, get=getSmooth, set=setSmooth)
    };
};
