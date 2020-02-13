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
    struct OMathMatCol : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Creator(
            long *prop /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **prop /Out/) = 0;

        virtual HRESULT get_Args(
            OMathArgs **prop /Out/) = 0;

        virtual HRESULT get_ColIndex(
            long *prop /Out/) = 0;

        virtual HRESULT get_Align(
            WdOMathHorizAlignType *prop /Out/) = 0;

        virtual HRESULT put_Align(
            WdOMathHorizAlignType prop) = 0;

        virtual HRESULT Delete() = 0;

    };
};
