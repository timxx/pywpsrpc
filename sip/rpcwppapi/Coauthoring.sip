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
    struct Coauthoring : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_MergeMode(
            VARIANT_BOOL *MergeMode /Out/) = 0;

        virtual HRESULT get_FavorServerEditsDuringMerge(
            VARIANT_BOOL *FavorServerEditsDuringMerge /Out/) = 0;

        virtual HRESULT put_FavorServerEditsDuringMerge(
            VARIANT_BOOL FavorServerEditsDuringMerge) = 0;

        virtual HRESULT EndReview() = 0;

        virtual HRESULT get_PendingUpdates(
            VARIANT_BOOL *PendingUpdates /Out/) = 0;

        virtual HRESULT get_CoauthorCount(
            long *CoauthorCount /Out/) = 0;

    };
};
