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
    struct ResampleMediaTask : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_profile(
            PpResampleMediaProfile *profile /Out/) = 0;

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

        virtual HRESULT get_ContainerType(
            BSTR *ContainerType /Out/) = 0;

        virtual HRESULT get_VideoCompressionType(
            BSTR *VideoCompressionType /Out/) = 0;

        virtual HRESULT get_AudioCompressionType(
            BSTR *AudioCompressionType /Out/) = 0;

        virtual HRESULT get_Shape(
            Shape **Shape /Out/) = 0;

        PpResampleMediaProfile getprofile();
        %MethodCode
            wppapi::PpResampleMediaProfile prop = (wppapi::PpResampleMediaProfile)0;
            HRESULT hr = sipCpp->get_profile(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_profile()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=profile, get=getprofile)

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

        BSTR getContainerType();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_ContainerType(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ContainerType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=ContainerType, get=getContainerType)

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

        Shape* getShape();
        %MethodCode
            wppapi::Shape *prop = nullptr;
            HRESULT hr = sipCpp->get_Shape(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Shape()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Shape, get=getShape)
    };
};
