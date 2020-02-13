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
    struct TableBackground : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Fill(
            FillFormat **Fill /Out/) = 0;

        virtual HRESULT get_Picture(
            PictureFormat **Picture /Out/) = 0;

        virtual HRESULT get_Reflection(
            ksoapi::ReflectionFormat **Reflection /Out/) = 0;

        virtual HRESULT get_Shadow(
            ShadowFormat **Shadow /Out/) = 0;

    };
};
