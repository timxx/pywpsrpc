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
    struct Design : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_SlideMaster(
            _Master **SlideMaster /Out/) = 0;

        virtual HRESULT get_TitleMaster(
            _Master **TitleMaster /Out/) = 0;

        virtual HRESULT get_HasTitleMaster(
            MsoTriState *HasTitleMaster /Out/) = 0;

        virtual HRESULT AddTitleMaster(
            _Master **TitleMaster /Out/) = 0;

        virtual HRESULT get_Index(
            int *Index /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *Name /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR Name) = 0;

        virtual HRESULT get_Preserved(
            MsoTriState *Preserved /Out/) = 0;

        virtual HRESULT put_Preserved(
            MsoTriState Preserved) = 0;

        virtual HRESULT MoveTo(
            int toPos) = 0;

        virtual HRESULT Delete() = 0;

    };
};
