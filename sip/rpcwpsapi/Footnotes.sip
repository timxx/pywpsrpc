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
    struct Footnotes : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        int __len__() const;
        %MethodCode
            long count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Location(
            WdFootnoteLocation *prop /Out/) = 0;

        virtual HRESULT put_Location(
            WdFootnoteLocation prop) = 0;

        virtual HRESULT get_NumberStyle(
            WdNoteNumberStyle *prop /Out/) = 0;

        virtual HRESULT put_NumberStyle(
            WdNoteNumberStyle prop) = 0;

        virtual HRESULT get_StartingNumber(
            long *prop /Out/) = 0;

        virtual HRESULT put_StartingNumber(
            long prop) = 0;

        virtual HRESULT get_NumberingRule(
            WdNumberingRule *prop /Out/) = 0;

        virtual HRESULT put_NumberingRule(
            WdNumberingRule prop) = 0;

        virtual HRESULT get_Separator(
            Range **prop /Out/) = 0;

        virtual HRESULT get_ContinuationSeparator(
            Range **prop /Out/) = 0;

        virtual HRESULT get_ContinuationNotice(
            Range **prop /Out/) = 0;

        virtual HRESULT Item(
            long Index,
            Footnote **prop /Out/) = 0;

        Footnote* __getitem__(long index) const;
        %MethodCode
            wpsapi::Footnote *prop = nullptr;
            if (sipCpp->Item(a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT Add(
            Range *Range,
            VARIANT *Reference = argMissing(),
            VARIANT *Text = argMissing(),
            Footnote **prop /Out/ = 0) = 0;

        virtual HRESULT Convert() = 0;

        virtual HRESULT SwapWithEndnotes() = 0;

        virtual HRESULT ResetSeparator() = 0;

        virtual HRESULT ResetContinuationSeparator() = 0;

        virtual HRESULT ResetContinuationNotice() = 0;

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

        WdFootnoteLocation getLocation();
        %MethodCode
            wpsapi::WdFootnoteLocation prop = (wpsapi::WdFootnoteLocation)0;
            HRESULT hr = sipCpp->get_Location(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Location()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setLocation(WdFootnoteLocation prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Location(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Location()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Location, get=getLocation, set=setLocation)

        WdNoteNumberStyle getNumberStyle();
        %MethodCode
            wpsapi::WdNoteNumberStyle prop = (wpsapi::WdNoteNumberStyle)0;
            HRESULT hr = sipCpp->get_NumberStyle(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NumberStyle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNumberStyle(WdNoteNumberStyle prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NumberStyle(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NumberStyle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NumberStyle, get=getNumberStyle, set=setNumberStyle)

        long getStartingNumber();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_StartingNumber(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_StartingNumber()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setStartingNumber(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_StartingNumber(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_StartingNumber()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=StartingNumber, get=getStartingNumber, set=setStartingNumber)

        WdNumberingRule getNumberingRule();
        %MethodCode
            wpsapi::WdNumberingRule prop = (wpsapi::WdNumberingRule)0;
            HRESULT hr = sipCpp->get_NumberingRule(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NumberingRule()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNumberingRule(WdNumberingRule prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NumberingRule(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NumberingRule()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NumberingRule, get=getNumberingRule, set=setNumberingRule)

        Range* getSeparator();
        %MethodCode
            wpsapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_Separator(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Separator()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Separator, get=getSeparator)

        Range* getContinuationSeparator();
        %MethodCode
            wpsapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_ContinuationSeparator(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ContinuationSeparator()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ContinuationSeparator, get=getContinuationSeparator)

        Range* getContinuationNotice();
        %MethodCode
            wpsapi::Range *prop = nullptr;
            HRESULT hr = sipCpp->get_ContinuationNotice(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ContinuationNotice()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ContinuationNotice, get=getContinuationNotice)
    };
};
