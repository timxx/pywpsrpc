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
    struct SmartDocument : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_SolutionID(
            BSTR *pbstrID /Out/) = 0;

        virtual HRESULT put_SolutionID(
            BSTR pbstrID) = 0;

        virtual HRESULT get_SolutionURL(
            BSTR *pbstrUrl /Out/) = 0;

        virtual HRESULT put_SolutionURL(
            BSTR pbstrUrl) = 0;

        virtual HRESULT PickSolution(
            VARIANT_BOOL ConsiderAllSchemas = VARIANT_FALSE) = 0;

        virtual HRESULT RefreshPane() = 0;

    };
};
