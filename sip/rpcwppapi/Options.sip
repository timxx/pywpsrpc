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
    struct Options : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_DisplayPasteOptions(
            MsoTriState *DisplayPasteOptions /Out/) = 0;

        virtual HRESULT put_DisplayPasteOptions(
            MsoTriState DisplayPasteOptions) = 0;

        virtual HRESULT get_DoNotPromptForConvert(
            MsoTriState *DoNotPromptForConvert /Out/) = 0;

        virtual HRESULT put_DoNotPromptForConvert(
            MsoTriState DoNotPromptForConvert) = 0;

        virtual HRESULT get_ShowCoauthoringMergeChanges(
            VARIANT_BOOL *ShowCoauthoringMergeChanges /Out/) = 0;

        virtual HRESULT put_ShowCoauthoringMergeChanges(
            VARIANT_BOOL ShowCoauthoringMergeChanges) = 0;

    };
};
