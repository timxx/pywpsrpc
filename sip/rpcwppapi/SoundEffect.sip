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
    struct SoundEffect : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *Name /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR Name) = 0;

        virtual HRESULT get_Type(
            PpSoundEffectType *Type /Out/) = 0;

        virtual HRESULT put_Type(
            PpSoundEffectType Type) = 0;

        virtual HRESULT ImportFromFile(
            BSTR FileName) = 0;

        virtual HRESULT Play() = 0;

    };
};
