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
    struct MediaFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Volume(
            single *Volume /Out/) = 0;

        virtual HRESULT put_Volume(
            single Volume) = 0;

        virtual HRESULT get_Muted(
            VARIANT_BOOL *Muted /Out/) = 0;

        virtual HRESULT put_Muted(
            VARIANT_BOOL Muted) = 0;

        virtual HRESULT get_Length(
            long *Length /Out/) = 0;

        virtual HRESULT get_StartPoint(
            long *StartPoint /Out/) = 0;

        virtual HRESULT put_StartPoint(
            long StartPoint) = 0;

        virtual HRESULT get_EndPoint(
            long *EndPoint /Out/) = 0;

        virtual HRESULT put_EndPoint(
            long EndPoint) = 0;

        virtual HRESULT get_FadeInDuration(
            long *FadeInDuration /Out/) = 0;

        virtual HRESULT put_FadeInDuration(
            long FadeInDuration) = 0;

        virtual HRESULT get_FadeOutDuration(
            long *FadeOutDuration /Out/) = 0;

        virtual HRESULT put_FadeOutDuration(
            long FadeOutDuration) = 0;

        virtual HRESULT get_MediaBookmarks(
            MediaBookmarks **MediaBookmarks /Out/) = 0;

        virtual HRESULT SetDisplayPicture(
            long Position) = 0;

        virtual HRESULT SetDisplayPictureFromFile(
            BSTR FilePath) = 0;

        virtual HRESULT Resample(
            VARIANT_BOOL Trim = VARIANT_FALSE,
            int SampleHeight = 768,
            int SampleWidth = 1280,
            long VideoFrameRate = 24,
            long AudioSamplingRate = 48000,
            long VideoBitRate = 7000000) = 0;

        virtual HRESULT ResampleFromProfile(
            PpResampleMediaProfile profile = wppapi::ppResampleMediaProfileSmall) = 0;

        virtual HRESULT get_ResamplingStatus(
            PpMediaTaskStatus *ResamplingStatus /Out/) = 0;

        virtual HRESULT get_IsLinked(
            VARIANT_BOOL *IsLinked /Out/) = 0;

        virtual HRESULT get_IsEmbedded(
            VARIANT_BOOL *IsEmbedded /Out/) = 0;

        virtual HRESULT get_AudioSamplingRate(
            long *AudioSamplingRate /Out/) = 0;

        virtual HRESULT get_VideoFrameRate(
            long *VideoFrameRate /Out/) = 0;

        virtual HRESULT get_SampleHeight(
            long *SampleHeight /Out/) = 0;

        virtual HRESULT get_SampleWidth(
            long *SampleWidth /Out/) = 0;

        virtual HRESULT get_VideoCompressionType(
            BSTR *VideoCompressionType /Out/) = 0;

        virtual HRESULT get_AudioCompressionType(
            BSTR *AudioCompressionType /Out/) = 0;

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

        single getVolume();
        %MethodCode
            wppapi::single prop = 0;
            HRESULT hr = sipCpp->get_Volume(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Volume()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setVolume(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Volume(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Volume()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Volume, get=getVolume, set=setVolume)

        VARIANT_BOOL getMuted();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_Muted(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Muted()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setMuted(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Muted(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Muted()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Muted, get=getMuted, set=setMuted)

        long getLength();
        %MethodCode
            long prop = 0;
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

        long getStartPoint();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_StartPoint(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_StartPoint()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setStartPoint(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_StartPoint(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_StartPoint()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=StartPoint, get=getStartPoint, set=setStartPoint)

        long getEndPoint();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_EndPoint(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_EndPoint()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setEndPoint(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_EndPoint(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_EndPoint()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=EndPoint, get=getEndPoint, set=setEndPoint)

        long getFadeInDuration();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_FadeInDuration(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FadeInDuration()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFadeInDuration(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FadeInDuration(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FadeInDuration()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FadeInDuration, get=getFadeInDuration, set=setFadeInDuration)

        long getFadeOutDuration();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_FadeOutDuration(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_FadeOutDuration()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setFadeOutDuration(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_FadeOutDuration(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_FadeOutDuration()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=FadeOutDuration, get=getFadeOutDuration, set=setFadeOutDuration)

        MediaBookmarks* getMediaBookmarks();
        %MethodCode
            wppapi::MediaBookmarks *prop = nullptr;
            HRESULT hr = sipCpp->get_MediaBookmarks(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_MediaBookmarks()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=MediaBookmarks, get=getMediaBookmarks)

        PpMediaTaskStatus getResamplingStatus();
        %MethodCode
            wppapi::PpMediaTaskStatus prop = (wppapi::PpMediaTaskStatus)0;
            HRESULT hr = sipCpp->get_ResamplingStatus(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ResamplingStatus()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ResamplingStatus, get=getResamplingStatus)

        VARIANT_BOOL getIsLinked();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IsLinked(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IsLinked()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=IsLinked, get=getIsLinked)

        VARIANT_BOOL getIsEmbedded();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_IsEmbedded(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_IsEmbedded()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=IsEmbedded, get=getIsEmbedded)

        long getAudioSamplingRate();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_AudioSamplingRate(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AudioSamplingRate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AudioSamplingRate, get=getAudioSamplingRate)

        long getVideoFrameRate();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_VideoFrameRate(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_VideoFrameRate()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=VideoFrameRate, get=getVideoFrameRate)

        long getSampleHeight();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_SampleHeight(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SampleHeight()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SampleHeight, get=getSampleHeight)

        long getSampleWidth();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_SampleWidth(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_SampleWidth()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=SampleWidth, get=getSampleWidth)

        BSTR getVideoCompressionType();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_VideoCompressionType(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_VideoCompressionType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=VideoCompressionType, get=getVideoCompressionType)

        BSTR getAudioCompressionType();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_AudioCompressionType(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AudioCompressionType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AudioCompressionType, get=getAudioCompressionType)
    };
};
