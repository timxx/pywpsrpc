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
    struct Borders : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        int __len__() const;
        %MethodCode
            long count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT get_Enable(
            long *prop /Out/) = 0;

        virtual HRESULT put_Enable(
            long prop) = 0;

        virtual HRESULT get_DistanceFromTop(
            long *prop /Out/) = 0;

        virtual HRESULT put_DistanceFromTop(
            long prop) = 0;

        virtual HRESULT get_Shadow(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_Shadow(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_InsideLineStyle(
            WdLineStyle *prop /Out/) = 0;

        virtual HRESULT put_InsideLineStyle(
            WdLineStyle prop) = 0;

        virtual HRESULT get_OutsideLineStyle(
            WdLineStyle *prop /Out/) = 0;

        virtual HRESULT put_OutsideLineStyle(
            WdLineStyle prop) = 0;

        virtual HRESULT get_InsideLineWidth(
            WdLineWidth *prop /Out/) = 0;

        virtual HRESULT put_InsideLineWidth(
            WdLineWidth prop) = 0;

        virtual HRESULT get_OutsideLineWidth(
            WdLineWidth *prop /Out/) = 0;

        virtual HRESULT put_OutsideLineWidth(
            WdLineWidth prop) = 0;

        virtual HRESULT get_InsideColorIndex(
            WdColorIndex *prop /Out/) = 0;

        virtual HRESULT put_InsideColorIndex(
            WdColorIndex prop) = 0;

        virtual HRESULT get_OutsideColorIndex(
            WdColorIndex *prop /Out/) = 0;

        virtual HRESULT put_OutsideColorIndex(
            WdColorIndex prop) = 0;

        virtual HRESULT get_DistanceFromLeft(
            long *prop /Out/) = 0;

        virtual HRESULT put_DistanceFromLeft(
            long prop) = 0;

        virtual HRESULT get_DistanceFromBottom(
            long *prop /Out/) = 0;

        virtual HRESULT put_DistanceFromBottom(
            long prop) = 0;

        virtual HRESULT get_DistanceFromRight(
            long *prop /Out/) = 0;

        virtual HRESULT put_DistanceFromRight(
            long prop) = 0;

        virtual HRESULT get_AlwaysInFront(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_AlwaysInFront(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SurroundHeader(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_SurroundHeader(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_SurroundFooter(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_SurroundFooter(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_JoinBorders(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_JoinBorders(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_HasHorizontal(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_HasVertical(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT get_DistanceFrom(
            WdBorderDistanceFrom *prop /Out/) = 0;

        virtual HRESULT put_DistanceFrom(
            WdBorderDistanceFrom prop) = 0;

        virtual HRESULT get_EnableFirstPageInSection(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_EnableFirstPageInSection(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_EnableOtherPagesInSection(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_EnableOtherPagesInSection(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT Item(
            WdBorderType Index,
            Border **prop /Out/) = 0;

        Border* __getitem__(WdBorderType index) const;
        %MethodCode
            wpsapi::Border *prop = nullptr;
            if (sipCpp->Item(a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT ApplyPageBordersToAllSections() = 0;

        virtual HRESULT get_InsideColor(
            WdColor *prop /Out/) = 0;

        virtual HRESULT put_InsideColor(
            WdColor prop) = 0;

        virtual HRESULT get_OutsideColor(
            WdColor *prop /Out/) = 0;

        virtual HRESULT put_OutsideColor(
            WdColor prop) = 0;

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

        long getEnable();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Enable(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Enable()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnable(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Enable(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Enable()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Enable, get=getEnable, set=setEnable)

        long getDistanceFromTop();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_DistanceFromTop(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DistanceFromTop()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDistanceFromTop(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DistanceFromTop(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DistanceFromTop()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DistanceFromTop, get=getDistanceFromTop, set=setDistanceFromTop)

        VARIANT_BOOL getShadow();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Shadow(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Shadow()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShadow(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Shadow(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Shadow()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Shadow, get=getShadow, set=setShadow)

        WdLineStyle getInsideLineStyle();
        %MethodCode
            wpsapi::WdLineStyle prop = (wpsapi::WdLineStyle)0;
            HRESULT hr = sipCpp->get_InsideLineStyle(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InsideLineStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setInsideLineStyle(WdLineStyle prop);
        %MethodCode
            HRESULT hr = sipCpp->put_InsideLineStyle(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_InsideLineStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=InsideLineStyle, get=getInsideLineStyle, set=setInsideLineStyle)

        WdLineStyle getOutsideLineStyle();
        %MethodCode
            wpsapi::WdLineStyle prop = (wpsapi::WdLineStyle)0;
            HRESULT hr = sipCpp->get_OutsideLineStyle(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OutsideLineStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOutsideLineStyle(WdLineStyle prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OutsideLineStyle(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OutsideLineStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OutsideLineStyle, get=getOutsideLineStyle, set=setOutsideLineStyle)

        WdLineWidth getInsideLineWidth();
        %MethodCode
            wpsapi::WdLineWidth prop = (wpsapi::WdLineWidth)0;
            HRESULT hr = sipCpp->get_InsideLineWidth(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InsideLineWidth()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setInsideLineWidth(WdLineWidth prop);
        %MethodCode
            HRESULT hr = sipCpp->put_InsideLineWidth(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_InsideLineWidth()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=InsideLineWidth, get=getInsideLineWidth, set=setInsideLineWidth)

        WdLineWidth getOutsideLineWidth();
        %MethodCode
            wpsapi::WdLineWidth prop = (wpsapi::WdLineWidth)0;
            HRESULT hr = sipCpp->get_OutsideLineWidth(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OutsideLineWidth()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOutsideLineWidth(WdLineWidth prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OutsideLineWidth(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OutsideLineWidth()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OutsideLineWidth, get=getOutsideLineWidth, set=setOutsideLineWidth)

        WdColorIndex getInsideColorIndex();
        %MethodCode
            wpsapi::WdColorIndex prop = (wpsapi::WdColorIndex)0;
            HRESULT hr = sipCpp->get_InsideColorIndex(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InsideColorIndex()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setInsideColorIndex(WdColorIndex prop);
        %MethodCode
            HRESULT hr = sipCpp->put_InsideColorIndex(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_InsideColorIndex()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=InsideColorIndex, get=getInsideColorIndex, set=setInsideColorIndex)

        WdColorIndex getOutsideColorIndex();
        %MethodCode
            wpsapi::WdColorIndex prop = (wpsapi::WdColorIndex)0;
            HRESULT hr = sipCpp->get_OutsideColorIndex(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OutsideColorIndex()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOutsideColorIndex(WdColorIndex prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OutsideColorIndex(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OutsideColorIndex()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OutsideColorIndex, get=getOutsideColorIndex, set=setOutsideColorIndex)

        long getDistanceFromLeft();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_DistanceFromLeft(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DistanceFromLeft()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDistanceFromLeft(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DistanceFromLeft(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DistanceFromLeft()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DistanceFromLeft, get=getDistanceFromLeft, set=setDistanceFromLeft)

        long getDistanceFromBottom();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_DistanceFromBottom(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DistanceFromBottom()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDistanceFromBottom(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DistanceFromBottom(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DistanceFromBottom()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DistanceFromBottom, get=getDistanceFromBottom, set=setDistanceFromBottom)

        long getDistanceFromRight();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_DistanceFromRight(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DistanceFromRight()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDistanceFromRight(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DistanceFromRight(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DistanceFromRight()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DistanceFromRight, get=getDistanceFromRight, set=setDistanceFromRight)

        VARIANT_BOOL getAlwaysInFront();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_AlwaysInFront(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AlwaysInFront()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAlwaysInFront(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AlwaysInFront(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AlwaysInFront()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AlwaysInFront, get=getAlwaysInFront, set=setAlwaysInFront)

        VARIANT_BOOL getSurroundHeader();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_SurroundHeader(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SurroundHeader()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSurroundHeader(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SurroundHeader(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SurroundHeader()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SurroundHeader, get=getSurroundHeader, set=setSurroundHeader)

        VARIANT_BOOL getSurroundFooter();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_SurroundFooter(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SurroundFooter()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSurroundFooter(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SurroundFooter(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SurroundFooter()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SurroundFooter, get=getSurroundFooter, set=setSurroundFooter)

        VARIANT_BOOL getJoinBorders();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_JoinBorders(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_JoinBorders()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setJoinBorders(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_JoinBorders(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_JoinBorders()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=JoinBorders, get=getJoinBorders, set=setJoinBorders)

        VARIANT_BOOL getHasHorizontal();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HasHorizontal(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasHorizontal()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HasHorizontal, get=getHasHorizontal)

        VARIANT_BOOL getHasVertical();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_HasVertical(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HasVertical()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=HasVertical, get=getHasVertical)

        WdBorderDistanceFrom getDistanceFrom();
        %MethodCode
            wpsapi::WdBorderDistanceFrom prop = (wpsapi::WdBorderDistanceFrom)0;
            HRESULT hr = sipCpp->get_DistanceFrom(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DistanceFrom()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDistanceFrom(WdBorderDistanceFrom prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DistanceFrom(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DistanceFrom()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DistanceFrom, get=getDistanceFrom, set=setDistanceFrom)

        VARIANT_BOOL getEnableFirstPageInSection();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EnableFirstPageInSection(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EnableFirstPageInSection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnableFirstPageInSection(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EnableFirstPageInSection(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EnableFirstPageInSection()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EnableFirstPageInSection, get=getEnableFirstPageInSection, set=setEnableFirstPageInSection)

        VARIANT_BOOL getEnableOtherPagesInSection();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_EnableOtherPagesInSection(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EnableOtherPagesInSection()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEnableOtherPagesInSection(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EnableOtherPagesInSection(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EnableOtherPagesInSection()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EnableOtherPagesInSection, get=getEnableOtherPagesInSection, set=setEnableOtherPagesInSection)

        WdColor getInsideColor();
        %MethodCode
            wpsapi::WdColor prop = (wpsapi::WdColor)0;
            HRESULT hr = sipCpp->get_InsideColor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InsideColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setInsideColor(WdColor prop);
        %MethodCode
            HRESULT hr = sipCpp->put_InsideColor(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_InsideColor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=InsideColor, get=getInsideColor, set=setInsideColor)

        WdColor getOutsideColor();
        %MethodCode
            wpsapi::WdColor prop = (wpsapi::WdColor)0;
            HRESULT hr = sipCpp->get_OutsideColor(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_OutsideColor()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOutsideColor(WdColor prop);
        %MethodCode
            HRESULT hr = sipCpp->put_OutsideColor(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_OutsideColor()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=OutsideColor, get=getOutsideColor, set=setOutsideColor)
    };
};
