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
    struct IRibbonUI : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT Invalidate() = 0;

        virtual HRESULT InvalidateControl(
            BSTR ControlID) = 0;

        virtual HRESULT InvalidateControlMso(
            BSTR ControlID) = 0;

        virtual HRESULT ActivateTab(
            BSTR ControlID) = 0;

        virtual HRESULT ActivateTabMso(
            BSTR ControlID) = 0;

        virtual HRESULT ActivateTabQ(
            BSTR ControlID,
            BSTR Namespace) = 0;

    };
};
