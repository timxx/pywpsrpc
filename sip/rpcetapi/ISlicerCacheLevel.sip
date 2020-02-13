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
    struct ISlicerCacheLevel : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **RHS /Out/) = 0;

        virtual HRESULT get_SlicerItems(
            SlicerItems **RHS /Out/) = 0;

        virtual HRESULT get_Count(
            long *RHS /Out/) = 0;

        virtual HRESULT get_Ordinal(
            long *RHS /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *RHS /Out/) = 0;

        virtual HRESULT get_CrossFilterType(
            XlSlicerCrossFilterType *RHS /Out/) = 0;

        virtual HRESULT put_CrossFilterType(
            XlSlicerCrossFilterType RHS) = 0;

        virtual HRESULT get_SortItems(
            XlSlicerSort *RHS /Out/) = 0;

        virtual HRESULT put_SortItems(
            XlSlicerSort RHS) = 0;

        virtual HRESULT get_VisibleSlicerItemsList(
            VARIANT *RHS /Out/) = 0;

    };
};
