/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wpsapi
{
    struct CalloutFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Accent(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_Accent(
            MsoTriState prop) = 0;

        virtual HRESULT get_Angle(
            MsoCalloutAngleType *prop /Out/) = 0;

        virtual HRESULT put_Angle(
            MsoCalloutAngleType prop) = 0;

        virtual HRESULT get_AutoAttach(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_AutoAttach(
            MsoTriState prop) = 0;

        virtual HRESULT get_AutoLength(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT get_Border(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_Border(
            MsoTriState prop) = 0;

        virtual HRESULT get_Drop(
            single *prop /Out/) = 0;

        virtual HRESULT get_DropType(
            MsoCalloutDropType *prop /Out/) = 0;

        virtual HRESULT get_Gap(
            single *prop /Out/) = 0;

        virtual HRESULT put_Gap(
            single prop) = 0;

        virtual HRESULT get_Length(
            single *prop /Out/) = 0;

        virtual HRESULT get_Type(
            MsoCalloutType *prop /Out/) = 0;

        virtual HRESULT put_Type(
            MsoCalloutType prop) = 0;

        virtual HRESULT AutomaticLength() = 0;

        virtual HRESULT CustomDrop(
            single Drop) = 0;

        virtual HRESULT CustomLength(
            single Length) = 0;

        virtual HRESULT PresetDrop(
            MsoCalloutDropType DropType) = 0;

        Application* getApplication();
        %MethodCode
            wpsapi::Application *prop = nullptr;
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

        MsoTriState getAccent();
        %MethodCode
            wpsapi::MsoTriState prop = (wpsapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_Accent(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Accent()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAccent(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Accent(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Accent()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Accent, get=getAccent, set=setAccent)

        MsoCalloutAngleType getAngle();
        %MethodCode
            wpsapi::MsoCalloutAngleType prop = (wpsapi::MsoCalloutAngleType)0;
            HRESULT hr = sipCpp->get_Angle(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Angle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAngle(MsoCalloutAngleType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Angle(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Angle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Angle, get=getAngle, set=setAngle)

        MsoTriState getAutoAttach();
        %MethodCode
            wpsapi::MsoTriState prop = (wpsapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_AutoAttach(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoAttach()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoAttach(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoAttach(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoAttach()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoAttach, get=getAutoAttach, set=setAutoAttach)

        MsoTriState getAutoLength();
        %MethodCode
            wpsapi::MsoTriState prop = (wpsapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_AutoLength(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoLength()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AutoLength, get=getAutoLength)

        MsoTriState getBorder();
        %MethodCode
            wpsapi::MsoTriState prop = (wpsapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_Border(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Border()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBorder(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Border(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Border()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Border, get=getBorder, set=setBorder)

        single getDrop();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_Drop(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Drop()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Drop, get=getDrop)

        MsoCalloutDropType getDropType();
        %MethodCode
            wpsapi::MsoCalloutDropType prop = (wpsapi::MsoCalloutDropType)0;
            HRESULT hr = sipCpp->get_DropType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DropType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DropType, get=getDropType)

        single getGap();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_Gap(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Gap()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setGap(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Gap(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Gap()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Gap, get=getGap, set=setGap)

        single getLength();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_Length(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Length()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Length, get=getLength)

        MsoCalloutType getType();
        %MethodCode
            wpsapi::MsoCalloutType prop = (wpsapi::MsoCalloutType)0;
            HRESULT hr = sipCpp->get_Type(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Type()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setType(MsoCalloutType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Type(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Type()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Type, get=getType, set=setType)
    };
};
