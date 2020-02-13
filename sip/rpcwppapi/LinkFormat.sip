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
    struct LinkFormat : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **Application /Out/) = 0;

        virtual HRESULT get_Parent(
            IDispatch **Parent /Out/) = 0;

        virtual HRESULT get_SourceFullName(
            BSTR *SourceFullName /Out/) = 0;

        virtual HRESULT put_SourceFullName(
            BSTR SourceFullName) = 0;

        virtual HRESULT get_AutoUpdate(
            PpUpdateOption *AutoUpdate /Out/) = 0;

        virtual HRESULT put_AutoUpdate(
            PpUpdateOption AutoUpdate) = 0;

        virtual HRESULT Update() = 0;

        virtual HRESULT BreakLink() = 0;

    };
};
