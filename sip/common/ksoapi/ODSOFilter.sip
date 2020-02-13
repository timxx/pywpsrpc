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
    struct ODSOFilter : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT get_Index(
            long *plIndex /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **ppParent /Out/) = 0;

        virtual HRESULT get_Column(
            BSTR *pbstrCol /Out/) = 0;

        virtual HRESULT put_Column(
            BSTR pbstrCol) = 0;

        virtual HRESULT get_Comparison(
            MsoFilterComparison *pComparison /Out/) = 0;

        virtual HRESULT put_Comparison(
            MsoFilterComparison pComparison) = 0;

        virtual HRESULT get_CompareTo(
            BSTR *pbstrCompareTo /Out/) = 0;

        virtual HRESULT put_CompareTo(
            BSTR pbstrCompareTo) = 0;

        virtual HRESULT get_Conjunction(
            MsoFilterConjunction *pConjunction /Out/) = 0;

        virtual HRESULT put_Conjunction(
            MsoFilterConjunction pConjunction) = 0;

    };
};
