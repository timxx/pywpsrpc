/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wpsapiex
{
    struct _DocumentEx : public wpsapiex::KsoDocumentEx /Abstract/
    {
    public:
        virtual HRESULT SaveAsShm(
            VARIANT *FileFormat = argMissing(),
            VARIANT *LockComments = argMissing(),
            VARIANT *Password = argMissing(),
            VARIANT *AddToRecentFiles = argMissing(),
            VARIANT *WritePassword = argMissing(),
            VARIANT *ReadOnlyRecommended = argMissing(),
            VARIANT *EmbedTrueTypeFonts = argMissing(),
            VARIANT *SaveNativePictureFormat = argMissing(),
            VARIANT *SaveFormsData = argMissing(),
            VARIANT *SaveAsAOCELetter = argMissing(),
            VARIANT *Encoding = argMissing(),
            VARIANT *InsertLineBreaks = argMissing(),
            VARIANT *AllowSubstitutions = argMissing(),
            VARIANT *LineEnding = argMissing(),
            VARIANT *AddBiDiMarks = argMissing(),
            BSTR *ShmID /Out/ = 0) = 0;

        virtual HRESULT get_ShowDocumentFieldTarget(
            int *prop /Out/) = 0;

        virtual HRESULT put_ShowDocumentFieldTarget(
            int prop) = 0;

        virtual HRESULT EnterInkDraw() = 0;

        virtual HRESULT ExitInkDraw() = 0;

        virtual HRESULT SetInkDrawPenStyle(
            long value) = 0;

        virtual HRESULT SetInkDrawShapeStyle(
            long value) = 0;

        virtual HRESULT SetInkDrawEraser(
            VARIANT_BOOL selected) = 0;

        virtual HRESULT SetInkDrawColor(
            BSTR value) = 0;

        virtual HRESULT SetInkDrawLineStyle(
            long value) = 0;

        virtual HRESULT SetInkDrawStyle(
            long value) = 0;

        virtual HRESULT InsertImageFromScanner() = 0;

        int getShowDocumentFieldTarget();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_ShowDocumentFieldTarget(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ShowDocumentFieldTarget()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setShowDocumentFieldTarget(int prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ShowDocumentFieldTarget(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ShowDocumentFieldTarget()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ShowDocumentFieldTarget, get=getShowDocumentFieldTarget, set=setShowDocumentFieldTarget)
    };
};
