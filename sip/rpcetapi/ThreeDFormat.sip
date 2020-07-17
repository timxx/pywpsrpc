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
    struct ThreeDFormat : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT IncrementRotationX(
            single Increment) = 0;

        virtual HRESULT IncrementRotationY(
            single Increment) = 0;

        virtual HRESULT ResetRotation() = 0;

        virtual HRESULT SetThreeDFormat(
            MsoPresetThreeDFormat PresetThreeDFormat) = 0;

        virtual HRESULT SetExtrusionDirection(
            MsoPresetExtrusionDirection PresetExtrusionDirection) = 0;

        virtual HRESULT get_Depth(
            single *Depth /Out/) = 0;

        virtual HRESULT put_Depth(
            single Depth) = 0;

        virtual HRESULT get_ExtrusionColor(
            ColorFormat **ExtrusionColor /Out/) = 0;

        virtual HRESULT get_ExtrusionColorType(
            MsoExtrusionColorType *ExtrusionColorType /Out/) = 0;

        virtual HRESULT put_ExtrusionColorType(
            MsoExtrusionColorType ExtrusionColorType) = 0;

        virtual HRESULT get_Perspective(
            MsoTriState *Perspective /Out/) = 0;

        virtual HRESULT put_Perspective(
            MsoTriState Perspective) = 0;

        virtual HRESULT get_PresetExtrusionDirection(
            MsoPresetExtrusionDirection *PresetExtrusionDirection /Out/) = 0;

        virtual HRESULT get_PresetLightingDirection(
            MsoPresetLightingDirection *PresetLightingDirection /Out/) = 0;

        virtual HRESULT put_PresetLightingDirection(
            MsoPresetLightingDirection PresetLightingDirection) = 0;

        virtual HRESULT get_PresetLightingSoftness(
            MsoPresetLightingSoftness *PresetLightingSoftness /Out/) = 0;

        virtual HRESULT put_PresetLightingSoftness(
            MsoPresetLightingSoftness PresetLightingSoftness) = 0;

        virtual HRESULT get_PresetMaterial(
            MsoPresetMaterial *PresetMaterial /Out/) = 0;

        virtual HRESULT put_PresetMaterial(
            MsoPresetMaterial PresetMaterial) = 0;

        virtual HRESULT get_PresetThreeDFormat(
            MsoPresetThreeDFormat *PresetThreeDFormat /Out/) = 0;

        virtual HRESULT get_RotationX(
            single *RotationX /Out/) = 0;

        virtual HRESULT put_RotationX(
            single RotationX) = 0;

        virtual HRESULT get_RotationY(
            single *RotationY /Out/) = 0;

        virtual HRESULT put_RotationY(
            single RotationY) = 0;

        virtual HRESULT get_Visible(
            MsoTriState *Visible /Out/) = 0;

        virtual HRESULT put_Visible(
            MsoTriState Visible) = 0;

        virtual HRESULT SetPresetCamera(
            MsoPresetCamera PresetCamera) = 0;

        virtual HRESULT IncrementRotationZ(
            single Increment) = 0;

        virtual HRESULT IncrementRotationHorizontal(
            single Increment) = 0;

        virtual HRESULT IncrementRotationVertical(
            single Increment) = 0;

        virtual HRESULT get_PresetLighting(
            MsoLightRigType *PresetLightRigType /Out/) = 0;

        virtual HRESULT put_PresetLighting(
            MsoLightRigType PresetLightRigType) = 0;

        virtual HRESULT get_Z(
            single *Z /Out/) = 0;

        virtual HRESULT put_Z(
            single Z) = 0;

        virtual HRESULT get_BevelTopType(
            MsoBevelType *BevelTopType /Out/) = 0;

        virtual HRESULT put_BevelTopType(
            MsoBevelType BevelTopType) = 0;

        virtual HRESULT get_BevelTopInset(
            single *BevelTopInset /Out/) = 0;

        virtual HRESULT put_BevelTopInset(
            single BevelTopInset) = 0;

        virtual HRESULT get_BevelTopDepth(
            single *BevelTopDepth /Out/) = 0;

        virtual HRESULT put_BevelTopDepth(
            single BevelTopDepth) = 0;

        virtual HRESULT get_BevelBottomType(
            MsoBevelType *BevelBottomType /Out/) = 0;

        virtual HRESULT put_BevelBottomType(
            MsoBevelType BevelBottomType) = 0;

        virtual HRESULT get_BevelBottomInset(
            single *BevelBottomInset /Out/) = 0;

        virtual HRESULT put_BevelBottomInset(
            single BevelBottomInset) = 0;

        virtual HRESULT get_BevelBottomDepth(
            single *BevelBottomDepth /Out/) = 0;

        virtual HRESULT put_BevelBottomDepth(
            single BevelBottomDepth) = 0;

        virtual HRESULT get_PresetCamera(
            MsoPresetCamera *PresetCamera /Out/) = 0;

        virtual HRESULT get_RotationZ(
            single *RotationZ /Out/) = 0;

        virtual HRESULT put_RotationZ(
            single RotationZ) = 0;

        virtual HRESULT get_ContourWidth(
            single *Width /Out/) = 0;

        virtual HRESULT put_ContourWidth(
            single Width) = 0;

        virtual HRESULT get_ContourColor(
            ColorFormat **ContourColor /Out/) = 0;

        virtual HRESULT get_FieldOfView(
            single *FOV /Out/) = 0;

        virtual HRESULT put_FieldOfView(
            single FOV) = 0;

        virtual HRESULT get_ProjectText(
            MsoTriState *ProjectText /Out/) = 0;

        virtual HRESULT put_ProjectText(
            MsoTriState ProjectText) = 0;

        virtual HRESULT get_LightAngle(
            single *LightAngle /Out/) = 0;

        virtual HRESULT put_LightAngle(
            single LightAngle) = 0;

        single getDepth();
        %MethodCode
            etapi::single prop = 0;
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
            etapi::ColorFormat *prop = nullptr;
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
            etapi::MsoExtrusionColorType prop = (etapi::MsoExtrusionColorType)0;
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
            etapi::MsoTriState prop = (etapi::MsoTriState)0;
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
            etapi::MsoPresetExtrusionDirection prop = (etapi::MsoPresetExtrusionDirection)0;
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
            etapi::MsoPresetLightingDirection prop = (etapi::MsoPresetLightingDirection)0;
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
            etapi::MsoPresetLightingSoftness prop = (etapi::MsoPresetLightingSoftness)0;
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
            etapi::MsoPresetMaterial prop = (etapi::MsoPresetMaterial)0;
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
            etapi::MsoPresetThreeDFormat prop = (etapi::MsoPresetThreeDFormat)0;
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
            etapi::single prop = 0;
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
            etapi::single prop = 0;
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
            etapi::MsoTriState prop = (etapi::MsoTriState)0;
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
            etapi::MsoLightRigType prop = (etapi::MsoLightRigType)0;
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
            etapi::single prop = 0;
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
            etapi::MsoBevelType prop = (etapi::MsoBevelType)0;
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
            etapi::single prop = 0;
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
            etapi::single prop = 0;
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
            etapi::MsoBevelType prop = (etapi::MsoBevelType)0;
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
            etapi::single prop = 0;
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
            etapi::single prop = 0;
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
            etapi::MsoPresetCamera prop = (etapi::MsoPresetCamera)0;
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
            etapi::single prop = 0;
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
            etapi::single prop = 0;
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
            etapi::ColorFormat *prop = nullptr;
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
            etapi::single prop = 0;
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
            etapi::MsoTriState prop = (etapi::MsoTriState)0;
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
            etapi::single prop = 0;
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
