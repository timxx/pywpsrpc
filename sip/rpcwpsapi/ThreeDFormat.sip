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
    struct ThreeDFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Depth(
            single *prop /Out/) = 0;

        virtual HRESULT put_Depth(
            single prop) = 0;

        virtual HRESULT get_ExtrusionColor(
            ColorFormat **prop /Out/) = 0;

        virtual HRESULT get_ExtrusionColorType(
            MsoExtrusionColorType *prop /Out/) = 0;

        virtual HRESULT put_ExtrusionColorType(
            MsoExtrusionColorType prop) = 0;

        virtual HRESULT get_Perspective(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_Perspective(
            MsoTriState prop) = 0;

        virtual HRESULT get_PresetExtrusionDirection(
            MsoPresetExtrusionDirection *prop /Out/) = 0;

        virtual HRESULT get_PresetLightingDirection(
            MsoPresetLightingDirection *prop /Out/) = 0;

        virtual HRESULT put_PresetLightingDirection(
            MsoPresetLightingDirection prop) = 0;

        virtual HRESULT get_PresetLightingSoftness(
            MsoPresetLightingSoftness *prop /Out/) = 0;

        virtual HRESULT put_PresetLightingSoftness(
            MsoPresetLightingSoftness prop) = 0;

        virtual HRESULT get_PresetMaterial(
            MsoPresetMaterial *prop /Out/) = 0;

        virtual HRESULT put_PresetMaterial(
            MsoPresetMaterial prop) = 0;

        virtual HRESULT get_PresetThreeDFormat(
            MsoPresetThreeDFormat *prop /Out/) = 0;

        virtual HRESULT get_RotationX(
            single *prop /Out/) = 0;

        virtual HRESULT put_RotationX(
            single prop) = 0;

        virtual HRESULT get_RotationY(
            single *prop /Out/) = 0;

        virtual HRESULT put_RotationY(
            single prop) = 0;

        virtual HRESULT get_Visible(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_Visible(
            MsoTriState prop) = 0;

        virtual HRESULT IncrementRotationX(
            single Increment) = 0;

        virtual HRESULT IncrementRotationY(
            single Increment) = 0;

        virtual HRESULT ResetRotation() = 0;

        virtual HRESULT SetExtrusionDirection(
            MsoPresetExtrusionDirection PresetExtrusionDirection) = 0;

        virtual HRESULT SetThreeDFormat(
            MsoPresetThreeDFormat PresetThreeDFormat) = 0;

        virtual HRESULT SetPresetCamera(
            MsoPresetCamera PresetCamera) = 0;

        virtual HRESULT IncrementRotationZ(
            single Increment) = 0;

        virtual HRESULT IncrementRotationHorizontal(
            single Increment) = 0;

        virtual HRESULT IncrementRotationVertical(
            single Increment) = 0;

        virtual HRESULT get_PresetLighting(
            MsoLightRigType *prop /Out/) = 0;

        virtual HRESULT put_PresetLighting(
            MsoLightRigType prop) = 0;

        virtual HRESULT get_Z(
            single *prop /Out/) = 0;

        virtual HRESULT put_Z(
            single prop) = 0;

        virtual HRESULT get_BevelTopType(
            MsoBevelType *prop /Out/) = 0;

        virtual HRESULT put_BevelTopType(
            MsoBevelType prop) = 0;

        virtual HRESULT get_BevelTopInset(
            single *prop /Out/) = 0;

        virtual HRESULT put_BevelTopInset(
            single prop) = 0;

        virtual HRESULT get_BevelTopDepth(
            single *prop /Out/) = 0;

        virtual HRESULT put_BevelTopDepth(
            single prop) = 0;

        virtual HRESULT get_BevelBottomType(
            MsoBevelType *prop /Out/) = 0;

        virtual HRESULT put_BevelBottomType(
            MsoBevelType prop) = 0;

        virtual HRESULT get_BevelBottomInset(
            single *prop /Out/) = 0;

        virtual HRESULT put_BevelBottomInset(
            single prop) = 0;

        virtual HRESULT get_BevelBottomDepth(
            single *prop /Out/) = 0;

        virtual HRESULT put_BevelBottomDepth(
            single prop) = 0;

        virtual HRESULT get_PresetCamera(
            MsoPresetCamera *prop /Out/) = 0;

        virtual HRESULT get_RotationZ(
            single *prop /Out/) = 0;

        virtual HRESULT put_RotationZ(
            single prop) = 0;

        virtual HRESULT get_ContourWidth(
            single *prop /Out/) = 0;

        virtual HRESULT put_ContourWidth(
            single prop) = 0;

        virtual HRESULT get_ContourColor(
            ColorFormat **prop /Out/) = 0;

        virtual HRESULT get_FieldOfView(
            single *prop /Out/) = 0;

        virtual HRESULT put_FieldOfView(
            single prop) = 0;

        virtual HRESULT get_ProjectText(
            MsoTriState *prop /Out/) = 0;

        virtual HRESULT put_ProjectText(
            MsoTriState prop) = 0;

        virtual HRESULT get_LightAngle(
            single *prop /Out/) = 0;

        virtual HRESULT put_LightAngle(
            single prop) = 0;

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

        single getDepth();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_Depth(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Depth()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDepth(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Depth(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Depth()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Depth, get=getDepth, set=setDepth)

        ColorFormat* getExtrusionColor();
        %MethodCode
            wpsapi::ColorFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_ExtrusionColor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ExtrusionColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ExtrusionColor, get=getExtrusionColor)

        MsoExtrusionColorType getExtrusionColorType();
        %MethodCode
            wpsapi::MsoExtrusionColorType prop = (wpsapi::MsoExtrusionColorType)0;
            HRESULT hr = sipCpp->get_ExtrusionColorType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ExtrusionColorType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setExtrusionColorType(MsoExtrusionColorType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ExtrusionColorType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ExtrusionColorType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ExtrusionColorType, get=getExtrusionColorType, set=setExtrusionColorType)

        MsoTriState getPerspective();
        %MethodCode
            wpsapi::MsoTriState prop = (wpsapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_Perspective(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Perspective()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPerspective(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Perspective(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Perspective()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Perspective, get=getPerspective, set=setPerspective)

        MsoPresetExtrusionDirection getPresetExtrusionDirection();
        %MethodCode
            wpsapi::MsoPresetExtrusionDirection prop = (wpsapi::MsoPresetExtrusionDirection)0;
            HRESULT hr = sipCpp->get_PresetExtrusionDirection(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PresetExtrusionDirection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PresetExtrusionDirection, get=getPresetExtrusionDirection)

        MsoPresetLightingDirection getPresetLightingDirection();
        %MethodCode
            wpsapi::MsoPresetLightingDirection prop = (wpsapi::MsoPresetLightingDirection)0;
            HRESULT hr = sipCpp->get_PresetLightingDirection(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PresetLightingDirection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPresetLightingDirection(MsoPresetLightingDirection prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PresetLightingDirection(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PresetLightingDirection()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PresetLightingDirection, get=getPresetLightingDirection, set=setPresetLightingDirection)

        MsoPresetLightingSoftness getPresetLightingSoftness();
        %MethodCode
            wpsapi::MsoPresetLightingSoftness prop = (wpsapi::MsoPresetLightingSoftness)0;
            HRESULT hr = sipCpp->get_PresetLightingSoftness(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PresetLightingSoftness()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPresetLightingSoftness(MsoPresetLightingSoftness prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PresetLightingSoftness(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PresetLightingSoftness()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PresetLightingSoftness, get=getPresetLightingSoftness, set=setPresetLightingSoftness)

        MsoPresetMaterial getPresetMaterial();
        %MethodCode
            wpsapi::MsoPresetMaterial prop = (wpsapi::MsoPresetMaterial)0;
            HRESULT hr = sipCpp->get_PresetMaterial(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PresetMaterial()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPresetMaterial(MsoPresetMaterial prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PresetMaterial(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PresetMaterial()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PresetMaterial, get=getPresetMaterial, set=setPresetMaterial)

        MsoPresetThreeDFormat getPresetThreeDFormat();
        %MethodCode
            wpsapi::MsoPresetThreeDFormat prop = (wpsapi::MsoPresetThreeDFormat)0;
            HRESULT hr = sipCpp->get_PresetThreeDFormat(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PresetThreeDFormat()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PresetThreeDFormat, get=getPresetThreeDFormat)

        single getRotationX();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_RotationX(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RotationX()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRotationX(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RotationX(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RotationX()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RotationX, get=getRotationX, set=setRotationX)

        single getRotationY();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_RotationY(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RotationY()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRotationY(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RotationY(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RotationY()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RotationY, get=getRotationY, set=setRotationY)

        MsoTriState getVisible();
        %MethodCode
            wpsapi::MsoTriState prop = (wpsapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_Visible(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Visible()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setVisible(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Visible(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Visible()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Visible, get=getVisible, set=setVisible)

        MsoLightRigType getPresetLighting();
        %MethodCode
            wpsapi::MsoLightRigType prop = (wpsapi::MsoLightRigType)0;
            HRESULT hr = sipCpp->get_PresetLighting(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PresetLighting()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPresetLighting(MsoLightRigType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PresetLighting(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PresetLighting()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PresetLighting, get=getPresetLighting, set=setPresetLighting)

        single getZ();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_Z(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Z()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setZ(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Z(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Z()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Z, get=getZ, set=setZ)

        MsoBevelType getBevelTopType();
        %MethodCode
            wpsapi::MsoBevelType prop = (wpsapi::MsoBevelType)0;
            HRESULT hr = sipCpp->get_BevelTopType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BevelTopType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBevelTopType(MsoBevelType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BevelTopType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BevelTopType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BevelTopType, get=getBevelTopType, set=setBevelTopType)

        single getBevelTopInset();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_BevelTopInset(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BevelTopInset()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBevelTopInset(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BevelTopInset(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BevelTopInset()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BevelTopInset, get=getBevelTopInset, set=setBevelTopInset)

        single getBevelTopDepth();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_BevelTopDepth(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BevelTopDepth()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBevelTopDepth(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BevelTopDepth(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BevelTopDepth()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BevelTopDepth, get=getBevelTopDepth, set=setBevelTopDepth)

        MsoBevelType getBevelBottomType();
        %MethodCode
            wpsapi::MsoBevelType prop = (wpsapi::MsoBevelType)0;
            HRESULT hr = sipCpp->get_BevelBottomType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BevelBottomType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBevelBottomType(MsoBevelType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BevelBottomType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BevelBottomType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BevelBottomType, get=getBevelBottomType, set=setBevelBottomType)

        single getBevelBottomInset();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_BevelBottomInset(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BevelBottomInset()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBevelBottomInset(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BevelBottomInset(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BevelBottomInset()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BevelBottomInset, get=getBevelBottomInset, set=setBevelBottomInset)

        single getBevelBottomDepth();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_BevelBottomDepth(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_BevelBottomDepth()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBevelBottomDepth(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_BevelBottomDepth(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_BevelBottomDepth()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=BevelBottomDepth, get=getBevelBottomDepth, set=setBevelBottomDepth)

        MsoPresetCamera getPresetCamera();
        %MethodCode
            wpsapi::MsoPresetCamera prop = (wpsapi::MsoPresetCamera)0;
            HRESULT hr = sipCpp->get_PresetCamera(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PresetCamera()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=PresetCamera, get=getPresetCamera)

        single getRotationZ();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_RotationZ(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RotationZ()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRotationZ(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RotationZ(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RotationZ()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RotationZ, get=getRotationZ, set=setRotationZ)

        single getContourWidth();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_ContourWidth(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ContourWidth()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setContourWidth(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ContourWidth(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ContourWidth()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ContourWidth, get=getContourWidth, set=setContourWidth)

        ColorFormat* getContourColor();
        %MethodCode
            wpsapi::ColorFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_ContourColor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ContourColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ContourColor, get=getContourColor)

        single getFieldOfView();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_FieldOfView(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FieldOfView()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFieldOfView(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FieldOfView(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FieldOfView()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FieldOfView, get=getFieldOfView, set=setFieldOfView)

        MsoTriState getProjectText();
        %MethodCode
            wpsapi::MsoTriState prop = (wpsapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_ProjectText(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ProjectText()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setProjectText(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ProjectText(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ProjectText()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ProjectText, get=getProjectText, set=setProjectText)

        single getLightAngle();
        %MethodCode
            wpsapi::single prop = 0;
            HRESULT hr = sipCpp->get_LightAngle(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_LightAngle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLightAngle(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_LightAngle(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_LightAngle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=LightAngle, get=getLightAngle, set=setLightAngle)
    };
};
