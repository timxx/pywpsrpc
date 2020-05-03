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
    struct Crop : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_PictureOffsetX(
            single *PictureOffsetX /Out/) = 0;

        virtual HRESULT put_PictureOffsetX(
            single PictureOffsetX) = 0;

        virtual HRESULT get_PictureOffsetY(
            single *PictureOffsetY /Out/) = 0;

        virtual HRESULT put_PictureOffsetY(
            single PictureOffsetY) = 0;

        virtual HRESULT get_PictureWidth(
            single *PictureWidth /Out/) = 0;

        virtual HRESULT put_PictureWidth(
            single PictureWidth) = 0;

        virtual HRESULT get_PictureHeight(
            single *PictureHeight /Out/) = 0;

        virtual HRESULT put_PictureHeight(
            single PictureHeight) = 0;

        virtual HRESULT get_ShapeLeft(
            single *ShapeLeft /Out/) = 0;

        virtual HRESULT put_ShapeLeft(
            single ShapeLeft) = 0;

        virtual HRESULT get_ShapeTop(
            single *ShapeTop /Out/) = 0;

        virtual HRESULT put_ShapeTop(
            single ShapeTop) = 0;

        virtual HRESULT get_ShapeWidth(
            single *ShapeWidth /Out/) = 0;

        virtual HRESULT put_ShapeWidth(
            single ShapeWidth) = 0;

        virtual HRESULT get_ShapeHeight(
            single *ShapeHeight /Out/) = 0;

        virtual HRESULT put_ShapeHeight(
            single ShapeHeight) = 0;

        single getPictureOffsetX();
        %MethodCode
            ksoapi::single prop = 0;
            HRESULT hr = sipCpp->get_PictureOffsetX(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PictureOffsetX()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPictureOffsetX(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PictureOffsetX(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PictureOffsetX()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PictureOffsetX, get=getPictureOffsetX, set=setPictureOffsetX)

        single getPictureOffsetY();
        %MethodCode
            ksoapi::single prop = 0;
            HRESULT hr = sipCpp->get_PictureOffsetY(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PictureOffsetY()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPictureOffsetY(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PictureOffsetY(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PictureOffsetY()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PictureOffsetY, get=getPictureOffsetY, set=setPictureOffsetY)

        single getPictureWidth();
        %MethodCode
            ksoapi::single prop = 0;
            HRESULT hr = sipCpp->get_PictureWidth(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PictureWidth()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPictureWidth(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PictureWidth(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PictureWidth()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PictureWidth, get=getPictureWidth, set=setPictureWidth)

        single getPictureHeight();
        %MethodCode
            ksoapi::single prop = 0;
            HRESULT hr = sipCpp->get_PictureHeight(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_PictureHeight()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPictureHeight(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_PictureHeight(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_PictureHeight()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=PictureHeight, get=getPictureHeight, set=setPictureHeight)

        single getShapeLeft();
        %MethodCode
            ksoapi::single prop = 0;
            HRESULT hr = sipCpp->get_ShapeLeft(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShapeLeft()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShapeLeft(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShapeLeft(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShapeLeft()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShapeLeft, get=getShapeLeft, set=setShapeLeft)

        single getShapeTop();
        %MethodCode
            ksoapi::single prop = 0;
            HRESULT hr = sipCpp->get_ShapeTop(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShapeTop()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShapeTop(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShapeTop(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShapeTop()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShapeTop, get=getShapeTop, set=setShapeTop)

        single getShapeWidth();
        %MethodCode
            ksoapi::single prop = 0;
            HRESULT hr = sipCpp->get_ShapeWidth(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShapeWidth()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShapeWidth(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShapeWidth(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShapeWidth()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShapeWidth, get=getShapeWidth, set=setShapeWidth)

        single getShapeHeight();
        %MethodCode
            ksoapi::single prop = 0;
            HRESULT hr = sipCpp->get_ShapeHeight(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShapeHeight()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShapeHeight(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShapeHeight(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShapeHeight()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShapeHeight, get=getShapeHeight, set=setShapeHeight)
    };
};
