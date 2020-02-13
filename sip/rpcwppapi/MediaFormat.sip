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

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

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
            VARIANT_BOOL Trim = 0,
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

    };
};
