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
    struct ITimelineViewState : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_ShowHeader(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowHeader(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ShowSelectionLabel(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowSelectionLabel(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ShowTimeLevel(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowTimeLevel(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_ShowHorizontalScrollbar(
            VARIANT_BOOL *RHS /Out/) = 0;

        virtual HRESULT put_ShowHorizontalScrollbar(
            VARIANT_BOOL RHS) = 0;

        virtual HRESULT get_Level(
            XlTimelineLevel *RHS /Out/) = 0;

        virtual HRESULT put_Level(
            XlTimelineLevel RHS) = 0;

    };
};
