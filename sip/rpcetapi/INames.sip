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
    struct INames : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT Add(
            VARIANT name = argMissing2(),
            VARIANT RefersTo = argMissing2(),
            VARIANT Visible = argMissing2(),
            VARIANT MacroType = argMissing2(),
            VARIANT ShortcutKey = argMissing2(),
            VARIANT Category = argMissing2(),
            VARIANT NameLocal = argMissing2(),
            VARIANT RefersToLocal = argMissing2(),
            VARIANT CategoryLocal = argMissing2(),
            VARIANT RefersToR1C1 = argMissing2(),
            VARIANT RefersToR1C1Local = argMissing2(),
            Name **RHS /Out/ = 0) = 0;

        virtual HRESULT Item(
            VARIANT Index = argMissing2(),
            VARIANT IndexLocal = argMissing2(),
            VARIANT RefersTo = argMissing2(),
            long lcid = 0,
            Name **RHS /Out/ = 0) = 0;

        virtual HRESULT _Default(
            VARIANT Index = argMissing2(),
            VARIANT IndexLocal = argMissing2(),
            VARIANT RefersTo = argMissing2(),
            long lcid = 0,
            Name **RHS /Out/ = 0) = 0;

        virtual HRESULT get_Count(
            long *RHS /Out/) = 0;

        int __len__() const;
        %MethodCode
            long count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

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

        long getCount();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Count(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Count()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Count, get=getCount)

    };
};
