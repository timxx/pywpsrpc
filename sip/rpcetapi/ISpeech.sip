/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace etapi
{
    struct ISpeech : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT Speak(
            BSTR Text,
            VARIANT SpeakAsync = argMissing2(),
            VARIANT SpeakXML = argMissing2(),
            VARIANT Purge = argMissing2()) = 0;

        virtual HRESULT get_Direction(
            XlSpeakDirection *RHS /Out/) = 0;

        virtual HRESULT put_Direction(
            XlSpeakDirection RHS) = 0;

        virtual HRESULT get_SpeakCellOnEnter(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_SpeakCellOnEnter(
            VARIANT_BOOL RHS) = 0;

    };
};
