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
    struct Options : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_DisplayPasteOptions(
            MsoTriState *DisplayPasteOptions /Out/) = 0;

        virtual HRESULT put_DisplayPasteOptions(
            MsoTriState DisplayPasteOptions) = 0;

        virtual HRESULT get_DoNotPromptForConvert(
            MsoTriState *DoNotPromptForConvert /Out/) = 0;

        virtual HRESULT put_DoNotPromptForConvert(
            MsoTriState DoNotPromptForConvert) = 0;

        virtual HRESULT get_ShowCoauthoringMergeChanges(
            VARIANT_BOOL *ShowCoauthoringMergeChanges /Out/) = 0;

        virtual HRESULT put_ShowCoauthoringMergeChanges(
            VARIANT_BOOL ShowCoauthoringMergeChanges) = 0;

        MsoTriState getDisplayPasteOptions();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_DisplayPasteOptions(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayPasteOptions()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayPasteOptions(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayPasteOptions(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayPasteOptions()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayPasteOptions, get=getDisplayPasteOptions, set=setDisplayPasteOptions)

        MsoTriState getDoNotPromptForConvert();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_DoNotPromptForConvert(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DoNotPromptForConvert()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDoNotPromptForConvert(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DoNotPromptForConvert(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DoNotPromptForConvert()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DoNotPromptForConvert, get=getDoNotPromptForConvert, set=setDoNotPromptForConvert)

        VARIANT_BOOL getShowCoauthoringMergeChanges();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_ShowCoauthoringMergeChanges(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowCoauthoringMergeChanges()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowCoauthoringMergeChanges(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowCoauthoringMergeChanges(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowCoauthoringMergeChanges()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowCoauthoringMergeChanges, get=getShowCoauthoringMergeChanges, set=setShowCoauthoringMergeChanges)
    };
};
