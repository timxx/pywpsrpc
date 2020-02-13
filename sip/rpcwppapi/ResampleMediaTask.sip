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

    };
};
