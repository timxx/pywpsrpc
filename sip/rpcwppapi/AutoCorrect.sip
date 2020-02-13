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
    struct AutoCorrect : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_DisplayAutoCorrectOptions(
            VARIANT_BOOL *DisplayAutoCorrectOptions /Out/) = 0;

        virtual HRESULT put_DisplayAutoCorrectOptions(
            VARIANT_BOOL DisplayAutoCorrectOptions) = 0;

        virtual HRESULT get_DisplayAutoLayoutOptions(
            VARIANT_BOOL *DisplayAutoLayoutOptions /Out/) = 0;

        virtual HRESULT put_DisplayAutoLayoutOptions(
            VARIANT_BOOL DisplayAutoLayoutOptions) = 0;

    };
};
