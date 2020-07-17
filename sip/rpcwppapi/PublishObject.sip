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
    struct PublishObject : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_HTMLVersion(
            PpHTMLVersion *HTMLVersion /Out/) = 0;

        virtual HRESULT put_HTMLVersion(
            PpHTMLVersion HTMLVersion) = 0;

        virtual HRESULT get_SourceType(
            PpPublishSourceType *SourceType /Out/) = 0;

        virtual HRESULT put_SourceType(
            PpPublishSourceType SourceType) = 0;

        virtual HRESULT get_RangeStart(
            int *RangeStart /Out/) = 0;

        virtual HRESULT put_RangeStart(
            int RangeStart) = 0;

        virtual HRESULT get_RangeEnd(
            int *RangeEnd /Out/) = 0;

        virtual HRESULT put_RangeEnd(
            int RangeEnd) = 0;

        virtual HRESULT get_SlideShowName(
            BSTR *SlideShowName /Out/) = 0;

        virtual HRESULT put_SlideShowName(
            BSTR SlideShowName) = 0;

        virtual HRESULT get_SpeakerNotes(
            MsoTriState *SpeakerNotes /Out/) = 0;

        virtual HRESULT put_SpeakerNotes(
            MsoTriState SpeakerNotes) = 0;

        virtual HRESULT get_FileName(
            BSTR *FileName /Out/) = 0;

        virtual HRESULT put_FileName(
            BSTR FileName) = 0;

        virtual HRESULT Publish() = 0;

        Application* getApplication();
        %MethodCode
            wppapi::Application *prop = nullptr;
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

        PpHTMLVersion getHTMLVersion();
        %MethodCode
            wppapi::PpHTMLVersion prop = (wppapi::PpHTMLVersion)0;
            HRESULT hr = sipCpp->get_HTMLVersion(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_HTMLVersion()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setHTMLVersion(PpHTMLVersion prop);
        %MethodCode
            HRESULT hr = sipCpp->put_HTMLVersion(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_HTMLVersion()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=HTMLVersion, get=getHTMLVersion, set=setHTMLVersion)

        PpPublishSourceType getSourceType();
        %MethodCode
            wppapi::PpPublishSourceType prop = (wppapi::PpPublishSourceType)0;
            HRESULT hr = sipCpp->get_SourceType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SourceType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSourceType(PpPublishSourceType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SourceType(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SourceType()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SourceType, get=getSourceType, set=setSourceType)

        int getRangeStart();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_RangeStart(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RangeStart()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRangeStart(int prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RangeStart(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RangeStart()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RangeStart, get=getRangeStart, set=setRangeStart)

        int getRangeEnd();
        %MethodCode
            int prop = 0;
            HRESULT hr = sipCpp->get_RangeEnd(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_RangeEnd()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setRangeEnd(int prop);
        %MethodCode
            HRESULT hr = sipCpp->put_RangeEnd(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_RangeEnd()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=RangeEnd, get=getRangeEnd, set=setRangeEnd)

        BSTR getSlideShowName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_SlideShowName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SlideShowName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSlideShowName(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SlideShowName(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SlideShowName()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SlideShowName, get=getSlideShowName, set=setSlideShowName)

        MsoTriState getSpeakerNotes();
        %MethodCode
            wppapi::MsoTriState prop = (wppapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_SpeakerNotes(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SpeakerNotes()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setSpeakerNotes(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_SpeakerNotes(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_SpeakerNotes()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=SpeakerNotes, get=getSpeakerNotes, set=setSpeakerNotes)

        BSTR getFileName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_FileName(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FileName()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFileName(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FileName(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FileName()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FileName, get=getFileName, set=setFileName)
    };
};
