/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wpsapi
{
    struct Zoom : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Percentage(
            long *prop /Out/) = 0;

        virtual HRESULT put_Percentage(
            long prop) = 0;

        virtual HRESULT get_PageFit(
            WdPageFit *prop /Out/) = 0;

        virtual HRESULT put_PageFit(
            WdPageFit prop) = 0;

        virtual HRESULT get_PageRows(
            long *prop /Out/) = 0;

        virtual HRESULT put_PageRows(
            long prop) = 0;

        virtual HRESULT get_PageColumns(
            long *prop /Out/) = 0;

        virtual HRESULT put_PageColumns(
            long prop) = 0;

    };
};
