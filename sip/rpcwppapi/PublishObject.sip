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

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

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

    };
};
