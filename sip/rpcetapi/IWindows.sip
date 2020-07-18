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
    struct IWindows : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT Arrange(
            XlArrangeStyle ArrangeStyle = etapi::xlArrangeStyleCascade,
            VARIANT ActiveWorkbook = argMissing2(),
            VARIANT SyncHorizontal = argMissing2(),
            VARIANT SyncVertical = argMissing2(),
            VARIANT *RHS /Out/ = 0) = 0;

        virtual HRESULT get_Count(
            long *RHS /Out/) = 0;

        int __len__() const;
        %MethodCode
            long count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT get_Item(
            VARIANT Index,
            Window **RHS /Out/) = 0;

        Window* __getitem__(VARIANT index) const;
        %MethodCode
            etapi::Window *prop = nullptr;
            if (sipCpp->get_Item(*a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT get__Default(
            VARIANT Index,
            Window **RHS /Out/) = 0;

        virtual HRESULT CompareSideBySideWith(
            VARIANT WindowName,
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT BreakSideBySide(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT get_SyncScrollingSideBySide(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_SyncScrollingSideBySide(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT ResetPositionsSideBySide() = 0;

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

        VARIANT_BOOL getSyncScrollingSideBySide();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_SyncScrollingSideBySide(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SyncScrollingSideBySide()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSyncScrollingSideBySide(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SyncScrollingSideBySide(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SyncScrollingSideBySide()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SyncScrollingSideBySide, get=getSyncScrollingSideBySide, set=setSyncScrollingSideBySide)
    };
};
