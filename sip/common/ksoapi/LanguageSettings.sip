/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace ksoapi
{
    struct LanguageSettings : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_LanguageID(
            MsoAppLanguageID Id,
            int *plid /Out/) = 0;

        virtual HRESULT get_LanguagePreferredForEditing(
            MsoLanguageID lid,
            VARIANT_BOOL *pf /Out/) = 0;
    };
};
