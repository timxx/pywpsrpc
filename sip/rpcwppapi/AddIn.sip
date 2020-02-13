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
    struct AddIn : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_FullName(
            BSTR *FullName /Out/) = 0;

        virtual HRESULT get_Name(
            BSTR *Name /Out/) = 0;

        virtual HRESULT get_Path(
            BSTR *Path /Out/) = 0;

        virtual HRESULT get_Registered(
            MsoTriState *Registered /Out/) = 0;

        virtual HRESULT put_Registered(
            MsoTriState Registered) = 0;

        virtual HRESULT get_AutoLoad(
            MsoTriState *AutoLoad /Out/) = 0;

        virtual HRESULT put_AutoLoad(
            MsoTriState AutoLoad) = 0;

        virtual HRESULT get_Loaded(
            MsoTriState *Loaded /Out/) = 0;

        virtual HRESULT put_Loaded(
            MsoTriState Loaded) = 0;

        virtual HRESULT get_DisplayAlerts(
            MsoTriState *DisplayAlerts /Out/) = 0;

        virtual HRESULT put_DisplayAlerts(
            MsoTriState DisplayAlerts) = 0;

        virtual HRESULT get_RegisteredInHKLM(
            MsoTriState *RegisteredInHKLM /Out/) = 0;

    };
};
